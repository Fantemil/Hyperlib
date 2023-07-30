repeat wait() until game:IsLoaded()
if game.PlaceId == 5591597781 then
    local tp = game.Players.LocalPlayer:WaitForChild("PlayerGui",60):WaitForChild("RoactGame",60):WaitForChild("Rewards",60):WaitForChild("content",60):WaitForChild("gameOver",60)
    repeat wait(1) until tp.Visible == true
    game:GetService("TeleportService"):Teleport(3260590327)
end