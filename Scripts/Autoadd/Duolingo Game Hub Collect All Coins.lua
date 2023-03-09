local level1 = game:GetService("Workspace")["Level_1"].L1;
local level2 = game:GetService("Workspace")["Level_2"].L2;
local level3 = game:GetService("Workspace")["Level_3"].L3;

for i, v in next, level1:GetChildren() do
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   wait(0.1)
end
for i, v in next, level2:GetChildren() do
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   wait(0.1)
end
for i, v in next, level3:GetChildren() do
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   wait(0.1)
end