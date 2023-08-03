keybind = "C"



game:GetService("UserInputService").InputBegan:Connect(function(i, v)
    if v then return end
    if i.KeyCode == Enum.KeyCode[keybind] then
        counted = 0
        for i,v in pairs(game.Workspace.Items:GetChildren()) do
            print(v)
            counted = i
            counted -= 15
            items = tostring(counted)
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Items",
            Text = items,
            Duration = 4
        })
    end
end)
