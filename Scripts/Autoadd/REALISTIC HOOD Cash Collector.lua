   for i,v in pairs(game:GetService("Workspace"):GetChildren())do
if v.Name == "sCash" then
   wait(.1)
v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
end