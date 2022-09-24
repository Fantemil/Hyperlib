getgenv().Circle = {
   ["Size"] = 10,
   ["Enabled"] = true,
   ["Random FTI"] = false,
   ["Whitelisted Limbs"] = {"Left Arm","Right Arm","Left Leg","Right Leg","Head","Torso","HumanoidRootPart"}
}

getgenv().Configuration = {
   ["Active"] = true,
   ["Increase Size"] = 0.25,
   ["Decrease Size"] = 0.25,
   ["Notifications"] = true,
   ["Auto Clicker"] = false,
   ["Transparency Check"] = false,
   ["Team Check"] = false,
   ["Fake Handle FTI"] = false -- if true, will only trigger if a fake handle is present (use for advanced antis)
}

getgenv().Keybinds = {
   ["Toggle Reach"] = "R",
   ["Toggle AC"] = "E",
   ["Increase Reach"] = "J",
   ["Decrease Reach"] = "K",
   ["Toggle Script"] = "Z",
   ["Notifications Toggle"] = "N",
   ["Fake Handle FTI Toggle"] = "F"
}

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function SendNotification(Ti,Te)
   StarterGui:SetCore('SendNotification', {Title = tostring(Ti), Text = tostring(Te)})
end

local Mouse = LocalPlayer:GetMouse()

