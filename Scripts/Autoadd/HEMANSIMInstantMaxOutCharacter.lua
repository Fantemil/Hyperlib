getgenv().Loop = true

local button = game.Players.LocalPlayer.PlayerGui.RebirthGui.Dialogue.RebirthButton
local ohNumber1 = 99999

while Loop and wait() do
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.WeaponService.RE.WeaponUsed:FireServer(ohNumber1)
local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
for i,v in pairs(events) do
for i,v in pairs(getconnections(button[v])) do
v:Fire()
end
end
end