game.StarterGui:SetCore("SendNotification", {
    Title = "Subscribe To xMiles_Games";
    Text = "Subscribe For More Scripts"; -- what the text says (ofc)
    Duration = 60;
})

local args = {
    [1] = 1,
    [2] = "Robux4",
    [3] = {}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Function"):WaitForChild("[C-S]TryDrawReward"):InvokeServer(unpack(args))
