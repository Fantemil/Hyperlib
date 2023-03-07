local Players = game:GetService("Players")
local key_event = game:GetService("VirtualInputManager")
local Player = Players.LocalPlayer

if not Player.Character.Head:FindFirstChild("Aura1") then
key_event:SendKeyEvent(true, "N", false, game)
end

spawn(function()
Player.Character.Humanoid.Info.NenStam:GetPropertyChangedSignal("Value"):Connect(function()
   if Player.Character.Humanoid.Info.NenStam.Value >= 100 and not Player.Character.Head:FindFirstChild("Aura1") then
       key_event:SendKeyEvent(true, "N", false, game)
       end
end)
end)