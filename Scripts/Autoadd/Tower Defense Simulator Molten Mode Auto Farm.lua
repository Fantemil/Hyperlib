repeat wait() until game:IsLoaded()
getgenv().IsMultiStrat = true

getgenv().Maps = {["Crystal Cave"] = {"Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm"},["Night Station"] = {"Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm"},["Portland"] = {"Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm"},["Winter Abyss"] = {"Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm"}}--Enter the correct info. Map, then units. If no unit in slot, write, "nil" Follow format to add more maps
maplist = {"Crystal Cave","Night Station","Portland","Winter Abyss"}

if game.PlaceId == 3260590327 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/asjhxnjfdStratFunJoin", true))()
end

if game.PlaceId == 5591597781 then
    map = game:GetService("ReplicatedStorage").State.Map.Value
    game:GetService("Players").PlayerAdded:Connect(function() --back to lobby if it detected player join the game
        game:GetService("TeleportService"):Teleport(3260590327)
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
Strat by:    Gradymeister#3270
MultiStrat by:    Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm") 
TDS:Map("Crystal Cave", true, "Survival")
TDS:Mode('Normal')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Soldier', -31.01143455505371, 8.298922538757324, 36.22587585449219, 0, 0, 10)--1
TDS:Place('Farm', -10.42957878112793, 8.298919677734375, 26.344511032104492, 0, 0, 9)--2 farm 1
TDS:Place('Soldier', -31.023313522338867, 8.298921585083008, 33.19341278076172, 2, 0, 59)--3
TDS:Upgrade(2, 2, 0, 4)--farm(1) U (1) Gradymeister#3270
TDS:Upgrade(2, 3, 0, 4)--farm(1) U (2)
TDS:Place('Soldier', -34.107276916503906, 8.298921585083008, 34.943912506103516, 4, 0, 59)--4
TDS:Upgrade(2, 5, 0, 4)--farm(1) U (3)
TDS:Place('Farm', -10.084951400756836, 8.298920631408691, 29.477733612060547, 5, 0, 4)--5 farm 2
TDS:Place('Soldier', -24.076019287109375, 8.298919677734375, 25.012866973876953, 6, 0, 59)--6
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (1)
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (2)
TDS:Place('Shotgunner', -31.026382446289062, 8.298919677734375, 27.32350730895996, 7, 0, 59)--7
TDS:Upgrade(7, 7, 0, 59)--Shot(1) U (1)
TDS:Upgrade(5, 7, 0, 4)--farm(2) U (3)
TDS:Upgrade(7, 8, 0, 4)--Shot(1) U (2)Gradymeister#3270
TDS:Place('Farm', -10.001607894897461, 8.298921585083008, 32.62492370605469, 8, 0, 4)--8 farm 3
TDS:Upgrade(8, 8, 0, 3)--farm(3) U (1)
TDS:Upgrade(8, 9, 0, 59)--farm(3) U (2)
TDS:Upgrade(8, 9, 0, 4)--farm(3) U (3)
TDS:Place('Farm', -10.033451080322266, 8.298921585083008, 35.74806594848633, 9, 0, 4)--9 farm 4
TDS:Upgrade(9, 9, 0, 3)--farm(4) U (1)
TDS:Place('Shotgunner', -30.876256942749023, 8.298919677734375, 22.238662719726562, 10, 0, 59)--10
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (1)
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (2)
TDS:Upgrade(9, 10, 0, 4)--farm(4) U (2)
TDS:Place('Farm', -10.070344924926758, 8.298921585083008, 38.841373443603516, 10, 0, 4)--11 farm 5
TDS:Upgrade(11, 10, 0, 3)--farm(5) U (1)
TDS:Upgrade(11, 11, 0, 59)--farm(5) U (2)Gradymeister#3270
TDS:Upgrade(9, 11, 0, 59)--farm(4) U (3)
TDS:Upgrade(11, 11, 0, 4)--farm(5) U (3)
TDS:Place('Shotgunner', -34.04347229003906, 8.298919677734375, 27.312774658203125, 12, 0, 59)--12
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (1)
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (2)
TDS:Place('Shotgunner', -33.89471435546875, 8.298919677734375, 22.25078010559082, 12, 0, 58)--13
TDS:Upgrade(13, 12, 0, 57)--Shot(4) U (1)Gradymeister#3270
TDS:Place('Farm', -13.514816284179688, 8.298919677734375, 25.622665405273438, 12, 0, 4)--14 farm 6
TDS:Upgrade(14, 12, 0, 4)--farm(6) U (1)
TDS:Upgrade(14, 12, 0, 3)--farm(6) U (2)
TDS:Upgrade(14, 12, 0, 2)--farm(6) U (3)Gradymeister#3270
TDS:Upgrade(13, 13, 0, 59)--Shot(4) U (2)
TDS:Place('Farm', -13.238472938537598, 8.298921585083008, 37.116676330566406, 13, 0, 59)--15 farm 7
TDS:Upgrade(15, 13, 0, 58)--farm(7) U (1)
TDS:Upgrade(15, 13, 0, 57)--farm(7) U (2)
TDS:Place('Farm', -13.298367500305176, 8.298921585083008, 40.2027702331543, 13, 0, 4)--16 farm 8
TDS:Upgrade(15, 13, 0, 4)--farm(7) U (3)
TDS:Upgrade(16, 13, 0, 4)--farm(8) U (1)
TDS:Upgrade(16, 13, 0, 3)--farm(8) U (2)Gradymeister#3270
TDS:Upgrade(16, 14, 0, 2)--farm(8) U (3)
TDS:Place('Commander', -25.937118530273438, 8.298921585083008, 31.666244506835938, 14, 0, 59)--17
TDS:Place('Commander', -25.806089401245117, 8.298920631408691, 28.62470245361328, 15, 0, 59)--18
TDS:Place('DJ Booth', -22.576480865478516, 8.298921585083008, 33.6115837097168, 15, 0, 57)--19
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (1)
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (2)
TDS:Upgrade(19, 15, 0, 55)--DJ(1) U (3)Gradymeister#3270
TDS:Upgrade(2, 15, 0, 4)--farm(1) U (4)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (1)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (2)
TDS:Ability(17, "Call Of Arms", 16, 0, 58)
TDS:Upgrade(2, 16, 0, 4)--farm(1) U (5)
TDS:Upgrade(7, 17, 0, 59)--Shot(1) U (3)
TDS:Upgrade(18, 17, 0, 59)--Commander(2) U (1)Gradymeister#3270
TDS:Upgrade(18, 17, 0, 58)--Commander(2) U (2)
TDS:Ability(18, "Call Of Arms", 18, 0, 57)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (4)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (5)
TDS:Upgrade(10, 19, 0, 59)--Shot(2) U (3)
TDS:Place('Commander', -25.93416976928711, 8.298921585083008, 34.74874496459961, 19, 0, 59)--20
TDS:Upgrade(20, 19, 0, 58)--Commander(3) U (1)
TDS:Upgrade(20, 19, 0, 57)--Commander(3) U (2)Gradymeister#3270
TDS:AutoChain(20, 17, 18, 19, 0, 56)
TDS:Upgrade(8, 19, 0, 4)--farm(3) U (4)
TDS:Upgrade(8, 20, 0, 59)--farm(3) U (5)
TDS:Upgrade(7, 21, 0, 59)--Shot(1) U (4)
TDS:Upgrade(10, 22, 0, 59)--Shot(2) U (4)
TDS:Upgrade(12, 22, 0, 59)--Shot(3) U (3)
TDS:Upgrade(9, 22, 0, 4)--farm(4) U (4)
TDS:Upgrade(12, 23, 0, 59)--Shot(3) U (4)Gradymeister#3270
TDS:Upgrade(9, 23, 0, 4)--farm(4) U (5)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (4)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (5)
TDS:Upgrade(14, 24, 0, 4)--farm(6) U (4)
TDS:Upgrade(13, 25, 0, 59)--Shot(4) U (3)
TDS:Upgrade(14, 25, 0, 59)--farm(6) U (5)Gradymeister#3270
TDS:Upgrade(15, 25, 0, 57)--farm(7) U (4)
TDS:Upgrade(15, 25, 0, 4)--farm(7) U (5)
TDS:Upgrade(13, 26, 0, 59)--Shot(4) U (4)Gradymeister#3270
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (4)
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (5)
TDS:Sell(1, 26, 0, 3)--soldier 1
TDS:Sell(3, 26, 0, 3)--soldier 2
TDS:Sell(4, 26, 0, 2)--soldier 3
TDS:Sell(6, 26, 0, 2)--soldier 4Gradymeister#3270
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (4)
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (5)
TDS:Place('Shotgunner', -32.78839111328125, 8.298920631408691, 30.36042022705078, 27, 0, 4)--21
TDS:Upgrade(21, 27, 0, 4)--Shot(5) U (1)
TDS:Upgrade(21, 27, 0, 3)--Shot(5) U (2)Gradymeister#3270
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (3)
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (4)
TDS:Place('Shotgunner', -32.928466796875, 8.298467636108398, 19.160158157348633, 28, 0, 58)--22
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (1)
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (2)Gradymeister#3270
TDS:Upgrade(22, 28, 0, 56)--Shot(6) U (3)
TDS:Upgrade(22, 29, 0, 59)--Shot(6) U (4)
TDS:Place('Shotgunner', -29.92170524597168, 8.298505783081055, 19.179237365722656, 29, 0, 59)--23
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (1)
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (2)
TDS:Upgrade(23, 29, 0, 57)--Shot(7) U (3)Gradymeister#3270
TDS:Upgrade(23, 29, 0, 54)--Shot(7) U (4)
TDS:Place('Shotgunner', -27.835468292236328, 8.298919677734375, 22.224336624145508, 29, 0, 4)--24
TDS:Upgrade(24, 29, 0, 4)--Shot(9) U (1)
TDS:Upgrade(24, 29, 0, 3)--Shot(9) U (2)
TDS:Upgrade(24, 29, 0, 2)--Shot(9) U (3)
TDS:Upgrade(24, 30, 1, 10)--Shot(9) U (4)
TDS:Place('Shotgunner', -25.9393367767334, 8.298919677734375, 25.303348541259766, 30, 0, 4)--25
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (1)Gradymeister#3270
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (2)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (3)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (4)
TDS:Place('Shotgunner', -26.895885467529297, 8.298532485961914, 19.149824142456055, 31, 1, 20)--26
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (1)
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (2)Gradymeister#3270
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (3)
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (4)
TDS:Place('Shotgunner', -24.798145294189453, 8.298918724060059, 22.251298904418945, 31, 1, 17)--27
TDS:Upgrade(27, 31, 1, 16)--Shot(12) U (1)
TDS:Upgrade(27, 31, 1, 15)--Shot(12) U (2)
TDS:Upgrade(27, 31, 1, 14)--Shot(12) U (3)
TDS:Upgrade(17, 31, 0, 4)--Commander(1) U (3)
TDS:Upgrade(17, 32, 1, 20)--Commander(1) U (4)Gradymeister#3270
TDS:Upgrade(18, 32, 1, 19)--Commander(2) U (3)
TDS:Upgrade(27, 32, 1, 15)--Shot(12) U (4)
TDS:Place('Shotgunner', -31.102073669433594, 8.298921585083008, 33.39040756225586, 32, 1, 8)--28
TDS:Upgrade(28, 32, 1, 8)--Shot(13) U (1)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (2)Gradymeister#3270
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (3)
TDS:Place('Shotgunner', -34.1387939453125, 8.298921585083008, 35.029930114746094, 33, 1, 17)--29
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (1)
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (2)Gradymeister#3270
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (3)
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (4)
TDS:Place('Shotgunner', -31.050941467285156, 8.298921585083008, 36.396080017089844, 33, 1, 8)--30
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (1)
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (2)Gradymeister#3270
TDS:Upgrade(30, 33, 1, 6)--Shot(15) U (3)
TDS:Place('Shotgunner', -34.119140625, 8.298922538757324, 38.05241775512695, 33, 1, 5)--31
TDS:Place('Shotgunner', -31.105960845947266, 8.298922538757324, 39.40583801269531, 33, 1, 4)--32
TDS:Place('Shotgunner', -22.878751754760742, 8.298919677734375, 25.280555725097656, 33, 1, 3)--33
TDS:Upgrade(28, 34, 1, 20)--Shot(13) U (4)
TDS:Upgrade(30, 34, 1, 20)--Shot(15) U (4)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (1)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (2)
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (3)Gradymeister#3270
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (4)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (1)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (2)
TDS:Upgrade(32, 34, 1, 16)--Shot(17) U (3)
TDS:Upgrade(32, 34, 1, 10)--Shot(17) U (4)
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (1)Gradymeister#3270
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (2)
TDS:Upgrade(33, 34, 0, 3)--Shot(18) U (3)
TDS:Upgrade(33, 35, 1, 20)--Shot(18) U (4)
TDS:Place('Shotgunner', -22.069366455078125, 8.298920631408691, 28.34476089477539, 35, 1, 19)--34
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (1)
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (2)
TDS:Upgrade(34, 35, 1, 10)--Shot(19) U (3)Gradymeister#3270
TDS:Upgrade(34, 36, 1, 20)--Shot(19) U (4)
TDS:Place('Shotgunner', -23.727970123291016, 8.298542022705078, 19.216440200805664, 36, 1, 18)--35
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (1)
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (2)
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (3)Gradymeister#3270
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (4)
TDS:Place('Shotgunner', -25.910024642944336, 8.298921585083008, 37.859249114990234, 36, 0, 4)--36
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (1)
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (2)
TDS:Upgrade(36, 36, 0, 3)--Shot(21) U (3)Gradymeister#3270
TDS:Upgrade(36, 36, 0, 2)--Shot(21) U (4)
TDS:Place('Shotgunner', -25.933151245117188, 8.298922538757324, 40.9267692565918, 37, 1, 20)--37
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (1)
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (2)
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (3)Gradymeister#3270
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (4)
TDS:Place('Shotgunner', -25.933956146240234, 8.29892349243164, 43.951873779296875, 37, 1, 17)--38
TDS:Upgrade(38, 37, 1, 16)--Shot(23) U (1)
TDS:Upgrade(38, 37, 1, 15)--Shot(23) U (2)
TDS:Upgrade(38, 37, 1, 13)--Shot(23) U (3)Gradymeister#3270
TDS:Upgrade(38, 37, 1, 4)--Shot(23) U (4)
TDS:Skip(37, 0, 54)
TDS:Skip(37, 0, 53)
TDS:Place('Shotgunner', -22.92770004272461, 8.29892349243164, 44.23859786987305, 37, 0, 4)--39
TDS:Place('Shotgunner', -22.844711303710938, 8.298922538757324, 41.2376708984375, 37, 0, 4)--40
TDS:Place('Shotgunner', -22.849536895751953, 8.298921585083008, 36.612648010253906, 37, 0, 3)--41Gradymeister#3270
TDS:Place('Shotgunner', -19.813526153564453, 8.298921585083008, 36.69377136230469, 37, 0, 3)--42
TDS:Place('Shotgunner', -19.78449821472168, 8.298921585083008, 39.78598403930664, 37, 0, 2)--43
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (1)
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (2)
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (3)
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (4)
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (1)Gradymeister#3270
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (2)
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (3)
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (4)
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (1)Gradymeister#3270
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (2)
TDS:Upgrade(41, 38, 1, 14)--Shot(26) U (3)
TDS:Skip(38, 0, 54)
TDS:Skip(38, 0, 53)
TDS:Upgrade(41, 38, 0, 4)--Shot(26) U (4)
TDS:Upgrade(42, 38, 0, 4)--Shot(27) U (1)
TDS:Upgrade(42, 38, 0, 3)--Shot(27) U (2)
TDS:Upgrade(42, 38, 0, 3)--Shot(27) U (3)Gradymeister#3270
TDS:Upgrade(42, 39, 1, 20)--Shot(27) U (4)
TDS:Upgrade(43, 39, 1, 20)--Shot(28) U (1)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (2)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (3)Gradymeister#3270
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (4)
TDS:Skip(39, 0, 54)
TDS:Skip(39, 0, 53)
TDS:Place('Shotgunner', -19.807872772216797, 8.29892349243164, 42.79076385498047, 39, 0, 4)--44
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (1)
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (2)Gradymeister#3270
TDS:Upgrade(44, 39, 0, 3)--Shot(29) U (3)
TDS:Upgrade(44, 39, 0, 2)--Shot(29) U (4)
TDS:Sell(2, 40, 99, 59)--farm 1 sell
TDS:Sell(5, 40, 99, 59)--farm 2 sell
TDS:Sell(8, 40, 99, 59)--farm 3 sellGradymeister#3270
TDS:Sell(9, 40, 99, 58)--farm 4 sell
TDS:Sell(11, 40, 99, 58)--farm 5 sell
TDS:Sell(14, 40, 99, 58)--farm 6 sell
TDS:Sell(15, 40, 99, 57)--farm 7 sell
TDS:Sell(16, 40, 99, 57)--farm 8 sell
TDS:Place('Shotgunner', -16.718219757080078, 8.298921585083008, 38.85287094116211, 40, 99, 56)--45
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (1)
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (2)
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (3)Gradymeister#3270
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (4)
TDS:Place('Shotgunner', -16.740354537963867, 8.29892349243164, 41.8806266784668, 40, 99, 54)--46
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (1)
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (2)Gradymeister#3270
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (3)
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (4)
TDS:Place('Shotgunner', -13.620230674743652, 8.298921585083008, 37.27745819091797, 40, 99, 51)--47
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (1)
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (2)Gradymeister#3270
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (3)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (4)
TDS:Place('Shotgunner', -13.625834465026855, 8.298922538757324, 40.3652229309082, 40, 99, 48)--48
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (1)
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (2)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (3)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -13.630931854248047, 8.29892349243164, 43.379173278808594, 40, 99, 40)--49
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (1)Gradymeister#3270
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (2)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (3)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (4)
TDS:Place('Shotgunner', -10.615479469299316, 8.29892349243164, 44.21613693237305, 40, 99, 37)--50
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (1)
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (2)Gradymeister#3270
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (3)
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (4)
TDS:Sell(35, 40, 99, 32)--shotgunner 35
TDS:Sell(22, 40, 99, 32)--shotgunner 22
TDS:Sell(23, 40, 99, 32)--shotgunner 23
TDS:Sell(26, 40, 99, 32)--shotgunner 26
TDS:Place('Shotgunner', -10.045145034790039, 8.298922538757324, 41.09647750854492, 40, 99, 31)--51
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (1)
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (2)Gradymeister#3270
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (3)
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (4)
TDS:Place('Shotgunner', -10.001934051513672, 8.298921585083008, 37.95500946044922, 40, 99, 28)--52
TDS:Upgrade(52, 40, 99, 27)--Shot(37) U (1)
TDS:Upgrade(52, 40, 99, 27)--Shot(37) U (2)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (3)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (4)Gradymeister#3270
TDS:Sell(13, 40, 99, 25)--shotgunner 35
TDS:Sell(10, 40, 99, 25)--shotgunner 35
TDS:Sell(24, 40, 99, 25)--shotgunner 35
TDS:Sell(27, 40, 99, 25)--shotgunner 35Gradymeister#3270
TDS:Place('Shotgunner', -24.971195220947266, 8.29892349243164, 49.38223648071289, 40, 99, 24)--53
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (1)
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (2)
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (3)Gradymeister#3270
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (4)
TDS:Place('Shotgunner', -21.886178970336914, 8.29892349243164, 49.365325927734375, 40, 99, 21)--54
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (1)
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (2)
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (3)Gradymeister#3270
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (4)
TDS:Place('Shotgunner', -18.808521270751953, 8.29892349243164, 49.341392517089844, 40, 99, 18)--55
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (1)
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (2)Gradymeister#3270
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (3)
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (4)
TDS:Place('Shotgunner', -15.738605499267578, 8.29892349243164, 49.37866973876953, 40, 99, 15)--56
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (1)
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (2)Gradymeister#3270
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (3)
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (4)
TDS:Place('Shotgunner', -12.676393508911133, 8.29892349243164, 49.321712493896484, 40, 99, 12)--57
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (1)
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (2)
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (3)Gradymeister#3270
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (4)
TDS:Place('Shotgunner', -4.929020881652832, 8.298921585083008, 34.31743240356445, 40, 99, 9)--58
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (1)
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (2)
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (3)
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (4)Gradymeister#3270
TDS:Sell(25, 40, 98, 34)--shotgunner
TDS:Sell(24, 40, 98, 34)--shotgunner
TDS:Sell(28, 40, 98, 33)--shotgunner
TDS:Sell(29, 40, 98, 33)--shotgunner
TDS:Sell(22, 40, 98, 33)--shotgunner
TDS:Sell(23, 40, 98, 32)--shotgunner
TDS:Sell(45, 40, 98, 32)--shotgunner
TDS:Sell(46, 40, 98, 32)--shotgunner
TDS:Sell(47, 40, 98, 31)--shotgunner
TDS:Sell(48, 40, 98, 31)--shotgunner
TDS:Sell(49, 40, 98, 31)--shotgunner
TDS:Sell(50, 40, 98, 30)--shotgunner
TDS:Sell(34, 40, 98, 30)--shotgunner
TDS:Sell(33, 40, 98, 30)--shotgunner
TDS:Sell(20, 40, 98, 29)--commander
TDS:Sell(36, 40, 98, 29)--shotgunner
TDS:Sell(32, 40, 98, 29)--shotgunner
TDS:Sell(31, 40, 98, 28)--shotgunner
TDS:Sell(40, 40, 98, 28)--shotgunner
TDS:Sell(39, 40, 98, 28)--shotgunner
TDS:Sell(38, 40, 98, 27)--shotgunner
TDS:Sell(37, 40, 98, 27)--shotgunner
TDS:Sell(51, 40, 98, 27)--shotgunner
TDS:Place('Commander', 3.6210451126098633, 8.298924446105957, -12.748537063598633, 40, 98, 26)--59
TDS:Place('Shotgunner', 7.114470481872559, 8.298924446105957, -9.130302429199219, 40, 98, 26)--60
TDS:Place('Shotgunner', 7.067374229431152, 8.298521041870117, -6.027919769287109, 40, 98, 26)--61
TDS:Place('Shotgunner', 7.230786323547363, 8.298583030700684, -3.018026351928711, 40, 98, 25)--62
TDS:Place('Shotgunner', 1.933023452758789, 8.298538208007812, -3.984975814819336, 40, 98, 25)--63
TDS:Place('Shotgunner', 1.0871152877807617, 8.297645568847656, -7.080106735229492, 40, 98, 25)--64
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 1
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 2
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 3
TDS:Upgrade(59, 40, 98, 21)--(L) Commander 4
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U1
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U2
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U3
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U4
TDS:Upgrade(61, 40, 98, 20)--(L) Shotgunner 2 U1
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U2
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U3
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U4
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U1
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U2
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U3
TDS:Upgrade(62, 40, 98, 17)--(L) Shotgunner 3 U4
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U1
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U2
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U3
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U4
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U1
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U2
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U3
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U4
    end
    if map == maplist[2] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    Gradymeister#3270
