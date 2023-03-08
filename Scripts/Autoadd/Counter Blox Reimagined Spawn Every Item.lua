local events = game:GetService("ReplicatedStorage").Events
local player = game:GetService("Players").LocalPlayer

local head = player.Character.Head
for i, v in next, game.ReplicatedStorage.Weapons:GetChildren() do
   events.Drop:FireServer(v, head.CFrame*CFrame.new(0, 0, -5), 12, 24, false, player, false, false)
end