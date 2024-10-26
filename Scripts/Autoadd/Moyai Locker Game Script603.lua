game.Players.LocalPlayer.PlayerScripts.LockerPurgatory.Disabled = true
local args = {
    [1] = {
        ["Money"] = 9999678289,
        ["OwnedProducts"] = {
            ["Double Speed"] = true,
            ["20X Speed"] = true,
            ["No Cooldown"] = true,
            ["5X Speed"] = true,
            ["Pay Your Moai Taxes"] = true,
            ["Free Cam"] = true,
            ["Lobby Access"] = true,
            ["300X Speed"] = true
        }
    }
}

game:GetService("ReplicatedStorage").Remotes.SaveData:FireServer(unpack(args))
game.Players.LocalPlayer:Kick("Done, rejoin")