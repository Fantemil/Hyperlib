print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:  		Gradymeister#3270
MultiStrat by:  		Gradymeister#3270 :>
]])
repeat wait() until game:IsLoaded()

getgenv().IsMultiStrat = true

getgenv().Maps = {["Crystal Cave"] = {"DJ Booth", "Commander", "Accelerator", "Gladiator", "Farm"},["Night Station"] = {"DJ Booth", "Commander", "Accelerator", "Gladiator", "Farm"},["Farm Lands"] = {"DJ Booth", "Commander", "Accelerator", "Gladiator", "Farm"}}
maplist = {"Crystal Cave","Night Station","Farm Lands"}

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
Strat by:  		Gradymeister#3270
MultiStrat by:  		Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Farm", "Commander", "Accelerator", "Gladiator", "DJ Booth") 
TDS:Map("Crystal Cave", true, "Survival")
TDS:Mode('Insane')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Gladiator', -33.45586395263672, 8.298919677734375, 27.338367462158203, 0, 0, 10)--1 (EDIT)
TDS:Place('Gladiator', -35.45951843261719, 8.298919677734375, 27.342151641845703, 0, 0, 9)--2
TDS:Skip(1, 0, 40)
TDS:Place('Farm', -10.135127067565918, 8.29892349243164, 44.065956115722656, 1, 0, 4)--3 farm 1
TDS:Place('Gladiator', -37.484371185302734, 8.298920631408691, 26.808002471923828, 2, 0, 4)--4 (EDIT)
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1
TDS:Place('Farm', -13.253793716430664, 8.29892349243164, 44.12493133544922, 3, 0, 3)--5 farm 2
TDS:Upgrade(3, 4, 0, 4)--farm 1 upgrade 2
TDS:Place('Gladiator', -31.432456970214844, 8.298920631408691, 27.38702392578125, 5, 0, 59)--6
TDS:Upgrade(5, 5, 0, 4)--farm 2 upgrade 1
TDS:Place('Farm', -16.386581420898438, 8.298922538757324, 44.28725051879883, 5, 0, 3)--7 farm 3
TDS:Upgrade(3, 6, 0, 4)--farm 1 upgrade 3
TDS:Upgrade(5, 7, 0, 59)--farm 2 upgrade 2
TDS:Upgrade(7, 7, 0, 4)--farm 3 upgrade 1 Gradymeister#3270
TDS:Upgrade(7, 7, 0, 3)--farm 3 upgrade 2
TDS:Upgrade(6, 8, 0, 59)--glad 4 upgrade 1 (EDIT)-
TDS:Upgrade(6, 8, 0, 59)--glad 4 upgrade 2 (EDIT)-
TDS:Upgrade(6, 9, 0, 59)--glad 4 upgrade 3 (EDIT)-
TDS:Sell(7, 10, 0, 59)--sell farm 3
TDS:Upgrade(6, 10, 0, 59)--glad 4 upgrade 4 (EDIT)-
TDS:Ability(6, "Warrior's Call", 10, 0, 57)--(EDIT)-
TDS:Place('Farm', -16.386581420898438, 8.298922538757324, 44.28725051879883, 10, 0, 4)--8 replacement of farm 3
TDS:Upgrade(8, 10, 0, 3)--farm 3 upgrade 1
TDS:Upgrade(8, 10, 0, 2)--farm 3 upgrade 2
TDS:Upgrade(5, 11, 0, 59)--farm 2 upgrade 3
TDS:Upgrade(8, 11, 0, 4)--farm 3 upgrade 3
TDS:Ability(6, "Warrior's Call", 11, 0, 4)--(EDIT)-
TDS:Upgrade(1, 12, 0, 59)--glad 3 upgrade 1 (edit)0
TDS:Place('Farm', -17.41227149963379, 8.29892349243164, 49.439762115478516, 12, 0, 4)--9 farm 4
TDS:Upgrade(9, 12, 0, 4)--farm 4 upgrade 1
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 2
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 3
TDS:Place('Farm', -20.692928314208984, 8.29892349243164, 49.46839141845703, 12, 0, 2)--10 farm 5
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 1
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 2
TDS:Upgrade(10, 13, 0, 58)--farm 5 upgrade 3
TDS:Upgrade(1, 13, 0, 4)--glad 3 upgrade 2 (edit)0
TDS:Upgrade(1, 14, 0, 59)--glad 3 upgrade 3 (edit)0
TDS:Ability(1, "Warrior's Call", 14, 0, 59)--(edit)0
TDS:Ability(6, "Warrior's Call", 14, 0, 54)--(EDIT)-
TDS:Place('Farm', -14.247021675109863, 8.29892349243164, 49.387081146240234, 14, 0, 4)--11 farm 6
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 2 Gradymeister#3270
TDS:Upgrade(11, 14, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', -23.945337295532227, 8.298924446105957, 49.40966033935547, 14, 0, 3)--12 farm 7
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 1
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 2
TDS:Upgrade(12, 15, 0, 59)--farm 7 upgrade 3
TDS:Place('Farm', -19.528709411621094, 8.29892349243164, 44.26816940307617, 15, 0, 59)--13 farm 8
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 1
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 2
TDS:Upgrade(13, 15, 0, 57)--farm 8 upgrade 3
TDS:Place('DJ Booth', -21.434301376342773, 8.298922538757324, 36.48714828491211, 16, 0, 59)--14
TDS:Upgrade(1, 16, 0, 59)--glad 3 upgrade 4(edit)0
TDS:Ability(1, "Warrior's Call", 16, 0, 59)--(edit)0
TDS:Ability(6, "Warrior's Call", 16, 0, 58)--(EDIT)-
TDS:Upgrade(14, 16, 0, 4)--DJ 1
TDS:Upgrade(13, 16, 0, 4)--farm 8 upgrade 4
TDS:Upgrade(14, 16, 0, 3)--DJ 2
TDS:Upgrade(2, 17, 0, 59)--Glad 2 upgrade 1 Gradymeister#3270
TDS:Upgrade(2, 17, 0, 59)--Glad 2 upgrade 2
TDS:Ability(2, "Warrior's Call", 17, 0, 59)
TDS:Upgrade(2, 17, 0, 58)--Glad 2 upgrade 3
TDS:Upgrade(8, 17, 0, 4)--farm 3 upgrade 4
TDS:Upgrade(14, 18, 0, 59)--DJ 3
TDS:Upgrade(2, 18, 0, 58)--Glad 2 upgrade 4
TDS:Upgrade(1, 19, 0, 59)--glad 3 upgrade 5(edit)0
TDS:Ability(1, "Warrior's Call", 19, 0, 53)--(edit)0
TDS:Ability(6, "Warrior's Call", 19, 0, 52)--(EDIT)-
TDS:Place('Commander', -22.429595947265625, 8.298921585083008, 33.33085632324219, 19, 0, 4)--15
TDS:Upgrade(15, 19, 0, 3)--Comm 1 Upgrade 1
TDS:Upgrade(15, 19, 0, 2)--Comm 1 Upgrade 2
TDS:Ability(15, "Call Of Arms", 20, 0, 59)
TDS:Upgrade(13, 20, 0, 59)--farm 8 upgrade 5
TDS:Place('Commander', -21.333148956298828, 8.298920631408691, 28.659866333007812, 20, 0, 4)--16
TDS:Upgrade(16, 20, 0, 4)--Comm 2 Upgrade 1
TDS:Upgrade(16, 21, 0, 59)--Comm 2 Upgrade 2
TDS:Ability(16, "Call Of Arms", 21, 0, 59)
TDS:Upgrade(8, 21, 0, 4)--farm 3 upgrade 5 Gradymeister#3270
TDS:Upgrade(2, 22, 0, 59)--Glad 2 upgrade 5
TDS:Ability(2, "Warrior's Call", 22, 0, 53)
TDS:Ability(1, "Warrior's Call", 22, 0, 52)--(edit)0
TDS:Ability(6, "Warrior's Call", 22, 0, 51)--(EDIT)-
TDS:Ability(15, "Call Of Arms", 22, 0, 50)
TDS:Skip(22, 0, 40)
TDS:Upgrade(5, 22, 0, 4)--farm 2 upgrade 4
TDS:Upgrade(6, 23, 0, 59)--glad 4 upgrade 5 (EDIT)-
TDS:Place('Gladiator', -31.021020889282227, 8.298920631408691, 29.419570922851562, 23, 0, 59)--17
TDS:Upgrade(17, 23, 0, 59)--glad 5 upgrade 1
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 2
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 3
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 4
TDS:Ability(16, "Call Of Arms", 23, 0, 57)
TDS:Ability(17, "Warrior's Call", 23, 0, 55)
TDS:Upgrade(5, 23, 0, 4)--farm 2 upgrade 5
TDS:Upgrade(17, 24, 0, 59)--glad 5 upgrade 5
TDS:Place('Gladiator', -33.066009521484375, 8.298921585083008, 29.46033477783203, 24, 0, 59)--18
TDS:Upgrade(18, 24, 0, 59)--glad 6 upgrade 1
TDS:Upgrade(18, 24, 0, 58)--glad 6 upgrade 2
TDS:Upgrade(18, 24, 0, 58)--glad 6 upgrade 3
TDS:Upgrade(18, 24, 0, 54)--glad 6 upgrade 4
TDS:Upgrade(3, 24, 0, 4)--farm 1 upgrade 4
TDS:Ability(15, "Call Of Arms", 25, 1, 0)
TDS:Upgrade(18, 25, 0, 59)--glad 6 upgrade 5 Gradymeister#3270
TDS:Upgrade(3, 25, 0, 4)--farm 1 upgrade 5
TDS:Upgrade(12, 25, 0, 3)--farm 7 upgrade 4
TDS:Place('Commander', -18.159038543701172, 8.298920631408691, 29.321056365966797, 26, 0, 59)--19
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 1
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 2
TDS:AutoChain(19, 16, 15, 26, 0, 58)
TDS:Upgrade(12, 26, 0, 4)--farm 7 upgrade 5
TDS:Upgrade(11, 26, 0, 3)--farm 6 upgrade 4
TDS:Upgrade(10, 26, 0, 2)--farm 5 upgrade 4
TDS:Place('Gladiator', -33.70626449584961, 8.298919677734375, 22.262062072753906, 27, 0, 59)--20
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 1
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 2
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 3
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 4
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 5
TDS:Ability(20, "Warrior's Call", 27, 0, 57)
TDS:Upgrade(11, 27, 0, 4)--farm 6 upgrade 5
TDS:Upgrade(10, 28, 0, 59)--farm 5 upgrade 5
TDS:Upgrade(9, 28, 0, 59)--farm 4 upgrade 4
TDS:Upgrade(9, 28, 0, 58)--farm 4 upgrade 5
TDS:Place('Accelerator', -18.793285369873047, 8.29892349243164, 39.711463928222656, 28, 0, 4)--21
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 2 Gradymeister#3270
TDS:Upgrade(21, 28, 0, 3)--Accel 1 Upgrade 3
TDS:Upgrade(21, 29, 1, 0)--Accel 1 Upgrade 4
TDS:Upgrade(21, 30, 1, 20)--Accel 1 Upgrade 5
TDS:Upgrade(14, 30, 1, 3)--DJ 4
TDS:Ability(2, "Warrior's Call", 30, 1, 2)
TDS:Ability(1, "Warrior's Call", 30, 1, 2)--(edot)0
TDS:Ability(6, "Warrior's Call", 30, 1, 2)
TDS:Ability(17, "Warrior's Call", 30, 1, 2)
TDS:Skip(30, 0, 54)--8:35 in the video
TDS:Upgrade(14, 30, 0, 2)--DJ 5
TDS:Upgrade(15, 31, 1, 19)--Comm 1 Upgrade 3
TDS:Upgrade(15, 31, 1, 18)--Comm 1 Upgrade 4
TDS:Place('Accelerator', -15.093615531921387, 8.298920631408691, 28.338762283325195, 31, 0, 4)--22
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 1
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 2
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 3
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 4
TDS:Upgrade(4, 32, 1, 17)--glad 1 upgrade 1 Gradymeister#3270 (EDIT)
TDS:Upgrade(4, 32, 1, 17)--glad 1 upgrade 2 (EDIT)
TDS:Upgrade(4, 32, 1, 16)--glad 1 upgrade 3 (EDIT)
TDS:Upgrade(4, 32, 1, 16)--glad 1 upgrade 4 (EDIT)
TDS:Upgrade(4, 32, 1, 15)--glad 1 upgrade 5 (EDIT)
TDS:Place('Gladiator', -35.75816345214844, 8.298918724060059, 22.1561222076416, 32, 1, 14)--23 check
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 1
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 2
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 3
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 4
TDS:Upgrade(23, 32, 1, 11)--glad 8 upgrade 5
TDS:Upgrade(22, 33, 1, 20)--Accel 2 Upgrade 5
TDS:Place('Accelerator', -12.221774101257324, 8.298920631408691, 32.79641342163086, 33, 1, 10)--24
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 1
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 2
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 3
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 4
TDS:Skip(33, 0, 54)
TDS:Upgrade(24, 34, 1, 18)--Accel 3 Upgrade 5
TDS:Place('Accelerator', -10.01081657409668, 8.298921585083008, 35.89108657836914, 34, 1, 4)--25
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 1
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 2 Gradymeister#3270
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 3
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 4
TDS:Skip(34, 0, 54)
TDS:Upgrade(25, 35, 1, 20)--Accel 4 Upgrade 5
TDS:Place('Accelerator', -14.190679550170898, 8.298921585083008, 37.555599212646484, 35, 1, 5)--26
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 1
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 2
TDS:Upgrade(26, 35, 1, 3)--Accel 5 Upgrade 3
TDS:Upgrade(26, 35, 1, 2)--Accel 5 Upgrade 4
TDS:Upgrade(26, 36, 1, 15)--Accel 5 Upgrade 5
TDS:Place('Accelerator', -12.063546180725098, 8.298920631408691, 29.487255096435547, 36, 1, 10)--27
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 1
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 2
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 3
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 4
TDS:Upgrade(27, 36, 0, 4)--Accel 6 Upgrade 5
TDS:Place('Accelerator', -10.079285621643066, 8.298922538757324, 38.95098876953125, 37, 1, 19)--28
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 1
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 2
TDS:Upgrade(28, 37, 1, 17)--Accel 7 Upgrade 3 Gradymeister#3270
TDS:Place('Gladiator', -31.04994010925293, 8.298920631408691, 31.489988327026367, 37, 1, 10)--29
TDS:Place('Gladiator', -31.02112579345703, 8.298921585083008, 33.537357330322266, 37, 1, 10)--30
TDS:Place('Gladiator', -31.034488677978516, 8.298921585083008, 35.647403717041016, 37, 1, 9)--31
TDS:Place('Gladiator', -31.00605010986328, 8.298922538757324, 37.696441650390625, 37, 1, 9)--32
TDS:Place('Gladiator', -31.055381774902344, 8.298921585083008, 39.74003219604492, 37, 1, 8)--33
TDS:Place('Gladiator', -25.850482940673828, 8.298919677734375, 25.120075225830078, 37, 1, 8)--34
TDS:Place('Gladiator', -25.861337661743164, 8.298919677734375, 27.15601348876953, 37, 1, 7)--35
TDS:Place('Gladiator', -25.96027374267578, 8.298920631408691, 29.266883850097656, 37, 1, 7)--36
TDS:Place('Gladiator', -25.935897827148438, 8.298920631408691, 31.30238914489746, 37, 1, 6)--37
TDS:Place('Gladiator', -25.940898895263672, 8.298921585083008, 33.361427307128906, 37, 1, 6)--38
TDS:Place('Gladiator', -25.882240295410156, 8.298921585083008, 35.41503143310547, 37, 1, 5)--39
TDS:Skip(37, 0, 54)
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 4
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 5
TDS:Place('Accelerator', -13.139819145202637, 8.298922538757324, 40.61556625366211, 38, 1, 19)--40
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 1
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 2
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 3
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 4
TDS:Upgrade(40, 38, 1, 16)--Accel 8 Upgrade 5
TDS:Skip(38, 0, 54)
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 1
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 2
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 3
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 4
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 5 Gradymeister#3270
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 1
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 2
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 3
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 4
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 5
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 1
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 2
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 3
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 4
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 5
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 1
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 2
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 3
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 4
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 5
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 1
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 2
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 3
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 4
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 5
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 1
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 2
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 3
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 4
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 5
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 1
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 2 Gradymeister#3270
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 3
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 4
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 5
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 1
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 2
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 3
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 4
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 5
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 1
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 2
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 3
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 4
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 5
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 1
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 2
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 3
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 4
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 5
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 1
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 2 Gradymeister#3270
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 3
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 4
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 5
TDS:Sell(3, 39, 1, 30)
TDS:Place('Gladiator', -25.89339828491211, 8.298922538757324, 37.49402618408203, 39, 1, 29)--41
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 1
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 2
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 3
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 4
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 5
TDS:Sell(5, 39, 1, 25)
TDS:Place('Gladiator', -25.871685028076172, 8.298922538757324, 39.6405029296875, 39, 1, 24)--42
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 1
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 2
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 3
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 4
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 5 Gradymeister#3270
TDS:Skip(39, 1, 20)
TDS:Sell(8, 39, 0, 5)
TDS:Place('Gladiator', -31.02140235900879, 8.298922538757324, 41.832191467285156, 39, 0, 4)--43
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 1
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 2
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 3
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 4
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 5
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 59)
TDS:Sell(12, 40, 99, 58)
TDS:Sell(13, 40, 99, 58)
TDS:Place('Gladiator', -31.10462188720703, 8.29892349243164, 43.912357330322266, 40, 99, 58)--44
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 1
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 2
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 3
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 4
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 5
TDS:Place('Gladiator', -31.079849243164062, 8.29892349243164, 45.97909927368164, 40, 99, 56)--45
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 1
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 2
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 3 Gradymeister#3270
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 4
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 5
TDS:Place('Gladiator', -25.85211181640625, 8.298922538757324, 41.78925704956055, 40, 99, 53)--46
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 1
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 2
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 3
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 4
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 5
TDS:Place('Gladiator', -25.85873031616211, 8.29892349243164, 43.862060546875, 40, 99, 50)--47
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 1
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 2
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 3
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 4
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 5
TDS:Place('Gladiator', -23.800983428955078, 8.29892349243164, 44.280879974365234, 40, 99, 47)--48
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 1
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 2
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 3 Gradymeister#3270
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 4
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 5
TDS:Place('Gladiator', -21.774404525756836, 8.298922538757324, 44.242576599121094, 40, 99, 44)--49
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 1
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 2
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 3
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 4
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 5
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 3
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 4
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 3 Gradymeister#3270
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 4
TDS:Ability(2, "Warrior's Call", 40, 99, 30)
TDS:Ability(4, "Warrior's Call", 40, 99, 30)
TDS:Ability(6, "Warrior's Call", 40, 99, 30)
TDS:Ability(17, "Warrior's Call", 40, 99, 30)
TDS:Ability(18, "Warrior's Call", 40, 99, 29)
TDS:Ability(20, "Warrior's Call", 40, 99, 29)
TDS:Ability(23, "Warrior's Call", 40, 99, 22)
TDS:Ability(29, "Warrior's Call", 40, 99, 22)
TDS:Ability(30, "Warrior's Call", 40, 99, 22)
TDS:Ability(31, "Warrior's Call", 40, 99, 22)
TDS:Ability(32, "Warrior's Call", 40, 99, 22)
TDS:Ability(33, "Warrior's Call", 40, 99, 21)
TDS:Ability(34, "Warrior's Call", 40, 99, 21)
TDS:Ability(35, "Warrior's Call", 40, 99, 21)
TDS:Ability(36, "Warrior's Call", 40, 99, 21)
TDS:Ability(37, "Warrior's Call", 40, 99, 20)--Gradymeister#3270
TDS:Ability(38, "Warrior's Call", 40, 99, 20)
TDS:Ability(39, "Warrior's Call", 40, 99, 20)
TDS:Ability(40, "Warrior's Call", 40, 99, 15)
TDS:Ability(41, "Warrior's Call", 40, 99, 15)
TDS:Ability(42, "Warrior's Call", 40, 99, 15)
TDS:Ability(43, "Warrior's Call", 40, 99, 15)
TDS:Ability(44, "Warrior's Call", 40, 99, 14)
TDS:Ability(45, "Warrior's Call", 40, 99, 14)
TDS:Ability(46, "Warrior's Call", 40, 99, 14)
TDS:Ability(47, "Warrior's Call", 40, 99, 14)
TDS:Ability(48, "Warrior's Call", 40, 99, 13)
TDS:Ability(49, "Warrior's Call", 40, 99, 13)
TDS:Sell(1, 40, 99, 10)--glad 1 - 9
TDS:Sell(2, 40, 99, 10)--glad
TDS:Sell(4, 40, 99, 9)--glad
TDS:Sell(6, 40, 99, 9)--glad
TDS:Sell(17, 40, 99, 8)--glad
TDS:Sell(18, 40, 99, 8)--glad
TDS:Sell(29, 40, 99, 7)--glad
TDS:Sell(20, 40, 99, 7)--glad
TDS:Sell(23, 40, 99, 7)--glad
TDS:Place('Gladiator', 1.9765129089355469, 8.298893928527832, -2.7619476318359375, 40, 99, 6)--50
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 1
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 2
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 3
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 4 Gradymeister#3270
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 5
TDS:Place('Gladiator', 1.9934911727905273, 8.29826545715332, -4.91450309753418, 40, 99, 3)--51
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 1
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 2
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 3
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 4
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 5
TDS:Place('Gladiator', 1.8696060180664062, 8.297664642333984, -6.984062194824219, 40, 98, 59)--52
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 1
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 2
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 3
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 4
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 5
TDS:Place('Gladiator', 7.204558372497559, 8.298587799072266, -3.0023155212402344, 40, 98, 56)--53
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 1
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 2
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 3
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 4
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 5
TDS:Place('Gladiator', 7.13735294342041, 8.298596382141113, -5.103427886962891, 40, 98, 53)--54
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 1
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 2 Gradymeister#3270
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 3
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 4
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 5
TDS:Place('Gladiator', 7.060124397277832, 8.298386573791504, -7.147850036621094, 40, 98, 50)--55
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 1
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 2
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 3
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 4
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 5
TDS:Place('Gladiator', -0.09920406341552734, 8.298924446105957, -2.7420482635498047, 40, 98, 47)--56
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 1 Gradymeister#3270
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 2
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 3
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 4
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 5
TDS:Place('Gladiator', -0.08957290649414062, 8.298347473144531, -4.781927108764648, 40, 98, 44)--57
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 1
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 2
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 3
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 4
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 5
TDS:Sell(21, 40, 98, 27)--sell accel 1
TDS:Sell(40, 40, 98, 27)--sell accel 8
TDS:Sell(28, 40, 98, 27)--sell accel 7
TDS:Sell(26, 40, 98, 26)--sell accel 5
TDS:Sell(25, 40, 98, 26)--sell accel 4
TDS:Place('Accelerator', 6.77864933013916, 8.29892349243164, -14.177315711975098, 40, 98, 25)--58
TDS:Upgrade(58, 40, 98, 24)--accelerator 9 upgrade 1
TDS:Upgrade(58, 40, 98, 24)--accelerator 9 upgrade 2
TDS:Upgrade(58, 40, 98, 24)--accelerator 9 upgrade 3 Gradymeister#3270
TDS:Upgrade(58, 40, 98, 23)--accelerator 9 upgrade 4
TDS:Upgrade(58, 40, 98, 23)--accelerator 9 upgrade 5
TDS:Place('Accelerator', 3.679965019226074, 8.29892349243164, -14.172652244567871, 40, 98, 23)--59
TDS:Upgrade(59, 40, 98, 22)--accelerator 10 upgrade 1
TDS:Upgrade(59, 40, 98, 22)--accelerator 10 upgrade 2
TDS:Upgrade(59, 40, 98, 22)--accelerator 10 upgrade 3
TDS:Upgrade(59, 40, 98, 21)--accelerator 10 upgrade 4
TDS:Upgrade(59, 40, 98, 21)--accelerator 10 upgrade 5
TDS:Place('Accelerator', 0.45531177520751953, 8.298924446105957, -14.185426712036133, 40, 98, 21)--60
TDS:Upgrade(60, 40, 98, 20)--accelerator 11 upgrade 1
TDS:Upgrade(60, 40, 98, 20)--accelerator 11 upgrade 2
TDS:Upgrade(60, 40, 98, 20)--accelerator 11 upgrade 3
TDS:Upgrade(60, 40, 98, 19)--accelerator 11 upgrade 4
TDS:Upgrade(60, 40, 98, 19)--accelerator 11 upgrade 5
TDS:Place('Accelerator', -25.981430053710938, 8.298919677734375, -37.213897705078125, 40, 98, 19)--61
TDS:Upgrade(61, 40, 98, 18)--accelerator 12 upgrade 1
TDS:Upgrade(61, 40, 98, 18)--accelerator 12 upgrade 2
TDS:Upgrade(61, 40, 98, 18)--accelerator 12 upgrade 3
TDS:Upgrade(61, 40, 98, 17)--accelerator 12 upgrade 4
TDS:Upgrade(61, 40, 98, 17)--accelerator 12 upgrade 5
TDS:Place('Accelerator', -22.06549835205078, 8.298918724060059, -37.32121658325195, 40, 98, 17)--62
TDS:Upgrade(62, 40, 98, 16)--accelerator 13 upgrade 1
TDS:Upgrade(62, 40, 98, 16)--accelerator 13 upgrade 2
TDS:Upgrade(62, 40, 98, 16)--accelerator 13 upgrade 3 Gradymeister#3270
TDS:Upgrade(62, 40, 98, 15)--accelerator 13 upgrade 4
TDS:Upgrade(62, 40, 98, 15)--accelerator 13 upgrade 5
    end
    if map == maplist[2] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:  		Gradymeister#3270
