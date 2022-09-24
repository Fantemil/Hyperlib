game:GetService("RunService").Stepped:connect(function()
for i,v in pairs(game.Workspace.Interiors.MainMap.GingerbreadRig:GetChildren()) do
if v.Name == "ParticleHolder" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end end end)

spawn(function()
   while wait (2.5) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interiors.MainMap.RaceScriptable.Collection.Part.CFrame
end end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)