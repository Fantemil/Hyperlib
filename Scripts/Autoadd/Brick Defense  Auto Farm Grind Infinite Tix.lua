print([[
-- put this in your autoexecute file if you are doing a long afk. It will auto reconnect you.
--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    coolguy87#1052
MultiStrat by:    coolguy87#1052 :D
]])
repeat wait() until game:IsLoaded()
game:GetService("ReplicatedStorage").Events.MainCommunication:FireServer("AdminBypass")
game:GetService("ReplicatedStorage").Events.MainCommunication:FireServer("PlaceTower")
getgenv().IsMultiStrat = true

getgenv().Maps = {["Iron Cafe"] = {"Vulcan", "Party Master", "Patriot", "Astra", "Nuker"},["Doombringer's Castle"] = {"Vulcan", "Party Master", "Patriot", "Astra", "Nuker"},["Lakeside"] = {"Vulcan", "Party Master", "Patriot", "Astra", "Nuker"}}
maplist = {"Iron Cafe","Doombringer's Castle","Lakeside"}

if game.PlaceId == 8482451548 then
    loadstring(game:HttpGet("https://pastebin.com/AveLSJ2P", true))()
    loadstring(game:HttpGet("https://pastebin.com/6yWiv4BZ", true))()
end
if game.PlaceID == 6542144212 then
  map = game:GetService("ReplicatedStorage").State.Map.Value
    game:GetService("Players").PlayerAdded:Connect(function() --back to lobby if it detected player join the game
        game:GetService("TeleportService"):Teleport(848245154)
        wait(10)
    end)
     for i,v in pairs(game:GetService("Players"):GetPlayers()) do --back to lobby if there is more than 1 player
        if i==2 then
            game:GetService("TeleportService"):Teleport(3260590327)
            wait(10)
        end
    end
    if map == maplist[1] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    coolguy87#1052
MultiStrat by:    coolguy87#1052 :D
]])
local BD = loadstring(game:HttpGet("https://pastebin.com/AveLSJ2P", true))() 
BD:Loadout("Vulcan", "Party Master", "Patriot", "Astra", "Nuker") 
BD:Map("Iron Cafe", true, "Survival")
BD:Mode('Hard')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: coolguy87#1052"
        end
    end