MultiStrat by:  		Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Farm", "Commander", "Accelerator", "Gladiator", "DJ Booth") 
TDS:Map("Night Station", true, "Survival")
TDS:Mode('Insane')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Gladiator', 2.368384838104248, 0.07500037550926208, -24.35692024230957, 0, 0, 10)--1-
TDS:Place('Gladiator', 2.3753418922424316, 0.07500037550926208, -26.393310546875, 0, 0, 9)--2-
TDS:Skip(1, 0, 40)
TDS:Place('Farm', -7.337917327880859, 0.07500037550926208, -10.353476524353027, 1, 0, 4)--3 farm 1-
TDS:Place('Gladiator', 2.374021053314209, 0.07500037550926208, -28.461502075195312, 2, 0, 4)--4-
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1
TDS:Place('Farm', -7.2756805419921875, 0.07500037550926208, -13.397933959960938, 3, 0, 3)--5 farm 2-
TDS:Upgrade(3, 4, 0, 4)--farm 1 upgrade 2
TDS:Place('Gladiator', 2.3530783653259277, 0.07500037550926208, -30.481388092041016, 5, 0, 59)--6-
TDS:Upgrade(5, 5, 0, 4)--farm 2 upgrade 1
TDS:Place('Farm', -7.610300064086914, 0.07500037550926208, -16.479679107666016, 5, 0, 3)--7 farm 3-
TDS:Upgrade(3, 6, 0, 4)--farm 1 upgrade 3
TDS:Upgrade(5, 7, 0, 59)--farm 2 upgrade 2
TDS:Upgrade(7, 7, 0, 4)--farm 3 upgrade 1 Gradymeister#3270
TDS:Upgrade(7, 7, 0, 3)--farm 3 upgrade 2
TDS:Upgrade(1, 8, 0, 59)--glad 4 upgrade 1--(6 to 2)then(2 to 1)
TDS:Upgrade(1, 8, 0, 59)--glad 4 upgrade 2--(6 to 2)then(2 to 1)
TDS:Upgrade(1, 9, 0, 59)--glad 4 upgrade 3--(6 to 2)then(2 to 1)
TDS:Sell(7, 10, 0, 59)--sell farm 3
TDS:Upgrade(1, 10, 0, 59)--glad 4 upgrade 4--(6 to 2)then(2 to 1)
TDS:Ability(1, "Warrior's Call", 10, 0, 57)--(6 to 2)then(2 to 1)
TDS:Place('Farm', -7.610300064086914, 0.07500037550926208, -16.479679107666016, 10, 0, 4)--8 replacement of farm 3-
TDS:Upgrade(8, 10, 0, 3)--farm 3 upgrade 1
TDS:Upgrade(8, 10, 0, 2)--farm 3 upgrade 2
TDS:Upgrade(5, 11, 0, 59)--farm 2 upgrade 3
TDS:Upgrade(8, 11, 0, 4)--farm 3 upgrade 3
TDS:Ability(1, "Warrior's Call", 11, 0, 4)--(6 to 2)then(2 to 1)
TDS:Upgrade(2, 12, 0, 59)--glad 3 upgrade 1 --(1 to 2)
TDS:Place('Farm', -10.451671600341797, 0.07500037550926208, -10.413063049316406, 12, 0, 4)--9 farm 4-
TDS:Upgrade(9, 12, 0, 4)--farm 4 upgrade 1
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 2
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 3
TDS:Place('Farm', -10.81783390045166, 0.07500037550926208, -13.543814659118652, 12, 0, 2)--10 farm 5-
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 1
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 2
TDS:Upgrade(10, 13, 0, 58)--farm 5 upgrade 3
TDS:Upgrade(2, 13, 0, 4)--glad 3 upgrade 2(1 to 2)
TDS:Upgrade(2, 14, 0, 59)--glad 3 upgrade 3(1 to 2)
TDS:Ability(2, "Warrior's Call", 14, 0, 59)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 14, 0, 54)--(6 to 2)then(2 to 1)
TDS:Place('Farm', -10.67807388305664, 0.07500037550926208, -16.59275245666504, 14, 0, 4)--11 farm 6-
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 2 Gradymeister#3270
TDS:Upgrade(11, 14, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', -11.274900436401367, 0.07500037550926208, -19.663978576660156, 14, 0, 3)--12 farm 7-
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 1
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 2
TDS:Upgrade(12, 15, 0, 59)--farm 7 upgrade 3
TDS:Place('Farm', -8.19232177734375, 0.07500037550926208, -19.687063217163086, 15, 0, 59)--13 farm 8-
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 1
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 2
TDS:Upgrade(13, 15, 0, 57)--farm 8 upgrade 3
TDS:Place('DJ Booth', 1.0713205337524414, 0.07500037550926208, -15.219298362731934, 16, 0, 59)--14-
TDS:Upgrade(2, 16, 0, 59)--glad 3 upgrade 4--(1 to 2)
TDS:Ability(2, "Warrior's Call", 16, 0, 59)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 16, 0, 58)--(6 to 2)then(2 to 1)
TDS:Upgrade(14, 16, 0, 4)--DJ 1
TDS:Upgrade(13, 16, 0, 4)--farm 8 upgrade 4
TDS:Upgrade(14, 16, 0, 3)--DJ 2
TDS:Upgrade(4, 17, 0, 59)--Glad 2 upgrade 1 Gradymeister#3270--(2 to 6)then(6 to 4)
TDS:Upgrade(4, 17, 0, 59)--Glad 2 upgrade 2--(2 to 6)then(6 to 4)
TDS:Ability(4, "Warrior's Call", 17, 0, 59)--(2 to 6)then(6 to 4)
TDS:Upgrade(4, 17, 0, 58)--Glad 2 upgrade 3--(2 to 6)then(6 to 4)
TDS:Upgrade(8, 17, 0, 4)--farm 3 upgrade 4
TDS:Upgrade(14, 18, 0, 59)--DJ 3
TDS:Upgrade(4, 18, 0, 58)--Glad 2 upgrade 4--(2 to 6)then(6 to 4)
TDS:Upgrade(2, 19, 0, 59)--glad 3 upgrade 5--(1 to 2)
TDS:Ability(2, "Warrior's Call", 19, 0, 53)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 19, 0, 52)--(6 to 2)then(2 to 1)
TDS:Place('Commander', -4.432301044464111, 0.07500037550926208, -18.222684860229492, 19, 0, 4)--15-
TDS:Upgrade(15, 19, 0, 3)--Comm 1 Upgrade 1
TDS:Upgrade(15, 19, 0, 2)--Comm 1 Upgrade 2
TDS:Ability(15, "Call Of Arms", 20, 1, 0)
TDS:Upgrade(13, 20, 0, 59)--farm 8 upgrade 5
TDS:Place('Commander', -4.220420837402344, 0.07500037550926208, -15.20573616027832, 20, 0, 4)--16-
TDS:Upgrade(16, 20, 0, 4)--Comm 2 Upgrade 1
TDS:Upgrade(16, 21, 0, 59)--Comm 2 Upgrade 2
TDS:Ability(16, "Call Of Arms", 21, 0, 59)
TDS:Upgrade(8, 21, 0, 4)--farm 3 upgrade 5 Gradymeister#3270
TDS:Upgrade(4, 22, 0, 59)--Glad 2 upgrade 5--(2 to 6)then(6 to 4)
TDS:Ability(4, "Warrior's Call", 22, 0, 53)--(2 to 6)then(6 to 4)
TDS:Ability(2, "Warrior's Call", 22, 0, 52)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 22, 0, 51)--(6 to 2)then(2 to 1)
TDS:Ability(15, "Call Of Arms", 22, 0, 50)
TDS:Skip(22, 0, 40)
TDS:Upgrade(5, 22, 0, 4)--farm 2 upgrade 4
TDS:Upgrade(1, 23, 0, 59)--glad 4 upgrade 5--(6 to 2)then(2 to 1)
TDS:Place('Gladiator', 4.411362171173096, 0.07500037550926208, -24.43191909790039, 23, 0, 59)--17-
TDS:Upgrade(17, 23, 0, 59)--glad 5 upgrade 1
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 2
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 3
TDS:Ability(16, "Call Of Arms", 23, 0, 58)
TDS:Upgrade(17, 23, 0, 57)--glad 5 upgrade 4
TDS:Ability(17, "Warrior's Call", 23, 0, 55)
TDS:Upgrade(5, 23, 0, 4)--farm 2 upgrade 5
TDS:Upgrade(17, 24, 0, 59)--glad 5 upgrade 5
TDS:Place('Gladiator', 4.430510520935059, 0.07500037550926208, -26.51723861694336, 24, 0, 59)--18-
TDS:Upgrade(18, 24, 0, 59)--glad 6 upgrade 1
TDS:Upgrade(18, 24, 0, 58)--glad 6 upgrade 2
TDS:Upgrade(18, 24, 0, 58)--glad 6 upgrade 3
TDS:Upgrade(18, 24, 0, 54)--glad 6 upgrade 4
TDS:Upgrade(3, 24, 0, 4)--farm 1 upgrade 4
TDS:Ability(15, "Call Of Arms", 25, 0, 59)
TDS:Upgrade(18, 25, 0, 59)--glad 6 upgrade 5 Gradymeister#3270
TDS:Upgrade(3, 25, 0, 4)--farm 1 upgrade 5
TDS:Upgrade(12, 25, 0, 3)--farm 7 upgrade 4
TDS:Place('Commander', -4.105027675628662, 0.07500037550926208, -12.178864479064941, 26, 1, 0)--19-
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 1
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 2
TDS:AutoChain(19, 16, 15, 26, 0, 58)
TDS:Upgrade(12, 26, 0, 4)--farm 7 upgrade 5
TDS:Upgrade(11, 26, 0, 3)--farm 6 upgrade 4
TDS:Upgrade(10, 26, 0, 2)--farm 5 upgrade 4
TDS:Place('Gladiator', 4.408413887023926, 0.07500037550926208, -28.547399520874023, 27, 1, 0)--20-
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 1
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 2
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 3
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 4
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 5
TDS:Ability(20, "Warrior's Call", 27, 0, 57)
TDS:Upgrade(11, 27, 0, 4)--farm 6 upgrade 5
TDS:Upgrade(10, 28, 0, 59)--farm 5 upgrade 5
TDS:Upgrade(9, 28, 0, 59)--farm 4 upgrade 4
TDS:Upgrade(9, 28, 0, 58)--farm 4 upgrade 5
TDS:Place('Accelerator', -6.6600189208984375, 0.07500037550926208, -4.251407623291016, 28, 0, 4)--21-
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 2 Gradymeister#3270
TDS:Upgrade(21, 28, 0, 3)--Accel 1 Upgrade 3
TDS:Upgrade(21, 29, 0, 59)--Accel 1 Upgrade 4
TDS:Upgrade(21, 30, 0, 59)--Accel 1 Upgrade 5
TDS:Upgrade(14, 30, 1, 3)--DJ 4
TDS:Ability(4, "Warrior's Call", 30, 1, 2)--(2 to 6)then(6 to 4)
TDS:Ability(2, "Warrior's Call", 30, 1, 2)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 30, 1, 2)--(6 to 2)then(2 to 1)
TDS:Ability(17, "Warrior's Call", 30, 1, 2)
TDS:Skip(30, 0, 54)--8:35 in the video
TDS:Upgrade(14, 30, 0, 2)--DJ 5
TDS:Upgrade(15, 31, 1, 19)--Comm 1 Upgrade 3
TDS:Upgrade(15, 31, 1, 18)--Comm 1 Upgrade 4
TDS:Place('Accelerator', -9.738350868225098, 0.07500037550926208, -4.287532806396484, 31, 0, 4)--22-
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 1
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 2
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 3
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 4
TDS:Upgrade(6, 32, 1, 17)--glad 1 upgrade 1 Gradymeister#3270 --(4 to 6)
TDS:Upgrade(6, 32, 1, 17)--glad 1 upgrade 2 --(4 to 6)
TDS:Upgrade(6, 32, 1, 16)--glad 1 upgrade 3 --(4 to 6)
TDS:Upgrade(6, 32, 1, 16)--glad 1 upgrade 4 --(4 to 6)
TDS:Upgrade(6, 32, 1, 15)--glad 1 upgrade 5 --(4 to 6)
TDS:Place('Gladiator', 2.375209093093872, 0.07500037550926208, -32.51475524902344, 32, 1, 14)--23-
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 1
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 2
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 3
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 4
TDS:Upgrade(23, 32, 1, 11)--glad 8 upgrade 5
TDS:Upgrade(22, 33, 1, 20)--Accel 2 Upgrade 5
TDS:Place('Accelerator', -12.773761749267578, 0.07500037550926208, -4.285748481750488, 33, 1, 10)--24-
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 1
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 2
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 3
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 4
TDS:Skip(33, 0, 54)
TDS:Upgrade(24, 34, 1, 18)--Accel 3 Upgrade 5
TDS:Place('Accelerator', -12.730735778808594, 0.07500037550926208, -1.2467765808105469, 34, 1, 4)--25-
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 1
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 2 Gradymeister#3270
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 3
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 4
TDS:Skip(34, 0, 54)
TDS:Upgrade(25, 35, 1, 20)--Accel 4 Upgrade 5
TDS:Place('Accelerator', -9.669931411743164, 0.07500037550926208, -1.2150287628173828, 35, 1, 5)--26-
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 1
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 2
TDS:Upgrade(26, 35, 1, 3)--Accel 5 Upgrade 3
TDS:Upgrade(26, 35, 1, 2)--Accel 5 Upgrade 4
TDS:Upgrade(26, 36, 1, 15)--Accel 5 Upgrade 5
TDS:Place('Accelerator', -6.550327301025391, 0.07500037550926208, -1.1677074432373047, 36, 1, 10)--27-
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 1
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 2
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 3
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 4
TDS:Upgrade(27, 36, 0, 4)--Accel 6 Upgrade 5
TDS:Place('Accelerator', -8.655022621154785, 0.07500037550926208, 1.8523750305175781, 37, 1, 19)--28-
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 1
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 2
TDS:Upgrade(28, 37, 1, 17)--Accel 7 Upgrade 3 Gradymeister#3270
TDS:Place('Gladiator', 4.415577411651611, 0.07500037550926208, -30.585390090942383, 37, 1, 10)--29-
TDS:Place('Gladiator', 4.4278411865234375, 0.07500037550926208, -32.627769470214844, 37, 1, 10)--30-
TDS:Place('Gladiator', -3.7761316299438477, 0.07500037550926208, -33.48748016357422, 37, 1, 9)--31-
TDS:Place('Gladiator', -3.7569618225097656, 0.07500037550926208, -31.456710815429688, 37, 1, 9)--32-
TDS:Place('Gladiator', -3.75494384765625, 0.07500037550926208, -29.427440643310547, 37, 1, 8)--33-
TDS:Place('Gladiator', -3.767636299133301, 0.07500037550926208, -27.333206176757812, 37, 1, 8)--34-
TDS:Place('Gladiator', -3.7103304862976074, 0.07500037550926208, -25.32550621032715, 37, 1, 7)--35-
TDS:Place('Gladiator', -3.743896484375, 0.07500037550926208, -23.294906616210938, 37, 1, 7)--36-
TDS:Place('Gladiator', -3.7261266708374023, 0.07500037550926208, -21.26907730102539, 37, 1, 6)--37-
TDS:Place('Gladiator', -1.3546185493469238, 0.07500037550926208, -18.299396514892578, 37, 1, 6)--38-
TDS:Place('Gladiator', 0.7017612457275391, 0.07500037550926208, -18.271244049072266, 37, 1, 5)--39-
TDS:Skip(37, 0, 54)
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 4
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 5
TDS:Place('Accelerator', -5.576269149780273, 0.07500037550926208, 1.9579887390136719, 38, 1, 19)--40-
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 1
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 2
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 3
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 4
TDS:Upgrade(40, 38, 1, 16)--Accel 8 Upgrade 5
TDS:Skip(38, 0, 54)
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 1
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 2
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 3
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 4
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 5 Gradymeister#3270
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 1
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 2
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 3
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 4
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 5
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 1
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 2
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 3
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 4
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 5
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 1
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 2
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 3
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 4
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 5
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 1
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 2
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 3
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 4
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 5
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 1
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 2
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 3
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 4
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 5
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 1
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 2 Gradymeister#3270
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 3
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 4
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 5
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 1
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 2
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 3
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 4
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 5
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 1
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 2
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 3
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 4
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 5
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 1
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 2
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 3
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 4
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 5
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 1
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 2 Gradymeister#3270
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 3
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 4
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 5
TDS:Sell(3, 39, 1, 30)
TDS:Place('Gladiator', 2.716928720474243, 0.07500037550926208, -18.24382972717285, 39, 1, 29)--41-
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 1
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 2
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 3
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 4
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 5
TDS:Sell(5, 39, 1, 25)
TDS:Place('Gladiator', 4.763691425323486, 0.07500037550926208, -18.209774017333984, 39, 1, 24)--42-
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 1
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 2
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 3
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 4
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 5 Gradymeister#3270
TDS:Skip(39, 1, 20)
TDS:Sell(8, 39, 0, 4)
TDS:Place('Gladiator', 6.4443864822387695, 0.07500037550926208, -24.341461181640625, 39, 0, 4)--43-
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 1
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 2
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 3
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 4
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 5
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 59)
TDS:Sell(12, 40, 99, 58)
TDS:Sell(13, 40, 99, 58)
TDS:Place('Gladiator', 8.513776779174805, 0.07500037550926208, -24.342634201049805, 40, 99, 58)--44-
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 1
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 2
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 3
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 4
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 5
TDS:Place('Gladiator', 10.579137802124023, 0.07500037550926208, -24.37674331665039, 40, 99, 56)--45-
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 1
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 2
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 3 Gradymeister#3270
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 4
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 5
TDS:Place('Gladiator', 6.234570026397705, 0.07500037550926208, -16.182971954345703, 40, 99, 53)--46-
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 1
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 2
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 3
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 4
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 5
TDS:Place('Gladiator', 6.265549659729004, 0.07500037550926208, -14.171274185180664, 40, 99, 50)--47-
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 1
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 2
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 3
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 4
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 5
TDS:Place('Gladiator', 6.268959045410156, 0.07500037550926208, -12.149178504943848, 40, 99, 47)--48-
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 1
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 2
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 3 Gradymeister#3270
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 4
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 5
TDS:Place('Gladiator', 4.216897487640381, 0.07500037550926208, -10.355035781860352, 40, 99, 44)--49-
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 1
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 2
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 3
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 4
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 5
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 3
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 4
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 3 Gradymeister#3270
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 4
TDS:Ability(23, "Warrior's Call", 40, 99, 37)
TDS:Ability(30, "Warrior's Call", 40, 99, 37)
TDS:Ability(29, "Warrior's Call", 40, 99, 37)
TDS:Ability(31, "Warrior's Call", 40, 99, 37)
TDS:Ability(32, "Warrior's Call", 40, 99, 36)
TDS:Ability(33, "Warrior's Call", 40, 99, 36)
TDS:Ability(6, "Warrior's Call", 40, 99, 36)
TDS:Ability(4, "Warrior's Call", 40, 99, 36)
TDS:Ability(2, "Warrior's Call", 40, 99, 28)
TDS:Ability(34, "Warrior's Call", 40, 99, 28)
TDS:Ability(20, "Warrior's Call", 40, 99, 28)
TDS:Ability(35, "Warrior's Call", 40, 99, 28)
TDS:Ability(17, "Warrior's Call", 40, 99, 27)
TDS:Ability(18, "Warrior's Call", 40, 99, 27)
TDS:Ability(1, "Warrior's Call", 40, 99, 27)
TDS:Ability(36, "Warrior's Call", 40, 99, 27)
TDS:Ability(37, "Warrior's Call", 40, 99, 23)
TDS:Ability(38, "Warrior's Call", 40, 99, 23)
TDS:Ability(39, "Warrior's Call", 40, 99, 23)
TDS:Ability(41, "Warrior's Call", 40, 99, 23)
TDS:Ability(42, "Warrior's Call", 40, 99, 22)
TDS:Ability(43, "Warrior's Call", 40, 99, 22)
TDS:Ability(44, "Warrior's Call", 40, 99, 22)
TDS:Ability(45, "Warrior's Call", 40, 99, 22)
TDS:Ability(46, "Warrior's Call", 40, 99, 21)
TDS:Ability(47, "Warrior's Call", 40, 99, 21)
TDS:Ability(48, "Warrior's Call", 40, 99, 21)
TDS:Ability(49, "Warrior's Call", 40, 99, 21)
TDS:Sell(1, 40, 99, 10)--glad 1 - 9
TDS:Sell(2, 40, 99, 10)--glad
TDS:Sell(4, 40, 99, 9)--glad
TDS:Sell(6, 40, 99, 9)--glad
TDS:Sell(17, 40, 99, 8)--glad
TDS:Sell(18, 40, 99, 8)--glad
TDS:Sell(29, 40, 99, 7)--glad
TDS:Sell(20, 40, 99, 7)--glad
TDS:Sell(23, 40, 99, 7)--glad
TDS:Place('Gladiator', 18.188934326171875, 0.07500037550926208, 20.790529251098633, 40, 99, 6)--50
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 1
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 2
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 3
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 4 Gradymeister#3270
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 5
TDS:Place('Gladiator', 16.08448028564453, 0.07500037550926208, 20.77933692932129, 40, 99, 3)--51
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 1
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 2
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 3
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 4
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 5
TDS:Place('Gladiator', 13.98426342010498, 0.07500037550926208, 20.75249481201172, 40, 98, 59)--52
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 1
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 2
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 3
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 4
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 5
TDS:Place('Gladiator', 11.919835090637207, 0.07500037550926208, 20.779260635375977, 40, 98, 56)--53
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 1
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 2
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 3
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 4
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 5
TDS:Place('Gladiator', 18.217958450317383, 0.07500037550926208, 24.612712860107422, 40, 98, 53)--54
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 1
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 2 Gradymeister#3270
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 3
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 4
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 5
TDS:Place('Gladiator', 16.205780029296875, 0.07500037550926208, 24.6191349029541, 40, 98, 50)--55
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 1
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 2
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 3
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 4
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 5
TDS:Place('Gladiator', 14.169968605041504, 0.07500037550926208, 24.572080612182617, 40, 98, 47)--56
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 1 Gradymeister#3270
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 2
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 3
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 4
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 5
TDS:Place('Gladiator', 12.105083465576172, 0.07500037550926208, 24.585052490234375, 40, 98, 44)--57
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 1
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 2
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 3
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 4
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 5
TDS:Sell(21, 40, 98, 14)--sell accel 1
TDS:Sell(40, 40, 98, 14)--sell accel 8
TDS:Sell(28, 40, 98, 14)--sell accel 7
TDS:Sell(26, 40, 98, 13)--sell accel 5
TDS:Sell(25, 40, 98, 13)--sell accel 4
TDS:Place('Accelerator', 10.094290733337402, 0.07500037550926208, 24.594501495361328, 40, 98, 12)--58
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 1
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 2
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 3 Gradymeister#3270
TDS:Upgrade(58, 40, 98, 10)--accelerator 9 upgrade 4
TDS:Upgrade(58, 40, 98, 10)--accelerator 9 upgrade 5
TDS:Place('Accelerator', 2.1615450382232666, 0.07500037550926208, 24.454879760742188, 40, 98, 9)--59
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 1
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 2
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 3
TDS:Upgrade(59, 40, 98, 7)--accelerator 10 upgrade 4
TDS:Upgrade(59, 40, 98, 7)--accelerator 10 upgrade 5
TDS:Ability(53, "Warrior's Call", 40, 98, 6)
TDS:Ability(57, "Warrior's Call", 40, 98, 6)
TDS:Ability(52, "Warrior's Call", 40, 98, 6)
TDS:Ability(56, "Warrior's Call", 40, 98, 6)
TDS:Ability(51, "Warrior's Call", 40, 98, 5)
TDS:Ability(55, "Warrior's Call", 40, 98, 5)
TDS:Ability(50, "Warrior's Call", 40, 98, 5)
TDS:Ability(54, "Warrior's Call", 40, 98, 5)
TDS:Place('Accelerator', 9.906681060791016, 0.07500037550926208, 20.852323532104492, 40, 98, 4)--60
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 1
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 2
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 3
TDS:Upgrade(60, 40, 98, 2)--accelerator 11 upgrade 4
TDS:Upgrade(60, 40, 98, 2)--accelerator 11 upgrade 5
TDS:Place('Accelerator', 6.860844612121582, 0.07500037550926208, 20.812259674072266, 40, 98, 1)--61
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 1
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 2
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 3
TDS:Upgrade(61, 40, 97, 58)--accelerator 12 upgrade 4
TDS:Upgrade(61, 40, 97, 58)--accelerator 12 upgrade 5
TDS:Place('Accelerator', 3.7822039127349854, 0.07500037550926208, 20.838212966918945, 40, 97, 57)--62
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 1
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 2
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 3 Gradymeister#3270
TDS:Upgrade(62, 40, 98, 55)--accelerator 13 upgrade 4
TDS:Upgrade(62, 40, 98, 55)--accelerator 13 upgrade 5
    end
    if map == maplist[3] then
