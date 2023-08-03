--Made By: Shag420#6729

getgenv().freeburgers = true --turn to false and re-execute to stop
while freeburgers do
task.wait()
game:GetService("Players").LocalPlayer.PlayerGui.Main.Frame.Hamburger.Floppa.LocalScript.RemoteEvent1:FireServer()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") and v.Name == 'Hamburger' then
    v.Parent = game.Players.LocalPlayer.Character
    v.Parent = game.Workspace
end
end
end