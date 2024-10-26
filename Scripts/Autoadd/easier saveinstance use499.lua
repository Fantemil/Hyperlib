-- yes this script is extremely not made by me Credit to luau from github
-- ORIGINAL POST https://github.com/luau/UniversalSynSaveInstance/tree/main
-- if your script isn't saving any localscript / modules try executing MOREUNC from vxsty the cool alien guy
-- MOREUNC POST https://scriptblox.com/script/Universal-Script-MoreUNC-13110

local PATH_TO_SAVE = game --can be saved as model for example like --> game.Workspace.Map .. if only put game it will save the whole game
local SAVE_PLAYERS = true --//true/false\\--
local ANTI_AFK_KICK = true --//true/false\\--
local REMOVE_CHRACTERS = false --//true/false\\--
local SAVE_BYTECODES = false --//true/false\\-- "this kinda useless tho"
local LOADING_TIME = 0.5 --any numbers here
local SAFE_MODE = true --//true/false\\--"kick you before saving it should help you stay undetected from the game i think"
local ANONYMOUS_MODE = false --//true/false\\-- "idk what this does tbh"
local README_NOTES = true --//true/false\\-- "Enable, Disable ReadMe Notes"
local SHOW_STATUS = true --//true/false\\-- "The text on the top right thingly"

--[[
    you may ask "Why do i need MOREUNC from cool alien dude?????????"
    1. your using solara and solara is flipping missing base64decode function (bruh)
    2. (i dont flipping know)
uwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwuuwu
    "Why did you exactly make this"
    1. for myself
    2. easier use (yes)
    3. im a psychopath
]]

-- Script
local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}
local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
local CustomOptions = {
    SafeMode = SAFE_MODE,
    timeout = LOADING_TIME,
    SaveBytecode = SAVE_BYTECODES,
    RemovePlayerCharacters = REMOVECHRACTERS,
    IsolatePlayers = SAVE_PLAYERS,
    Object = PATH_TO_SAVE,
    Anonymous = ANONYMOUS_MODE,
    ReadMe = README_NOTES,
    ShowStatus = SHOW_STATUS
}
synsaveinstance(CustomOptions)
print("Ran Saveinstance. Please wait...")

local vim = game:GetService('VirtualInputManager')

while ANTI_AFK_KICK do
    task.wait(60)
    vim:SendKeyEvent(true, "%", false, game)
    print("uwuwuwuw skinidit oitelt eim so brainrot xdxcdxdxdxdxd")
end
