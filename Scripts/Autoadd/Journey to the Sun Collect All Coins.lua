local plr = game.Players.LocalPlayer
local char = plr.Character
--
for _,v in pairs(game:GetService("Workspace"):GetChildren())do
   if v.Name == 'Coin' and v:IsA("Part") then
       char:SetPrimaryPartCFrame(v.CFrame)
       task.wait(.2)
   end
end