MultiStrat by:    Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm") 
TDS:Map("Night Station", true, "Survival")
TDS:Mode('Normal')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Soldier', 5.818484306335449, 0.07500037550926208, -24.423749923706055, 0, 0, 10)--1
TDS:Place('Farm', -8.980585098266602, 0.07500037550926208, -10.378273010253906, 0, 0, 9)--2 farm 1
TDS:Place('Soldier', 2.5739731788635254, 0.07500037550926208, -24.40503692626953, 2, 0, 59)--3
TDS:Upgrade(2, 2, 0, 4)--farm(1) U (1)Gradymeister#3270
TDS:Upgrade(2, 3, 0, 4)--farm(1) U (2)
TDS:Place('Soldier', 7.1119065284729, 0.07500037550926208, -27.43052864074707, 4, 0, 59)--4
TDS:Upgrade(2, 5, 0, 4)--farm(1) U (3)Gradymeister#3270
TDS:Place('Farm', -9.081276893615723, 0.07500037550926208, -13.453441619873047, 5, 0, 4)--5 farm 2
TDS:Place('Soldier', 7.220495700836182, 0.07500037550926208, -30.477672576904297, 6, 0, 59)--6
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (1)Gradymeister#3270
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (2)
TDS:Place('Shotgunner', 2.3719570636749268, 0.07500037550926208, -27.51962661743164, 7, 0, 59)--7
TDS:Upgrade(7, 7, 0, 59)--Shot(1) U (1)
TDS:Upgrade(5, 7, 0, 4)--farm(2) U (3)Gradymeister#3270
TDS:Upgrade(7, 8, 0, 4)--Shot(1) U (2)
TDS:Place('Farm', -9.12099838256836, 0.07500037550926208, -16.544151306152344, 8, 0, 4)--8 farm 3
TDS:Upgrade(8, 8, 0, 3)--farm(3) U (1)Gradymeister#3270
TDS:Upgrade(8, 9, 0, 59)--farm(3) U (2)
TDS:Upgrade(8, 9, 0, 4)--farm(3) U (3)
TDS:Place('Farm', -12.101531028747559, 0.07500037550926208, -10.364127159118652, 9, 0, 4)--9 farm 4
TDS:Upgrade(9, 9, 0, 3)--farm(4) U (1)
TDS:Place('Shotgunner', -3.777078151702881, 0.07500037550926208, -27.538543701171875, 10, 0, 59)--10
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (1)
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (2)
TDS:Upgrade(9, 10, 0, 4)--farm(4) U (2)Gradymeister#3270
TDS:Place('Farm', -12.111425399780273, 0.07500037550926208, -13.493570327758789, 10, 0, 4)--11 farm 5
TDS:Upgrade(11, 10, 0, 3)--farm(5) U (1)
TDS:Upgrade(11, 11, 0, 59)--farm(5) U (2)
TDS:Upgrade(9, 11, 0, 59)--farm(4) U (3)Gradymeister#3270
TDS:Upgrade(11, 11, 0, 4)--farm(5) U (3)
TDS:Place('Shotgunner', -3.7351245880126953, 0.07500037550926208, -30.565757751464844, 12, 0, 59)--12
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (1)
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (2)Gradymeister#3270
TDS:Place('Shotgunner', 2.373692512512207, 0.07500037550926208, -30.620128631591797, 12, 0, 58)--13
TDS:Upgrade(13, 12, 0, 57)--Shot(4) U (1)
TDS:Place('Farm', -12.223641395568848, 0.07500037550926208, -16.56233024597168, 12, 0, 4)--14 farm 6
TDS:Upgrade(14, 12, 0, 4)--farm(6) U (1)
TDS:Upgrade(14, 12, 0, 3)--farm(6) U (2)
TDS:Upgrade(14, 12, 0, 2)--farm(6) U (3)Gradymeister#3270
TDS:Upgrade(13, 13, 0, 59)--Shot(4) U (2)
TDS:Place('Farm', -12.225841522216797, 0.07500037550926208, -19.74530792236328, 13, 0, 59)--15 farm 7
TDS:Upgrade(15, 13, 0, 58)--farm(7) U (1)
TDS:Upgrade(15, 13, 0, 57)--farm(7) U (2)
TDS:Place('Farm', -9.06710433959961, 0.07500037550926208, -19.646482467651367, 13, 0, 4)--16 farm 8
TDS:Upgrade(15, 13, 0, 4)--farm(7) U (3)Gradymeister#3270
TDS:Upgrade(16, 13, 0, 4)--farm(8) U (1)
TDS:Upgrade(16, 13, 0, 3)--farm(8) U (2)
TDS:Upgrade(16, 14, 0, 2)--farm(8) U (3)
TDS:Place('Commander', -6.065537452697754, 0.07500037550926208, -18.045223236083984, 14, 0, 59)--17
TDS:Place('Commander', -3.033308982849121, 0.07500037550926208, -18.195213317871094, 15, 0, 59)--18
TDS:Place('DJ Booth', 0.027112245559692383, 0.07500037550926208, -18.191722869873047, 15, 0, 57)--19
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (1)
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (2)Gradymeister#3270
TDS:Upgrade(19, 15, 0, 55)--DJ(1) U (3)
TDS:Upgrade(2, 15, 0, 4)--farm(1) U (4)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (1)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (2)Gradymeister#3270
TDS:Ability(17, "Call Of Arms", 16, 0, 58)
TDS:Upgrade(2, 16, 0, 4)--farm(1) U (5)
TDS:Upgrade(7, 17, 0, 59)--Shot(1) U (3)
TDS:Upgrade(18, 17, 0, 59)--Commander(2) U (1)Gradymeister#3270
TDS:Upgrade(18, 17, 0, 58)--Commander(2) U (2)
TDS:Ability(18, "Call Of Arms", 18, 0, 57)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (4)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (5)Gradymeister#3270
TDS:Upgrade(10, 19, 0, 59)--Shot(2) U (3)
TDS:Place('Commander', -3.7212705612182617, 0.07500037550926208, -21.27091407775879, 19, 0, 59)--20
TDS:Upgrade(20, 19, 0, 58)--Commander(3) U (1)
TDS:Upgrade(20, 19, 0, 57)--Commander(3) U (2)
TDS:AutoChain(20, 17, 18, 19, 0, 56)
TDS:Upgrade(8, 19, 0, 4)--farm(3) U (4)
TDS:Upgrade(8, 20, 0, 59)--farm(3) U (5)
TDS:Upgrade(7, 21, 0, 59)--Shot(1) U (4)Gradymeister#3270
TDS:Upgrade(10, 22, 0, 59)--Shot(2) U (4)
TDS:Upgrade(12, 22, 0, 59)--Shot(3) U (3)
TDS:Upgrade(9, 22, 0, 4)--farm(4) U (4)
TDS:Upgrade(12, 23, 0, 59)--Shot(3) U (4)
TDS:Upgrade(9, 23, 0, 4)--farm(4) U (5)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (4)Gradymeister#3270
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (5)
TDS:Upgrade(14, 24, 0, 4)--farm(6) U (4)
TDS:Upgrade(13, 25, 0, 59)--Shot(4) U (3)
TDS:Upgrade(14, 25, 0, 59)--farm(6) U (5)
TDS:Upgrade(15, 25, 0, 57)--farm(7) U (4)
TDS:Upgrade(15, 25, 0, 4)--farm(7) U (5)
TDS:Upgrade(13, 26, 0, 59)--Shot(4) U (4)Gradymeister#3270
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (4)
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (5)
TDS:Sell(1, 26, 0, 3)--soldier 1
TDS:Sell(3, 26, 0, 3)--soldier 2Gradymeister#3270
TDS:Sell(4, 26, 0, 2)--soldier 3
TDS:Sell(6, 26, 0, 2)--soldier 4
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (4)
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (5)Gradymeister#3270
TDS:Place('Shotgunner', 2.391231060028076, 0.07500037550926208, -24.445388793945312, 27, 0, 4)--21
TDS:Upgrade(21, 27, 0, 4)--Shot(5) U (1)
TDS:Upgrade(21, 27, 0, 3)--Shot(5) U (2)Gradymeister#3270
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (3)
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (4)
TDS:Place('Shotgunner', -3.7705416679382324, 0.07500037550926208, -24.3975830078125, 28, 0, 58)--22
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (1)
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (2)Gradymeister#3270
TDS:Upgrade(22, 28, 0, 56)--Shot(6) U (3)
TDS:Upgrade(22, 29, 0, 59)--Shot(6) U (4)
TDS:Place('Shotgunner', 5.406899929046631, 0.07500037550926208, -24.468952178955078, 29, 0, 59)--23
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (1)
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (2)
TDS:Upgrade(23, 29, 0, 57)--Shot(7) U (3)
TDS:Upgrade(23, 29, 0, 54)--Shot(7) U (4)Gradymeister#3270
TDS:Place('Shotgunner', 5.433204174041748, 0.07500037550926208, -27.565195083618164, 29, 0, 4)--24
TDS:Upgrade(24, 29, 0, 4)--Shot(9) U (1)
TDS:Upgrade(24, 29, 0, 3)--Shot(9) U (2)Gradymeister#3270
TDS:Upgrade(24, 29, 0, 2)--Shot(9) U (3)
TDS:Upgrade(24, 30, 1, 10)--Shot(9) U (4)
TDS:Place('Shotgunner', 5.411324501037598, 0.07500037550926208, -30.677278518676758, 30, 0, 4)--25
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (1)
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (2)Gradymeister#3270
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (3)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (4)
TDS:Place('Shotgunner', 2.3903141021728516, 0.07500037550926208, -33.64951705932617, 31, 1, 20)--26
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (1)
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (2)
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (3)Gradymeister#3270
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (4)
TDS:Place('Shotgunner', 6.419554233551025, 0.07500037550926208, -33.73911666870117, 31, 1, 17)--27
TDS:Upgrade(27, 31, 1, 16)--Shot(12) U (1)
TDS:Upgrade(27, 31, 1, 15)--Shot(12) U (2)
TDS:Upgrade(27, 31, 1, 14)--Shot(12) U (3)
TDS:Upgrade(17, 31, 0, 4)--Commander(1) U (3)Gradymeister#3270
TDS:Upgrade(17, 32, 1, 20)--Commander(1) U (4)
TDS:Upgrade(18, 32, 1, 19)--Commander(2) U (3)
TDS:Upgrade(27, 32, 1, 15)--Shot(12) U (4)
TDS:Place('Shotgunner', 8.487069129943848, 0.07500037550926208, -24.395126342773438, 32, 1, 8)--28
TDS:Upgrade(28, 32, 1, 8)--Shot(13) U (1)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (2)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (3)Gradymeister#3270
TDS:Place('Shotgunner', 8.538529396057129, 0.07500037550926208, -27.451522827148438, 33, 1, 17)--29
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (1)
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (2)
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (3)Gradymeister#3270
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (4)
TDS:Place('Shotgunner', 8.57435417175293, 0.07500037550926208, -30.595849990844727, 33, 1, 8)--30
TDS:Upgrade(30, 33, 1, 8)--Shot(15) U (1)
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (2)Gradymeister#3270
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (3)
TDS:Place('Shotgunner', 3.047210216522217, 0.07500037550926208, -18.27920913696289, 33, 1, 5)--31
TDS:Place('Shotgunner', 6.191225528717041, 0.07500037550926208, -18.290611267089844, 33, 1, 4)--32
TDS:Place('Shotgunner', 6.269420623779297, 0.07500037550926208, -15.240524291992188, 33, 1, 3)--33
TDS:Upgrade(28, 34, 1, 20)--Shot(13) U (4)
TDS:Upgrade(30, 34, 1, 20)--Shot(15) U (4)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (1)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (2)
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (3)Gradymeister#3270
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (4)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (1)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (2)
TDS:Upgrade(32, 34, 1, 16)--Shot(17) U (3)
TDS:Upgrade(32, 34, 1, 10)--Shot(17) U (4)Gradymeister#3270
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (1)
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (2)
TDS:Upgrade(33, 34, 0, 3)--Shot(18) U (3)
TDS:Upgrade(33, 35, 1, 20)--Shot(18) U (4)
TDS:Place('Shotgunner', 3.210728645324707, 0.07500037550926208, -15.23838996887207, 35, 1, 19)--34
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (1)
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (2)
TDS:Upgrade(34, 35, 1, 10)--Shot(19) U (3)Gradymeister#3270
TDS:Upgrade(34, 36, 1, 20)--Shot(19) U (4)
TDS:Place('Shotgunner', 0.16923213005065918, 0.07500037550926208, -15.149426460266113, 36, 1, 18)--35
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (1)
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (2)Gradymeister#3270
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (3)
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (4)
TDS:Place('Shotgunner', -2.8847713470458984, 0.07500037550926208, -15.136845588684082, 36, 0, 4)--36
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (1)
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (2)
TDS:Upgrade(36, 36, 0, 3)--Shot(21) U (3)Gradymeister#3270
TDS:Upgrade(36, 36, 0, 2)--Shot(21) U (4)
TDS:Place('Shotgunner', -6.886444091796875, 0.07500037550926208, -22.76839256286621, 37, 1, 20)--37
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (1)
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (2)
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (3)Gradymeister#3270
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (4)
TDS:Place('Shotgunner', -6.835777282714844, 0.07500037550926208, -25.845914840698242, 37, 1, 17)--38
TDS:Upgrade(38, 37, 1, 16)--Shot(23) U (1)
TDS:Upgrade(38, 37, 1, 15)--Shot(23) U (2)Gradymeister#3270
TDS:Upgrade(38, 37, 1, 13)--Shot(23) U (3)
TDS:Upgrade(38, 37, 1, 4)--Shot(23) U (4)
TDS:Skip(37, 0, 54)
TDS:Skip(37, 0, 53)
TDS:Place('Shotgunner', -5.949267387390137, 0.07500037550926208, -15.038374900817871, 37, 0, 4)--39
TDS:Place('Shotgunner', 6.2581892013549805, 0.07500037550926208, -12.140957832336426, 37, 0, 4)--40
TDS:Place('Shotgunner', 3.2441139221191406, 0.07500037550926208, -12.148711204528809, 37, 0, 4)--41
TDS:Place('Shotgunner', 0.1785564422607422, 0.07500037550926208, -12.043123245239258, 37, 0, 3)--42
TDS:Place('Shotgunner', -2.9072136878967285, 0.07500037550926208, -12.111763000488281, 37, 0, 3)--43
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (1)
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (2)Gradymeister#3270
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (3)
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (4)
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (1)
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (2)Gradymeister#3270
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (3)
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (4)
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (1)
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (2)Gradymeister#3270
TDS:Upgrade(41, 38, 1, 14)--Shot(26) U (3)
TDS:Skip(38, 0, 54)
TDS:Skip(38, 0, 53)
TDS:Upgrade(41, 38, 0, 4)--Shot(26) U (4)
TDS:Upgrade(42, 38, 0, 4)--Shot(27) U (1)
TDS:Upgrade(42, 38, 0, 3)--Shot(27) U (2)Gradymeister#3270
TDS:Upgrade(42, 38, 0, 2)--Shot(27) U (3)
TDS:Upgrade(42, 39, 1, 20)--Shot(27) U (4)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (1)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (2)Gradymeister#3270
TDS:Upgrade(43, 39, 1, 18)--Shot(28) U (3)
TDS:Upgrade(43, 39, 1, 15)--Shot(28) U (4)
TDS:Skip(39, 0, 54)
TDS:Skip(39, 0, 53)
TDS:Place('Shotgunner', -5.930129051208496, 0.07500037550926208, -11.952861785888672, 39, 0, 4)--44
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (1)
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (2)
TDS:Upgrade(44, 39, 0, 3)--Shot(29) U (3)Gradymeister#3270
TDS:Upgrade(44, 39, 0, 2)--Shot(29) U (4)
TDS:Sell(2, 40, 99, 59)--farm 1 sell
TDS:Sell(5, 40, 99, 59)--farm 2 sellGradymeister#3270
TDS:Sell(8, 40, 99, 59)--farm 3 sell
TDS:Sell(9, 40, 99, 58)--farm 4 sell
TDS:Sell(11, 40, 99, 58)--farm 5 sellGradymeister#3270
TDS:Sell(14, 40, 99, 58)--farm 6 sell
TDS:Sell(15, 40, 99, 57)--farm 7 sell
TDS:Sell(16, 40, 99, 57)--farm 8 sell
TDS:Place('Shotgunner', 12.363351821899414, 0.07500037550926208, -19.17992401123047, 40, 99, 56)--45
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (1)
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (2)Gradymeister#3270
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (3)
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (4)
TDS:Place('Shotgunner', 12.349894523620605, 0.07500037550926208, -16.173583984375, 40, 99, 54)--46
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (1)
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (2)Gradymeister#3270
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (3)
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (4)
TDS:Place('Shotgunner', 12.405400276184082, 0.07500037550926208, -13.096586227416992, 40, 99, 51)--47
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (1)Gradymeister#3270
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (2)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (3)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (4)
TDS:Place('Shotgunner', 12.371295928955078, 0.07500037550926208, -9.958130836486816, 40, 99, 48)--48
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (1)
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (2)Gradymeister#3270
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (3)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (4)
TDS:Place('Shotgunner', 12.426210403442383, 0.07500037550926208, -6.91192626953125, 40, 99, 40)--49
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (1)Gradymeister#3270
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (2)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (3)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (4)
TDS:Place('Shotgunner', 15.437088012695312, 0.07500037550926208, -19.01337432861328, 40, 99, 37)--50
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (1)
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (2)Gradymeister#3270
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (3)
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (4)
TDS:Place('Shotgunner', 15.494491577148438, 0.07500037550926208, -15.91351318359375, 40, 99, 31)--51
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (1)
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (2)Gradymeister#3270
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (3)
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (4)
TDS:Place('Shotgunner', 15.47461986541748, 0.07500037550926208, -12.75283432006836, 40, 99, 27)--52
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (1)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (2)Gradymeister#3270
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (3)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (4)
TDS:Place('Shotgunner', 9.411714553833008, 0.07500037550926208, -4.1717071533203125, 40, 99, 24)--53
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (1)Gradymeister#3270
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (2)
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (3)
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (4)
TDS:Sell(12, 40, 99, 21)--shotgunner
TDS:Sell(10, 40, 99, 21)--shotgunnerGradymeister#3270
TDS:Sell(38, 40, 99, 21)--shotgunner
TDS:Sell(37, 40, 99, 21)--shotgunner
TDS:Place('Shotgunner', 6.335257530212402, 0.07500037550926208, -4.2176713943481445, 40, 99, 20)--54
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (1)
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (2)
TDS:Upgrade(54, 40, 99, 18)--Shot(39) U (3)Gradymeister#3270
TDS:Upgrade(54, 40, 99, 18)--Shot(39) U (4)
TDS:Sell(26, 40, 99, 17)--shotgunner
TDS:Sell(13, 40, 99, 17)--shotgunner
TDS:Sell(27, 40, 99, 17)--shotgunner 
TDS:Place('Shotgunner', 3.2913966178894043, 0.07500037550926208, -4.238041877746582, 40, 99, 16)--55
TDS:Upgrade(55, 40, 99, 15)--Shot(40) U (1)Gradymeister#3270
TDS:Upgrade(55, 40, 99, 15)--Shot(40) U (2)
TDS:Upgrade(55, 40, 99, 15)--Shot(40) U (3)Gradymeister#3270
TDS:Upgrade(55, 40, 99, 14)--Shot(40) U (4)
TDS:Place('Shotgunner', 0.2161417007446289, 0.07500037550926208, -4.262051582336426, 40, 99, 14)--56
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (1)
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (2)Gradymeister#3270
TDS:Upgrade(56, 40, 99, 12)--Shot(41) U (3)
TDS:Upgrade(56, 40, 99, 12)--Shot(41) U (4)
TDS:Place('Shotgunner', -2.868102550506592, 0.07500037550926208, -4.264366149902344, 40, 99, 12)--57
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (1)Gradymeister#3270
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (2)
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (3)
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (4)
TDS:Place('Shotgunner', -5.943308353424072, 0.07500037550926208, -4.260336875915527, 40, 99, 9)--58
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (1)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (2)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (3)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (4)Gradymeister#3270
TDS:Sell(25, 40, 98, 34)--shotgunner
TDS:Sell(24, 40, 98, 34)--shotgunner
TDS:Sell(28, 40, 98, 33)--shotgunner
TDS:Sell(29, 40, 98, 33)--shotgunner
TDS:Sell(22, 40, 98, 33)--shotgunner
TDS:Sell(23, 40, 98, 32)--shotgunner
TDS:Sell(45, 40, 98, 32)--shotgunner
TDS:Sell(46, 40, 98, 32)--shotgunner
TDS:Sell(47, 40, 98, 31)--shotgunner
TDS:Sell(48, 40, 98, 31)--shotgunner
TDS:Sell(49, 40, 98, 31)--shotgunner
TDS:Sell(50, 40, 98, 30)--shotgunner
TDS:Sell(34, 40, 98, 30)--shotgunner
TDS:Sell(33, 40, 98, 30)--shotgunner
TDS:Sell(20, 40, 98, 29)--commander
TDS:Sell(36, 40, 98, 29)--shotgunner
TDS:Sell(32, 40, 98, 29)--shotgunner
TDS:Sell(31, 40, 98, 28)--shotgunner
TDS:Sell(40, 40, 98, 28)--shotgunner
TDS:Sell(39, 40, 98, 28)--shotgunner
TDS:Sell(38, 40, 98, 27)--shotgunner
TDS:Sell(37, 40, 98, 27)--shotgunner
TDS:Sell(51, 40, 98, 27)--shotgunner
TDS:Place('Commander', -17.552337646484375, 0.07500037550926208, 20.817045211791992, 40, 98, 26)--59
TDS:Place('Shotgunner', -20.659564971923828, 0.07500037550926208, 20.830718994140625, 40, 98, 26)--60
TDS:Place('Shotgunner', -23.761768341064453, 0.07500037550926208, 17.943885803222656, 40, 98, 26)--61
TDS:Place('Shotgunner', -14.267580032348633, 0.07500037550926208, 14.605098724365234, 40, 98, 25)--62
TDS:Place('Shotgunner', -23.777557373046875, 0.07500037550926208, 14.849693298339844, 40, 98, 25)--63
TDS:Place('Shotgunner', -17.397220611572266, 0.07500037550926208, 14.510485649108887, 40, 98, 25)--64
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 1
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 2
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 3
TDS:Upgrade(59, 40, 98, 21)--(L) Commander 4
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U1
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U2
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U3
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U4
TDS:Upgrade(61, 40, 98, 20)--(L) Shotgunner 2 U1
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U2
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U3
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U4
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U1
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U2
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U3
TDS:Upgrade(62, 40, 98, 17)--(L) Shotgunner 3 U4
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U1
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U2
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U3
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U4
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U1
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U2
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U3
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U4
    end
    if map == maplist[3] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    Gradymeister#3270
