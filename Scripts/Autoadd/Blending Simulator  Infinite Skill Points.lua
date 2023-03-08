local args = {
    [1] = workspace.Quests.Quest_Jarro
}

game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Quest_Menu.QuestHandler:FireServer(unpack(args))
local args = {
    [1] = 1,
    [2] = "Quest_Jarro",
    [3] = false
}

game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Quest_Menu.ClaimQuest:FireServer(unpack(args))