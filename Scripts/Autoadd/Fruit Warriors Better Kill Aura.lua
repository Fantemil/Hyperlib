getgenv().sets = {
   KillAura = true,
   range = 20,
   Weapon = "Combat"
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetClosest()
   local Character = LocalPlayer.Character
   local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
   if not (Character or HumanoidRootPart) then return end

   local TargetDistance = sets.range
   local Target

   for i,v in ipairs(game:GetService("Workspace").Mobs:GetChildren()) do
       if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") ~= nil then
           local mag = (HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
           if mag < TargetDistance then
               TargetDistance = mag
               Target = v
           end
       end
   end

   return Target
end

task.spawn(function()
   while task.wait() do
       if sets.KillAura then
           if GetClosest() ~= nil and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character.Humanoid.Health ~= 0 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
               game:GetService("ReplicatedStorage").Remotes.Mouse1Combat:FireServer(sets.Weapon)
               game:GetService("ReplicatedStorage").Remotes.M1sDamage:FireServer(sets.Weapon,GetClosest())
           end
       end
   end
end)