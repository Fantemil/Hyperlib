getgenv().config = {
    ["boolen"] = true, -- so u can toggle obv
    ["KeyCode"] = "Z",
    ["Area"] = "BuggyQuest1",
    ["QuestNumber"] = 2,
}

game:GetService("UserInputService").InputBegan:Connect(function(KeyInput)
    if KeyInput.KeyCode == Enum.KeyCode[config.KeyCode] then
        if boolen then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", config.Area, config.QuestNumber)
        end
    end
end)