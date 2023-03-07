local players = game:GetService("Players")
   local player = players.LocalPlayer

local tool = ( player.Backpack:FindFirstChild("Pistol") or player.Character.Pistol )
local takeDamage = tool.Remotes.TakeDamage

for _, humanoid in ipairs( workspace:GetDescendants() ) do
   if ( humanoid == player.Character.Humanoid or not humanoid:IsA("Humanoid") ) then continue end
   takeDamage:FireServer( humanoid, math.huge )
end