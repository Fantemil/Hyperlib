while wait() do
 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
  if v then
   if v:GetRoleInGroup(9511290) and string.find(tostring(v:GetRoleInGroup(9511290):lower()),"mod") or string.find(tostring(v:GetRoleInGroup(9511290):lower()),"admi") or string.find(tostring(v:GetRoleInGroup(9511290):lower()),"manage") or string.find(tostring(v:GetRoleInGroup(9511290):lower()),"det") then
    game:GetService("Players").LocalPlayer:Kick("TRIGGERED AUTO LEAVE AN ADMIN HAS JOINNED YOUR SERVER ("..v.Name..")")
    break
   end
  end
 end
end