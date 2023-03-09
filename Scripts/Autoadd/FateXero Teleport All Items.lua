game:GetService("Workspace").Items.ChildAdded:connect(function(thing)
   b = thing:WaitForChild("Handle")
   b.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)