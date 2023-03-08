local attackPlayerRemote = game:GetService("ReplicatedStorage").Remotes.InflictTargetHeyYA

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
function getGun()
   for i, v in pairs(localPlayer.Backpack:GetChildren()) do
       if v:IsA("Tool") and v:FindFirstChild("Setting") then return v end
   end

   if localPlayer.Character then
       for i, v in pairs(localPlayer.Character:GetChildren()) do
           if v:IsA("Tool") and v:FindFirstChild("Setting") then return v end
       end
   end  
end

function attackPlayer(Player)
   if not Player.Character or not Player.Character:FindFirstChild("Humanoid") or Player.Character.Humanoid.Health == 0 then return end

   local Character = Player.Character
   local Humanoid = Character:FindFirstChild("Humanoid")
   local HRP = Character:FindFirstChild("HumanoidRootPart")
   local Head = Character:FindFirstChild("Head")

   if not HRP or not Head then return end
   attackPlayerRemote:InvokeServer(getGun(), localPlayer, Humanoid, HRP, math.huge, {0, 0, false, false, 100, 100}, {false, 5, 3}, {false, {1930359546},1,1.5,1,})
end

function characterAdded(Character)
   local Player = Players:GetPlayerFromCharacter(Character)
   attackPlayer(Player)
   repeat task.wait(1)
       attackPlayer(Player)
   until not Character
end

for i, v in pairs(Players:GetPlayers()) do
   if v ~= localPlayer then
       task.spawn(attackPlayer, v)
       v.CharacterAdded:Connect(characterAdded)
   end
end

Players.PlayerAdded:Connect(function(Player)
   task.spawn(attackPlayer, Player)
   Player.CharacterAdded:Connect(characterAdded)
end)