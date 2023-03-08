--Dont Skid

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()

local MapS = game:GetService("Workspace")["Map Storage"]
local Map

for i,MapFound in pairs(MapS:GetChildren()) do
if MapFound.ClassName == "Model" then
Map = MapFound
end
end

local Gifts = Map.Gifts
local Players = game.Players
local LocalPlayer = Players.LocalPlayer

for i,Gifts in pairs(Gifts:GetChildren()) do
local HumanoiodRootPart = LocalPlayer.Character.HumanoidRootPart
local Root = Gifts.Root
firetouchinterest(HumanoiodRootPart, Root, 0)
end
end)
print("Script Executed")
-- credits :  Kxyz#7507