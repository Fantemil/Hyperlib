 while wait() do
local args = {
    [1] = Vector3.new(-40.83100128173828, 4.252999782562256, -222.30299377441406)
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.StatService.RF.Sell:InvokeServer(unpack(args))
end