MultiStrat by:    Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm") 
TDS:Map("Portland", true, "Survival")
TDS:Mode('Normal')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Soldier', -10.480596542358398, 0.2291736602783203, 25.746231079101562, 0, 0, 10)--1
TDS:Place('Farm', -0.6680240631103516, 0.23028850555419922, 11.84439468383789, 0, 0, 9)--2 farm 1
TDS:Place('Soldier', -13.490470886230469, 0.22944164276123047, 25.791522979736328, 2, 0, 59)--3
TDS:Upgrade(2, 2, 0, 4)--farm(1) U (1)Gradymeister#3270
TDS:Upgrade(2, 3, 0, 4)--farm(1) U (2)
TDS:Place('Soldier', -15.950733184814453, 0.2296600341796875, 28.887474060058594, 4, 0, 59)--4
TDS:Upgrade(2, 5, 0, 4)--farm(1) U (3)Gradymeister#3270
TDS:Place('Farm', -3.925703525543213, 0.2305583953857422, 11.530693054199219, 5, 0, 4)--5 farm 2
TDS:Place('Soldier', -13.522937774658203, 0.22944355010986328, 31.929222106933594, 6, 0, 59)--6
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (1)Gradymeister#3270
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (2)
TDS:Place('Shotgunner', -10.46233081817627, 0.2291717529296875, 32.330657958984375, 7, 0, 59)--7
TDS:Upgrade(7, 7, 0, 59)--Shot(1) U (1)
TDS:Upgrade(5, 7, 0, 4)--farm(2) U (3)Gradymeister#3270
TDS:Upgrade(7, 8, 0, 4)--Shot(1) U (2)
TDS:Place('Farm', 0.7513961791992188, 0.23017120361328125, 14.930530548095703, 8, 0, 4)--8 farm 3
TDS:Upgrade(8, 8, 0, 3)--farm(3) U (1)
TDS:Upgrade(8, 9, 0, 59)--farm(3) U (2)
TDS:Upgrade(8, 9, 0, 4)--farm(3) U (3)Gradymeister#3270
TDS:Place('Farm', 2.3796310424804688, 0.23003673553466797, 11.768135070800781, 9, 0, 4)--9 farm 4
TDS:Upgrade(9, 9, 0, 3)--farm(4) U (1)
TDS:Place('Shotgunner', -4.282145977020264, 0.23058795928955078, 32.362548828125, 10, 0, 59)--10
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (1)Gradymeister#3270
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (2)
TDS:Upgrade(9, 10, 0, 4)--farm(4) U (2)
TDS:Place('Farm', 3.826507568359375, 0.22991657257080078, 14.841232299804688, 10, 0, 4)--11 farm 5
TDS:Upgrade(11, 10, 0, 3)--farm(5) U (1)Gradymeister#3270
TDS:Upgrade(11, 11, 0, 59)--farm(5) U (2)
TDS:Upgrade(9, 11, 0, 59)--farm(4) U (3)Gradymeister#3270
TDS:Upgrade(11, 11, 0, 4)--farm(5) U (3)
TDS:Place('Shotgunner', -10.484415054321289, 0.22917461395263672, 29.04009246826172, 12, 0, 59)--12
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (1)
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (2)Gradymeister#3270
TDS:Place('Shotgunner', -4.3462815284729, 0.2305927276611328, 29.290756225585938, 12, 0, 58)--13
TDS:Upgrade(13, 12, 0, 57)--Shot(4) U (1)
TDS:Place('Farm', 4.011356353759766, 0.22990131378173828, 17.947128295898438, 12, 0, 4)--14 farm 6
TDS:Upgrade(14, 12, 0, 4)--farm(6) U (1)Gradymeister#3270
TDS:Upgrade(14, 12, 0, 3)--farm(6) U (2)
TDS:Upgrade(14, 12, 0, 2)--farm(6) U (3)
TDS:Upgrade(13, 13, 0, 59)--Shot(4) U (2)Gradymeister#3270
TDS:Place('Farm', 0.8125295639038086, 0.23016643524169922, 17.952667236328125, 13, 0, 59)--15 farm 7
TDS:Upgrade(15, 13, 0, 58)--farm(7) U (1)Gradymeister#3270
TDS:Upgrade(15, 13, 0, 57)--farm(7) U (2)
TDS:Place('Farm', -2.6046767234802246, 0.23044872283935547, 8.448909759521484, 13, 0, 4)--16 farm 8
TDS:Upgrade(15, 13, 0, 4)--farm(7) U (3)
TDS:Upgrade(16, 13, 0, 4)--farm(8) U (1)Gradymeister#3270
TDS:Upgrade(16, 13, 0, 3)--farm(8) U (2)
TDS:Upgrade(16, 14, 0, 2)--farm(8) U (3)
TDS:Place('Commander', -6.084011077880859, 0.23073768615722656, 19.51007843017578, 14, 0, 59)--17
TDS:Place('Commander', -2.9840025901794434, 0.23048019409179688, 20.06351089477539, 15, 0, 59)--18
TDS:Place('DJ Booth', -9.188258171081543, 0.23099422454833984, 19.343765258789062, 15, 0, 57)--19
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (1)Gradymeister#3270
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (2)
TDS:Upgrade(19, 15, 0, 55)--DJ(1) U (3)
TDS:Upgrade(2, 15, 0, 4)--farm(1) U (4)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (1)Gradymeister#3270
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (2)
TDS:Ability(17, "Call Of Arms", 16, 0, 58)
TDS:Upgrade(2, 16, 0, 4)--farm(1) U (5)
TDS:Upgrade(7, 17, 0, 59)--Shot(1) U (3)
TDS:Upgrade(18, 17, 0, 59)--Commander(2) U (1)Gradymeister#3270
TDS:Upgrade(18, 17, 0, 58)--Commander(2) U (2)
TDS:Ability(18, "Call Of Arms", 18, 0, 57)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (4)Gradymeister#3270
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (5)
TDS:Upgrade(10, 19, 0, 59)--Shot(2) U (3)
TDS:Place('Commander', -2.961617946624756, 0.23047828674316406, 17.04909896850586, 19, 0, 59)--20
TDS:Upgrade(20, 19, 0, 58)--Commander(3) U (1)
TDS:Upgrade(20, 19, 0, 57)--Commander(3) U (2)
TDS:AutoChain(20, 17, 18, 19, 0, 56)
TDS:Upgrade(8, 19, 0, 4)--farm(3) U (4)
TDS:Upgrade(8, 20, 0, 59)--farm(3) U (5)
TDS:Upgrade(7, 21, 0, 59)--Shot(1) U (4)Gradymeister#3270
TDS:Upgrade(10, 22, 0, 59)--Shot(2) U (4)
TDS:Upgrade(12, 22, 0, 59)--Shot(3) U (3)
TDS:Upgrade(9, 22, 0, 4)--farm(4) U (4)
TDS:Upgrade(12, 23, 0, 59)--Shot(3) U (4)
TDS:Upgrade(9, 23, 0, 4)--farm(4) U (5)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (4)Gradymeister#3270
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (5)
TDS:Upgrade(14, 24, 0, 4)--farm(6) U (4)
TDS:Upgrade(13, 25, 0, 59)--Shot(4) U (3)
TDS:Upgrade(14, 25, 0, 59)--farm(6) U (5)
TDS:Upgrade(15, 25, 0, 57)--farm(7) U (4)Gradymeister#3270
TDS:Upgrade(15, 25, 0, 4)--farm(7) U (5)
TDS:Upgrade(13, 26, 0, 59)--Shot(4) U (4)
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (4)
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (5)Gradymeister#3270
TDS:Sell(1, 26, 0, 3)--soldier 1
TDS:Sell(3, 26, 0, 3)--soldier 2
TDS:Sell(4, 26, 0, 2)--soldier 3Gradymeister#3270
TDS:Sell(6, 26, 0, 2)--soldier 4
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (4)
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (5)
TDS:Place('Shotgunner', -10.472290992736816, 0.2291727066040039, 26.010082244873047, 27, 0, 4)--21
TDS:Upgrade(21, 27, 0, 4)--Shot(5) U (1)
TDS:Upgrade(21, 27, 0, 3)--Shot(5) U (2)Gradymeister#3270
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (3)
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (4)
TDS:Place('Shotgunner', -4.310788154602051, 0.2305898666381836, 26.215328216552734, 28, 0, 58)--22
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (1)Gradymeister#3270
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (2)
TDS:Upgrade(22, 28, 0, 56)--Shot(6) U (3)Gradymeister#3270
TDS:Upgrade(22, 29, 0, 59)--Shot(6) U (4)
TDS:Place('Shotgunner', -10.613158226013184, 0.2291851043701172, 35.4163818359375, 29, 0, 59)--23
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (1)Gradymeister#3270
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (2)
TDS:Upgrade(23, 29, 0, 57)--Shot(7) U (3)
TDS:Upgrade(23, 29, 0, 54)--Shot(7) U (4)
TDS:Place('Shotgunner', -4.3218512535095215, 0.2305917739868164, 35.442100524902344, 29, 0, 4)--24
TDS:Upgrade(24, 29, 0, 4)--Shot(9) U (1)
TDS:Upgrade(24, 29, 0, 3)--Shot(9) U (2)
TDS:Upgrade(24, 29, 0, 2)--Shot(9) U (3)Gradymeister#3270
TDS:Upgrade(24, 30, 1, 10)--Shot(9) U (4)
TDS:Place('Shotgunner', -4.354508876800537, 0.23059368133544922, 23.163307189941406, 30, 0, 4)--25
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (1)
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (2)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (3)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -1.188429355621338, 0.2303314208984375, 32.00300598144531, 31, 1, 20)--26
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (1)
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (2)
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (3)Gradymeister#3270
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (4)
TDS:Place('Shotgunner', -1.2525672912597656, 0.23033618927001953, 28.92632293701172, 31, 1, 17)--27
TDS:Upgrade(27, 31, 1, 16)--Shot(12) U (1)
TDS:Upgrade(27, 31, 1, 15)--Shot(12) U (2)Gradymeister#3270
TDS:Upgrade(27, 31, 1, 14)--Shot(12) U (3)
TDS:Upgrade(17, 31, 0, 4)--Commander(1) U (3)
TDS:Upgrade(17, 32, 1, 20)--Commander(1) U (4)
TDS:Upgrade(18, 32, 1, 19)--Commander(2) U (3)
TDS:Upgrade(27, 32, 1, 15)--Shot(12) U (4)
TDS:Place('Shotgunner', -1.2251558303833008, 0.23033523559570312, 25.85295867919922, 32, 1, 8)--28
TDS:Upgrade(28, 32, 1, 8)--Shot(13) U (1)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (2)Gradymeister#3270
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (3)
TDS:Place('Shotgunner', -13.591529846191406, 0.22945022583007812, 31.728317260742188, 33, 1, 17)--29
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (1)
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (2)Gradymeister#3270
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (3)
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (4)
TDS:Place('Shotgunner', -13.488471031188965, 0.22944164276123047, 27.106182098388672, 33, 1, 8)--30
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (1)
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (2)Gradymeister#3270
TDS:Upgrade(30, 33, 1, 6)--Shot(15) U (3)
TDS:Place('Shotgunner', -16.678436279296875, 0.22972393035888672, 28.823837280273438, 33, 1, 5)--31
TDS:Place('Shotgunner', -16.529569625854492, 0.22971153259277344, 25.728008270263672, 33, 1, 4)--32
TDS:Place('Shotgunner', -12.20849895477295, 0.22932720184326172, 19.39111328125, 33, 1, 3)--33
TDS:Upgrade(28, 34, 1, 20)--Shot(13) U (4)
TDS:Upgrade(30, 34, 1, 20)--Shot(15) U (4)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (1)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (2)
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (3)Gradymeister#3270
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (4)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (1)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (2)
TDS:Upgrade(32, 34, 1, 16)--Shot(17) U (3)
TDS:Upgrade(32, 34, 1, 10)--Shot(17) U (4)
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (1)Gradymeister#3270
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (2)
TDS:Upgrade(33, 34, 0, 3)--Shot(18) U (3)
TDS:Upgrade(33, 35, 1, 20)--Shot(18) U (4)
TDS:Place('Shotgunner', -15.221735000610352, 0.22959423065185547, 19.36416244506836, 35, 1, 19)--34
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (1)
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (2)Gradymeister#3270
TDS:Upgrade(34, 35, 1, 10)--Shot(19) U (3)
TDS:Upgrade(34, 36, 1, 19)--Shot(19) U (4)
TDS:Place('Shotgunner', -18.264877319335938, 0.22986602783203125, 19.38638687133789, 36, 1, 18)--35
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (1)
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (2)Gradymeister#3270
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (3)
TDS:Upgrade(35, 36, 1, 16)--Shot(20) U (4) (EDIT)
TDS:Place('Shotgunner', -21.30837631225586, 0.23013687133789062, 19.405590057373047, 36, 0, 4)--36
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (1)
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (2)
TDS:Upgrade(36, 36, 0, 3)--Shot(21) U (3)Gradymeister#3270
TDS:Upgrade(36, 36, 0, 2)--Shot(21) U (4)
TDS:Place('Shotgunner', -19.59270477294922, 0.22998428344726562, 25.652507781982422, 37, 1, 20)--37
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (1)
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (2)
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (3)Gradymeister#3270
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (4)
TDS:Place('Shotgunner', -19.69277572631836, 0.22998046875, 28.744354248046875, 37, 1, 17)--38
TDS:Upgrade(38, 37, 1, 16)--Shot(23) U (1)
TDS:Upgrade(38, 37, 1, 15)--Shot(23) U (2)
TDS:Upgrade(38, 37, 1, 13)--Shot(23) U (3)Gradymeister#3270
TDS:Upgrade(38, 37, 1, 4)--Shot(23) U (4)
TDS:Skip(37, 0, 54)
TDS:Skip(37, 0, 53)
TDS:Place('Shotgunner', -6.045838356018066, 0.23073387145996094, 16.43750762939453, 37, 0, 4)--39
TDS:Place('Shotgunner', -9.071263313293457, 0.23098468780517578, 16.289325714111328, 37, 0, 4)--40
TDS:Place('Shotgunner', -12.152318954467773, 0.2293224334716797, 16.25119400024414, 37, 0, 4)--41Gradymeister#3270
TDS:Place('Shotgunner', -15.21638298034668, 0.22959423065185547, 16.315105438232422, 37, 0, 3)--42
TDS:Place('Shotgunner', -18.24349021911621, 0.22986412048339844, 16.241310119628906, 37, 0, 3)--43
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (1)
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (2)
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (3)
TDS:Upgrade(39, 38, 1, 18)--Shot(24) U (4)Gradymeister#3270
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (1)
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (2)
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (3)
TDS:Upgrade(40, 38, 1, 16)--Shot(25) U (4)
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (1)Gradymeister#3270
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (2)
TDS:Upgrade(41, 38, 1, 14)--Shot(26) U (3)
TDS:Skip(38, 0, 54)
TDS:Skip(38, 0, 53)
TDS:Upgrade(41, 38, 0, 4)--Shot(26) U (4)
TDS:Upgrade(42, 38, 0, 4)--Shot(27) U (1)
TDS:Upgrade(42, 38, 0, 3)--Shot(27) U (2)
TDS:Upgrade(42, 38, 0, 2)--Shot(27) U (3)Gradymeister#3270
TDS:Upgrade(42, 39, 1, 20)--Shot(27) U (4)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (1)Gradymeister#3270
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (2)
TDS:Upgrade(43, 39, 1, 18)--Shot(28) U (3)
TDS:Upgrade(43, 39, 1, 15)--Shot(28) U (4)
TDS:Skip(39, 0, 54)
TDS:Skip(39, 0, 53)
TDS:Place('Shotgunner', -21.320951461791992, 0.23013782501220703, 16.267375946044922, 39, 0, 4)--44
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (1)
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (2)
TDS:Upgrade(44, 39, 0, 3)--Shot(29) U (3)Gradymeister#3270
TDS:Upgrade(44, 39, 0, 2)--Shot(29) U (4)
TDS:Sell(2, 40, 99, 59)--farm 1 sell
TDS:Sell(5, 40, 99, 59)--farm 2 sell
TDS:Sell(8, 40, 99, 59)--farm 3 sellGradymeister#3270
TDS:Sell(9, 40, 99, 58)--farm 4 sell
TDS:Sell(11, 40, 99, 58)--farm 5 sell
TDS:Sell(14, 40, 99, 58)--farm 6 sell
TDS:Sell(15, 40, 99, 57)--farm 7 sellGradymeister#3270
TDS:Sell(16, 40, 99, 57)--farm 8 sell
TDS:Place('Shotgunner', -24.35474395751953, 0.23040390014648438, 19.407684326171875, 40, 99, 56)--45
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (1)
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (2)
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (3)Gradymeister#3270
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (4)
TDS:Place('Shotgunner', -24.32099151611328, 0.23040390014648438, 16.3670654296875, 40, 99, 54)--46
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (1)
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (2)Gradymeister#3270
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (3)
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (4)
TDS:Place('Shotgunner', -11.902121543884277, 0.22930049896240234, 13.192035675048828, 40, 99, 51)--47
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (1)
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (2)Gradymeister#3270
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (3)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (4)
TDS:Place('Shotgunner', -8.801376342773438, 0.23096179962158203, 13.262809753417969, 40, 99, 48)--48
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (1)
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (2)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (3)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -14.99733829498291, 0.22957515716552734, 13.176727294921875, 40, 99, 40)--49
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (1)
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (2)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (3)Gradymeister#3270
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (4)
TDS:Place('Shotgunner', -18.083642959594727, 0.22984981536865234, 13.169029235839844, 40, 99, 37)--50
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (1)
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (2)Gradymeister#3270
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (3)
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (4)
TDS:Place('Shotgunner', -21.176803588867188, 0.23012542724609375, 13.185108184814453, 40, 99, 31)--51
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (1)
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (2)Gradymeister#3270
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (3)
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (4)
TDS:Sell(24, 40, 99, 28)--shotgunner
TDS:Sell(10, 40, 99, 28)--shotgunner
TDS:Sell(26, 40, 99, 28)--shotgunner
TDS:Sell(28, 40, 99, 28)--shotgunnerGradymeister#3270
TDS:Place('Shotgunner', -24.286056518554688, 0.23040103912353516, 13.20352554321289, 40, 99, 27)--52
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (1)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (2)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (3)Gradymeister#3270
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (4)
TDS:Place('Shotgunner', -24.366085052490234, 0.23040771484375, 10.104850769042969, 40, 99, 24)--53
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (1)
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (2)Gradymeister#3270
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (3)
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -21.235572814941406, 0.23012924194335938, 10.157779693603516, 40, 99, 21)--54
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (1)
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (2)
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (3)
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (4)Gradymeister#3270
TDS:Sell(22, 40, 99, 18)--shotgunner
TDS:Sell(23, 40, 99, 18)--shotgunner
TDS:Sell(7, 40, 99, 18)--shotgunner 
TDS:Place('Shotgunner', -18.15089988708496, 0.22985553741455078, 10.151863098144531, 40, 99, 18)--55
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (1)Gradymeister#3270
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (2)
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (3)
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (4)
TDS:Place('Shotgunner', -13.697433471679688, 0.22945880889892578, 10.164405822753906, 40, 99, 15)--56
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (1)
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (2)
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (3)Gradymeister#3270
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (4)
TDS:Place('Shotgunner', -10.673298835754395, 0.22919082641601562, 10.162757873535156, 40, 99, 12)--57
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (1)
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (2)Gradymeister#3270
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (3)
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (4)
TDS:Place('Shotgunner', -7.644527912139893, 0.2308664321899414, 10.209766387939453, 40, 99, 9)--58
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (1)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (2)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (3)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (4)Gradymeister#3270\
TDS:Sell(25, 40, 98, 34)--shotgunner
TDS:Sell(24, 40, 98, 34)--shotgunner
TDS:Sell(28, 40, 98, 33)--shotgunner
TDS:Sell(29, 40, 98, 33)--shotgunner
TDS:Sell(22, 40, 98, 33)--shotgunner
TDS:Sell(23, 40, 98, 32)--shotgunner
TDS:Sell(45, 40, 98, 32)--shotgunner
TDS:Sell(46, 40, 98, 32)--shotgunner
TDS:Sell(47, 40, 98, 31)--shotgunner
TDS:Sell(48, 40, 98, 31)--shotgunner
TDS:Sell(49, 40, 98, 31)--shotgunner
TDS:Sell(50, 40, 98, 30)--shotgunner
TDS:Sell(34, 40, 98, 30)--shotgunner
TDS:Sell(33, 40, 98, 30)--shotgunner
TDS:Sell(20, 40, 98, 29)--commander
TDS:Sell(36, 40, 98, 29)--shotgunner
TDS:Sell(32, 40, 98, 29)--shotgunner
TDS:Sell(31, 40, 98, 28)--shotgunner
TDS:Sell(40, 40, 98, 28)--shotgunner
TDS:Sell(39, 40, 98, 28)--shotgunner
TDS:Sell(38, 40, 98, 27)--shotgunner
TDS:Sell(37, 40, 98, 27)--shotgunner
TDS:Sell(51, 40, 98, 27)--shotgunner
TDS:Place('Commander', 1.9999027252197266, 0.23067665100097656, -18.450836181640625, 40, 98, 26)--59
TDS:Place('Shotgunner', 11.406412124633789, 0.23019790649414062, -18.463890075683594, 40, 98, 26)--60
TDS:Place('Shotgunner', 5.201282501220703, 0.2305154800415039, -18.53093910217285, 40, 98, 26)--61
TDS:Place('Shotgunner', 8.320953369140625, 0.23035526275634766, -18.432008743286133, 40, 98, 25)--62
TDS:Place('Shotgunner', 5.3519134521484375, 0.2304830551147461, -12.225772857666016, 40, 98, 25)--63
TDS:Place('Shotgunner', 8.383769989013672, 0.2303447723388672, -12.162824630737305, 40, 98, 25)--64
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 1
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 2
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 3
TDS:Upgrade(59, 40, 98, 21)--(L) Commander 4
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U1
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U2
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U3
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U4
TDS:Upgrade(61, 40, 98, 20)--(L) Shotgunner 2 U1
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U2
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U3
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U4
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U1
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U2
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U3
TDS:Upgrade(62, 40, 98, 17)--(L) Shotgunner 3 U4
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U1
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U2
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U3
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U4
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U1
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U2
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U3
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U4
    end
    if map == maplist[4] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:    Gradymeister#3270
