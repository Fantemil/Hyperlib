local cooldown = 0.01-- If it lags (which i doubt) change this to like 0.5



while true do
    local Players = game:GetService("Players")

    for _, player in pairs(Players:GetPlayers()) do
        local character = player.Character
        if character then
            local parts = character:GetDescendants()
            for _, part in ipairs(parts) do
                if part:IsA("BasePart") then
                    if part.Transparency ~= 0 and part.Name ~= "HumanoidRootPart" then
                        part.Transparency = 0
                    end
                end
            end
        end
    end
    wait(cooldown)
end
