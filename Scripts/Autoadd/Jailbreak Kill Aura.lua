getgenv().toggled = true-- change this to false to stop kill aura. 

if getgenv().killauraloaded then return end

local old = require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

local function getNearestEnemy()
    local nearestDistance, nearestEnemy = 1000, nil
    local myTeam = tostring(game:GetService("Players").LocalPlayer.Team)
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        local theirTeam = tostring(v.Team)
     if ((myTeam == "Police" and theirTeam == "Criminal") or theirTeam == "Police") and theirTeam ~= myTeam and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
      if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
          nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
      end
     end
 end
    return nearestEnemy
end
local function shoot()
    local currentGun = require(game:GetService("ReplicatedStorage").Game:WaitForChild("ItemSystem"):WaitForChild("ItemSystem")).GetLocalEquipped()
    if not currentGun then return end
    require(game:GetService("ReplicatedStorage").Game:WaitForChild("Item"):WaitForChild("Gun"))._attemptShoot(currentGun)
end
getgenv().killauraloaded = true
while wait(0.5) do
 if getgenv().toggled == false then continue end
 if not game:GetService("Players").LocalPlayer.Character then continue end
 if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then continue end
 
    local nearestEnemy = getNearestEnemy()
    if nearestEnemy then
        require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
         local arg = {old(...)}
         if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy and nearestEnemy.Character and nearestEnemy.Character:FindFirstChild("HumanoidRootPart") and nearestEnemy.Character:FindFirstChild("Humanoid") and (nearestEnemy.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 600 and nearestEnemy.Character.Humanoid.Health > 0 then
            arg[1] = nearestEnemy.Character.HumanoidRootPart
            arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
        end
         return unpack(arg)
     end
     if not game:GetService("Players").LocalPlayer.Folder:FindFirstChild("Pistol") then
         fireclickdetector(workspace.Givers:GetChildren()[17].ClickDetector)
     end
     if game:GetService("Players").LocalPlayer.Folder:FindFirstChild("Pistol") then
         while game:GetService("Players").LocalPlayer.Folder:FindFirstChild("Pistol") and nearestEnemy and nearestEnemy.Character and nearestEnemy.Character:FindFirstChild("HumanoidRootPart") and nearestEnemy.Character:FindFirstChild("Humanoid") and (nearestEnemy.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 600 and nearestEnemy.Character.Humanoid.Health > 0 do
             game:GetService("Players").LocalPlayer.Folder.Pistol.InventoryEquipRemote:FireServer(true)
             wait()
             shoot()
         end
     end
     if game:GetService("Players").LocalPlayer.Folder:FindFirstChild("Pistol") then
         game:GetService("Players").LocalPlayer.Folder.Pistol.InventoryEquipRemote:FireServer(false)
     end
    else
        require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = old
    end
end