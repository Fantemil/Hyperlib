_G.test = true
while _G.test do
    wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Interface.Score.Frame.Jobs.Visible == false then
wait(0.5)
game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("TrailerDelivery", "Dealership")
wait(0.5)
elseif game:GetService("Players").LocalPlayer.PlayerGui.Interface.Score.Frame.Jobs.Visible == true then
for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
    if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
v.Parent:SetPrimaryPartCFrame(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,-20))
wait()
end
end
if game:GetService("Players").LocalPlayer.PlayerGui.Interface.JobComplete.Enabled == true then
game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.Interface.JobComplete.Enabled = false
game:GetService("Lighting").BackgroundBlur.Enabled = false
end
end
end