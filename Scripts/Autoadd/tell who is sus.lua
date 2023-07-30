local wrk = game:GetService("Workspace")

for _, char in ipairs(wrk.Players.Characters:GetChildren()) do
    local exp = char:FindFirstChild("EXP_HIGHLIGHT")
    if exp then
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "This guy is an exploiter!",
                Text = char.Name,
                Icon = "",
                Duration = 5
            }
        )
    --else

    --print(char.Name, "is not exploiting!")
    end
end
