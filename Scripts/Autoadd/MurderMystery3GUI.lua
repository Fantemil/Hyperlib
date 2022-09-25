 local Library = loadstring(game:HttpGet("https://pastebin.com/raw/T5dD1LBr"))()
local Main = Library:CreateTab("Murder Mystery 3","A GUI for murder mystery 3")
local NoClip

game:GetService("RunService").Stepped:Connect(function()
if NoClip == true then
game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

Main:CreateSection("Coins")
Main:CreateButton("Teleport coins",function()
for a,b in pairs(workspace:GetChildren()) do
if b.Name == "Coin" then
b.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end
end
end)

Main:CreateSection("Codes")
Main:CreateButton("Redeem codes",function()
for a,b in pairs(game:GetService("ReplicatedStorage").Codes:GetChildren()) do
game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode:InvokeServer(b.Name)
end
end)

Main:CreateSection("Character")
Main:CreateCheckbox("NoClip",function(a)
NoClip = a
end)

Main:CreateSection("Teleports")
Main:CreateButton("Coins",function()
for a,b in pairs(workspace:GetChildren()) do
if b.Name == "Coin" then
game:GetService("Players").LocalPlayer.Character:MoveTo(b.Position)
wait(0.25)
end
end
end)
Main:CreateButton("Murderer",function()
for a,b in pairs(game:GetService("Players"):GetPlayers()) do
for c,d in pairs(b.Backpack:GetDescendants()) do
if d.Name == "Knife" then
game:GetService("Players").LocalPlayer.Character:MoveTo(b.Character.HumanoidRootPart.Position+Vector3.new(0,0,2))
end
end
for e,f in pairs(b.Character:GetDescendants()) do
if f.Name == "Knife" then
game:GetService("Players").LocalPlayer.Character:MoveTo(b.Character.HumanoidRootPart.Position+Vector3.new(0,0,2))
end
end
end
end)
Main:CreateButton("Sheriff",function()
for a,b in pairs(game:GetService("Players"):GetPlayers()) do
for c,d in pairs(b.Backpack:GetDescendants()) do
if d.Name == "Revolver" then
game:GetService("Players").LocalPlayer.Character:MoveTo(b.Character.HumanoidRootPart.Position)
end
end
for e,f in pairs(b.Character:GetDescendants()) do
if f.Name == "Revolver" then
game:GetService("Players").LocalPlayer.Character:MoveTo(b.Character.HumanoidRootPart.Position)
end
end
end
end)


Main:CreateSection("Revolver")
Main:CreateButton("Goto",function()
game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").RevolverPickUp.Revolver.Position)
end)