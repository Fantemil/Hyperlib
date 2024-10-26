game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {Title = "Executed", Text = "", Duration = 5, Icon = "rbxassetid://0"}
)
local gui = game.CoreGui.RobloxPromptGui.promptOverlay:WaitForChild("ErrorPrompt")
if gui then
    if #game.Players:GetPlayers() <= 1 then
        game.Players.LocalPlayer:Kick("Rejoining...")
        task.wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
end