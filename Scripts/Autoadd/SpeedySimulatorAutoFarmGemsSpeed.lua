getgenv().AutoFarm = true
while AutoFarm do wait()
   pcall(function()
for i = 1,2 do
game:GetService("ReplicatedStorage").Events.clickRE:FireServer()

for _,v in pairs(game:GetService("Workspace").ballsFolder.Zone1:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
               end
end
   for i,v in pairs(game:GetService("Workspace").ballsFolder.Zone1:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  =  v.CFrame
end end

for i,v in pairs(game.Workspace.Rings:GetDescendants()) do
   if v:IsA("MeshPart") then
       v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end end
end end) end