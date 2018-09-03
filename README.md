# Instant Sign Casting for Logitech Gaming Software
This script allows you to map your favorite signs to your mouse buttons 4 and 5 (Back and Forward mouse buttons).  
By clicking the button, signs will get selected and casted instantly. If you keep pressing the button, signs will be casted in alternate sign casting mode.  
  
Which signs you want to map is entirely your choice. You just have to do a little bit of configuration.  
If you have some knowledge in scripting/programming you should also be able to extend the script to your likings.  
  
The script is designed to work with Logitech Gaming Software. However, as it's a LUA script it might as well work with other Gaming Software.  
  
Please feel free to contact me if you have any questions.  
  
Also available on [NexusMods](https://www.nexusmods.com/witcher3/mods/272?tab=description).  

## Updates
**26.07.2015**: Added profile preset for Logitech G600. This can be used as a base for other mice with lots of G-buttons. Updated Installation description. Updated script comments.  
  

## Installation
1.  Open Logitech Gaming Software by double-clicking on the bold "G" in the System Tray.
2.  Switch to the profile view by clicking on "Customize G-Keys/Buttons" on the device bar.
3.  Right-click on your Witcher 3 profile and choose "Create Script". The Script window will be displayed.
4.  Click on "Script" and choose "Import".
5.  Import the script and click on ok/yes to overwrite the default script.
6.  Configure the script as described below if necessary.
7.  Save the script by clicking on "Script" --> "Save"
8.  That's it. You're done.

  
**NOTE**: Make sure you don't have any preset commands assigned to your mouse buttons. 
To do so right-click the button in LGS (or left-click the arrow next to it) and click "Unassign".  
Also make sure to enable "Automatic game detection" if you're using a newer device with G-Buttons.  
Please have a look at the images for further clarification.  
  
  

## Configuration
To configure you need to know your key mappings in-game.  
The default configuration is button "5" for Igni, button "6" for Quen and "Q" for casting.  
  
All you need to do now is configuring the following lines:  
  

    sign1 = "5";  
    sign2 = "6";  
    cast = "q"; 

 
  
Replace the key for sign1 with the actual ingame-key of the sign you want to use. Same goes for sign2.  
Then replace the "q" with the key you use for casting.  
Save and you're done. The script will get executed automatically when the game profile gets activated.  
  
  

## Uninstall
To uninstall the script, simply delete the code and leave the field blank.

