local Gems = game:GetService("Workspace").Gems
local LP = game:GetService("Players").LocalPlayer.Character

while wait() do
for _,v in pairs(Gems:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       firetouchinterest(LP.HumanoidRootPart, v.Parent, 0)
       firetouchinterest(LP.HumanoidRootPart, v.Parent, 1)
   end
end
end