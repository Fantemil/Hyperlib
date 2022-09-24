getgenv().on = true
local player = game.Players.LocalPlayer
local event = game:GetService("ReplicatedStorage").GameRemotes.DamageEvent

function mob()
   for i,v in pairs(game:GetService("Workspace").MobHolder:GetChildren()) do
       if v:FindFirstChild("HumanoidRootPart") and on then
           if player.Backpack:FindFirstChild("Larry") then
               player.Backpack:FindFirstChild("Larry").Parent = player.Character
           end
           wait()
           local v1 = v.HumanoidRootPart
           local v2 = v.Enemy
           local v3 = player.Character.Larry
           event:FireServer(v1, v2, v3)
           player.Character.HumanoidRootPart.CFrame = CFrame.new(27.9057007, 489.206207, -447.703979, 1, 0, 0, 0, 1, 0, 0, 0, 1)
       end
   end
end

while wait() do
   if on ~= true then return end
   pcall(function() mob() end)
end