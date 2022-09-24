local Keybind = "E" -- Put keybind here


local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(key,gp)
   if key.KeyCode == Enum.KeyCode[Keybind] and gp == false then
   for i,v in pairs(game.Players:GetPlayers()) do
       for k = 1,5 do
local ohTable1 = {
[1] = v,
[2] = {
["charge_amm"] = 0,
["scope_shot"] = false
},
[3] = "GR338",
[4] = false
}

workspace.GameMain.ApplyDamage:FireServer(ohTable1)
           end
       end
   end
end)