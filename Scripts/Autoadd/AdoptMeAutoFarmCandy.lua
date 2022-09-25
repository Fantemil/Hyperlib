a=game:service'ReplicatedStorage'.Fsys
for Name, Remote in pairs(debug.getupvalue(require(a).load("RouterClient").init, 4)) do
    Remote.Name = Name
end
getgenv().AutoFarm = true
game:GetService('RunService').Stepped:connect(function()
if getgenv().AutoFarm then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
game:GetService("Workspace").Interiors.Crypt.PotionMinigame.Cauldron.Interaction.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2074, 3988, -4045)
game:GetService("Workspace").Interiors.Crypt.PotionMinigame.Cauldron.Interaction.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end end)
while wait() and getgenv().AutoFarm do
pcall(function()
for i,v in pairs(game:GetService("Workspace").Interiors.Crypt.PotionMinigame.IngredientBlocks:GetChildren()) do
if v:FindFirstChild("Visual") then
wait(1)
game:GetService("ReplicatedStorage").API:FindFirstChild("HalloweenAPI/PotionGameTakeIngredient"):InvokeServer(v.Name)
wait(1)
game:GetService('VirtualInputManager'):SendKeyEvent(true,"E",false,uwu) wait(1)
end end 
game:GetService("ReplicatedStorage").API:FindFirstChild("HalloweenAPI/PotionGameAttemptJoin"):FireServer()
end) end 