local plr = game.Players.LocalPlayer.Name

local chair = workspace:WaitForChild("Restaurants"):FindFirstChild(plr) 
    and workspace.Restaurants[plr]:FindFirstChild("Addments") 
    and workspace.Restaurants[plr].Addments:FindFirstChild("Chairs") 
    and workspace.Restaurants[plr].Addments.Chairs:FindFirstChild("1-1")

if chair then
    local args = {
        [1] = "Money",
        [2] = chair,
        [3] = 9e9
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Clients"):FireServer(unpack(args))
else
    local msg = Instance.new("Message")
    msg.Parent = game.Workspace
    msg.Text = "Buy the table first!"
    
    game:GetService("Debris"):AddItem(msg, 3)
end
