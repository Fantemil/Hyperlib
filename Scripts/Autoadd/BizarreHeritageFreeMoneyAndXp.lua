for i = 1, 1000 do
local ohString1 = "GiveQuest"
local ohString2 = "FinishQuest"
game:GetService("Players").LocalPlayer.PlayerGui.Shigechi.RemoteEvent:FireServer(ohString1)
game:GetService("Players").LocalPlayer.PlayerGui.Shigechi.RemoteEvent:FireServer(ohString2)
end