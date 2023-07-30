local settings = {
    team = "Yin", -- Yin or Yang
    neutral = true -- Kill neutral or not
}
shared.farm = true


function gotoPlayers()
    if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
    end
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate() 
    for _,v in next, game:GetService("Players"):GetChildren() do
        local team = tostring(v["Team"])
        if settings.neutral == true then
            if team:find(settings.team) or team:find("Neutral") then
                if v:FindFirstChild("leaderstats").Class.Value == "True Immortal" then continue end
                    game:GetService("Players").LocalPlayer.Character:PivotTo(v.Character:GetPivot())
                    task.wait(0.1)
            end
        else
            if team:find(settings.team) then
                if v:FindFirstChild("leaderstats").Class.Value == "True Immortal" then continue end
                game:GetService("Players").LocalPlayer.Character:PivotTo(v.Character:GetPivot())
                task.wait(0.1)
            end
        end
        if not shared.farm then break end
    end
end

while shared.farm do
    pcall(function()
        task.wait()
        gotoPlayers()
    end) 
end