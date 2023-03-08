repeat 
    local c = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text)
    game:GetService("Players").YOURUSERHERE.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = c + 1
    game:GetService("ReplicatedStorage").lbrick:FireServer()
    wait(1.5)
until game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text=="1005"