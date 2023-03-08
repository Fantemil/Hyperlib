local generate_key = "g" --set to whatever key you want, this is the toggle for the script
local interval = 0.00001 --Interval between jumps, set to 0 if you really feel like spamming it.
--Make sure game saves before leaving!
generate = false
m = game.Players.LocalPlayer:GetMouse()
m.KeyDown:connect(function(key)
if key == generate_key then
if generate == true then generate = false
elseif
generate == false then generate = true
while generate == true do
wait(interval)
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.JumpService.RE.Tap:FireServer()
end
end
end
end)