for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
   if v:IsA("LocalScript") then
       if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
           v:Destroy()
       end
   end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
   if v:IsA("LocalScript") then
       if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
           v:Destroy()
       end
   end
end