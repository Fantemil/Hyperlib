--/ max distance is 600 studs
getgenv().toggled = true --/ true & false

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

if getgenv().toggled then
 require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
  local nearestDistance, nearestEnemy = 600, nil
     for i,v in pairs(game:GetService("Players"):GetPlayers()) do
      if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
          if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
           nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
          end
      end
     end
     local arg = {old(...)}
     if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
      arg[1] = nearestEnemy.Character.HumanoidRootPart
      arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
  end
     return unpack(arg)
 end
else
 require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
end