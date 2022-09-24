getgenv().b = true
while getgenv().b == true do
for i ,v in pairs(game:GetService("Workspace").Treasures:GetChildren()) do
   if v:IsA("MeshPart") then
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   end
end
wait()
end