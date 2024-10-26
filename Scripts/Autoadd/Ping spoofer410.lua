--[[ DISCORD LINK FOR SOLARA HELP/ANNOUNCEMENTS: https://discord.gg/2juhJsUUX4 --]]


getgenv().PingSpoofer = {
    SpoofPing = true,
    StartOfPingSpoofer = 31,
    EndOfPingSpoofer = 69
}

local Memory

for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
    if v.Name == 'PS_Button' and v.StatsMiniTextPanelClass.TitleLabel.Text == 'Ping' then 
        Memory = v.StatsMiniTextPanelClass.ValueLabel
    end
end

Memory:GetPropertyChangedSignal('Text'):Connect(function()
    if getgenv().PingSpoofer.SpoofPing then
        local Random = math.random(getgenv().PingSpoofer.StartOfPingSpoofer, getgenv().PingSpoofer.EndOfPingSpoofer)
        Random = Random * 1.23
        Memory.Text = Random .. ' ms'
    end
end)