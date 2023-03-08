-- settings
_G.ToggledPeterAttach = false
_G.Toggled = true
_G.AutoCollect = true
-- code stuff
while wait() do
if _G.Toggled == true then
fireclickdetector(game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney, math.huge)
end
if _G.ToggledPeterAttach == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.CFrame
end
if _G.AutoCollect == true then
for _,v in pairs(game:GetService("Workspace").Interactables.MoneyBills:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
end
end
end
end