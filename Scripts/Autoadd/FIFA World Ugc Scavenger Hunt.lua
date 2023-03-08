local folder = game.Workspace.ScavengerHunt.Step1.Objects

for i, Obj in next, folder:GetChildren() do
if Obj.Name:match("Symbol") then
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Obj.Root.CFrame
  wait(0.3)
end
end