print([[

--> 1. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
--> 2. Make sure to give this strat a thumbs up if you enjoy it!
Strat by:  		Gradymeister#3270
MultiStrat by:  		Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Farm", "Commander", "Accelerator", "Gladiator", "DJ Booth") 
TDS:Map("Farm Lands", true, "Survival")
TDS:Mode('Insane')
task.spawn(function()
    wait(1)
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Name == "section_lbl" and v.Text == "" then
            v.Text = "Strat By: Gradymeister#3270"
        end
    end
end)
TDS:Place('Gladiator', 13.798205375671387, -0.3959369659423828, 24.263553619384766, 0, 0, 10)--1-
TDS:Place('Gladiator', 13.739633560180664, -0.3958754539489746, 26.346006393432617, 0, 0, 9)--2-
TDS:Skip(1, 0, 40)
TDS:Place('Farm', 18.793964385986328, -0.39556884765625, 9.137063980102539, 1, 0, 4)--3 farm 1-
TDS:Place('Gladiator', 13.734179496765137, -0.3958144187927246, 28.417522430419922, 2, 0, 4)--4-
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1
TDS:Place('Farm', 21.93311882019043, -0.39578771591186523, 11.15843391418457, 3, 0, 3)--5 farm 2-
TDS:Upgrade(3, 4, 0, 4)--farm 1 upgrade 2
TDS:Place('Gladiator', 13.77980899810791, -0.3957509994506836, 30.540250778198242, 5, 0, 59)--6-
TDS:Upgrade(5, 5, 0, 4)--farm 2 upgrade 1
TDS:Place('Farm', 18.74964141845703, -0.3955659866333008, 6.076571941375732, 5, 0, 3)--7 farm 3-
TDS:Upgrade(3, 6, 0, 4)--farm 1 upgrade 3
TDS:Upgrade(5, 7, 0, 50)--farm 2 upgrade 2
TDS:Upgrade(7, 7, 0, 4)--farm 3 upgrade 1 Gradymeister#3270
TDS:Upgrade(7, 7, 0, 3)--farm 3 upgrade 2
TDS:Upgrade(1, 8, 0, 59)--glad 4 upgrade 1--(6 to 2)then(2 to 1)
TDS:Upgrade(1, 8, 0, 59)--glad 4 upgrade 2--(6 to 2)then(2 to 1)
TDS:Upgrade(1, 9, 0, 59)--glad 4 upgrade 3--(6 to 2)then(2 to 1)
TDS:Sell(7, 10, 0, 59)--sell farm 3
TDS:Upgrade(1, 10, 0, 59)--glad 4 upgrade 4--(6 to 2)then(2 to 1)
TDS:Ability(1, "Warrior's Call", 10, 0, 57)--(6 to 2)then(2 to 1)
TDS:Place('Farm', 18.74964141845703, -0.3955659866333008, 6.076571941375732, 10, 0, 4)--8 replacement of farm 3-
TDS:Upgrade(8, 10, 0, 3)--farm 3 upgrade 1
TDS:Upgrade(8, 10, 0, 2)--farm 3 upgrade 2
TDS:Upgrade(5, 11, 0, 59)--farm 2 upgrade 3
TDS:Upgrade(8, 11, 0, 4)--farm 3 upgrade 3
TDS:Ability(1, "Warrior's Call", 11, 0, 4)--(6 to 2)then(2 to 1)
TDS:Upgrade(2, 12, 0, 59)--glad 3 upgrade 1 --(1 to 2)
TDS:Place('Farm', 1.976238489151001, -0.3953371047973633, 14.065651893615723, 12, 0, 4)--9 farm 4-
TDS:Upgrade(9, 12, 0, 4)--farm 4 upgrade 1
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 2
TDS:Upgrade(9, 12, 0, 3)--farm 4 upgrade 3
TDS:Place('Farm', 1.827927589416504, -0.3953371047973633, 10.85834789276123, 12, 0, 2)--10 farm 5-
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 1
TDS:Upgrade(10, 13, 0, 59)--farm 5 upgrade 2
TDS:Upgrade(10, 13, 0, 58)--farm 5 upgrade 3
TDS:Upgrade(2, 13, 0, 4)--glad 3 upgrade 2(1 to 2)
TDS:Upgrade(2, 14, 0, 59)--glad 3 upgrade 3(1 to 2)
TDS:Ability(2, "Warrior's Call", 14, 0, 59)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 14, 0, 54)--(6 to 2)then(2 to 1)
TDS:Place('Farm', 1.7974700927734375, -0.3962554931640625, 7.655954360961914, 14, 0, 4)--11 farm 6-
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(11, 14, 0, 4)--farm 6 upgrade 2 Gradymeister#3270
TDS:Upgrade(11, 14, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', 1.967347502708435, -0.3953375816345215, 17.14197540283203, 14, 0, 3)--12 farm 7-
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 1
TDS:Upgrade(12, 14, 0, 2)--farm 7 upgrade 2
TDS:Upgrade(12, 15, 0, 59)--farm 7 upgrade 3
TDS:Place('Farm', 1.98796808719635, -0.3953375816345215, 20.264026641845703, 15, 0, 59)--13 farm 8-
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 1
TDS:Upgrade(13, 15, 0, 58)--farm 8 upgrade 2
TDS:Upgrade(13, 15, 0, 57)--farm 8 upgrade 3
TDS:Place('DJ Booth', 11.271838188171387, -0.3961191177368164, 18.079174041748047, 16, 0, 59)--14-
TDS:Upgrade(2, 16, 0, 59)--glad 3 upgrade 4--(1 to 2)
TDS:Ability(2, "Warrior's Call", 16, 0, 59)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 16, 0, 58)--(6 to 2)then(2 to 1)
TDS:Upgrade(14, 16, 0, 4)--DJ 1
TDS:Upgrade(13, 16, 0, 4)--farm 8 upgrade 4
TDS:Upgrade(14, 16, 0, 3)--DJ 2
TDS:Upgrade(4, 17, 0, 59)--Glad 2 upgrade 1 Gradymeister#3270--(2 to 6)then(6 to 4)
TDS:Upgrade(4, 17, 0, 59)--Glad 2 upgrade 2--(2 to 6)then(6 to 4)
TDS:Ability(4, "Warrior's Call", 17, 0, 59)--(2 to 6)then(6 to 4)
TDS:Upgrade(4, 17, 0, 58)--Glad 2 upgrade 3--(2 to 6)then(6 to 4)
TDS:Upgrade(8, 17, 0, 4)--farm 3 upgrade 4
TDS:Upgrade(14, 18, 0, 59)--DJ 3
TDS:Upgrade(4, 18, 0, 58)--Glad 2 upgrade 4--(2 to 6)then(6 to 4)
TDS:Upgrade(2, 19, 0, 59)--glad 3 upgrade 5--(1 to 2)
TDS:Ability(2, "Warrior's Call", 19, 0, 53)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 19, 0, 52)--(6 to 2)then(2 to 1)
TDS:Place('Commander', 14.418664932250977, -0.3961176872253418, 18.138622283935547, 19, 0, 4)--15-
TDS:Upgrade(15, 19, 0, 3)--Comm 1 Upgrade 1
TDS:Upgrade(15, 19, 0, 2)--Comm 1 Upgrade 2
TDS:Ability(15, "Call Of Arms", 20, 0, 59)
TDS:Upgrade(13, 20, 0, 59)--farm 8 upgrade 5
TDS:Place('Commander', 8.16325569152832, -0.3961176872253418, 18.127552032470703, 20, 0, 4)--16-
TDS:Upgrade(16, 20, 0, 4)--Comm 2 Upgrade 1
TDS:Upgrade(16, 21, 0, 59)--Comm 2 Upgrade 2
TDS:Ability(16, "Call Of Arms", 21, 0, 59)
TDS:Upgrade(8, 21, 0, 4)--farm 3 upgrade 5 Gradymeister#3270
TDS:Upgrade(4, 22, 0, 59)--Glad 2 upgrade 5--(2 to 6)then(6 to 4)
TDS:Ability(4, "Warrior's Call", 22, 0, 53)--(2 to 6)then(6 to 4)
TDS:Ability(2, "Warrior's Call", 22, 0, 52)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 22, 0, 51)--(6 to 2)then(2 to 1)
TDS:Ability(15, "Call Of Arms", 22, 0, 50)
TDS:Skip(22, 0, 40)
TDS:Upgrade(5, 22, 0, 4)--farm 2 upgrade 4
TDS:Upgrade(1, 23, 0, 59)--glad 4 upgrade 5--(6 to 2)then(2 to 1)
TDS:Place('Gladiator', 15.839362144470215, -0.3959369659423828, 24.248205184936523, 23, 1, 0)--17-
TDS:Upgrade(17, 23, 0, 59)--glad 5 upgrade 1
TDS:Upgrade(17, 23, 0, 59)--glad 5 upgrade 2
TDS:Upgrade(17, 23, 0, 59)--glad 5 upgrade 3
TDS:Upgrade(17, 23, 0, 58)--glad 5 upgrade 4
TDS:Ability(16, "Call Of Arms", 23, 0, 58)
TDS:Ability(17, "Warrior's Call", 23, 0, 55)
TDS:Upgrade(5, 23, 0, 4)--farm 2 upgrade 5
TDS:Upgrade(17, 24, 1, 0)--glad 5 upgrade 5
TDS:Place('Gladiator', 15.796324729919434, -0.3958768844604492, 26.300914764404297, 24, 1, 0)--18-
TDS:Upgrade(18, 24, 0, 59)--glad 6 upgrade 1
TDS:Upgrade(18, 24, 0, 59)--glad 6 upgrade 2
TDS:Upgrade(18, 24, 0, 58)--glad 6 upgrade 3
TDS:Upgrade(18, 24, 0, 54)--glad 6 upgrade 4
TDS:Upgrade(3, 24, 0, 4)--farm 1 upgrade 4
TDS:Ability(15, "Call Of Arms", 25, 1, 0)
TDS:Upgrade(18, 25, 0, 59)--glad 6 upgrade 5 Gradymeister#3270
TDS:Upgrade(3, 25, 0, 4)--farm 1 upgrade 5
TDS:Upgrade(12, 25, 0, 3)--farm 7 upgrade 4
TDS:Place('Commander', 8.02131462097168, -0.396207332611084, 15.1066312789917, 26, 1, 0)--19-
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 1
TDS:Upgrade(19, 26, 0, 59)--Comm 3 Upgrade 2
TDS:AutoChain(19, 16, 15, 26, 0, 58)
TDS:Upgrade(12, 26, 0, 4)--farm 7 upgrade 5
TDS:Upgrade(11, 26, 0, 3)--farm 6 upgrade 4
TDS:Upgrade(10, 26, 0, 2)--farm 5 upgrade 4
TDS:Place('Gladiator', 15.835668563842773, -0.395815372467041, 28.3635311126709, 27, 1, 0)--20-
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 1
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 2
TDS:Upgrade(20, 27, 0, 59)--glad 7 upgrade 3
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 4
TDS:Upgrade(20, 27, 0, 58)--glad 7 upgrade 5
TDS:Ability(20, "Warrior's Call", 27, 0, 57)
TDS:Upgrade(11, 27, 0, 4)--farm 6 upgrade 5
TDS:Upgrade(10, 28, 1, 0)--farm 5 upgrade 5
TDS:Upgrade(9, 28, 0, 59)--farm 4 upgrade 4
TDS:Upgrade(9, 28, 0, 58)--farm 4 upgrade 5
TDS:Place('Accelerator', 15.702028274536133, -0.3953533172607422, 8.35205078125, 28, 0, 4)--21-
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(21, 28, 0, 4)--Accel 1 Upgrade 2 Gradymeister#3270
TDS:Upgrade(21, 28, 0, 3)--Accel 1 Upgrade 3
TDS:Upgrade(21, 29, 1, 0)--Accel 1 Upgrade 4
TDS:Upgrade(21, 30, 1, 20)--Accel 1 Upgrade 5
TDS:Upgrade(14, 30, 1, 3)--DJ 4
TDS:Ability(4, "Warrior's Call", 30, 1, 2)--(2 to 6)then(6 to 4)
TDS:Ability(2, "Warrior's Call", 30, 1, 2)--(1 to 2)
TDS:Ability(1, "Warrior's Call", 30, 1, 2)--(6 to 2)then(2 to 1)
TDS:Ability(17, "Warrior's Call", 30, 1, 2)
TDS:Skip(30, 0, 54)--8:35 in the video
TDS:Upgrade(14, 30, 0, 2)--DJ 5
TDS:Upgrade(15, 31, 1, 19)--Comm 1 Upgrade 3
TDS:Upgrade(15, 31, 1, 18)--Comm 1 Upgrade 4
TDS:Place('Accelerator', 15.695204734802246, -0.395352840423584, 5.296119689941406, 31, 0, 4)--22-
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 1
TDS:Upgrade(22, 31, 0, 4)--Accel 2 Upgrade 2
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 3
TDS:Upgrade(22, 31, 0, 3)--Accel 2 Upgrade 4
TDS:Upgrade(6, 32, 1, 17)--glad 1 upgrade 1 Gradymeister#3270 --(4 to 6)
TDS:Upgrade(6, 32, 1, 17)--glad 1 upgrade 2 --(4 to 6)
TDS:Upgrade(6, 32, 1, 16)--glad 1 upgrade 3 --(4 to 6)
TDS:Upgrade(6, 32, 1, 16)--glad 1 upgrade 4 --(4 to 6)
TDS:Upgrade(6, 32, 1, 15)--glad 1 upgrade 5 --(4 to 6)
TDS:Place('Gladiator', 15.874800682067871, -0.3957538604736328, 30.446552276611328, 32, 1, 14)--23-
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 1
TDS:Upgrade(23, 32, 1, 13)--glad 8 upgrade 2
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 3
TDS:Upgrade(23, 32, 1, 12)--glad 8 upgrade 4
TDS:Upgrade(23, 32, 1, 11)--glad 8 upgrade 5
TDS:Upgrade(22, 33, 1, 20)--Accel 2 Upgrade 5
TDS:Place('Accelerator', 12.614080429077148, -0.3951387405395508, 5.947396278381348, 33, 1, 10)--24-
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 1
TDS:Upgrade(24, 33, 1, 9)--Accel 3 Upgrade 2
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 3
TDS:Upgrade(24, 33, 1, 8)--Accel 3 Upgrade 4
TDS:Skip(33, 0, 54)
TDS:Upgrade(24, 34, 1, 18)--Accel 3 Upgrade 5
TDS:Place('Accelerator', 16.449256896972656, -0.39540529251098633, 2.155027389526367, 34, 1, 4)--25-
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 1
TDS:Upgrade(25, 34, 1, 3)--Accel 4 Upgrade 2 Gradymeister#3270
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 3
TDS:Upgrade(25, 34, 1, 2)--Accel 4 Upgrade 4
TDS:Skip(34, 0, 54)
TDS:Upgrade(25, 35, 1, 20)--Accel 4 Upgrade 5
TDS:Place('Accelerator', 13.316500663757324, -0.3951873779296875, 2.129439353942871, 35, 1, 5)--26-
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 1
TDS:Upgrade(26, 35, 1, 4)--Accel 5 Upgrade 2
TDS:Upgrade(26, 35, 1, 3)--Accel 5 Upgrade 3
TDS:Upgrade(26, 35, 1, 2)--Accel 5 Upgrade 4
TDS:Upgrade(26, 36, 1, 15)--Accel 5 Upgrade 5
TDS:Place('Accelerator', 16.342037200927734, -0.3953981399536133, -0.9260959625244141, 36, 1, 10)--27-
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 1
TDS:Upgrade(27, 36, 1, 9)--Accel 6 Upgrade 2
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 3
TDS:Upgrade(27, 36, 1, 8)--Accel 6 Upgrade 4
TDS:Upgrade(27, 36, 0, 4)--Accel 6 Upgrade 5
TDS:Place('Accelerator', 13.236560821533203, -0.39525461196899414, -1.2221288681030273, 37, 1, 19)--28-
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 1
TDS:Upgrade(28, 37, 1, 18)--Accel 7 Upgrade 2
TDS:Upgrade(28, 37, 1, 17)--Accel 7 Upgrade 3 Gradymeister#3270
TDS:Place('Gladiator', 13.82138729095459, -0.3956928253173828, 32.556549072265625, 37, 1, 10)--29-
TDS:Place('Gladiator', 7.554576873779297, -0.39568567276000977, 32.79523468017578, 37, 1, 10)--30-
TDS:Place('Gladiator', 7.616523265838623, -0.3957481384277344, 30.63985252380371, 37, 1, 9)--31-
TDS:Place('Gladiator', 7.634919166564941, -0.3958096504211426, 28.58029556274414, 37, 1, 9)--32-
TDS:Place('Gladiator', 7.6117329597473145, -0.395871639251709, 26.491050720214844, 37, 1, 8)--33-
TDS:Place('Gladiator', 7.6566996574401855, -0.395932674407959, 24.400196075439453, 37, 1, 8)--34-
TDS:Place('Gladiator', 7.65144681930542, -0.395993709564209, 22.32500457763672, 37, 1, 7)--35-
TDS:Place('Gladiator', 5.364943027496338, -0.3957509994506836, 30.55254364013672, 37, 1, 7)--36-
TDS:Place('Gladiator', 17.92221450805664, -0.39593505859375, 24.342790603637695, 37, 1, 6)--37-
TDS:Place('Gladiator', 20.046737670898438, -0.3959388732910156, 24.218765258789062, 37, 1, 6)--38-
TDS:Place('Gladiator', 22.173646926879883, -0.3959369659423828, 24.26145362854004, 37, 1, 5)--39-
TDS:Skip(37, 0, 54)
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 4
TDS:Upgrade(28, 37, 0, 4)--Accel 7 Upgrade 5
TDS:Place('Accelerator', 28.426860809326172, -0.396240234375, 8.662261009216309, 38, 1, 19)--40-
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 1
TDS:Upgrade(40, 38, 1, 18)--Accel 8 Upgrade 2
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 3
TDS:Upgrade(40, 38, 1, 17)--Accel 8 Upgrade 4
TDS:Upgrade(40, 38, 1, 16)--Accel 8 Upgrade 5
TDS:Skip(38, 0, 54)
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 1
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 2
TDS:Upgrade(29, 39, 1, 59)--glad 9 upgrade 3
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 4
TDS:Upgrade(29, 39, 1, 58)--glad 9 upgrade 5 Gradymeister#3270
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 1
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 2
TDS:Upgrade(30, 39, 1, 57)--glad 10 upgrade 3
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 4
TDS:Upgrade(30, 39, 1, 56)--glad 10 upgrade 5
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 1
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 2
TDS:Upgrade(31, 39, 1, 55)--glad 11 upgrade 3
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 4
TDS:Upgrade(31, 39, 1, 54)--glad 11 upgrade 5
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 1
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 2
TDS:Upgrade(32, 39, 1, 53)--glad 12 upgrade 3
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 4
TDS:Upgrade(32, 39, 1, 52)--glad 12 upgrade 5
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 1
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 2
TDS:Upgrade(33, 39, 1, 50)--glad 13 upgrade 3
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 4
TDS:Upgrade(33, 39, 1, 49)--glad 13 upgrade 5
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 1
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 2
TDS:Upgrade(34, 39, 1, 48)--glad 14 upgrade 3
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 4
TDS:Upgrade(34, 39, 1, 47)--glad 14 upgrade 5
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 1
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 2 Gradymeister#3270
TDS:Upgrade(35, 39, 1, 46)--glad 15 upgrade 3
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 4
TDS:Upgrade(35, 39, 1, 45)--glad 15 upgrade 5
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 1
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 2
TDS:Upgrade(36, 39, 1, 43)--glad 16 upgrade 3
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 4
TDS:Upgrade(36, 39, 1, 42)--glad 16 upgrade 5
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 1
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 2
TDS:Upgrade(37, 39, 1, 41)--glad 17 upgrade 3
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 4
TDS:Upgrade(37, 39, 1, 40)--glad 17 upgrade 5
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 1
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 2
TDS:Upgrade(38, 39, 1, 39)--glad 18 upgrade 3
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 4
TDS:Upgrade(38, 39, 1, 38)--glad 18 upgrade 5
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 1
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 2 Gradymeister#3270
TDS:Upgrade(39, 39, 1, 37)--glad 19 upgrade 3
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 4
TDS:Upgrade(39, 39, 1, 36)--glad 19 upgrade 5
TDS:Sell(3, 39, 1, 30)
TDS:Place('Gladiator', 24.272310256958008, -0.3959379196166992, 24.25141716003418, 39, 1, 29)--41-
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 1
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 2
TDS:Upgrade(41, 39, 1, 28)--glad 20 upgrade 3
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 4
TDS:Upgrade(41, 39, 1, 27)--glad 20 upgrade 5
TDS:Sell(5, 39, 1, 25)
TDS:Place('Gladiator', 17.475872039794922, -0.3961200714111328, 18.07836151123047, 39, 1, 24)--42-
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 1
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 2
TDS:Upgrade(42, 39, 1, 23)--glad 21 upgrade 3
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 4
TDS:Upgrade(42, 39, 1, 22)--glad 21 upgrade 5 Gradymeister#3270
TDS:Skip(39, 1, 20)
TDS:Sell(8, 39, 0, 5)
TDS:Place('Gladiator', 19.53998565673828, -0.3961191177368164, 18.091779708862305, 39, 0, 4)--43-
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 1
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 2
TDS:Upgrade(43, 39, 0, 3)--glad 21 upgrade 3
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 4
TDS:Upgrade(43, 39, 0, 2)--glad 21 upgrade 5
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 59)
TDS:Sell(12, 40, 99, 58)
TDS:Sell(13, 40, 99, 58)
TDS:Place('Gladiator', 21.551931381225586, -0.3961191177368164, 18.07213592529297, 40, 99, 58)--44-
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 1
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 2
TDS:Upgrade(44, 40, 99, 57)--glad 22 upgrade 3
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 4
TDS:Upgrade(44, 40, 99, 56)--glad 22 upgrade 5
TDS:Place('Gladiator', 23.597795486450195, -0.3961191177368164, 18.08414077758789, 40, 99, 56)--45-
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 1
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 2
TDS:Upgrade(45, 40, 99, 55)--glad 23 upgrade 3 Gradymeister#3270
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 4
TDS:Upgrade(45, 40, 99, 54)--glad 23 upgrade 5
TDS:Place('Gladiator', 26.382431030273438, -0.3959336280822754, 24.370193481445312, 40, 99, 53)--46-
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 1
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 2
TDS:Upgrade(46, 40, 99, 52)--glad 25 upgrade 3
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 4
TDS:Upgrade(46, 40, 99, 51)--glad 25 upgrade 5
TDS:Place('Gladiator', 28.47382354736328, -0.3959336280822754, 24.38393783569336, 40, 99, 50)--47-
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 1
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 2
TDS:Upgrade(47, 40, 99, 49)--glad 26 upgrade 3
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 4
TDS:Upgrade(47, 40, 99, 48)--glad 26 upgrade 5
TDS:Place('Gladiator', 25.683692932128906, -0.3961186408996582, 18.10126495361328, 40, 99, 47)--48-
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 1
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 2
TDS:Upgrade(48, 40, 99, 46)--glad 27 upgrade 3 Gradymeister#3270
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 4
TDS:Upgrade(48, 40, 99, 45)--glad 27 upgrade 5
TDS:Place('Gladiator', 27.723207473754883, -0.3961176872253418, 18.147579193115234, 40, 99, 44)--49-
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 1
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 2
TDS:Upgrade(49, 40, 99, 43)--glad 28 upgrade 3
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 4
TDS:Upgrade(49, 40, 99, 42)--glad 28 upgrade 5
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 3
TDS:Upgrade(16, 40, 99, 41)--Comm 2 Upgrade 4
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 3 Gradymeister#3270
TDS:Upgrade(19, 40, 99, 40)--Comm 3 Upgrade 4
TDS:Ability(23, "Warrior's Call", 40, 99, 37)
TDS:Ability(30, "Warrior's Call", 40, 99, 37)
TDS:Ability(29, "Warrior's Call", 40, 99, 37)
TDS:Ability(31, "Warrior's Call", 40, 99, 37)
TDS:Ability(32, "Warrior's Call", 40, 99, 36)
TDS:Ability(33, "Warrior's Call", 40, 99, 36)
TDS:Ability(6, "Warrior's Call", 40, 99, 36)
TDS:Ability(4, "Warrior's Call", 40, 99, 36)
TDS:Ability(2, "Warrior's Call", 40, 99, 28)
TDS:Ability(34, "Warrior's Call", 40, 99, 28)
TDS:Ability(20, "Warrior's Call", 40, 99, 28)
TDS:Ability(35, "Warrior's Call", 40, 99, 28)
TDS:Ability(17, "Warrior's Call", 40, 99, 27)
TDS:Ability(18, "Warrior's Call", 40, 99, 27)
TDS:Ability(1, "Warrior's Call", 40, 99, 27)
TDS:Ability(36, "Warrior's Call", 40, 99, 27)
TDS:Ability(37, "Warrior's Call", 40, 99, 23)
TDS:Ability(38, "Warrior's Call", 40, 99, 23)
TDS:Ability(39, "Warrior's Call", 40, 99, 23)
TDS:Ability(41, "Warrior's Call", 40, 99, 23)
TDS:Ability(42, "Warrior's Call", 40, 99, 22)
TDS:Ability(43, "Warrior's Call", 40, 99, 22)
TDS:Ability(44, "Warrior's Call", 40, 99, 22)
TDS:Ability(45, "Warrior's Call", 40, 99, 22)
TDS:Ability(46, "Warrior's Call", 40, 99, 21)
TDS:Ability(47, "Warrior's Call", 40, 99, 21)
TDS:Ability(48, "Warrior's Call", 40, 99, 21)
TDS:Ability(49, "Warrior's Call", 40, 99, 21)
TDS:Sell(1, 40, 99, 10)--glad 1 - 9
TDS:Sell(2, 40, 99, 10)--glad
TDS:Sell(4, 40, 99, 9)--glad
TDS:Sell(6, 40, 99, 9)--glad
TDS:Sell(17, 40, 99, 8)--glad
TDS:Sell(18, 40, 99, 8)--glad
TDS:Sell(29, 40, 99, 7)--glad
TDS:Sell(20, 40, 99, 7)--glad
TDS:Sell(23, 40, 99, 7)--glad
TDS:Place('Gladiator', -4.305444717407227, -0.3953371047973633, 10.071374893188477, 40, 99, 6)--50-
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 1
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 2
TDS:Upgrade(50, 40, 99, 5)--glad 29 upgrade 3
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 4 Gradymeister#3270
TDS:Upgrade(50, 40, 99, 4)--glad 29 upgrade 5
TDS:Place('Gladiator', -6.35604190826416, -0.3953371047973633, 10.0372314453125, 40, 99, 3)--51-
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 1
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 2
TDS:Upgrade(51, 40, 99, 2)--glad 30 upgrade 3
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 4
TDS:Upgrade(51, 40, 99, 1)--glad 30 upgrade 5
TDS:Place('Gladiator', -8.37790298461914, -0.3953371047973633, 10.099218368530273, 40, 98, 59)--52-
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 1
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 2
TDS:Upgrade(52, 40, 98, 58)--glad 31 upgrade 3
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 4
TDS:Upgrade(52, 40, 98, 57)--glad 31 upgrade 5
TDS:Place('Gladiator', -10.457801818847656, -0.3953366279602051, 10.034470558166504, 40, 98, 56)--53-
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 1
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 2
TDS:Upgrade(53, 40, 98, 55)--glad 32 upgrade 3
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 4
TDS:Upgrade(53, 40, 98, 54)--glad 32 upgrade 5
TDS:Place('Gladiator', -12.526202201843262, -0.3953371047973633, 10.0904541015625, 40, 98, 53)--54-
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 1
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 2 Gradymeister#3270
TDS:Upgrade(54, 40, 98, 52)--glad 33 upgrade 3
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 4
TDS:Upgrade(54, 40, 98, 51)--glad 33 upgrade 5
TDS:Place('Gladiator', -4.321861743927002, -0.3959517478942871, 7.973137378692627, 40, 98, 50)--55-
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 1
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 2
TDS:Upgrade(55, 40, 98, 49)--glad 34 upgrade 3
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 4
TDS:Upgrade(55, 40, 98, 48)--glad 34 upgrade 5
TDS:Place('Gladiator', -4.328806400299072, -0.3959507942199707, 5.890992164611816, 40, 98, 47)--56-
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 1 Gradymeister#3270
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 2
TDS:Upgrade(56, 40, 98, 46)--glad 35 upgrade 3
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 4
TDS:Upgrade(56, 40, 98, 45)--glad 35 upgrade 5
TDS:Place('Gladiator', -6.3635101318359375, -0.39585018157958984, 7.940941333770752, 40, 98, 44)--57-
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 1
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 2
TDS:Upgrade(57, 40, 98, 43)--glad 36 upgrade 3
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 4
TDS:Upgrade(57, 40, 98, 42)--glad 36 upgrade 5
TDS:Sell(21, 40, 98, 14)--sell accel 1
TDS:Sell(40, 40, 98, 14)--sell accel 8
TDS:Sell(28, 40, 98, 14)--sell accel 7
TDS:Sell(26, 40, 98, 13)--sell accel 5
TDS:Sell(25, 40, 98, 13)--sell accel 4
TDS:Place('Accelerator', -9.726542472839355, -0.39568281173706055, -3.478785514831543, 40, 98, 12)--58-
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 1
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 2
TDS:Upgrade(58, 40, 98, 11)--accelerator 9 upgrade 3 Gradymeister#3270
TDS:Upgrade(58, 40, 98, 10)--accelerator 9 upgrade 4
TDS:Upgrade(58, 40, 98, 10)--accelerator 9 upgrade 5
TDS:Place('Accelerator', -9.994803428649902, -0.39566993713378906, -6.532845497131348, 40, 98, 9)--59-
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 1
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 2
TDS:Upgrade(59, 40, 98, 8)--accelerator 10 upgrade 3
TDS:Upgrade(59, 40, 98, 7)--accelerator 10 upgrade 4
TDS:Upgrade(59, 40, 98, 7)--accelerator 10 upgrade 5
TDS:Ability(53, "Warrior's Call", 40, 98, 6)
TDS:Ability(57, "Warrior's Call", 40, 98, 6)
TDS:Ability(52, "Warrior's Call", 40, 98, 6)
TDS:Ability(56, "Warrior's Call", 40, 98, 6)
TDS:Ability(51, "Warrior's Call", 40, 98, 5)
TDS:Ability(55, "Warrior's Call", 40, 98, 5)
TDS:Ability(50, "Warrior's Call", 40, 98, 5)
TDS:Ability(54, "Warrior's Call", 40, 98, 5)
TDS:Place('Accelerator', -13.016914367675781, -0.3955197334289551, -3.376614570617676, 40, 98, 4)--60-
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 1
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 2
TDS:Upgrade(60, 40, 98, 3)--accelerator 11 upgrade 3
TDS:Upgrade(60, 40, 98, 2)--accelerator 11 upgrade 4
TDS:Upgrade(60, 40, 98, 2)--accelerator 11 upgrade 5
TDS:Place('Accelerator', -13.070459365844727, -0.39551687240600586, -6.454448699951172, 40, 98, 1)--61-
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 1
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 2
TDS:Upgrade(61, 40, 97, 59)--accelerator 12 upgrade 3
TDS:Upgrade(61, 40, 97, 58)--accelerator 12 upgrade 4
TDS:Upgrade(61, 40, 97, 58)--accelerator 12 upgrade 5
TDS:Place('Accelerator', -15.796775817871094, -0.3953819274902344, 0.020490646362304688, 40, 97, 57)--62-
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 1
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 2
TDS:Upgrade(62, 40, 98, 56)--accelerator 13 upgrade 3 Gradymeister#3270
TDS:Upgrade(62, 40, 98, 55)--accelerator 13 upgrade 4
TDS:Upgrade(62, 40, 98, 55)--accelerator 13 upgrade 5
    end
end