_G.CreateKeybind = "Q" -- Define the keybind to create the ladder
_G.RemoveKeybind = "E" -- Define the keybind to retrieve and delete the ladder. May not work properly sometimes.
_G.GoToCoolDown = .1 -- The cooldown to fire the remote when you are at the ladder. This script is using task.wait() for this.

loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/steepsteps",true))()