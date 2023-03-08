local plr = game:service'Players'.LocalPlayer
local mouse = plr:GetMouse()
local toggled = false
local keyb = "`" --change ` to whatever key you want to toggle it with

mouse.KeyDown:Connect(function(Key)
if Key == keyb then
if toggled then
toggled = false
plr.GvOSCam.Value = false
else
toggled = true
plr.GvOSCam.Value = true
end
end
end)