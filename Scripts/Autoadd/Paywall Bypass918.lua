local Client = game.Players.LocalPlayer
local ClientUI = Client.PlayerGui

game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BlackBars"):Destroy()

for i,v in pairs(ClientUI:GetDescendants()) do
    if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
        v.Visible = true
    end
end

game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Build").Enabled = false
