-- // Checks

repeat wait() until game:IsLoaded()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 print("Credits randomguy?#1607")                                                                    

print("credits | randomguy?#1607")

-- // Declarations

-- // Variables

local Plr = game:GetService("Players").LocalPlayer

-- // Functions

-- // Settings

getgenv().SETTINGS = {
   PLAYERS_KILLAURA = false, -- kills any players that are close!
   AUTO_FARM_MOBS = true, -- farms mobs aka teleport under ground
   ANTI_NAME_TAG = true, -- not added yet!
   MOB_KILLAURA = true, -- kills any mobs that are close!
   AUTO_REBRITH = true, -- auto rebirth using the clicks
   AUTO_CLICKS = true, -- auto clicks fasta!!!
   DEBUG_MODE = false, -- utterlly useless
   NOCLIP = true -- Leave this on when auto-farming
}

getgenv().AUTO_FARM_AREA = "Seaside" -- // "Home" or "Farm" or "Seaside"

-- // Code

spawn(function()
   if SETTINGS.NOCLIP then
       game:GetService('RunService').RenderStepped:Connect(function()
           Plr.Character.Humanoid:ChangeState(11)
       end)
   end
end)

spawn(function() -- // AUTO_CLICKS
   while wait() do
       if SETTINGS.AUTO_CLICKS then
           local AUTO_CLICKS_STRING1 = "clicks"
           game:GetService("ReplicatedStorage").Events.Click:FireServer(AUTO_CLICKS_STRING1)
       end
   end
end)

spawn(function() -- // AUTO_REBIRTH
   while wait() do
       if SETTINGS.AUTO_REBRITH then
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer("Rebirth")
       end    
   end
end)

spawn(function() -- // MOB_KILLAURA
   while wait() do
       if SETTINGS.MOB_KILLAURA then
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanCanComboAttack", false)
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", false)
               for i, a in ipairs(game:GetService("Workspace").Monsters:GetChildren()) do
                   if a:FindFirstChild("HumanoidRootPart") and Plr:DistanceFromCharacter(a:FindFirstChild("HumanoidRootPart").Position) < 30 then
                       game:GetService("ReplicatedStorage").Events.Combat:FireServer("ToolHit", a, false)
                   end
               end
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanCanComboAttack", true)
       end
   end
end)

spawn(function() -- // PLAYERS_KILLAURA
   while wait() do
       if SETTINGS.PLAYERS_KILLAURA then
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanCanComboAttack", false)
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", false)
               for i, Player in pairs(game:GetService("Players"):GetPlayers()) do
                   if Player.Name ~= Plr.Name and Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Plr:DistanceFromCharacter(Player.Character:FindFirstChild("HumanoidRootPart").Position) < 30 and Player.Character:FindFirstChild("SafeZone") and Player.Character:FindFirstChild("SafeZone"):FindFirstChild("SafeZone").Value == false then
                       if SETTINGS.DEBUG_MODE then print(Player.Character) end
                       game:GetService("ReplicatedStorage").Events.Combat:FireServer("ToolHit", Player.Character, false)
                   end
               end
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
           game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanCanComboAttack", true)
       end
   end
end)

spawn(function() -- // AUTO_FARM_MOBS
   local MOBS_FOLDER = game:GetService("Workspace"):FindFirstChild("Monsters")
   if Plr.Character:FindFirstChild("SafeZone"):FindFirstChild("SafeZone").Value == true then
       game:GetService("ReplicatedStorage").Events.EquipWeapon:FireServer()
       game:GetService("ReplicatedStorage").Events.Arcana:FireServer("Transform", true)
       game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
       game:GetService("ReplicatedStorage").Events.PetTransform:FireServer(true)
   end
   while wait() do
       if SETTINGS.AUTO_FARM_MOBS then
           if AUTO_FARM_AREA == "Home" then
               if Plr.Character and Plr.Character:FindFirstChild("SafeZone") and Plr.Character.SafeZone:FindFirstChild("SafeZone").Value == true then
                   game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
               end
               for i, a in pairs(MOBS_FOLDER:GetChildren()) do
                   if string.find(a.Name, "Slime") then
                       if a and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and a:FindFirstChild("Monster") and a:FindFirstChild("Monster").Health > 0 and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                           repeat wait()
                               local position = a:FindFirstChild("HumanoidRootPart").CFrame
                               Plr.Character.HumanoidRootPart.CFrame = CFrame.new(position.X, position.Y, position.Z) + Vector3.new(0, -20, 0)
                           until a:FindFirstChild("Monster").Health <= 0
                       end
                   else
                       Plr.Character.HumanoidRootPart.CFrame = CFrame.new(116.514565, 43.0863953, -101.520134)
                   end
               end
           elseif AUTO_FARM_AREA == "Farm" then
               if Plr.Character and Plr.Character:FindFirstChild("SafeZone") and Plr.Character.SafeZone:FindFirstChild("SafeZone").Value == true then
                   game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
               end
               for i, a in pairs(MOBS_FOLDER:GetChildren()) do
                   if string.find(a.Name, "Cabbage") or string.find(a.Name, "Sheep") or string.find(a.Name, "Rabbit") then
                       if a and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and a:FindFirstChild("Monster") and a:FindFirstChild("Monster").Health > 0 and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                           repeat wait()
                               local position = a:FindFirstChild("HumanoidRootPart").CFrame
                               Plr.Character.HumanoidRootPart.CFrame = CFrame.new(position.X, position.Y, position.Z) + Vector3.new(0, -20, 0)
                           until a:FindFirstChild("Monster").Health <= 0
                       end
                   else
                       Plr.Character.HumanoidRootPart.CFrame = CFrame.new(116.514565, 43.0863953, -101.520134)
                   end
               end
           elseif AUTO_FARM_AREA == "Seaside" then
               if Plr.Character and Plr.Character:FindFirstChild("SafeZone") and Plr.Character.SafeZone:FindFirstChild("SafeZone").Value == true then
                   game:GetService("ReplicatedStorage").Events.Combat:FireServer("SetCanAttack", true)
               end
               for i, a in pairs(MOBS_FOLDER:GetChildren()) do
                   if string.find(a.Name, "Snail") or string.find(a.Name, "Crab") or string.find(a.Name, "Undine") then
                       if a and Plr.Character and Plr.Character:FindFirstChild("Humanoid") and Plr.Character:FindFirstChild("HumanoidRootPart") and a:FindFirstChild("HumanoidRootPart") and a:FindFirstChild("Monster") and a:FindFirstChild("Monster").Health > 0 and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
                           repeat wait()
                               local position = a:FindFirstChild("HumanoidRootPart").CFrame
                               Plr.Character.HumanoidRootPart.CFrame = CFrame.new(position.X, position.Y, position.Z) + Vector3.new(0, -20, 0)
                           until a:FindFirstChild("Monster").Health <= 0
                       end
                   else
                       Plr.Character.HumanoidRootPart.CFrame = CFrame.new(116.514565, 43.0863953, -101.520134)
                   end
               end
           end
       end
   end
end)