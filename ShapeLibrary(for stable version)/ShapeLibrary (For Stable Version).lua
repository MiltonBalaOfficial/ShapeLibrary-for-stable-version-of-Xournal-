-- Load the configuration file
local config = require("config") -- Ensure config.lua is in the same directory or in Lua's package path

-- Flatten the shapes from the config table for dynamic UI registration
local shapes = {}

for _, category in ipairs(config) do
    for _, shape in ipairs(category.shapes) do
        -- Add each shape with the necessary properties for UI registration
        table.insert(shapes, { -- Each shape is associated with a name, shape ID, and an icon used in the UI
            name = shape.name,
            shapeId = shape.shapeName,
            icon = "shape_icon_" .. shape.shapeName -- Generate icon name dynamically, example icon name: "shape_icon_arrowHead", "shape_icon_cube", "shape_icon_sinx"
        })
    end
end

-- Register UI elements and initialize
function initUi()
    -- Getting the source folder Path (The plugin folder-path)
    sep = package.config:sub(1, 1) -- path separator depends on OS
    sourcePath = debug.getinfo(1).source:match("@?(.*" .. sep .. ")") -- Gets the folder path of the script

    -- Register UI elements for each shape
    for _, shape in ipairs(shapes) do
        -- The text to display in the menu
        local menuText = "Insert " .. shape.name
        -- The callback function to call when this shape is selected
        local callback = "insert" .. shape.name:gsub(" ", "") -- Replaces spaces with empty string for function naming
        -- A unique ID for the toolbar button
        local toolbarId = "INSERT_SHAPE_" .. shape.name:upper():gsub(" ", "_") -- Converts name to uppercase and replaces spaces with underscores
        -- Register the UI element (button/menu)
        registerShapeUi(menuText, callback, toolbarId, shape.icon)
    end
    -- UI elements for Extract_Stroke_Info
    app.registerUi({
        ["menu"] = "Extract_Stroke_Info",
        ["callback"] = "store_stroke_info_in_file",
        ["toolbarId"] = "StrInfo",
        ["iconName"] = "extract-info-symbolic"
    })
end

-- Helper function to register UI elements for a shape (button and menu)
function registerShapeUi(menuText, callback, toolbarId, iconName)
    app.registerUi({
        menu = menuText, -- The menu item text
        callback = callback, -- The function to call when clicked
        toolbarId = toolbarId, -- ID for toolbar button
        iconName = iconName -- Icon name for the button
    })

    
end

-- Helper function to read strokes from a shape file
function read_strokes_from_file(filepath)
    if filepath == nil then return end -- Return if the filepath is nil
    local hasFile, content = pcall(dofile, filepath) -- Try to load the Lua file content
    if not hasFile then 
        print("Error: " .. content) -- If there is an error loading the file, print the error message
        return 
    end
    local strokesToAdd = {} -- Table to hold strokes that will be added to the document

    -- Loop through each stroke in the loaded file
    for _, stroke in ipairs(content) do
        -- Ensure the stroke has x and y values, then format the stroke data
        if type(stroke) == "table" and stroke.x and stroke.y then
            local newStroke = {
                x = stroke.x, -- X coordinate of the stroke
                y = stroke.y, -- Y coordinate of the stroke
                pressure = stroke.pressure, -- Pressure of the stroke (used for stylus input)
                tool = stroke.tool or "pen", -- The tool used for the stroke (defaults to "pen" if not provided)
                color = stroke.color or 0, -- Stroke color (defaults to black)
                width = stroke.width or 1, -- Stroke width (defaults to 1)
                fill = stroke.fill or 0, -- Fill type (defaults to 0, meaning no fill)
                lineStyle = stroke.lineStyle or "plain" -- Line style (defaults to "plain")
            }
            table.insert(strokesToAdd, newStroke) -- Add the formatted stroke to the strokes table
        end
    end

    return strokesToAdd -- Return the table of strokes
end