MultiStrat by:    Gradymeister#3270 :>
]])
getgenv().Debug = true
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Soldier", "Farm") 
TDS:Map("Winter Abyss", true, "Survival")
TDS:Mode('Normal')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Soldier', -2.1124377250671387, 6.100831031799316, 1.5082459449768066, 0, 0, 10)--1
TDS:Place('Farm', 9.111115455627441, 6.100808143615723, -15.866476058959961, 0, 0, 9)--2 farm 1
TDS:Place('Soldier', 0.9507825374603271, 6.100848197937012, 1.334723949432373, 2, 0, 59)--3
TDS:Upgrade(2, 2, 0, 4)--farm(1) U (1)
TDS:Upgrade(2, 3, 0, 4)--farm(1) U (2)Gradymeister#3270
TDS:Place('Soldier', -2.09216046333313, 6.100761413574219, 4.6016058921813965, 4, 0, 59)--4
TDS:Upgrade(2, 5, 0, 4)--farm(1) U (3)
TDS:Place('Farm', 9.45539665222168, 6.100882530212402, -18.889116287231445, 5, 0, 4)--5 farm 2
TDS:Place('Soldier', -5.114849090576172, 6.1007537841796875, 4.916806697845459, 6, 0, 59)--6
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (1)Gradymeister#3270
TDS:Upgrade(5, 6, 0, 4)--farm(2) U (2)
TDS:Place('Shotgunner', 3.912170886993408, 6.10077428817749, 4.539892673492432, 7, 0, 59)--7
TDS:Upgrade(7, 7, 0, 59)--Shot(1) U (1)
TDS:Upgrade(5, 7, 0, 4)--farm(2) U (3)Gradymeister#3270
TDS:Upgrade(7, 8, 0, 4)--Shot(1) U (2)
TDS:Place('Farm', 5.976041793823242, 6.100843906402588, -17.38048553466797, 8, 0, 4)--8 farm 3
TDS:Upgrade(8, 8, 0, 3)--farm(3) U (1)
TDS:Upgrade(8, 9, 0, 59)--farm(3) U (2)Gradymeister#3270
TDS:Upgrade(8, 9, 0, 4)--farm(3) U (3)
TDS:Place('Farm', 6.429014682769775, 6.100920677185059, -20.491525650024414, 9, 0, 4)--9 farm 4
TDS:Upgrade(9, 9, 0, 3)--farm(4) U (1)Gradymeister#3270
TDS:Place('Shotgunner', 10.069499015808105, 6.10076904296875, 4.907057285308838, 10, 0, 59)--10
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (1)
TDS:Upgrade(10, 10, 0, 59)--Shot(2) U (2)Gradymeister#3270
TDS:Upgrade(9, 10, 0, 4)--farm(4) U (2)
TDS:Place('Farm', 8.149447441101074, 6.100613594055176, -10.484699249267578, 10, 0, 4)--11 farm 5
TDS:Upgrade(11, 10, 0, 3)--farm(5) U (1)
TDS:Upgrade(11, 11, 0, 59)--farm(5) U (2)Gradymeister#3270
TDS:Upgrade(9, 11, 0, 59)--farm(4) U (3)
TDS:Upgrade(11, 11, 0, 4)--farm(5) U (3)
TDS:Place('Shotgunner', 3.761977195739746, 6.100703239440918, 7.6569952964782715, 12, 0, 59)--12
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (1)Gradymeister#3270
TDS:Upgrade(12, 12, 0, 59)--Shot(3) U (2)
TDS:Place('Shotgunner', 10.086771965026855, 6.100696563720703, 8.011329650878906, 12, 0, 58)--13
TDS:Upgrade(13, 12, 0, 57)--Shot(4) U (1)Gradymeister#3270
TDS:Place('Farm', 8.684468269348145, 6.100337028503418, -7.478904724121094, 12, 0, 4)--14 farm 6
TDS:Upgrade(14, 12, 0, 4)--farm(6) U (1)
TDS:Upgrade(14, 12, 0, 3)--farm(6) U (2)Gradymeister#3270
TDS:Upgrade(14, 12, 0, 2)--farm(6) U (3)
TDS:Upgrade(13, 13, 0, 59)--Shot(4) U (2)
TDS:Place('Farm', -1.0846333503723145, 6.100969314575195, -22.934356689453125, 13, 0, 59)--15 farm 7
TDS:Upgrade(15, 13, 0, 58)--farm(7) U (1)Gradymeister#3270
TDS:Upgrade(15, 13, 0, 57)--farm(7) U (2)
TDS:Place('Farm', -4.333819389343262, 6.1009650230407715, -23.066513061523438, 13, 0, 4)--16 farm 8
TDS:Upgrade(15, 13, 0, 4)--farm(7) U (3)
TDS:Upgrade(16, 13, 0, 4)--farm(8) U (1)Gradymeister#3270
TDS:Upgrade(16, 13, 0, 3)--farm(8) U (2)
TDS:Upgrade(16, 14, 0, 2)--farm(8) U (3)
TDS:Place('Commander', 5.530819416046143, 6.100992202758789, -4.820683002471924, 14, 0, 59)--17
TDS:Place('Commander', 2.5053188800811768, 6.100998878479004, -5.153682231903076, 15, 0, 59)--18
TDS:Place('DJ Booth', 5.0807414054870605, 6.100394248962402, -8.154964447021484, 15, 0, 57)--19
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (1)Gradymeister#3270
TDS:Upgrade(19, 15, 0, 56)--DJ(1) U (2)
TDS:Upgrade(19, 15, 0, 55)--DJ(1) U (3)
TDS:Upgrade(2, 15, 0, 4)--farm(1) U (4)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (1)
TDS:Upgrade(17, 16, 0, 59)--Commander(1) U (2)Gradymeister#3270
TDS:Ability(17, "Call Of Arms", 16, 0, 58)
TDS:Upgrade(2, 16, 0, 4)--farm(1) U (5)
TDS:Upgrade(7, 17, 0, 59)--Shot(1) U (3)
TDS:Upgrade(18, 17, 0, 59)--Commander(2) U (1)
TDS:Upgrade(18, 17, 0, 58)--Commander(2) U (2)Gradymeister#3270
TDS:Ability(18, "Call Of Arms", 18, 0, 57)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (4)
TDS:Upgrade(5, 18, 0, 4)--farm(2) U (5)Gradymeister#3270
TDS:Upgrade(10, 19, 0, 59)--Shot(2) U (3)
TDS:Place('Commander', -0.6007239818572998, 6.100978851318359, -5.102243423461914, 19, 0, 59)--20
TDS:Upgrade(20, 19, 0, 58)--Commander(3) U (1)
TDS:Upgrade(20, 19, 0, 57)--Commander(3) U (2)
TDS:AutoChain(20, 17, 18, 19, 0, 56)
TDS:Upgrade(8, 19, 0, 4)--farm(3) U (4)Gradymeister#3270
TDS:Upgrade(8, 20, 0, 59)--farm(3) U (5)
TDS:Upgrade(7, 21, 0, 59)--Shot(1) U (4)
TDS:Upgrade(10, 22, 0, 59)--Shot(2) U (4)
TDS:Upgrade(12, 22, 0, 59)--Shot(3) U (3)
TDS:Upgrade(9, 22, 0, 4)--farm(4) U (4)Gradymeister#3270
TDS:Upgrade(12, 23, 0, 59)--Shot(3) U (4)
TDS:Upgrade(9, 23, 0, 4)--farm(4) U (5)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (4)
TDS:Upgrade(11, 24, 0, 59)--farm(5) U (5)
TDS:Upgrade(14, 24, 0, 4)--farm(6) U (4)
TDS:Upgrade(13, 25, 0, 59)--Shot(4) U (3)Gradymeister#3270
TDS:Upgrade(14, 25, 0, 59)--farm(6) U (5)
TDS:Upgrade(15, 25, 0, 57)--farm(7) U (4)
TDS:Upgrade(15, 25, 0, 4)--farm(7) U (5)
TDS:Upgrade(13, 26, 0, 59)--Shot(4) U (4)Gradymeister#3270
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (4)
TDS:Upgrade(16, 26, 0, 4)--farm(8) U (5)
TDS:Sell(1, 26, 0, 3)--soldier 1
TDS:Sell(3, 26, 0, 3)--soldier 2
TDS:Sell(4, 26, 0, 2)--soldier 3
TDS:Sell(6, 26, 0, 2)--soldier 4Gradymeister#3270
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (4)
TDS:Upgrade(19, 27, 0, 59)--DJ(1) U (5)
TDS:Place('Shotgunner', 9.890028953552246, 6.1008405685424805, 1.7872662544250488, 27, 0, 4)--21
TDS:Upgrade(21, 27, 0, 4)--Shot(5) U (1)
TDS:Upgrade(21, 27, 0, 3)--Shot(5) U (2)
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (3)Gradymeister#3270
TDS:Upgrade(21, 28, 0, 59)--Shot(5) U (4)
TDS:Place('Shotgunner', 9.40782356262207, 6.1009135246276855, -1.3973350524902344, 28, 0, 58)--22
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (1)
TDS:Upgrade(22, 28, 0, 57)--Shot(6) U (2)
TDS:Upgrade(22, 28, 0, 56)--Shot(6) U (3)
TDS:Upgrade(22, 29, 0, 59)--Shot(6) U (4)
TDS:Place('Shotgunner', 8.623952865600586, 6.100983619689941, -4.415783882141113, 29, 0, 59)--23
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (1)
TDS:Upgrade(23, 29, 0, 58)--Shot(7) U (2)Gradymeister#3270
TDS:Upgrade(23, 29, 0, 57)--Shot(7) U (3)
TDS:Upgrade(23, 29, 0, 54)--Shot(7) U (4)
TDS:Place('Shotgunner', 1.2664072513580322, 6.100843906402588, 1.5159029960632324, 29, 0, 4)--24
TDS:Upgrade(24, 29, 0, 4)--Shot(9) U (1)
TDS:Upgrade(24, 29, 0, 3)--Shot(9) U (2)Gradymeister#3270
TDS:Upgrade(24, 29, 0, 2)--Shot(9) U (3)
TDS:Upgrade(24, 30, 1, 10)--Shot(9) U (4)
TDS:Place('Shotgunner', 0.838748574256897, 6.100771427154541, 4.599031925201416, 30, 0, 4)--25
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (1)
TDS:Upgrade(25, 30, 0, 4)--Shot(10) U (2)Gradymeister#3270
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (3)
TDS:Upgrade(25, 30, 0, 3)--Shot(10) U (4)
TDS:Place('Shotgunner', 13.141988754272461, 6.100811958312988, 3.1085104942321777, 31, 1, 20)--26
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (1)
TDS:Upgrade(26, 31, 1, 19)--Shot(11) U (2)
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (3)Gradymeister#3270
TDS:Upgrade(26, 31, 1, 18)--Shot(11) U (4)
TDS:Place('Shotgunner', 13.02414608001709, 6.100882530212402, 0.03605175018310547, 31, 1, 17)--27
TDS:Upgrade(27, 31, 1, 16)--Shot(12) U (1)
TDS:Upgrade(27, 31, 1, 15)--Shot(12) U (2)
TDS:Upgrade(27, 31, 1, 14)--Shot(12) U (3)
TDS:Upgrade(17, 31, 0, 4)--Commander(1) U (3)
TDS:Upgrade(17, 32, 1, 20)--Commander(1) U (4)Gradymeister#3270
TDS:Upgrade(18, 32, 1, 19)--Commander(2) U (3)
TDS:Upgrade(27, 32, 1, 15)--Shot(12) U (4)
TDS:Place('Shotgunner', -1.7844070196151733, 6.100832939147949, 1.429934024810791, 32, 1, 8)--28
TDS:Upgrade(28, 32, 1, 8)--Shot(13) U (1)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (2)
TDS:Upgrade(28, 32, 1, 7)--Shot(13) U (3)Gradymeister#3270
TDS:Place('Shotgunner', -2.274111032485962, 6.100762844085693, 4.546855449676514, 33, 1, 17)--29
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (1)
TDS:Upgrade(29, 33, 1, 16)--Shot(14) U (2)Gradymeister#3270
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (3)
TDS:Upgrade(29, 33, 1, 15)--Shot(14) U (4)
TDS:Place('Shotgunner', 16.10592269897461, 6.10089111328125, -0.27601051330566406, 33, 1, 8)--30
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (1)Gradymeister#3270
TDS:Upgrade(30, 33, 1, 7)--Shot(15) U (2)
TDS:Upgrade(30, 33, 1, 6)--Shot(15) U (3)
TDS:Place('Shotgunner', 2.046236753463745, 6.100397109985352, -8.243915557861328, 33, 1, 5)--31
TDS:Place('Shotgunner', -0.9840756058692932, 6.100652694702148, -8.185739517211914, 33, 1, 4)--32
TDS:Place('Shotgunner', -3.6704609394073486, 6.100977897644043, -5.114051342010498, 33, 1, 3)--33
TDS:Upgrade(28, 34, 1, 20)--Shot(13) U (4)
TDS:Upgrade(30, 34, 1, 20)--Shot(15) U (4)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (1)
TDS:Upgrade(31, 34, 1, 19)--Shot(16) U (2)
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (3)Gradymeister#3270
TDS:Upgrade(31, 34, 1, 18)--Shot(16) U (4)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (1)
TDS:Upgrade(32, 34, 1, 17)--Shot(17) U (2)
TDS:Upgrade(32, 34, 1, 16)--Shot(17) U (3)
TDS:Upgrade(32, 34, 1, 10)--Shot(17) U (4)
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (1)
TDS:Upgrade(33, 34, 0, 4)--Shot(18) U (2)
TDS:Upgrade(33, 34, 0, 3)--Shot(18) U (3)Gradymeister#3270
TDS:Upgrade(33, 35, 1, 20)--Shot(18) U (4)
TDS:Place('Shotgunner', -7.256880760192871, 6.100988388061523, -5.645463466644287, 35, 1, 19)--34
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (1)
TDS:Upgrade(34, 35, 1, 11)--Shot(19) U (2)
TDS:Upgrade(34, 35, 1, 10)--Shot(19) U (3)
TDS:Upgrade(34, 36, 1, 19)--Shot(19) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -4.013124465942383, 6.100647926330566, -8.141311645507812, 36, 1, 18)--35
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (1)
TDS:Upgrade(35, 36, 1, 18)--Shot(20) U (2)
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (3)Gradymeister#3270
TDS:Upgrade(35, 36, 1, 17)--Shot(20) U (4)
TDS:Place('Shotgunner', -7.091329097747803, 6.100669860839844, -8.678173065185547, 36, 0, 4)--36
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (1)
TDS:Upgrade(36, 36, 0, 4)--Shot(21) U (2)Gradymeister#3270
TDS:Upgrade(36, 36, 0, 3)--Shot(21) U (3)
TDS:Upgrade(36, 36, 0, 2)--Shot(21) U (4)
TDS:Place('Shotgunner', 3.7261834144592285, 6.100683212280273, -11.312507629394531, 37, 1, 20)--37
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (1)Gradymeister#3270
TDS:Upgrade(37, 37, 1, 19)--Shot(22) U (2)
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (3)
TDS:Upgrade(37, 37, 1, 18)--Shot(22) U (4)
TDS:Place('Shotgunner', 0.6507272124290466, 6.100673675537109, -11.258176803588867, 37, 1, 17)--38
TDS:Upgrade(38, 37, 1, 16)--Shot(23) U (1)Gradymeister#3270
TDS:Upgrade(38, 37, 1, 15)--Shot(23) U (2)
TDS:Upgrade(38, 37, 1, 13)--Shot(23) U (3)Gradymeister#3270
TDS:Upgrade(38, 37, 1, 4)--Shot(23) U (4)
TDS:Skip(37, 0, 54)
TDS:Skip(37, 0, 53)
TDS:Place('Shotgunner', -2.4109904766082764, 6.100787162780762, -11.261651992797852, 37, 0, 4)--39
TDS:Place('Shotgunner', -5.491271018981934, 6.100805282592773, -11.723625183105469, 37, 0, 4)--40
TDS:Place('Shotgunner', -7.4977827072143555, 6.100940227508545, -14.785215377807617, 37, 0, 4)--41
TDS:Place('Shotgunner', -4.2490129470825195, 6.100940704345703, -14.74306869506836, 37, 0, 3)--42Gradymeister#3270
TDS:Place('Shotgunner', -1.0331478118896484, 6.100922584533691, -14.27718734741211, 37, 0, 3)--43
TDS:Upgrade(39, 38, 1, 20)--Shot(24) U (1)
TDS:Upgrade(39, 38, 1, 20)--Shot(24) U (2)
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (3)
TDS:Upgrade(39, 38, 1, 19)--Shot(24) U (4)
TDS:Upgrade(40, 38, 1, 18)--Shot(25) U (1)
TDS:Upgrade(40, 38, 1, 18)--Shot(25) U (2)Gradymeister#3270
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (3)
TDS:Upgrade(40, 38, 1, 17)--Shot(25) U (4)
TDS:Upgrade(41, 38, 1, 16)--Shot(26) U (1)Gradymeister#3270
TDS:Upgrade(41, 38, 1, 15)--Shot(26) U (2)
TDS:Upgrade(41, 38, 1, 14)--Shot(26) U (3)
TDS:Skip(38, 0, 54)
TDS:Skip(38, 0, 53)
TDS:Upgrade(41, 38, 0, 4)--Shot(26) U (4)
TDS:Upgrade(42, 38, 0, 4)--Shot(27) U (1)
TDS:Upgrade(42, 38, 0, 3)--Shot(27) U (2)Gradymeister#3270
TDS:Upgrade(42, 38, 0, 2)--Shot(27) U (3)
TDS:Upgrade(42, 39, 1, 20)--Shot(27) U (4)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (1)
TDS:Upgrade(43, 39, 1, 19)--Shot(28) U (2)Gradymeister#3270
TDS:Upgrade(43, 39, 1, 18)--Shot(28) U (3)
TDS:Upgrade(43, 39, 1, 15)--Shot(28) U (4)
TDS:Skip(39, 0, 54)
TDS:Skip(39, 0, 53)
TDS:Place('Shotgunner', 2.0433568954467773, 6.100964546203613, -14.37403678894043, 39, 0, 4)--44
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (1)
TDS:Upgrade(44, 39, 0, 4)--Shot(29) U (2)
TDS:Upgrade(44, 39, 0, 3)--Shot(29) U (3)
TDS:Upgrade(44, 39, 0, 2)--Shot(29) U (4)Gradymeister#3270
TDS:Sell(2, 40, 99, 59)--farm 1 sell
TDS:Sell(5, 40, 99, 59)--farm 2 sell
TDS:Sell(8, 40, 99, 59)--farm 3 sell
TDS:Sell(9, 40, 99, 58)--farm 4 sellGradymeister#3270
TDS:Sell(11, 40, 99, 58)--farm 5 sell
TDS:Sell(14, 40, 99, 58)--farm 6 sell
TDS:Sell(15, 40, 99, 57)--farm 7 sell
TDS:Sell(16, 40, 99, 57)--farm 8 sell
TDS:Place('Shotgunner', -4.917089939117432, 6.100832939147949, 1.385758876800537, 40, 99, 56)--45
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (1)
TDS:Upgrade(45, 40, 99, 56)--Shot(30) U (2)Gradymeister#3270
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (3)
TDS:Upgrade(45, 40, 99, 55)--Shot(30) U (4)
TDS:Place('Shotgunner', -8.026775360107422, 6.100832462310791, 1.3658928871154785, 40, 99, 54)--46
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (1)
TDS:Upgrade(46, 40, 99, 53)--Shot(31) U (2)
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (3)Gradymeister#3270
TDS:Upgrade(46, 40, 99, 52)--Shot(31) U (4)
TDS:Place('Shotgunner', -11.053776741027832, 6.100849628448486, 0.5208096504211426, 40, 99, 51)--47
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (1)
TDS:Upgrade(47, 40, 99, 50)--Shot(32) U (2)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (3)
TDS:Upgrade(47, 40, 99, 49)--Shot(32) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -13.906344413757324, 6.100919723510742, -2.678487777709961, 40, 99, 48)--48
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (1)
TDS:Upgrade(48, 40, 99, 47)--Shot(33) U (2)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (3)
TDS:Upgrade(48, 40, 99, 46)--Shot(33) U (4)Gradymeister#3270
TDS:Place('Shotgunner', -14.064434051513672, 6.100988388061523, -5.763852596282959, 40, 99, 40)--49
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (1)
TDS:Upgrade(49, 40, 99, 39)--Shot(34) U (2)
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (3)Gradymeister#3270
TDS:Upgrade(49, 40, 99, 38)--Shot(34) U (4)
TDS:Place('Shotgunner', -14.241781234741211, 6.100676536560059, -8.953081130981445, 40, 99, 37)--50
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (1)
TDS:Upgrade(50, 40, 99, 36)--Shot(35) U (2)Gradymeister#3270
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (3)
TDS:Upgrade(50, 40, 99, 35)--Shot(35) U (4)
TDS:Place('Shotgunner', -14.353649139404297, 6.100813865661621, -12.063764572143555, 40, 99, 31)--51
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (1)
TDS:Upgrade(51, 40, 99, 30)--Shot(36) U (2)Gradymeister#3270
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (3)
TDS:Upgrade(51, 40, 99, 29)--Shot(36) U (4)
TDS:Sell(13, 40, 99, 28)--shotgunner
TDS:Sell(10, 40, 99, 28)--shotgunner
TDS:Sell(30, 40, 99, 28)--shotgunnerGradymeister#3270
TDS:Sell(27, 40, 99, 28)--shotgunner
TDS:Place('Shotgunner', -1.5977485179901123, 6.100955963134766, -22.45506477355957, 40, 99, 27)--52
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (1)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (2)Gradymeister#3270
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (3)
TDS:Upgrade(52, 40, 99, 26)--Shot(37) U (4)
TDS:Place('Shotgunner', -4.821323394775391, 6.100944519042969, -22.257490158081055, 40, 99, 24)--53
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (1)
TDS:Upgrade(53, 40, 99, 23)--Shot(38) U (2)Gradymeister#3270
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (3)
TDS:Upgrade(53, 40, 99, 22)--Shot(38) U (4)
TDS:Place('Shotgunner', -7.962806224822998, 6.100934028625488, -22.270580291748047, 40, 99, 21)--54
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (1)
TDS:Upgrade(54, 40, 99, 20)--Shot(39) U (2)Gradymeister#3270
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (3)
TDS:Upgrade(54, 40, 99, 19)--Shot(39) U (4)
TDS:Sell(21, 40, 99, 18)--shotgunner
TDS:Sell(12, 40, 99, 18)--shotgunner
TDS:Sell(7, 40, 99, 18)--shotgunner Gradymeister#3270
TDS:Sell(26, 40, 99, 18)--shotgunner Gradymeister#3270
TDS:Place('Shotgunner', 5.088226318359375, 6.100831508636475, -16.868940353393555, 40, 99, 18)--55
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (1)
TDS:Upgrade(55, 40, 99, 17)--Shot(40) U (2)
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (3)Gradymeister#3270
TDS:Upgrade(55, 40, 99, 16)--Shot(40) U (4)
TDS:Place('Shotgunner', 6.1938276290893555, 6.100906848907471, -19.96339225769043, 40, 99, 15)--56
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (1)
TDS:Upgrade(56, 40, 99, 14)--Shot(41) U (2)Gradymeister#3270
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (3)
TDS:Upgrade(56, 40, 99, 13)--Shot(41) U (4)
TDS:Place('Shotgunner', 6.2045698165893555, 6.100983619689941, -23.073810577392578, 40, 99, 12)--57
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (1)
TDS:Upgrade(57, 40, 99, 11)--Shot(42) U (2)Gradymeister#3270
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (3)
TDS:Upgrade(57, 40, 99, 10)--Shot(42) U (4)
TDS:Place('Shotgunner', -14.091031074523926, 6.100953102111816, -15.170440673828125, 40, 99, 9)--58
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (1)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 8)--Shot(42) U (2)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (3)Gradymeister#3270
TDS:Upgrade(58, 40, 99, 7)--Shot(42) U (4)Gradymeister#3270
TDS:Sell(25, 40, 99, 3)--shotgunner
TDS:Sell(24, 40, 99, 3)--shotgunner
TDS:Sell(28, 40, 99, 3)--shotgunner
TDS:Sell(29, 40, 99, 3)--shotgunner
TDS:Sell(22, 40, 99, 2)--shotgunner
TDS:Sell(23, 40, 99, 2)--shotgunner
TDS:Sell(45, 40, 98, 59)--shotgunner
TDS:Sell(46, 40, 98, 59)--shotgunner
TDS:Sell(47, 40, 98, 59)--shotgunner
TDS:Sell(48, 40, 98, 58)--shotgunner
TDS:Sell(49, 40, 98, 57)--shotgunner
TDS:Sell(50, 40, 98, 52)--shotgunner
TDS:Sell(34, 40, 98, 30)--shotgunner
TDS:Sell(33, 40, 98, 30)--shotgunner
TDS:Sell(20, 40, 98, 30)--commander
TDS:Sell(36, 40, 98, 29)--shotgunner
TDS:Sell(32, 40, 98, 29)--shotgunner
TDS:Sell(31, 40, 98, 29)--shotgunner
TDS:Sell(40, 40, 98, 28)--shotgunner
TDS:Sell(39, 40, 98, 28)--shotgunner
TDS:Sell(38, 40, 98, 28)--shotgunner
TDS:Sell(37, 40, 98, 27)--shotgunner
TDS:Sell(51, 40, 98, 27)--shotgunner
TDS:Place('Commander', -8.94361400604248, 6.118936538696289, -47.089962005615234, 40, 98, 26)--59
TDS:Place('Shotgunner', -12.669395446777344, 6.118005752563477, -46.71780776977539, 40, 98, 26)--60
TDS:Place('Shotgunner', -15.939133644104004, 6.1136908531188965, -51.41098403930664, 40, 98, 26)--61
TDS:Place('Shotgunner', -15.879426956176758, 6.114881992340088, -48.39107894897461, 40, 98, 25)--62
TDS:Place('Shotgunner', -15.86277961730957, 6.117642879486084, -45.31660079956055, 40, 98, 25)--63
TDS:Place('Shotgunner', -15.704259872436523, 6.119847774505615, -42.24283218383789, 40, 98, 25)--64
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 1
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 2
TDS:Upgrade(59, 40, 98, 22)--(L) Commander 3
TDS:Upgrade(59, 40, 98, 21)--(L) Commander 4
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U1
TDS:Upgrade(60, 40, 98, 21)--(L) Shotgunner 1 U2
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U3
TDS:Upgrade(60, 40, 98, 20)--(L) Shotgunner 1 U4
TDS:Upgrade(61, 40, 98, 20)--(L) Shotgunner 2 U1
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U2
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U3
TDS:Upgrade(61, 40, 98, 19)--(L) Shotgunner 2 U4
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U1
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U2
TDS:Upgrade(62, 40, 98, 18)--(L) Shotgunner 3 U3
TDS:Upgrade(62, 40, 98, 17)--(L) Shotgunner 3 U4
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U1
TDS:Upgrade(63, 40, 98, 17)--(L) Shotgunner 4 U2
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U3
TDS:Upgrade(63, 40, 98, 16)--(L) Shotgunner 4 U4
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U1
TDS:Upgrade(64, 40, 98, 16)--(L) Shotgunner 5 U2
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U3
TDS:Upgrade(64, 40, 98, 15)--(L) Shotgunner 5 U4
    end
end