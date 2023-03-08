-- KylnDantas#0001 (852649151132729344)

local plrchr = game:GetService('Players').LocalPlayer.Character;

plrchr.HumanoidRootPart.CFrame = CFrame.new(-280.401825, 281.419586, 1007.42279, -0.975934923, 3.34955956e-08, 0.218061909, 3.10059285e-08, 1, -1.48390171e-08, -0.218061909, -7.7207023e-09, -0.975934923) -- change to CFRAME of your body trainer zone
task.wait(1)
plrchr.UpperTorso.Waist:Remove()
task.wait(1)
plrchr.HumanoidRootPart.CFrame = CFrame.new(-2582.09814, 5516.43359, -499.842041, -0.809976757, 4.58084948e-08, 0.586461961, 1.01330535e-08, 1, -6.41149143e-08, -0.586461961, -4.59889371e-08, -0.809976757) -- change to CFRAME of your psychic trainer zone
task.wait(1)
for i, v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren()) do
   if v.Name == "Meditate" then
       v.Parent = game:GetService('Players').LocalPlayer.Character
       task.wait(.1)
       game:GetService('Players').LocalPlayer.Character:FindFirstChild("Meditate"):Activate()
   end
   end