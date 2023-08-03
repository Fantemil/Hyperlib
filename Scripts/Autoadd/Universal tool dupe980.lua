local LocalPlr = game:GetService("Players").LocalPlayer
local LocalChar = LocalPlr.Character
local Backpack = LocalPlr.Backpack

local Gear = LocalPlr.StarterGear
local CharScripts = game.StarterPlayer.StarterCharacterScripts
local PlrScripts = game.StarterPlayer.StarterPlayerScripts
local Pack = game.StarterPack

local Target = CharScripts

local ItemToDupe = ""

for i, v in pairs(BP:GetChildren()) do
    if v:IsA("Tool") and v.Name == ItemToDupe then
    local Tool = v
rnet.setParent(Tool, LocalChar)
rnet.setParent(Tool, Backpack)
rnet.setParent(Tool,Target)
Tool.Parent = Target
    end
end