-- Streetz War Anti-Cheat Bypass

local debounce = false

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetChildren()) do
   if v.Name == "RbxCharacterSounds" or v.Name == "Clearall" then -- Locates each "Anti-Cheat script"
       for i,v in pairs(getconnections(v.Changed)) do -- Gets each connection (userdata) that is utilized by the Changed event
           v:Disable()
       end
       for i,v in pairs(getconnections(v.AncestryChanged)) do
           v:Disable()
       end
       debounce = true -- Lets the script know its time to disable the Anti-Cheat for real
   end
end

if debounce then
   print("Script may now disable Anti-Cheat")
   for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetChildren()) do
       if v.Name == "RbxCharacterSounds" then
           v.Disabled = true
       end
       if v.Name == "Clearall" then
           v.Disabled = true
       end
   end
end

if game:GetService("Players").LocalPlayer.PlayerScripts.RbxCharacterSounds.Disabled then
   print("Check Disabled (May break movement sounds)")
end

if game:GetService("Players").LocalPlayer.PlayerScripts.Clearall.Disabled then
   print("Anti-Cheat Disabled")
end