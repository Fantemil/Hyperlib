--always buy speed and get infinite studs
while wait(0.1)do
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.BuyService.RF.BuySM:InvokeServer()
local args = {
    [1] = math.huge,
    [2] = CFrame.new(0.8248045444488525, 2.6709859371185303, 231.63882446289062) * CFrame.Angles(3.141592502593994, -1.5099580252808664e-07, 3.141592502593994)
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.SpeedMultiplierService.RE.Reset:FireServer(unpack(args))
end