end)
BD:Place('Party Master', -33.45586395263672, 8.298919677734375, 27.338367462158203, 0, 0, 10)--1 (EDIT)
BD:Place('Party Master', -35.45951843261719, 8.298919677734375, 27.342151641845703, 0, 0, 9)--2
BD:Skip(1, 0, 40)
BD:Place('Patriot', -10.135127067565918, 8.29892349243164, 44.065956115722656, 1, 0, 4)--3 
BD:Place('Party Master', -37.484371185302734, 8.298920631408691, 26.808002471923828, 2, 0, 4)--4 (EDIT)
BD:Upgrade(3, 3, 0, 4)
BD:Place('Patriot', -13.253793716430664, 8.29892349243164, 44.12493133544922, 3, 0, 3)--5 
BD:Upgrade(3, 4, 0, 4)
BD:Place('Party Master', -31.432456970214844, 8.298920631408691, 27.38702392578125, 5, 0, 59)--6
BD:Upgrade(5, 5, 0, 4)
BD:Place('Patriot', -16.386581420898438, 8.298922538757324, 44.28725051879883, 5, 0, 3)--7 
BD:Upgrade(3, 6, 0, 4)
BD:Upgrade(5, 7, 0, 59)
BD:Upgrade(7, 7, 0, 4)
BD:Upgrade(7, 7, 0, 3)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 9, 0, 59)
BD:Sell(7, 10, 0, 59)
BD:Upgrade(6, 10, 0, 59)
BD:Ability(6, "Summon", 10, 0, 57)--(EDIT)-
BD:Place('Vulcan', -16.386581420898438, 8.298922538757324, 44.28725051879883, 10, 0, 4)--8 
BD:Upgrade(8, 10, 0, 3)
BD:Upgrade(8, 10, 0, 2)
BD:Upgrade(5, 11, 0, 59)
BD:Upgrade(8, 11, 0, 4)
BD:Ability(6, "Summon", 11, 0, 4)--(EDIT)-
BD:Upgrade(1, 12, 0, 59)--(edit)0
BD:Place('Farm', -17.41227149963379, 8.29892349243164, 49.439762115478516, 12, 0, 4)--9 farm 4
BD:Upgrade(9, 12, 0, 4)
BD:Upgrade(9, 12, 0, 3)
BD:Upgrade(9, 12, 0, 3)
BD:Place('Farm', -20.692928314208984, 8.29892349243164, 49.46839141845703, 12, 0, 2)--10 farm 5
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 58)
BD:Upgrade(1, 13, 0, 4)--(edit)0
BD:Upgrade(1, 14, 0, 59)--(edit)0
BD:Ability(1, "Summon", 14, 0, 59)--(edit)0
BD:Ability(6, "Summon", 14, 0, 54)--(EDIT)-
BD:Place('Astra', -14.247021675109863, 8.29892349243164, 49.387081146240234, 14, 0, 4)--11 farm 6
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 3)
BD:Place('Farm', -23.945337295532227, 8.298924446105957, 49.40966033935547, 14, 0, 3)--12 farm 7
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 15, 0, 59)
BD:Place('Farm', -19.528709411621094, 8.29892349243164, 44.26816940307617, 15, 0, 59)--13 farm 8
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 57)
BD:Place('DJ Booth', -21.434301376342773, 8.298922538757324, 36.48714828491211, 16, 0, 59)--14
BD:Upgrade(1, 16, 0, 59)--(edit)0
BD:Ability(1, "Summon", 16, 0, 59)--(edit)0
BD:Ability(6, "Summon", 16, 0, 58)--(EDIT)-
BD:Upgrade(14, 16, 0, 4)
BD:Upgrade(13, 16, 0, 4)
BD:Upgrade(14, 16, 0, 3)
BD:Upgrade(2, 17, 0, 59)
BD:Upgrade(2, 17, 0, 59)
BD:Ability(2, "Summon", 17, 0, 59)
BD:Upgrade(2, 17, 0, 58)
BD:Upgrade(8, 17, 0, 4)
BD:Upgrade(14, 18, 0, 59)
BD:Upgrade(2, 18, 0, 58)
BD:Upgrade(1, 19, 0, 59)--(edit)0
BD:Ability(1, "Summon", 19, 0, 53)--(edit)0
BD:Ability(6, "Summon", 19, 0, 52)--(EDIT)-
BD:Place('Nuker', -22.429595947265625, 8.298921585083008, 33.33085632324219, 19, 0, 4)--15
BD:Upgrade(15, 19, 0, 3)
BD:Upgrade(15, 19, 0, 2)
BD:Ability(15, "NUKE", 20, 0, 59)
BD:Upgrade(13, 20, 0, 59)
BD:Place('Nuker', -21.333148956298828, 8.298920631408691, 28.659866333007812, 20, 0, 4)--16
BD:Upgrade(16, 20, 0, 4)
BD:Upgrade(16, 21, 0, 59)
BD:Ability(16, "NUKE", 21, 0, 59)
BD:Upgrade(8, 21, 0, 4)
BD:Upgrade(2, 22, 0, 59)
BD:Ability(2, "Summon", 22, 0, 53)
BD:Ability(1, "Summon", 22, 0, 52)--(edit)0
BD:Ability(6, "Summon", 22, 0, 51)--(EDIT)-
BD:Ability(15, "NUKE", 22, 0, 50)
BD:Skip(22, 0, 40)
BD:Upgrade(5, 22, 0, 4)
BD:Upgrade(6, 23, 0, 59)
BD:Place('Astra', -31.021020889282227, 8.298920631408691, 29.419570922851562, 23, 0, 59)--17
BD:Upgrade(17, 23, 0, 59)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Ability(16, "NUKE", 23, 0, 57)
BD:Ability(17, "Summon", 23, 0, 55)
BD:Upgrade(5, 23, 0, 4)
BD:Upgrade(17, 24, 0, 59)
BD:Place('Astra', -33.066009521484375, 8.298921585083008, 29.46033477783203, 24, 0, 59)--18
BD:Upgrade(18, 24, 0, 59)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 54)
BD:Upgrade(3, 24, 0, 4)
BD:Ability(15, "NUKE", 25, 1, 0)
BD:Upgrade(18, 25, 0, 59)
BD:Upgrade(3, 25, 0, 4)
BD:Upgrade(12, 25, 0, 3)
BD:Place('Nuker', -18.159038543701172, 8.298920631408691, 29.321056365966797, 26, 0, 59)--19
BD:Upgrade(19, 26, 0, 59)
BD:Upgrade(19, 26, 0, 59)
BD:AutoChain(19, 16, 15, 26, 0, 58)
BD:Upgrade(12, 26, 0, 4)
BD:Upgrade(11, 26, 0, 3)
BD:Upgrade(10, 26, 0, 2)
BD:Place('Astra', -33.70626449584961, 8.298919677734375, 22.262062072753906, 27, 0, 59)--20
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 58)
BD:Upgrade(20, 27, 0, 58)
BD:Ability(20, "Summon", 27, 0, 57)
BD:Upgrade(11, 27, 0, 4)
BD:Upgrade(10, 28, 0, 59)
BD:Upgrade(9, 28, 0, 59)
BD:Upgrade(9, 28, 0, 58)
BD:Place('Nuker', -18.793285369873047, 8.29892349243164, 39.711463928222656, 28, 0, 4)--21
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 3)
BD:Upgrade(21, 29, 1, 0)
BD:Upgrade(21, 30, 1, 20)
BD:Upgrade(14, 30, 1, 3)
BD:Ability(2, "Summon", 30, 1, 2)
BD:Ability(1, "Summon", 30, 1, 2)--(edot)0
BD:Ability(6, "Summon", 30, 1, 2)
BD:Ability(17, "Summon", 30, 1, 2)
BD:Skip(30, 0, 54)
BD:Upgrade(14, 30, 0, 2)
BD:Upgrade(15, 31, 1, 19)
BD:Upgrade(15, 31, 1, 18)
BD:Place('Astra', -15.093615531921387, 8.298920631408691, 28.338762283325195, 31, 0, 4)--22
BD:Upgrade(22, 31, 0, 4)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 15)
BD:Place('Nuker', -35.75816345214844, 8.298918724060059, 22.1561222076416, 32, 1, 14)--23 check
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 11)
BD:Upgrade(22, 33, 1, 20)
BD:Skip(31, 0, 54) -- final boss
    end
    if map == maplist[2] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    coolguy87#1052
