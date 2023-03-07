getgenv().findGun = true
getgenv().items = {}
getgenv().gunMod = nil
getgenv().opGunRunning = false

function getHeldItem()
   local playerWS = game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name)

   while getgenv().findGun and getgenv().opGunRunning do
       local toolsDetected = false
       getgenv().items = {} -- clear the table on each loop
       if playerWS and playerWS:IsA("Model") then
           print("Getting Item...")
           local descendants = playerWS:GetDescendants()
           for i, v in pairs(descendants) do
               if v:IsA("Tool") then
                   table.insert(getgenv().items, v.Name)
                   toolsDetected = true
               end
           end
           for i = #getgenv().items, 1, -1 do
               local itemName = getgenv().items[i]
               local tool = playerWS:FindFirstChild(itemName)
               if not tool or not tool:IsA("Tool") then
                   table.remove(getgenv().items, i)
               end
           end
           if #getgenv().items > 0 then
               print("Tools found")
               getgenv().findGun = false -- set findGun to false when the gun is found
           else
               print("No tools found")
           end
       end
       wait(1)
   end
   print ("getHeldItem over")
   return getgenv().items
end

function findGunCfg(itemName)
   print ("starting search")
   local playerWS = game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name)
   if playerWS and playerWS:IsA("Model") then
       local gunTool = playerWS:FindFirstChild(itemName)
       if gunTool and gunTool:IsA("Tool") then
           local settingMod = gunTool:FindFirstChild("Setting")
           if settingMod and settingMod:IsA("ModuleScript") then
               local settingModDescendants = settingMod:GetDescendants()
               for _, descendant in ipairs(settingModDescendants) do
                   if descendant:IsA("ModuleScript") and descendant.Name == "1" then
                       getgenv().gunMod = descendant
                       print("found gunMod")
                       break
                   end
               end
           end
       end
   end
end

function gunStats()
   if getgenv().gunMod then
       print("finding gunMod")
       local gunCfg = require(getgenv().gunMod)
   
       if gunCfg then
           print("gunMod initialized")
       end
       
       if gunCfg and gunCfg.HoldDownEnabled then
           gunCfg.HoldDownEnabled = true
           print("Force Auto Enabled")
       end
       
   
       if gunCfg and gunCfg.BaseDamage then
           gunCfg.BaseDamage = 9999
           print("BaseDamage modified")
       end
       
       if gunCfg and gunCfg.AmmoPerMag then
           gunCfg.AmmoPerMag = 9999
           print("Infinite Ammo Enabled")
       end
       
       if gunCfg and gunCfg.ShotgunPump then
           gunCfg.ShotgunPump = false
       end
       
       if gunCfg and gunCfg.ShotgunReload then
           gunCfg.ShotgunReload = false
       end
       
       if gunCfg and gunCfg.ShotgunPumpinSpeed then
           gunCfg.ShotgunPumpinSpeed = 0.000000001
       end
       
       if gunCfg and gunCfg.ReloadTime then
           gunCfg.ReloadTime = 0.000000001
           print("Insta-Reload Enabled")
       end
       
       if gunCfg and gunCfg.FireRate then
           gunCfg.FireRate = 0.02
           print("Fast FireRate Enabled")
       end
       
       if gunCfg and gunCfg.Recoil then
           gunCfg.Recoil = 0.000000001            
       end
           
       if gunCfg and gunCfg.Accuracy then
           gunCfg.Accuracy = 1
       end
       
       if gunCfg and gunCfg.Spread then
           gunCfg.Spread = 0.000001
           print("NoSpread Enabled")
       end
       
       if gunCfg and gunCfg.CameraRecoilingEnabled then
           gunCfg.CameraRecoilingEnabled = false
           print("CameraRecoil Disabled")
       end

       if gunCfg and gunCfg.SelfDamage then
           gunCfg.SelfDamage = false
           print("SelfDamage Disabled")
       end
       
       if gunCfg and gunCfg.Knockback then
           gunCfg.Knockback = 10
       end
       
       if gunCfg and gunCfg.PenetrationAmount then
           gunCfg.PenetrationAmount = 1000
       end
       
       -- apply the modified configuration to the gun
       local playerWS = game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name)
       if playerWS and playerWS:IsA("Model") then
           local gunTool = playerWS:FindFirstChild(getgenv().items[1])
           if gunTool and gunTool:IsA("Tool") then
               local settingMod = gunTool:FindFirstChild("Setting")
               if settingMod and settingMod:IsA("ModuleScript") then
                   local gunMod = require(settingMod)
                   for key, value in pairs(gunCfg) do
                       gunMod[key] = value
                   end
               end
           end
       end
   end
end

function opGun()
   getgenv().opGunRunning = true
   while true do
       if #getHeldItem() > 0 then
           getgenv().findGun = false
           findGunCfg(getgenv().items[1])
           gunStats()
           break
       end
       wait(1)
   end
end

opGun()