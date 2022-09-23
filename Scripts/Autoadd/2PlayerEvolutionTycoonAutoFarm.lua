getgenv().isEnabled = true

local LocalPlayer = game:GetService("Players").LocalPlayer
local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
local FruitsFolder = game:GetService("Workspace").Fruits
local KoTHPole = game:GetService("Workspace").KoTH.Pole
while isEnabled and task.wait() do
   for _,v in next, FruitsFolder:GetChildren() do
       if v.Name ~= "Bomb" then
           HumanoidRootPart.CFrame = v.Part.CFrame
           task.wait(.3)
       end
       if not v or v.Name == "Bomb" then
           HumanoidRootPart.CFrame = KoTHPole.CFrame
       end
   end
end