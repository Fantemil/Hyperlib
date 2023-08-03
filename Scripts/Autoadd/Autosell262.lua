--- made by orbito#2197
getgenv().autosell = true

while autosell == true do

for i, v in pairs(game:GetService("Workspace").Sell:GetDescendants()) do
if v.name == "TouchInterest" and v.Parent then 
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
wait(0.01)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
wait()
end