

        while wait() do
    local args = {
    [1] = 100
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.DataManagementService.RF.AddCoins:InvokeServer(unpack(args))
end

    