_G.test = true
while _G.test do
    wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Interface.Score.Frame.Jobs.Visible == false then
wait(0.5)
local num = math.random(1,7)
for i,v in pairs(game:GetService("Workspace").Jobs.FoodDelivery.StartPoints:GetChildren()) do
   if i == num then
game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("FoodDelivery", v.Name)
end
end
wait(0.5)
elseif game:GetService("Players").LocalPlayer.PlayerGui.Interface.Score.Frame.Jobs.Visible == true then
for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
    if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
v.Parent:SetPrimaryPartCFrame(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,0))
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