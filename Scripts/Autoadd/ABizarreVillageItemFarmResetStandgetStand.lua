for i,v in pairs(game.CoreGui:GetChildren()) do
if v.Name == "ScreenGui" then
v:Destroy()
end
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/Ui-Libraries/main/uwuware", true))()
local plr = game.Players.LocalPlayer
local Window = Library:CreateWindow"Main"
local w2 = Library:CreateWindow"Memes"
local w1 = Library:CreateWindow"Misc"
Window:AddFolder"Main"
Window:AddLabel({text = "Label"})
Window:AddToggle({text = "Item Farm", flag = "toggle", state = false, callback = function(a)
aa = a
while aa do task.wait()
for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA"TouchTransmitter" and v.Parent.Parent:IsA"Tool" then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end})
Window:AddButton({text = "Reset Stand (Need Roka)", flag = "button", callback = function()
game:GetService("ReplicatedStorage").Roka:FireServer()
plr.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Rokakaka Fruit"])
game:GetService("ReplicatedStorage").Roka:FireServer()
end})
Window:AddButton({text = "Get Stand (Need Arrow)", flag = "button", callback = function()
game:GetService("ReplicatedStorage").Arrow:FireServer()
plr.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Arrow"])
game:GetService("ReplicatedStorage").Arrow:FireServer()
end})
w2:AddButton({text = "Shine Bright (Need SPTW)", flag = "button", callback = function()
local args = {[1] = game:GetService("Players").LocalPlayer.Character.Stand.effeb.effectt,[2] = true}
game:GetService("ReplicatedStorage").Trail:FireServer(unpack(args))
end})
w1:AddBind({text = "Toggle UI", key = "RightControl", callback = function()
Library:Close()
end})
Library:Init()