repeat wait() until game:IsLoaded()
local RunService = game:GetService("RunService")
if game.PlaceId == 6839171747 then
RunService:Set3dRenderingEnabled(false)
setfpscap(10)
    wait(8)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game:GetService("ReplicatedStorage").EntityInfo.Statistics:FireServer()
game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer()
else
end