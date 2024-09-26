while game.RunService.RenderStepped:wait() do
local args = {
    [1] = "Regular"
}
game:GetService("ReplicatedStorage").Packages.Knit.Services.NetService.RF.StartCatching:InvokeServer(unpack(args))
local args = {
    [1] = 199,
    [2] = 182.58029399625957
}
game:GetService("ReplicatedStorage").Packages.Knit.Services.NetService.RF.VerifyCatch:InvokeServer(unpack(args))
end