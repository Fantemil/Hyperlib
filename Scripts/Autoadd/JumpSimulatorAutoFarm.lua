--RUN IT 10+ TIMES FOR MAXIMUM PROFIT

getgenv().autofarm = true -- toggleable (true/false)

spawn(function()
while true do
    wait(0.0000000001)
    if not getgenv().autofarm then break end
local args = {
    [1] = math.huge,
    [2] = 420420420420420
}

game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))
game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
    end
end)