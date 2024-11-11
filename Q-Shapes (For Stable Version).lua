-- Define a table for shape mappings
-- Each shape is associated with a name, shape ID, and an icon used in the UI
local shapes = {
    {name = "Arrowhead", shapeId = "arrowHead", icon = "shape_icon_arrowhead"},
    {name = "Scalene Triangle", shapeId = "scaleneTriangle", icon = "shape_icon_scalene_triangle"},
    {name = "Equilateral Triangle", shapeId = "equilateralTriangle", icon = "shape_icon_equilateral_triangle"},
    {name = "Right Angle Triangle", shapeId = "rightAngleTriangle", icon = "shape_icon_right_angle_triangle"},
    {name = "Parallelogram", shapeId = "parallelogram", icon = "shape_icon_parallelogram"},
    {name = "Hexagon", shapeId = "hexagon", icon = "shape_icon_hexagon"},
    {name = "Cube", shapeId = "cube", icon = "shape_icon_cube"},
    {name = "Cylinder", shapeId = "cylinder", icon = "shape_icon_cylinder"},
    {name = "Sphere", shapeId = "sphere", icon = "shape_icon_sphere"},
    {name = "Hemisphere", shapeId = "hemisphere", icon = "shape_icon_hemisphere"},
    {name = "Cone", shapeId = "cone", icon = "shape_icon_cone"},
    {name = "Dish", shapeId = "dish", icon = "shape_icon_dish"},
    {name = "1st Quadrant", shapeId = "1st_Quad", icon = "shape_icon_1st_quadrant"},
    {name = "1st & 2nd Quadrants", shapeId = "1st_and_2nd_Quad", icon = "shape_icon_1st_2nd_quadrants"},
    {name = "1st & 4th Quadrants", shapeId = "1st_and_4th_Quad", icon = "shape_icon_1st_4th_quadrants"},
    {name = "Full Axis", shapeId = "full_Axis", icon = "shape_icon_full_axis"},
    {name = "Full Axis with Grids", shapeId = "full_with_Grids", icon = "shape_icon_full_axis_with_grids"},
    {name = "Sin x", shapeId = "sinx", icon = "shape_icon_sinx"},
    {name = "Cos x", shapeId = "cosx", icon = "shape_icon_cosx"},
    {name = "(sin x)^2", shapeId = "sinSqx", icon = "shape_icon_sinx_squared"},
    {name = "(cos x)^2", shapeId = "cosSqx", icon = "shape_icon_cosx_squared"},
    {name = "| sin x |", shapeId = "mod_sinx", icon = "shape_icon_mod_sinx"},
    {name = "| cos x |", shapeId = "mod_cosx", icon = "shape_icon_mod_cosx"},
    {name = "Spring", shapeId = "spring", icon = "shape_icon_spring"},
    {name = "Immovable Support", shapeId = "immovableSupport", icon = "shape_icon_immovable_support"},
    {name = "Right Hand Rule", shapeId = "rightHandRule", icon = "shape_icon_right_hand_rule"},
    {name = "Vertical Circle", shapeId = "verticalCircle", icon = "shape_icon_vertical_circle"},
    {name = "Venturi Meter", shapeId = "venturimeter", icon = "shape_icon_venturi_meter"},
    {name = "Cyclotron", shapeId = "cyclotron", icon = "shape_icon_cyclotron"},
    {name = "Car", shapeId = "car", icon = "shape_icon_car"},
    {name = "Organ Pipes", shapeId = "organPipes", icon = "shape_icon_organ_pipes"}
}

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
    local file = assert(io.open(sourcePath .. "giveMeName_and_placeMe_in_shapesFolder.lua", "w"))
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
end