-- Function to insert strokes for a specific shape by its shape name
function insert_stroke(shape_name)
    -- Build the path to the shape file
    local filepath = sourcePath .. sep .. "Shapes" .. sep .. shape_name .. ".lua"
    -- Read strokes from the shape file
    local strokes = read_strokes_from_file(filepath)
    -- If valid strokes are found, add them to the page
    if strokes and #strokes > 0 then
        -- Add strokes to the document (grouped undo/redo action)
        local refs = app.addStrokes({ strokes = strokes , allowUndoRedoAction = "grouped" })
        app.refreshPage() -- Refresh the page to show the new strokes
        -- app.addToSelection(refs) -- Uncomment this line if you want to automatically select the inserted strokes
    end
end

-- Dynamically create functions for inserting shapes
for _, shape in ipairs(shapes) do
    -- For each shape, create a function to insert it using its name
    -- Function name is created by removing spaces from the shape name
    _G["insert" .. shape.name:gsub(" ", "")] = function()
        insert_stroke(shape.shapeId) -- Call the insert_stroke function with the shape's ID
    end
end

-- All codes for Extract stroke information (the file is saved in plugin folder, you have to rename it and place it in "shapes" folder, also add the name in shape dictionary)
-- Function to store stroke information in a file
function store_stroke_info_in_file()
    -- Get the selected strokes
    local strokes = app.getStrokes("selection")

    -- Open a file for writing in the folder path
    local file = assert(io.open(sourcePath .. "I_am_your_new_shape.lua", "w"))
    -- Start writing the Lua table format
    file:write("local strokesData = {\n")
    -- Iterate over each stroke and collect information
    for i, stroke in ipairs(strokes) do
        file:write(string.format("  [%d] = {\n", i))
        file:write("    x = { ")
        -- Write x coordinates
        for j = 1, #stroke.x do
            file:write(stroke.x[j])
            if j < #stroke.x then
                file:write(", ")
            end
        end
        file:write(" },\n")
        file:write("    y = { ")
        -- Write y coordinates
        for j = 1, #stroke.y do
            file:write(stroke.y[j])
            if j < #stroke.y then
                file:write(", ")
            end
        end
        file:write(" },\n")

        -- Write pressure values if present
        if stroke.pressure then
            file:write("    pressure = { ")
            for j = 1, #stroke.pressure do
                file:write(stroke.pressure[j])
                if j < #stroke.pressure then
                    file:write(", ")
                end
            end
            file:write(" },\n")
        else
            file:write("    pressure = {},\n")
        end

        -- Write stroke options
        file:write(string.format("    tool = \"%s\",\n", stroke.tool or "N/A"))
        file:write(string.format("    color = %s,\n", stroke.color or "N/A"))
        file:write(string.format("    width = %.2f,\n", stroke.width or 0.0))
        file:write(string.format("    fill = %d,\n", stroke.fill or 0))
        file:write(string.format("    lineStyle = \"%s\",\n", stroke.lineStyle or "N/A"))
        file:write("  },\n") -- End of stroke table
    end
    file:write("}\n")
    file:write("return strokesData")
    file:write("   -- Return the strokesData table") -- End of strokesData table

    -- Close the file
    file:close()

     -- Triggering the dialog for confirmation of saving of the shape.
     app.openDialog(
         "Your shape is saved as ' I_am_your_new_shape.lua ' \n * You should rename it and place it in 'Shapes' folder. \n * You must add your shape name in 'config' file \n Do you want to rename it now?", {"OK", "Cancel"}, "renameShapeDialogCallback" ) 
    function renameShapeDialogCallback(result)
         if result == 2 then
             -- When "Cancel" option is clicked, it closes the dialog
             return
         elseif result == 1 then
             openFolder() -- If 'OK' is clicked then the plugin folder will open
         end
     end
    function openFolder()
       -- On Windows, use 'start' command to open the folder
        if package.config:sub(1, 1) == "\\" then
            os.execute('start "" "' .. sourcePath .. '"')
        else
            -- For Linux/Mac, use the appropriate command
            os.execute('xdg-open "' .. sourcePath .. '"') -- Linux
            os.execute('open "' .. sourcePath .. '"')     -- MacOS
        end
    end

end

