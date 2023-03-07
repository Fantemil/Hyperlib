--Variables to make it easier for ppl to understand
Wins = game.Workspace.Wins.Bridge
Chara = Game.Players.LocalPlayer.Character
Plr = game.Players.LocalPlayer
basepart = Chara:FindFirstChildWhichIsA("BasePart")
--Script
getgenv().Farm = true
while getgenv().Farm == true do task.wait()
   pcall(function() --Because I am lazy and don't wanna spend time optimizing
       firetouchinterest(Wins,basepart,0) --This gets you the ez dubz
       task.wait(.2)
       firetouchinterest(Wins,basepart,1)
       game.ReplicatedStorage.RebirthEvent:FireServer() --Rebirth remote
   end)
end