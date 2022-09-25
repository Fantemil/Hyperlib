-- Inf Gems
local args = {
    [1] = "my_add_diamond",
    [2] = math.huge
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

-- Free Gold
for i = 1, 5000 do
    local args = {
        [1] = "Holder",
        [2] = {
            ["id"] = 17,
            ["index"] = 1,
            ["prop"] = {
                ["color"] = nil --[[Color3]] ,
                ["material"] = Enum.Material.Plastic,
                ["texture_id"] = "http://www.roblox.com/asset/?id=6907929273"
            }
        }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end

-- Auto Sell for free gold
getgenv().autosell = true
spawn(function()
    while task.wait() do
        if autosell then
            local interest = game:GetService("Workspace").base.HomeBuilding.SellBuilding.sellBuilding.trigger
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, interest, 0)
            task.wait()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, interest, 1)
        end
    end
end)