_G.Active = true -- toggle on/off
while _G.Active do
  wait(0.1)
for i,v in pairs(game:GetService("Workspace").Trefles:GetChildren())do
if v:IsA("MeshPart") then
workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame
end
end
end