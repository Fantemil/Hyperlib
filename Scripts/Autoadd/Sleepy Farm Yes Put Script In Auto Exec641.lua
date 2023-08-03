repeat wait() until game:IsLoaded() 
wait(5)

pcall(function()
wait(1800)
game:GetService('TeleportService'):Teleport(game.PlaceId)
end)

local function GetClosestPlayer()
   local target = nil
   local distance = math.huge
   for i,v in pairs(game.Players:GetChildren()) do
       if v.Character and v.Character.HumanoidRootPart and v ~= game.Players.LocalPlayer then
           local plrdist = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
           if plrdist < distance then
               target = v
               distance = plrdist
           end
       end
   end
   return target
end
end

while wait() do 
pcall(function()
if (game:GetService("Workspace").Lobby.SpawnLocation.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.SpawnLocation.CFrame
elseif (game:GetService("Workspace").Lobby.SpawnLocation.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame
game:GetService("ReplicatedStorage").Remotes.Combat:FireServer()
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("One", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Two", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Three", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Four", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Five", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Six", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("E", GetClosestPlayer().Character:FindFirstChildOfClass('Humanoid').RootPart.Position)
end 
end)
end

game.Players.PlayerRemoving:connect(function(plr)
   if plr == game.Players.LocalPlayer or #game.Players:GetChildren() <= 3 then
     game:GetService('TeleportService'):Teleport(game.PlaceId)
   end
end)