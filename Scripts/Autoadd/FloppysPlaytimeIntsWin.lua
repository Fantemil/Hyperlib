if game.PlaceId == 8012821049 then
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart",true)
repeat task.wait() until game:GetService("Workspace").Queues.Queue1.UI.Players.Count.Text == "0/1"
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queues.Queue1.Collision, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Queues.Queue1.Collision, 1)
end

if game.PlaceId == 8031832409 then
repeat task.wait() until game:IsLoaded()
local currentWins = game:GetService("Players").LocalPlayer.leaderstats.Wins.Value
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart",true)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Events.Triggers.BeatChapter, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Events.Triggers.BeatChapter, 1)
repeat task.wait() until currentWins ~= game:GetService("Players").LocalPlayer.leaderstats.Wins.Value
game:GetService("TeleportService"):Teleport(8012821049)
end