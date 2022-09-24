local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/LuaScripts/main/UI_Libraries/Wally/library.lua"))()
local window = library:CreateWindow("da hood")
local f1 = window:CreateFolder("hack556")
local itemPath = game.Workspace.Ignored.ItemsDrop
local cf = game.Players.LocalPlayer.Character.HumanoidRootPart

f1:Button("collect shit", function()
for i,v in pairs(itemPath:GetChildren()) do
if v.Name == "Part" then
cf.CFrame = v.CFrame
wait(2)
end
end
end)