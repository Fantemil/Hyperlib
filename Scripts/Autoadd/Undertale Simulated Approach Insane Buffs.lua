local e = {"ATKUP","DEFUP","HPREGEN","PWRREGEN","STUNIMMUNE"}
local key = "T"
game:GetService("UserInputService").InputBegan:Connect(function(inp)
   if inp.KeyCode == Enum.KeyCode[key] then
for i,buffs in pairs(e) do
game:GetService("ReplicatedStorage").passSkilltoServer:FireServer("giveEffect", buffs, 999, 999, game.Players.LocalPlayer.Character)
end end end)