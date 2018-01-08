/// @description GUI / Vars / Menu setup

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 300; //start at out of view
menuY = guiHeight - guiMargin;
menuXAnimTarget = guiWidth - guiMargin;
menuSpeed = 25; //lower is faster
menuFont = font_pixel;
menuItemHeight = font_get_size(font_pixel);
menuCommitted = -1; //the selected menu
menuControl = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menuCursor = 2;
menuItems = array_length_1d(menu);