Mouse.KeyDown:Connect(function(key)
   if key == string.lower(getgenv().Keybinds["Toggle Reach"]) then
       if getgenv().Configuration["Active"] == false then return end
       getgenv().Circle["Enabled"] = not getgenv().Circle["Enabled"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","Reach = "..tostring(getgenv().Circle["Enabled"]))
       end
   elseif key == string.lower(getgenv().Keybinds["Toggle AC"]) then
       if getgenv().Configuration["Active"] == false then return end
       getgenv().Configuration["Auto Clicker"] = not getgenv().Configuration["Auto Clicker"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","AutoClicker = "..tostring(getgenv().Configuration["Auto Clicker"]))
       end
   elseif key == string.lower(getgenv().Keybinds["Fake Handle FTI Toggle"]) then
       if getgenv().Configuration["Active"] == false then return end
       getgenv().Configuration["Fake Handle FTI"] = not getgenv().Configuration["Fake Handle FTI"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","Fake Handle FTI = "..tostring(getgenv().Configuration["Fake Handle FTI"]))
       end
   elseif key == string.lower(getgenv().Keybinds["Increase Reach"]) then
       if getgenv().Configuration["Active"] == false then return end
       getgenv().Circle["Size"] = getgenv().Circle["Size"] + getgenv().Configuration["Increase Size"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","Size = "..getgenv().Circle["Size"])
       end
   elseif key == string.lower(getgenv().Keybinds["Decrease Reach"]) then
       if getgenv().Configuration["Active"] == false then return end
       getgenv().Circle["Size"] = getgenv().Circle["Size"] - getgenv().Configuration["Decrease Size"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","Size = "..getgenv().Circle["Size"])
       end
   elseif key == string.lower(getgenv().Keybinds["Notifications Toggle"]) then
       getgenv().Configuration["Notifications"] = not getgenv().Configuration["Notifications"]
       SendNotification("Xen-Zone","Notifications = "..tostring(getgenv().Configuration["Notifications"]))
   elseif key == string.lower(getgenv().Keybinds["Toggle Script"]) then
       getgenv().Configuration["Active"] = not getgenv().Configuration["Active"]
       if getgenv().Configuration["Notifications"] == true then
           SendNotification("Xen-Zone","Script = "..tostring(getgenv().Configuration["Active"]))
       end
   end
end)

hookfunction(gcinfo or collectgarbage, function(...)
   if getgenv().Configuration["Active"] == false then return end
   return math.random(200,400)
end)

local HPHook;

HPHook = hookmetamethod(game, "__index", function(H, HP)
   if not checkcaller() then
       if tostring(H) == "Humanoid" and tostring(HP) == "Health" then
           return 0
       end
   end
   return HPHook(H, HP)
end)

local HitParts = {}
local t = tick()

local FTI = function(hit,handle)
   local Humanoid = hit.Parent:FindFirstChild("Humanoid")
   if Humanoid and Humanoid.Health ~= 0 and hit.Parent.Name ~= LocalPlayer.Character.Name then
       if getgenv().Configuration["Transparency Check"] == true then if hit.Transparency > 0.8 then return end end
       local Region = Region3.new(handle.Position + Vector3.new(-1,-1,-1), handle.Position + Vector3.new(1,1,1))
       local InRegion = game:GetService("Workspace"):FindPartsInRegion3(Region)
       if getgenv().Configuration["Fake Handle FTI"] then
           for _,v in pairs(InRegion) do
               if v:IsA("Part") and v:FindFirstChildOfClass("TouchTransmitter") and v.Name ~= "Handle" then
                   if getgenv().Circle["Random FTI"] == true then
                       for i,parts in pairs(hit.Parent:GetChildren()) do
                           if parts:IsA("Part") then
                               if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
                                   if not table.find(HitParts,parts.Name) then
                                       if #HitParts >= 6 then table.clear(HitParts) end
                                       table.insert(HitParts,parts.Name)
                                       if math.abs(tick() - t) < 0.05 then return end
                                       t = tick()
                                       firetouchinterest(parts,handle,0)
                                       firetouchinterest(parts,handle,1)
                                       firetouchinterest(parts,v,0)
                                       firetouchinterest(parts,v,1)
                                   end
                               end
                           end
                       end
                   else
                       for i,parts in pairs(hit.Parent:GetChildren()) do
                           if parts:IsA("Part") then
                               if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
                                   firetouchinterest(parts,handle,0)
                                   firetouchinterest(parts,handle,1)
                                   firetouchinterest(parts,v,0)
                                   firetouchinterest(parts,v,1)
                               end
                           end
                       end
                   end
               end
           end
       else
           for _,v in pairs(InRegion) do
               if v:IsA("Part") and v:FindFirstChildOfClass("TouchTransmitter") then
                   if getgenv().Circle["Random FTI"] == true then
                       for i,parts in pairs(hit.Parent:GetChildren()) do
                           if parts:IsA("Part") then
                               if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
                                   if not table.find(HitParts,parts.Name) then
                                       if #HitParts >= 6 then table.clear(HitParts) end
                                       table.insert(HitParts,parts.Name)
                                       if math.abs(tick() - t) < 0.05 then return end
                                       t = tick()
                                       firetouchinterest(parts,v,0)
                                       firetouchinterest(parts,v,1)
                                   end
                               end
                           end
                       end
                   else
                       for i,parts in pairs(hit.Parent:GetChildren()) do
                           if parts:IsA("Part") then
                               if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
                                   firetouchinterest(parts,v,0)
                                   firetouchinterest(parts,v,1)
                               end
                           end
                       end
                   end
               end
           end
       end
   end
end

local IsTeam = function(Player)
   if Player.Team == LocalPlayer.Team then
       return true
   else
       return false
   end
end

game:GetService("RunService").RenderStepped:Connect(function()
   if getgenv().Configuration["Active"] == false then return end
   if getgenv().Circle["Enabled"] == false then return end
   local Tool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
   if Tool then
       if getgenv().Configuration["Auto Clicker"] and LocalPlayer.Character.Humanoid.Health ~= 0 then Tool:Activate() Tool:Activate() end
       local Handle = Tool:FindFirstChild("Handle")
       if Handle then
           local Size = getgenv().Circle["Size"]
           if getgenv().Configuration["Team Check"] == true then
               for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                   if IsTeam(v) == false then
                       local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                       if HRP then
                           local Distance = (HRP.Position - Handle.Position).Magnitude
                           if Distance <= Size then
                               FTI(HRP,Handle)
                           end
                       end
                   end
               end
           else
               for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                   local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
                   if HRP then
                       local Distance = (HRP.Position - Handle.Position).Magnitude
                       if Distance <= Size then
                           FTI(HRP,Handle)
                       end
                   end
               end
           end
       end
   end
end)