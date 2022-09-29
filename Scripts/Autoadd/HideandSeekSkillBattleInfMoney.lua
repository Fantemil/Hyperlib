while true do
wait(0.1)
local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.CoinService.RF.GetCoin:InvokeServer(unpack(args))
end

--https://web.roblox.com/games/10447320248/BETA-Hide-and-Seek