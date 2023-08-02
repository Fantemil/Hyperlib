local folder = game.Workspace.Stickers

for i, Obj in next, folder:GetChildren() do
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Obj.CFrame
   wait(0.3)
end