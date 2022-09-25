repeat wait() until game:IsLoaded() --antiafk
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
game:GetService('RunService').Stepped:connect(function()
game:GetService("ReplicatedStorage").ScoopsAhoy.RemoteEvents.CoinColectEvt:FireServer()
end)
while wait() do
game:GetService("ReplicatedStorage").ScoopsAhoy.RemoteEvents.GameStarted:FireServer()
wait(125)
game:GetService("ReplicatedStorage").Quests.Remote.CheckQuestStatus:FireServer()
end