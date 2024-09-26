local chest = workspace.Finish.Chest

local function fireTouchInterest()
    local touchInterest = chest:FindFirstChildOfClass("TouchTransmitter")
    
    if touchInterest then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, chest, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, chest, 1)
    else
        warn("just gimme my moneyyy.")
    end
end

while true do
    fireTouchInterest()
    wait(0.1)
end