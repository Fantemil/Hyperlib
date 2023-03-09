getgenv().a = true
while getgenv().a == true do
for i ,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
   if v:IsA("MeshPart") then
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   end
end
wait()
end