MultiStrat by:    coolguy87#1052 :D
]])
local BD = loadstring(game:HttpGet("https://pastebin.com/AveLSJ2P", true))() 
BD:Loadout("Vulcan", "Party Master", "Patriot", "Astra", "Nuker") 
BD:Map("Iron Cafe", true, "Survival")
BD:Mode('Hard')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: coolguy87#1052"
        end
    end
end)
BD:Place('Party Master', -33.45586395263672, 8.298919677734375, 27.338367462158203, 0, 0, 10)--1 (EDIT)
BD:Place('Party Master', -35.45951843261719, 8.298919677734375, 27.342151641845703, 0, 0, 9)--2
BD:Skip(1, 0, 40)
BD:Place('Patriot', -10.135127067565918, 8.29892349243164, 44.065956115722656, 1, 0, 4)--3 
BD:Place('Party Master', -37.484371185302734, 8.298920631408691, 26.808002471923828, 2, 0, 4)--4 (EDIT)
BD:Upgrade(3, 3, 0, 4)
BD:Place('Patriot', -13.253793716430664, 8.29892349243164, 44.12493133544922, 3, 0, 3)--5 
BD:Upgrade(3, 4, 0, 4)
BD:Place('Party Master', -31.432456970214844, 8.298920631408691, 27.38702392578125, 5, 0, 59)--6
BD:Upgrade(5, 5, 0, 4)
BD:Place('Patriot', -16.386581420898438, 8.298922538757324, 44.28725051879883, 5, 0, 3)--7 
BD:Upgrade(3, 6, 0, 4)
BD:Upgrade(5, 7, 0, 59)
BD:Upgrade(7, 7, 0, 4)
BD:Upgrade(7, 7, 0, 3)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 9, 0, 59)
BD:Sell(7, 10, 0, 59)
BD:Upgrade(6, 10, 0, 59)
BD:Ability(6, "Summon", 10, 0, 57)--(EDIT)-
BD:Place('Vulcan', -16.386581420898438, 8.298922538757324, 44.28725051879883, 10, 0, 4)--8 
BD:Upgrade(8, 10, 0, 3)
BD:Upgrade(8, 10, 0, 2)
BD:Upgrade(5, 11, 0, 59)
BD:Upgrade(8, 11, 0, 4)
BD:Ability(6, "Summon", 11, 0, 4)--(EDIT)-
BD:Upgrade(1, 12, 0, 59)--(edit)0
BD:Place('Farm', -17.41227149963379, 8.29892349243164, 49.439762115478516, 12, 0, 4)--9 farm 4
BD:Upgrade(9, 12, 0, 4)
BD:Upgrade(9, 12, 0, 3)
BD:Upgrade(9, 12, 0, 3)
BD:Place('Farm', -20.692928314208984, 8.29892349243164, 49.46839141845703, 12, 0, 2)--10 farm 5
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 58)
BD:Upgrade(1, 13, 0, 4)--(edit)0
BD:Upgrade(1, 14, 0, 59)--(edit)0
BD:Ability(1, "Summon", 14, 0, 59)--(edit)0
BD:Ability(6, "Summon", 14, 0, 54)--(EDIT)-
BD:Place('Astra', -14.247021675109863, 8.29892349243164, 49.387081146240234, 14, 0, 4)--11 farm 6
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 3)
BD:Place('Farm', -23.945337295532227, 8.298924446105957, 49.40966033935547, 14, 0, 3)--12 farm 7
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 15, 0, 59)
BD:Place('Farm', -19.528709411621094, 8.29892349243164, 44.26816940307617, 15, 0, 59)--13 farm 8
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 57)
BD:Place('DJ Booth', -21.434301376342773, 8.298922538757324, 36.48714828491211, 16, 0, 59)--14
BD:Upgrade(1, 16, 0, 59)--(edit)0
BD:Ability(1, "Summon", 16, 0, 59)--(edit)0
BD:Ability(6, "Summon", 16, 0, 58)--(EDIT)-
BD:Upgrade(14, 16, 0, 4)
BD:Upgrade(13, 16, 0, 4)
BD:Upgrade(14, 16, 0, 3)
BD:Upgrade(2, 17, 0, 59)
BD:Upgrade(2, 17, 0, 59)
BD:Ability(2, "Summon", 17, 0, 59)
BD:Upgrade(2, 17, 0, 58)
BD:Upgrade(8, 17, 0, 4)
BD:Upgrade(14, 18, 0, 59)
BD:Upgrade(2, 18, 0, 58)
BD:Upgrade(1, 19, 0, 59)--(edit)0
BD:Ability(1, "Summon", 19, 0, 53)--(edit)0
BD:Ability(6, "Summon", 19, 0, 52)--(EDIT)-
BD:Place('Nuker', -22.429595947265625, 8.298921585083008, 33.33085632324219, 19, 0, 4)--15
BD:Upgrade(15, 19, 0, 3)
BD:Upgrade(15, 19, 0, 2)
BD:Ability(15, "NUKE", 20, 0, 59)
BD:Upgrade(13, 20, 0, 59)
BD:Place('Nuker', -21.333148956298828, 8.298920631408691, 28.659866333007812, 20, 0, 4)--16
BD:Upgrade(16, 20, 0, 4)
BD:Upgrade(16, 21, 0, 59)
BD:Ability(16, "NUKE", 21, 0, 59)
BD:Upgrade(8, 21, 0, 4)
BD:Upgrade(2, 22, 0, 59)
BD:Ability(2, "Summon", 22, 0, 53)
BD:Ability(1, "Summon", 22, 0, 52)--(edit)0
BD:Ability(6, "Summon", 22, 0, 51)--(EDIT)-
BD:Ability(15, "NUKE", 22, 0, 50)
BD:Skip(22, 0, 40)
BD:Upgrade(5, 22, 0, 4)
BD:Upgrade(6, 23, 0, 59)
BD:Place('Astra', -31.021020889282227, 8.298920631408691, 29.419570922851562, 23, 0, 59)--17
BD:Upgrade(17, 23, 0, 59)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Ability(16, "NUKE", 23, 0, 57)
BD:Ability(17, "Summon", 23, 0, 55)
BD:Upgrade(5, 23, 0, 4)
BD:Upgrade(17, 24, 0, 59)
BD:Place('Astra', -33.066009521484375, 8.298921585083008, 29.46033477783203, 24, 0, 59)--18
BD:Upgrade(18, 24, 0, 59)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 54)
BD:Upgrade(3, 24, 0, 4)
BD:Ability(15, "NUKE", 25, 1, 0)
BD:Upgrade(18, 25, 0, 59)
BD:Upgrade(3, 25, 0, 4)
BD:Upgrade(12, 25, 0, 3)
BD:Place('Nuker', -18.159038543701172, 8.298920631408691, 29.321056365966797, 26, 0, 59)--19
BD:Upgrade(19, 26, 0, 59)
BD:Upgrade(19, 26, 0, 59)
BD:AutoChain(19, 16, 15, 26, 0, 58)
BD:Upgrade(12, 26, 0, 4)
BD:Upgrade(11, 26, 0, 3)
BD:Upgrade(10, 26, 0, 2)
BD:Place('Astra', -33.70626449584961, 8.298919677734375, 22.262062072753906, 27, 0, 59)--20
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 58)
BD:Upgrade(20, 27, 0, 58)
BD:Ability(20, "Summon", 27, 0, 57)
BD:Upgrade(11, 27, 0, 4)
BD:Upgrade(10, 28, 0, 59)
BD:Upgrade(9, 28, 0, 59)
BD:Upgrade(9, 28, 0, 58)
BD:Place('Nuker', -18.793285369873047, 8.29892349243164, 39.711463928222656, 28, 0, 4)--21
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 3)
BD:Upgrade(21, 29, 1, 0)
BD:Upgrade(21, 30, 1, 20)
BD:Upgrade(14, 30, 1, 3)
BD:Ability(2, "Summon", 30, 1, 2)
BD:Ability(1, "Summon", 30, 1, 2)--(edot)0
BD:Ability(6, "Summon", 30, 1, 2)
BD:Ability(17, "Summon", 30, 1, 2)
BD:Skip(30, 0, 54)
BD:Upgrade(14, 30, 0, 2)
BD:Upgrade(15, 31, 1, 19)
BD:Upgrade(15, 31, 1, 18)
BD:Place('Astra', -15.093615531921387, 8.298920631408691, 28.338762283325195, 31, 0, 4)--22
BD:Upgrade(22, 31, 0, 4)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 15)
BD:Place('Nuker', -35.75816345214844, 8.298918724060059, 22.1561222076416, 32, 1, 14)--23 check
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 11)
BD:Upgrade(22, 33, 1, 20)
BD:Skip(31, 0, 54) -- final boss
    end
    if map == maplist[3] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    coolguy87#1052
