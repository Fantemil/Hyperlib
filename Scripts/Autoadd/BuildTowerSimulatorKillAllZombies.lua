_G.Toggle = true


while _G.Toggle do wait(0.08)
   for i,v in pairs(workspace.Monsters:GetChildren()) do
local ohString1 = "takeDamage"
local ohTable2 = {
["target"] = workspace.Monsters[tostring(v)],
["toolName"] = "M9"
}

game:GetService("ReplicatedStorage").RemoteEvent.WeaponRemoteEvent:FireServer(ohString1, ohTable2)
   end
end