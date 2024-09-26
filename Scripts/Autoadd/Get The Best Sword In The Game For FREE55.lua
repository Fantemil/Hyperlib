game.StarterGui:SetCore("SendNotification", {
    Title = "Subscribe To xMiles_Games";
    Text = "Subscribe For More Scripts"; -- what the text says (ofc)
    Duration = 5;
})

local args = {
    [1] = "Winning Sword"
}

game:GetService("ReplicatedStorage"):WaitForChild("GameRemotes"):WaitForChild("BuyEvent"):FireServer(unpack(args))
