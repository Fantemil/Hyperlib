repeat wait() until game:IsLoaded() and game.Players.LocalPlayer ~= nil and game.Players.LocalPlayer.Character ~= nil
local plr = game.Players.LocalPlayer
local dung = {7220975160,7220986579}
getgenv().amount = 15 -- lower this if ur lagging

if not table.find(dung,game.PlaceId) then
    game:GetService("TeleportService"):Teleport(dung[math.random(1,#dung)])
    return
end
repeat wait() until plr.PlayerGui ~= nil and plr.PlayerGui.Main ~= nil and plr.PlayerGui.Main.Notifs ~= nil
game.Players.LocalPlayer.PlayerGui.Main.Notifs:Destroy()
repeat wait() until workspace.MouseIgnore ~= nil
workspace.MouseIgnore:Destroy()
while true do
    for i = 1,getgenv().amount do
        task.spawn(function()
            game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer("LotteryRandomDraw")
        end)
        task.spawn(function()
            game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent:FireServer("SpinFinished")
        end)
    end
    task.wait()
end