MultiStrat by:    coolguy87#1052 :D
]])
local BD = loadstring(game:HttpGet("https://pastebin.com/AveLSJ2P", true))() 
BD:Loadout("Vulcan", "Party Master", "Patriot", "Astra", "Nuker") 
BD:Map("Iron Cafe", true, "Survival")
BD:Mode('Hard')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: coolguy87#1052"
        end
    end
end)
BD:Place('Party Master', -33.45586395263672, 8.298919677734375, 27.338367462158203, 0, 0, 10)--1 (EDIT)
BD:Place('Party Master', -35.45951843261719, 8.298919677734375, 27.342151641845703, 0, 0, 9)--2
BD:Skip(1, 0, 40)
BD:Place('Patriot', -10.135127067565918, 8.29892349243164, 44.065956115722656, 1, 0, 4)--3 
BD:Place('Party Master', -37.484371185302734, 8.298920631408691, 26.808002471923828, 2, 0, 4)--4 (EDIT)
BD:Upgrade(3, 3, 0, 4)
BD:Place('Patriot', -13.253793716430664, 8.29892349243164, 44.12493133544922, 3, 0, 3)--5 
BD:Upgrade(3, 4, 0, 4)
BD:Place('Party Master', -31.432456970214844, 8.298920631408691, 27.38702392578125, 5, 0, 59)--6
BD:Upgrade(5, 5, 0, 4)
BD:Place('Patriot', -16.386581420898438, 8.298922538757324, 44.28725051879883, 5, 0, 3)--7 
BD:Upgrade(3, 6, 0, 4)
BD:Upgrade(5, 7, 0, 59)
BD:Upgrade(7, 7, 0, 4)
BD:Upgrade(7, 7, 0, 3)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 8, 0, 59)
BD:Upgrade(6, 9, 0, 59)
BD:Sell(7, 10, 0, 59)
BD:Upgrade(6, 10, 0, 59)
BD:Ability(6, "Summon", 10, 0, 57)--(EDIT)-
BD:Place('Vulcan', -16.386581420898438, 8.298922538757324, 44.28725051879883, 10, 0, 4)--8 
BD:Upgrade(8, 10, 0, 3)
BD:Upgrade(8, 10, 0, 2)
BD:Upgrade(5, 11, 0, 59)
BD:Upgrade(8, 11, 0, 4)
BD:Ability(6, "Summon", 11, 0, 4)--(EDIT)-
BD:Upgrade(1, 12, 0, 59)--(edit)0
BD:Place('Farm', -17.41227149963379, 8.29892349243164, 49.439762115478516, 12, 0, 4)--9 farm 4
BD:Upgrade(9, 12, 0, 4)
BD:Upgrade(9, 12, 0, 3)
BD:Upgrade(9, 12, 0, 3)
BD:Place('Farm', -20.692928314208984, 8.29892349243164, 49.46839141845703, 12, 0, 2)--10 farm 5
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 59)
BD:Upgrade(10, 13, 0, 58)
BD:Upgrade(1, 13, 0, 4)--(edit)0
BD:Upgrade(1, 14, 0, 59)--(edit)0
BD:Ability(1, "Summon", 14, 0, 59)--(edit)0
BD:Ability(6, "Summon", 14, 0, 54)--(EDIT)-
BD:Place('Astra', -14.247021675109863, 8.29892349243164, 49.387081146240234, 14, 0, 4)--11 farm 6
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 4)
BD:Upgrade(11, 14, 0, 3)
BD:Place('Farm', -23.945337295532227, 8.298924446105957, 49.40966033935547, 14, 0, 3)--12 farm 7
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 14, 0, 2)
BD:Upgrade(12, 15, 0, 59)
BD:Place('Farm', -19.528709411621094, 8.29892349243164, 44.26816940307617, 15, 0, 59)--13 farm 8
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 58)
BD:Upgrade(13, 15, 0, 57)
BD:Place('DJ Booth', -21.434301376342773, 8.298922538757324, 36.48714828491211, 16, 0, 59)--14
BD:Upgrade(1, 16, 0, 59)--(edit)0
BD:Ability(1, "Summon", 16, 0, 59)--(edit)0
BD:Ability(6, "Summon", 16, 0, 58)--(EDIT)-
BD:Upgrade(14, 16, 0, 4)
BD:Upgrade(13, 16, 0, 4)
BD:Upgrade(14, 16, 0, 3)
BD:Upgrade(2, 17, 0, 59)
BD:Upgrade(2, 17, 0, 59)
BD:Ability(2, "Summon", 17, 0, 59)
BD:Upgrade(2, 17, 0, 58)
BD:Upgrade(8, 17, 0, 4)
BD:Upgrade(14, 18, 0, 59)
BD:Upgrade(2, 18, 0, 58)
BD:Upgrade(1, 19, 0, 59)--(edit)0
BD:Ability(1, "Summon", 19, 0, 53)--(edit)0
BD:Ability(6, "Summon", 19, 0, 52)--(EDIT)-
BD:Place('Nuker', -22.429595947265625, 8.298921585083008, 33.33085632324219, 19, 0, 4)--15
BD:Upgrade(15, 19, 0, 3)
BD:Upgrade(15, 19, 0, 2)
BD:Ability(15, "NUKE", 20, 0, 59)
BD:Upgrade(13, 20, 0, 59)
BD:Place('Nuker', -21.333148956298828, 8.298920631408691, 28.659866333007812, 20, 0, 4)--16
BD:Upgrade(16, 20, 0, 4)
BD:Upgrade(16, 21, 0, 59)
BD:Ability(16, "NUKE", 21, 0, 59)
BD:Upgrade(8, 21, 0, 4)
BD:Upgrade(2, 22, 0, 59)
BD:Ability(2, "Summon", 22, 0, 53)
BD:Ability(1, "Summon", 22, 0, 52)--(edit)0
BD:Ability(6, "Summon", 22, 0, 51)--(EDIT)-
BD:Ability(15, "NUKE", 22, 0, 50)
BD:Skip(22, 0, 40)
BD:Upgrade(5, 22, 0, 4)
BD:Upgrade(6, 23, 0, 59)
BD:Place('Astra', -31.021020889282227, 8.298920631408691, 29.419570922851562, 23, 0, 59)--17
BD:Upgrade(17, 23, 0, 59)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Upgrade(17, 23, 0, 58)
BD:Ability(16, "NUKE", 23, 0, 57)
BD:Ability(17, "Summon", 23, 0, 55)
BD:Upgrade(5, 23, 0, 4)
BD:Upgrade(17, 24, 0, 59)
BD:Place('Astra', -33.066009521484375, 8.298921585083008, 29.46033477783203, 24, 0, 59)--18
BD:Upgrade(18, 24, 0, 59)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 58)
BD:Upgrade(18, 24, 0, 54)
BD:Upgrade(3, 24, 0, 4)
BD:Ability(15, "NUKE", 25, 1, 0)
BD:Upgrade(18, 25, 0, 59)
BD:Upgrade(3, 25, 0, 4)
BD:Upgrade(12, 25, 0, 3)
BD:Place('Nuker', -18.159038543701172, 8.298920631408691, 29.321056365966797, 26, 0, 59)--19
BD:Upgrade(19, 26, 0, 59)
BD:Upgrade(19, 26, 0, 59)
BD:AutoChain(19, 16, 15, 26, 0, 58)
BD:Upgrade(12, 26, 0, 4)
BD:Upgrade(11, 26, 0, 3)
BD:Upgrade(10, 26, 0, 2)
BD:Place('Astra', -33.70626449584961, 8.298919677734375, 22.262062072753906, 27, 0, 59)--20
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 59)
BD:Upgrade(20, 27, 0, 58)
BD:Upgrade(20, 27, 0, 58)
BD:Ability(20, "Summon", 27, 0, 57)
BD:Upgrade(11, 27, 0, 4)
BD:Upgrade(10, 28, 0, 59)
BD:Upgrade(9, 28, 0, 59)
BD:Upgrade(9, 28, 0, 58)
BD:Place('Nuker', -18.793285369873047, 8.29892349243164, 39.711463928222656, 28, 0, 4)--21
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 4)
BD:Upgrade(21, 28, 0, 3)
BD:Upgrade(21, 29, 1, 0)
BD:Upgrade(21, 30, 1, 20)
BD:Upgrade(14, 30, 1, 3)
BD:Ability(2, "Summon", 30, 1, 2)
BD:Ability(1, "Summon", 30, 1, 2)--(edot)0
BD:Ability(6, "Summon", 30, 1, 2)
BD:Ability(17, "Summon", 30, 1, 2)
BD:Skip(30, 0, 54)
BD:Upgrade(14, 30, 0, 2)
BD:Upgrade(15, 31, 1, 19)
BD:Upgrade(15, 31, 1, 18)
BD:Place('Astra', -15.093615531921387, 8.298920631408691, 28.338762283325195, 31, 0, 4)--22
BD:Upgrade(22, 31, 0, 4)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(22, 31, 0, 3)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 17)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 16)
BD:Upgrade(4, 32, 1, 15)
BD:Place('Nuker', -35.75816345214844, 8.298918724060059, 22.1561222076416, 32, 1, 14)--23 check
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 13)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 12)
BD:Upgrade(23, 32, 1, 11)
BD:Upgrade(22, 33, 1, 20)
BD:Skip(31, 0, 54) -- final boss
    end