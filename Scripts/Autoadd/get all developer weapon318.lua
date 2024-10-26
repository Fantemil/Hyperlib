local devTools = game:GetService("ReplicatedStorage").DeveloperTools

for _, tool in pairs(devTools:GetChildren()) do
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Backpack,
        [2] = tool
    }

    game:GetService("ReplicatedStorage").Events.ToolChosen:FireServer(unpack(args))
end