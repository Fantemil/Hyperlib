---island royale UPDATED AIMBOT SCRIPT 2021
---
X_CHANGE = 0.1 --The change in camera angle on the X axis upon moving 1 pixel on 0.36 sensitivity.
Y_CHANGE = 0.13 --The change in camera angle on the Y axis upon moving 1 pixel on 0.36 sensitivity.
MOUSE_OFFSET = Vector2.new(0, 0) --The offset (in pixels) of where the script should think the mouse is.
USE_RIGHT_CLICK = true --Whether or not to still use right click for locking on.
USE_LEFT_CLICK = false --Whether or not to use left click for locking on.
AIM_KEY = Enum.KeyCode.E --Enum.Keycode for the key to press when you want to lock onto someone.
NO_HUMANOIDS = false --Whether or not to check for Humanoids in the characters. For example, Phantom Forces doesn't use humanoids. (The script automatically sets NO_HUMANOIDS to true for Phantom Forces though.)
TOGGLE_VIS_KEY = nil --Enum.KeyCode for the key to press to toggle the full visibility of the GUI.

loadstring(game:HttpGet("https://raw.githubusercontent.com/angeld23/raw-text-host/master/Temporal.lua", true))()