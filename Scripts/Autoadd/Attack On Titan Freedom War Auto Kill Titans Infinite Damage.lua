getgenv().Farming = true -- change to false to stop


while wait() do
if not getgenv().Farming then return end
for i, v in pairs(workspace.OnGameTitans:GetChildren()) do
if v:FindFirstChild("Nape") and v.Humanoid.Health > 1 then
local nape = v.Nape --nape found
game.Players.LocalPlayer.Character.PrimaryPart.CFrame = nape.CFrame

--attacking
local target = nape
local damage = math.huge -- change it to how much dmg you want
game.Players.LocalPlayer.Character.PrimaryPart.CFrame = nape.CFrame
local Event = game.Players.LocalPlayer.Character.Gear.Events.HitEvent
Event:FireServer(target, damage)
--

elseif not v:FindFirstChild("Nape") then
wait(2)
end
end
end