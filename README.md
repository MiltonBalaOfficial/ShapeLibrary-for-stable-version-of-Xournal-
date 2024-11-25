# Quick Shape Library (For Stable Version of Xournal++)

Quick Shape Library for inserting predefined shapes into a Xournal++ document via this plugin along with Extract Stroke Info for creating new shapes.

## Installation Steps

1. **Place the folder** (`ZShapeLibrary`) in: (Create a folder of this name and place everything from the `ShapeLibrary(for stable version)` downloaded from here)
   - `C:\Users\<user>\AppData\Local\xournalpp\plugins\` on Windows 
     *Note: The `AppData` folder may be hidden.*
   - `~/.config/xournalpp/plugins` on Linux or MacOS
     
   *Note: I suggest a letter "Z" at the first of the folder name because this plugin creates lots of plugin menus and adding a "z" will help to keep the items at the bottom and your other plugins will be easily accessible.*

1. **Place the icons** in:
   - `C:\Users\<user>\AppData\Local\share\icons\hicolor\scalable\actions` on Windows,
   - `~/.local/share/icons/hicolor/scalable/actions/` on Linux or MacOS

2. **In the Xournal++ app**:
  Open menu `Edit > Toolbars > Customize`. You will find the copied icons in the `Plugins` section. Place them at a suitable location in the toolbar.

3. **Use the plugin** as needed 


## Add Your Own Shape with "Extract_Stroke_Info"

1. **Draw your own shape** in Xournal++ and place it at the top left corner of the page.
  *Note: The shape will be inserted at the same position. When you want to insert the shape if the page is smaller than the current one, you may not be able to see the inserted shapes.*

2. **Select your shape** and click the `ESI` icon or select the `ESI` action from the `Plugin` menu.

3. **Save the shape**:
  It will be saved in the plugin folder as:
  ```
  giveMeName_and_placeMe_in_shapesFolder.lua
  ```
- Rename it and move it to the `Shapes` subfolder.

1. **Coding step**:
- Open `Q-Shapes (For Stable Version).lua` in a code editor and make the necessary modifications
  to the shapes table.

## Share Your Shapes!
Don't forget to share your unique shapes with us!

## If anyone wants to support
[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/miltonbala)