getgenv().TpWalking = true
getgenv().Speed = 10

local speaker = game:GetService("Players").LocalPlayer
local chr = speaker.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
local hb = game:GetService("RunService").Heartbeat
while getgenv().TpWalking and chr and hum and hum.Parent do
    local delta = hb:Wait()
    if hum.MoveDirection.Magnitude > 0 then
        chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().Speed) * delta * 10)
    else
        chr:TranslateBy(hum.MoveDirection * delta * 10)
    end
end