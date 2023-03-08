--[[
- RespawnInterval (default: 2) - Time in seconds between respawns (give or take .5 seconds-ish)
- TrainingLoops (default: {}) - A list of stats to train ("FS", "PP", "MS", "JF", "BT") - quotes are important
- JumpForceWeight (default: 0) - The weight to train with for jump force.
- MovementWeight (default: 0) - The weight to train with for movement speed.
- Information:
- This script is a auto-training / auto-respawning script for SPTS: Origin.
- It has the option to equip tools, spam jump, and train stats.
- Auto-Respawning constantly respawns you in the same spot whilst hiding your character.
]]
--
local getgenv = getfenv().getgenv -- Ignore this, this is for VSCode to stop complaining.
local getrenv = getgenv().getrenv
if not (getgenv and getrenv) then
warn("This script is not supported on this exploit.")
return
end
getgenv().RespawnInterval = 2
getgenv().JumpForceWeight = 0
getgenv().MovementWeight = 0
getgenv().TrainingLoops = {}
getgenv().Keybinds = {
Toggle = Enum.KeyCode.RightControl,
SetSpawn = Enum.KeyCode.RightShift,
}
loadstring(
game:HttpGet(
"https://gist.githubusercontent.com/whomScripts/29e18dafd4acda25032049e97c86e95e/raw/ad742f52ebe4e7874760c08468e9394f70dd3066/sptsOrigin.lua"
)
)()