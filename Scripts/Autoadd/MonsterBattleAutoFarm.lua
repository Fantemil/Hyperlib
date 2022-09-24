setsimulationradius(math.huge,math.huge)
game.RunService.RenderStepped:Connect(function()
pcall(function()
local en = workspace.Enemies:FindFirstChild("Head",true)
local v=en.Parent
if v.Humanoid.Health>0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=en.CFrame*CFrame.new(0,0,5)
wait()
v.Humanoid.Health=0
else
en:Destroy()
end
end)
end)