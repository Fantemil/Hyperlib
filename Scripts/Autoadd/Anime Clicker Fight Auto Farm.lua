repeat wait() until game:IsLoaded()
if game.PlaceId ~= 10598587051 then
    return
end
getgenv().Autoclick = true
getgenv().speed = 100
while getgenv().Autoclick do
    game:GetService("ReplicatedStorage").ServerMsg.Setting:InvokeServer("isAutoOn",1)
    game:GetService("ReplicatedStorage").System.SystemClick.Click:FireServer()
    wait(.000000000000000000000000000000000000000000001)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().speed
end