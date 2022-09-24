for _,v in pairs(game:GetService("Workspace")["ScavengerHuntTokens"]:GetChildren()) do
   wait(0.25)
   game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v:FindFirstChild("Meshes/Token_Icon").CFrame;
end