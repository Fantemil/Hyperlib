local plr           = game:GetService("Players").LocalPlayer
local chr           = plr.Character
local rootPart      = chr.HumanoidRootPart

_G.killall = true

local function killaura()
   local ohString1 = "Combo1"
   game:GetService("ReplicatedStorage").PassadorDeDados:FireServer(ohString1)
end

spawn(function()
   while wait() do
       if _G.killall then
           pcall(function()
               for i,v in pairs(game.Players:GetPlayers()) do
                   if v ~= plr then
                       if v.Character.Humanoid.Health > 0 then
                           rootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                           killaura()
                       end
                   end
               end
           end)
       end
   end
end)