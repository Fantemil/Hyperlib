--if doesnt work after a few seconds run it again
--made by TJ#2960

getgenv().winFarm = true -- toggleable true / false

local Pos = Vector3.new(959.2319946289062, 74.83002471923828, -1979.5255126953125)
local Rot = Vector3.new(0, 0, 0)

if not game:IsLoaded() then game.Loaded:Wait() end
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or (function() Player.CharacterAdded:Wait() return Player.Character end)()
local Root = Character:WaitForChild("HumanoidRootPart")

Root.CFrame = CFrame.new(Pos) * CFrame.Angles(math.rad(Rot.X), math.rad(Rot.Y), math.rad(Rot.Z))
spawn(function()
    wait(1)
    while true do
    if not getgenv().winFarm then break end
    for i,v in pairs(game:GetService("Workspace").Imposibble:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
         end
        wait(0.35)--How fast you teleport
    end 
end)