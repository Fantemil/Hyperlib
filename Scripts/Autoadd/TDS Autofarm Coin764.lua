repeat wait() until game:IsLoaded()

getgenv().IsMultiStrat = true

getgenv().Maps = {["Crystal Cave"] = {"Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator"},["Winter Bridges"] = {"Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator"},["Farm Lands"] = {"Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator"}}
maplist = {"Crystal Cave","Winter Bridges","Farm Lands"}

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

--> 2. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
 
Strat by:  		Gradymeister#3270
MultiStrat by:  		Gradymeister#3270 :>
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator") 
TDS:Map("Crystal Cave", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Shotgunner', -31.101516723632812, 8.298919677734375, 27.391948699951172, 0, 0, 20)--1
TDS:Upgrade(1, 0, 0, 19)--shotgun 1 upgrade 1
TDS:Target(1, 0, 0, 18)--shotgun 1 last
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch Gradymeister#3270
TDS:Target(1, 1, 0, 57)--shotgun 1 first
TDS:Target(1, 1, 0, 5)--shotgun 1 last
TDS:Target(1, 2, 0, 58)--shotgun 1 switch
TDS:Target(1, 2, 0, 58)--shotgun 1 switch 
TDS:Target(1, 2, 0, 58)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 first
TDS:Skip(1, 0, 39)
TDS:Skip(1, 0, 38)
TDS:Place('Shotgunner', -34.176204681396484, 8.298920631408691, 27.365589141845703, 2, 0, 5)--2
TDS:Upgrade(2, 2, 0, 4)--shotgun 2 upgrade 1
TDS:Skip(2, 0, 39)
TDS:Skip(2, 0, 38)
TDS:Place('Farm', -10.153275489807129, 8.298921585083008, 31.54995346069336, 3, 0, 5)--3 farm 1
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1 Gradymeister#3270
TDS:Place('Shotgunner', -35.957122802734375, 8.298919677734375, 22.224950790405273, 4, 0, 5)--4
TDS:Upgrade(3, 5, 0, 5)--farm 1 upgrade 2
TDS:Place('Farm',  -10.164332389831543, 8.298920631408691, 28.508567810058594, 5, 0, 4)--5 farm 2-
TDS:Upgrade(4, 6, 0, 1)--shotgun 3 upgrade 1
TDS:Upgrade(5, 6, 0, 5)--farm 2 upgrade 1
TDS:Place('Shotgunner', -37.20415496826172, 8.298920631408691, 27.42149543762207, 6, 0, 4)--6
TDS:Upgrade(6, 7, 0, 1)--shotgun 4 upgrade 1
TDS:Upgrade(3, 7, 0, 5)--farm 1 upgrade 3 
TDS:Upgrade(5, 8, 0, 1)--farm 2 upgrade 2
TDS:Upgrade(5, 8, 0, 5)--farm 2 upgrade 3
TDS:Place('Farm', -13.369025230407715, 8.298919677734375, 25.69886016845703, 9, 0, 1)--7 farm 3
TDS:Upgrade(7, 9, 0, 59)--farm 3 upgrade 1
TDS:Place('Farm', -10.132009506225586, 8.298921585083008, 34.5906982421875, 9, 0, 5)--8 farm 4
TDS:Upgrade(1, 10, 0, 1)--shotgun 1 upgrade 2
TDS:Upgrade(2, 10, 0, 55)--shotgun 2 upgrade 2
TDS:Upgrade(7, 10, 0, 5)--farm 3 upgrade 2 
TDS:Upgrade(8, 10, 0, 4)--farm 4 upgrade 1
TDS:Place('Farm', -10.022974014282227, 8.298921585083008, 37.696388244628906, 10, 0, 3)--9 farm 5
TDS:Upgrade(7, 11, 0, 57)--farm 3 upgrade 3
TDS:Upgrade(8, 11, 0, 5)--farm 4 upgrade 2
TDS:Upgrade(4, 12, 0, 1)--shotgun 3 upgrade 2
TDS:Upgrade(6, 12, 0, 1)--shotgun 4 upgrade 2
TDS:Target(1, 12, 0, 59)--shotgun 1 switch last 
TDS:Target(6, 12, 0, 59)--shotgun 4 switch last
TDS:Upgrade(8, 12, 0, 5)--farm 4 upgrade 3
TDS:Upgrade(9, 12, 0, 4)--farm 5 upgrade 1 
TDS:Upgrade(9, 12, 0, 3)--farm 5 upgrade 2
TDS:Upgrade(9, 13, 0, 56)--farm 5 upgrade 3
TDS:Place('Farm', -13.253644943237305, 8.298921585083008, 36.790771484375, 13, 0, 5)--10 farm 6
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 2
TDS:Upgrade(10, 13, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', -13.037023544311523, 8.298922538757324, 39.905521392822266, 13, 0, 3)--11 farm 7
TDS:Upgrade(11, 13, 0, 2)--farm 7 upgrade 1
TDS:Place('Shotgunner', -32.84557342529297, 8.298919677734375, 22.207765579223633, 14, 0, 1)--12
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 1
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 2 
TDS:Place('Shotgunner', -29.70936393737793, 8.298918724060059, 22.244487762451172, 14, 0, 58)--13
TDS:Upgrade(13, 14, 0, 57)--shotgun 6 upgrade 1--sell?
TDS:Upgrade(11, 14, 0, 5)--farm 7 upgrade 2
TDS:Upgrade(11, 14, 0, 4)--farm 7 upgrade 3
TDS:Place('Farm', -15.536724090576172, 8.298920631408691, 28.791780471801758, 15, 0, 1)--14 farm 8
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 1
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 2
TDS:Upgrade(14, 15, 0, 58)--farm 8 upgrade 3 
TDS:Place('DJ Booth', -21.382577896118164, 8.298920631408691, 28.62108612060547, 15, 0, 5)--15
TDS:Upgrade(15, 15, 0, 4)--DJ 1
TDS:Upgrade(15, 15, 0, 3)--DJ 2
TDS:Place('Commander', -25.87053680419922, 8.298919677734375, 26.63311004638672, 16, 0, 1)--16
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 1
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 2 
TDS:Upgrade(15, 16, 0, 5)--DJ 3
TDS:Place('Shotgunner', -32.66706848144531, 8.298919677734375, 30.415502548217773, 17, 0, 1)--17
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 1
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 2
TDS:Place('Shotgunner', -25.965999603271484, 8.298919677734375, 23.4705810546875, 17, 0, 5)--18
TDS:Upgrade(18, 17, 0, 4)--shotgun 8 upgrade 1
TDS:Upgrade(3, 17, 0, 3)--farm 1 upgrade 4 
TDS:Ability(16, "Call Of Arms", 18, 0, 56)
TDS:Upgrade(3, 18, 0, 5)--farm 1 upgrade 5
TDS:Upgrade(5, 18, 0, 4)--farm 2 upgrade 4
TDS:Place('Commander', -22.77182960510254, 8.298919677734375, 25.512409210205078, 19, 0, 1)--19
TDS:Upgrade(19, 19, 0, 59)--comm 2 upgrade 1
TDS:Upgrade(19, 19, 0, 58)--comm 2 upgrade 2
TDS:Ability(19, "Call Of Arms", 19, 0, 54)
TDS:Upgrade(1, 19, 0, 50)--shotgun 1 upgrade 3
TDS:Ability(16, "Call Of Arms", 20, 0, 1)
TDS:Upgrade(2, 20, 0, 59)--shotgun 2 upgrade 3
TDS:Upgrade(4, 20, 0, 59)--shotgun 3 upgrade 3
TDS:Upgrade(7, 20, 0, 5)--farm 3 upgrade 4
TDS:Place('Commander', -24.463783264160156, 8.298920631408691, 29.673118591308594, 21, 0, 1)--20
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 1
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 2
TDS:AutoChain(20, 19, 16, 21, 0, 59)
TDS:Upgrade(1, 22, 0, 1)--shotgun 1 upgrade 4
TDS:Upgrade(6, 22, 0, 55)--shotgun 4 upgrade 3
TDS:Upgrade(2, 23, 0, 1)--shotgun 2 upgrade 4
TDS:Upgrade(5, 23, 0, 5)--farm 2 upgrade 5 
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 2
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 3
TDS:Upgrade(7, 24, 0, 5)--farm 3 upgrade 5
TDS:Upgrade(8, 25, 0, 1)--farm 4 upgrade 4
TDS:Upgrade(8, 25, 0, 59)--farm 4 upgrade 5
TDS:Upgrade(9, 25, 0, 5)--farm 5 upgrade 4
TDS:Upgrade(10, 25, 0, 4)--farm 6 upgrade 4
TDS:Upgrade(9, 26, 0, 5)--farm 5 upgrade 5
TDS:Upgrade(11, 26, 0, 4)--farm 7 upgrade 4 
TDS:Upgrade(11, 26, 0, 3)--farm 7 upgrade 5
TDS:Upgrade(10, 27, 0, 1)--farm 6 upgrade 5 
TDS:Upgrade(14, 27, 0, 59)--farm 8 upgrade 4
TDS:Upgrade(14, 27, 0, 58)--farm 8 upgrade 5
TDS:Upgrade(4, 28, 0, 1)--shotgun 3 upgrade 4
TDS:Upgrade(12, 28, 0, 59)--shotgun 5 upgrade 3
TDS:Place('Shotgunner', -26.667980194091797, 8.298728942871094, 20.45177459716797, 28, 0, 55)--21
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 1
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 2
TDS:Upgrade(21, 28, 0, 53)--shotgun 9 upgrade 3
TDS:Upgrade(15, 28, 0, 5)--DJ 4
TDS:Upgrade(6, 29, 0, 1)--shotgun 4 upgrade 4
TDS:Upgrade(16, 29, 0, 56)--Comm 1 Upgrade 3
TDS:Place('Accelerator', -25.680858612060547, 8.29892349243164, 44.218406677246094, 29, 0, 5)--22
TDS:Upgrade(22, 29, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(22, 29, 0, 3)--Accel 1 Upgrade 2 
TDS:Upgrade(22, 30, 1, 18)--Accel 1 Upgrade 3
TDS:Upgrade(22, 30, 1, 17)--Accel 1 Upgrade 4
TDS:Upgrade(22, 31, 0, 1)--Accel 1 Upgrade 5
TDS:Upgrade(15, 31, 0, 5)--DJ 5
TDS:Place('Accelerator', -22.578327178955078, 8.29892349243164, 44.24796676635742, 32, 0, 1)--23
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 1
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 2
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 3
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 4
TDS:Upgrade(13, 32, 0, 5)--shotgun 6 upgrade 2 
TDS:Upgrade(13, 32, 0, 4)--shotgun 6 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 4
TDS:Upgrade(16, 33, 1, 19)--Comm 1 Upgrade 4
TDS:Upgrade(12, 33, 1, 17)--shotgun 5 upgrade 4 
TDS:Upgrade(23, 34, 0, 1)--Accel 2 Upgrade 5
TDS:Place('Accelerator', -19.476078033447266, 8.29892349243164, 44.265132904052734, 34, 0, 5)--24
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 1
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 2
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 3
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 4 
TDS:Upgrade(24, 35, 0, 1)--Accel 3 Upgrade 5
TDS:Place('Accelerator', -18.237903594970703, 8.298922538757324, 41.152427673339844, 35, 0, 5)--25
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 1
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 2
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 3
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 4 
TDS:Upgrade(25, 37, 0, 1)--Accel 4 Upgrade 5
TDS:Place('Accelerator', -21.307729721069336, 8.298922538757324, 41.1369514465332, 37, 1, 17)--26
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 1
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 2 
TDS:Upgrade(26, 37, 1, 15)--Accel 5 Upgrade 3
TDS:Skip(37, 0, 53)
TDS:Skip(37, 0, 52)
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 4
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 5 
TDS:Place('Accelerator', -24.468948364257812, 8.29892349243164, 41.1252326965332, 38, 1, 16)--27
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 1
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 2
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 3
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 4 
TDS:Skip(38, 0, 53)
TDS:Skip(38, 0, 52)
TDS:Upgrade(27, 39, 0, 1)--Accel 6 Upgrade 5
TDS:Place('Accelerator', -31.021339416503906, 8.29892349243164, 45.745697021484375, 39, 1, 14)--28
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 1
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 2
TDS:Upgrade(28, 39, 1, 12)--Accel 7 Upgrade 3 
TDS:Upgrade(28, 39, 0, 5)--Accel 7 Upgrade 4
TDS:Upgrade(28, 39, 0, 4)--Accel 7 Upgrade 5
TDS:Sell(3, 40, 0, 1)
TDS:Sell(5, 40, 0, 1)
TDS:Sell(7, 40, 0, 1)
TDS:Sell(8, 40, 99, 59)
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 58)
TDS:Sell(14, 40, 99, 58)
TDS:Place('Accelerator', -34.132476806640625, 8.29892349243164, 43.59104537963867, 40, 99, 57)--29
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 1
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 2 
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 3
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 4
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 5
TDS:Place('Shotgunner', -31.024335861206055, 8.298921585083008, 33.4571418762207, 40, 99, 50)--30
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 1
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 2
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 3 
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 4
TDS:Place('Shotgunner', -31.005762100219727, 8.298922538757324, 36.51898956298828, 40, 99, 45)--31
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 1
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 2 
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 3
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 4
TDS:Place('Shotgunner', -25.841064453125, 8.298921585083008, 32.7651252746582, 40, 99, 41)--32
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 1
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 2
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 3 
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 4
    end
    if map == maplist[2] then
print([[

--> 2. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
 
Strat by:  		
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator") 
TDS:Map("Winter Bridges", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Shotgunner', 9.08526611328125, 0.038565635681152344, -1.9693243503570557, 0, 0, 20)--1
TDS:Upgrade(1, 0, 0, 19)--shotgun 1 upgrade 1
TDS:Target(1, 0, 0, 18)--shotgun 1 last
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch 
TDS:Target(1, 1, 0, 57)--shotgun 1 first
TDS:Target(1, 1, 0, 5)--shotgun 1 last
TDS:Target(1, 2, 0, 58)--shotgun 1 switch
TDS:Target(1, 2, 0, 58)--shotgun 1 switch Gradymeister#3270
TDS:Target(1, 2, 0, 58)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 switch
TDS:Target(1, 2, 0, 57)--shotgun 1 first
TDS:Skip(1, 0, 39)
TDS:Skip(1, 0, 38)
TDS:Place('Shotgunner', 12.551567077636719, 0.038216352462768555, 4.203354358673096, 2, 0, 5)--2
TDS:Upgrade(2, 2, 0, 4)--shotgun 2 upgrade 1
TDS:Skip(2, 0, 39)
TDS:Skip(2, 0, 38)
TDS:Place('Farm', 9.927719116210938, -0.3684351444244385, 14.007251739501953, 3, 0, 5)--3 farm 1
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1 
TDS:Place('Shotgunner', 12.176923751831055, 0.038559675216674805, -1.9634110927581787, 4, 0, 5)--4
TDS:Upgrade(3, 5, 0, 5)--farm 1 upgrade 2
TDS:Place('Farm', 13.029647827148438, -0.32106828689575195, 11.784621238708496, 5, 0, 4)--5 farm 2
TDS:Upgrade(4, 6, 0, 1)--shotgun 3 upgrade 1
TDS:Upgrade(5, 6, 0, 5)--farm 2 upgrade 1
TDS:Place('Shotgunner', 9.500640869140625, 0.038225412368774414, 4.133841514587402, 6, 0, 4)--6
TDS:Upgrade(6, 7, 0, 1)--shotgun 4 upgrade 1
TDS:Upgrade(3, 7, 0, 5)--farm 1 upgrade 3 
TDS:Upgrade(5, 8, 0, 1)--farm 2 upgrade 2
TDS:Upgrade(5, 8, 0, 5)--farm 2 upgrade 3
TDS:Place('Farm', 16.18441390991211, -0.39504122734069824, 8.679692268371582, 9, 0, 1)--7 farm 3
TDS:Upgrade(7, 9, 0, 59)--farm 3 upgrade 1
TDS:Place('Farm', -2.2368555068969727, -0.47086620330810547, 18.19068717956543, 9, 0, 5)--8 farm 4
TDS:Upgrade(1, 10, 0, 1)--shotgun 1 upgrade 2
TDS:Upgrade(2, 10, 0, 55)--shotgun 2 upgrade 2
TDS:Upgrade(7, 10, 0, 5)--farm 3 upgrade 2 
TDS:Upgrade(8, 10, 0, 4)--farm 4 upgrade 1
TDS:Place('Farm', -4.837701320648193, -0.2106633186340332, 17.948471069335938, 10, 0, 3)--9 farm 5
TDS:Upgrade(7, 11, 0, 57)--farm 3 upgrade 3
TDS:Upgrade(8, 11, 0, 5)--farm 4 upgrade 2
TDS:Upgrade(4, 12, 0, 1)--shotgun 3 upgrade 2
TDS:Upgrade(6, 12, 0, 1)--shotgun 4 upgrade 2
TDS:Target(1, 12, 0, 59)--shotgun 1 switch last 
TDS:Target(6, 12, 0, 59)--shotgun 4 switch last
TDS:Upgrade(8, 12, 0, 5)--farm 4 upgrade 3
TDS:Upgrade(9, 12, 0, 4)--farm 5 upgrade 1 
TDS:Upgrade(9, 12, 0, 3)--farm 5 upgrade 2
TDS:Upgrade(9, 13, 0, 56)--farm 5 upgrade 3
TDS:Place('Farm', -3.7286014556884766, 0.03802943229675293, 15.766878128051758, 13, 0, 5)--10 farm 6
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 2
TDS:Upgrade(10, 13, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', -5.033780574798584, 0.03841280937194824, 12.68244457244873, 13, 0, 3)--11 farm 7
TDS:Upgrade(11, 13, 0, 2)--farm 7 upgrade 1
TDS:Place('Shotgunner', 6.46933126449585, 0.03822898864746094, 4.139057159423828, 14, 0, 1)--12
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 1
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 2 
TDS:Place('Shotgunner', 15.57537841796875, 0.03813576698303223, 5.561266899108887, 14, 0, 58)--13
TDS:Upgrade(13, 14, 0, 57)--shotgun 6 upgrade 1--sell?
TDS:Upgrade(11, 14, 0, 5)--farm 7 upgrade 2
TDS:Upgrade(11, 14, 0, 4)--farm 7 upgrade 3
TDS:Place('Farm', -5.13739538192749, 0.03795146942138672, 9.555166244506836, 15, 0, 1)--14 farm 8
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 1
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 2
TDS:Upgrade(14, 15, 0, 58)--farm 8 upgrade 3 
TDS:Place('DJ Booth', 1.5175694227218628, 0.03823208808898926, 4.0870747566223145, 15, 0, 5)--15
TDS:Upgrade(15, 15, 0, 4)--DJ 1
TDS:Upgrade(15, 15, 0, 3)--DJ 2
TDS:Place('Commander', 1.4025769233703613, 0.03805685043334961, 7.160915374755859, 16, 0, 1)--16
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 1
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 2 
TDS:Upgrade(15, 16, 0, 5)--DJ 3
TDS:Place('Shotgunner', 12.459444046020508, 0.03804588317871094, 7.265793800354004, 17, 0, 1)--17
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 1
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 2
TDS:Place('Shotgunner', 9.373292922973633, 0.038056373596191406, 7.163433074951172, 17, 0, 5)--18
TDS:Upgrade(18, 17, 0, 4)--shotgun 8 upgrade 1
TDS:Upgrade(3, 17, 0, 3)--farm 1 upgrade 4 
TDS:Ability(16, "Call Of Arms", 18, 0, 56)
TDS:Upgrade(3, 18, 0, 5)--farm 1 upgrade 5
TDS:Upgrade(5, 18, 0, 4)--farm 2 upgrade 4
TDS:Place('Commander', 2.8342056274414062, 0.03840923309326172, 0.9844002723693848, 19, 0, 1)--19
TDS:Upgrade(19, 19, 0, 59)--comm 2 upgrade 1
TDS:Upgrade(19, 19, 0, 58)--comm 2 upgrade 2
TDS:Ability(19, "Call Of Arms", 19, 0, 54)
TDS:Upgrade(1, 19, 0, 50)--shotgun 1 upgrade 3
TDS:Ability(16, "Call Of Arms", 20, 0, 1)
TDS:Upgrade(2, 20, 0, 59)--shotgun 2 upgrade 3
TDS:Upgrade(4, 20, 0, 59)--shotgun 3 upgrade 3
TDS:Upgrade(7, 20, 0, 5)--farm 3 upgrade 4
TDS:Place('Commander', 2.9778244495391846, 0.03858613967895508, -2.1590607166290283, 21, 0, 1)--20
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 1
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 2
TDS:AutoChain(20, 19, 16, 21, 0, 59)
TDS:Upgrade(1, 22, 0, 1)--shotgun 1 upgrade 4
TDS:Upgrade(6, 22, 0, 55)--shotgun 4 upgrade 3
TDS:Upgrade(2, 23, 0, 1)--shotgun 2 upgrade 4
TDS:Upgrade(5, 23, 0, 5)--farm 2 upgrade 5 
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 2
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 3
TDS:Upgrade(7, 24, 0, 5)--farm 3 upgrade 5
TDS:Upgrade(8, 25, 0, 1)--farm 4 upgrade 4
TDS:Upgrade(8, 25, 0, 59)--farm 4 upgrade 5
TDS:Upgrade(9, 25, 0, 5)--farm 5 upgrade 4
TDS:Upgrade(10, 25, 0, 4)--farm 6 upgrade 4
TDS:Upgrade(9, 26, 0, 5)--farm 5 upgrade 5
TDS:Upgrade(11, 26, 0, 4)--farm 7 upgrade 4 
TDS:Upgrade(11, 26, 0, 3)--farm 7 upgrade 5
TDS:Upgrade(10, 27, 0, 1)--farm 6 upgrade 5 
TDS:Upgrade(14, 27, 0, 59)--farm 8 upgrade 4
TDS:Upgrade(14, 27, 0, 58)--farm 8 upgrade 5
TDS:Upgrade(4, 28, 0, 1)--shotgun 3 upgrade 4
TDS:Upgrade(12, 28, 0, 59)--shotgun 5 upgrade 3
TDS:Place('Shotgunner', 6.273421764373779, 0.038051605224609375, 7.2470703125, 28, 0, 55)--21
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 1
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 2
TDS:Upgrade(21, 28, 0, 53)--shotgun 9 upgrade 3
TDS:Upgrade(15, 28, 0, 5)--DJ 4
TDS:Upgrade(6, 29, 0, 1)--shotgun 4 upgrade 4
TDS:Upgrade(16, 29, 0, 56)--Comm 1 Upgrade 3
TDS:Place('Accelerator', -11.849906921386719, 0.038598060607910156, -2.662234306335449, 29, 0, 5)--22
TDS:Upgrade(22, 29, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(22, 29, 0, 3)--Accel 1 Upgrade 2 
TDS:Upgrade(22, 30, 1, 18)--Accel 1 Upgrade 3
TDS:Upgrade(22, 30, 1, 17)--Accel 1 Upgrade 4
TDS:Upgrade(22, 31, 0, 1)--Accel 1 Upgrade 5
TDS:Upgrade(15, 31, 0, 5)--DJ 5
TDS:Place('Accelerator', -11.910930633544922, 0.038437604904174805, 0.36959028244018555, 32, 0, 1)--23
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 1
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 2
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 3
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 4
TDS:Upgrade(13, 32, 0, 5)--shotgun 6 upgrade 2 
TDS:Upgrade(13, 32, 0, 4)--shotgun 6 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 4
TDS:Upgrade(16, 33, 1, 19)--Comm 1 Upgrade 4
TDS:Upgrade(12, 33, 1, 17)--shotgun 5 upgrade 4 
TDS:Upgrade(23, 34, 0, 1)--Accel 2 Upgrade 5
TDS:Place('Accelerator', -12.044775009155273, 0.038275957107543945, 3.4356608390808105, 34, 0, 5)--24
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 1
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 2
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 3
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 4 
TDS:Upgrade(24, 35, 0, 1)--Accel 3 Upgrade 5
TDS:Place('Accelerator', -12.000909805297852, 0.03811526298522949, 6.470521926879883, 35, 0, 5)--25
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 1
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 2
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 3
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 4 
TDS:Upgrade(25, 37, 0, 1)--Accel 4 Upgrade 5
TDS:Place('Accelerator', -11.936992645263672, 0.03795194625854492, 9.53784465789795, 37, 1, 17)--26
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 1
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 2 
TDS:Upgrade(26, 37, 1, 15)--Accel 5 Upgrade 3
TDS:Skip(37, 0, 53)
TDS:Skip(37, 0, 52)
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 4
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 5 
TDS:Place('Accelerator', -12.010107040405273, 0.038282155990600586, 12.578534126281738, 38, 1, 16)--27
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 1
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 2
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 3
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 4 
TDS:Skip(38, 0, 53)
TDS:Skip(38, 0, 52)
TDS:Upgrade(27, 39, 0, 1)--Accel 6 Upgrade 5
TDS:Place('Accelerator', -12.165035247802734, 0.038004159927368164, -5.7115278244018555, 39, 1, 14)--28
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 1
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 2
TDS:Upgrade(28, 39, 1, 12)--Accel 7 Upgrade 3 
TDS:Upgrade(28, 39, 0, 5)--Accel 7 Upgrade 4
TDS:Upgrade(28, 39, 0, 4)--Accel 7 Upgrade 5
TDS:Sell(3, 40, 0, 1)
TDS:Sell(5, 40, 0, 1)
TDS:Sell(7, 40, 0, 1)
TDS:Sell(8, 40, 99, 59)
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 58)
TDS:Sell(14, 40, 99, 58)
TDS:Place('Accelerator', -4.487361907958984, 0.038266897201538086, 13.868791580200195, 40, 99, 57)--29
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 1
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 2 
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 3
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 4
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 5
TDS:Place('Shotgunner', 9.08499526977539, 0.03796839714050293, -5.052402496337891, 40, 99, 50)--30
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 1
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 2
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 3 
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 4
TDS:Place('Shotgunner', -0.08115726709365845, 0.038602352142333984, -2.774325132369995, 40, 99, 45)--31
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 1
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 2 
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 3
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 4
TDS:Place('Shotgunner', -0.24151653051376343, 0.038457632064819336, 0.2859232425689697, 40, 99, 41)--32
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 1
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 2
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 3 
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 4
    end
	if map == maplist[3] then
	print([[

--> 2. Tested with Synapse and didn't get any bugs. If you find any let me know on discord.
 
Strat by:  		
]])
local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))() 
TDS:Loadout("Shotgunner", "DJ Booth", "Commander", "Farm", "Accelerator") 
TDS:Map("Farm Lands", true, "Survival")
TDS:Mode('Normal')
TDS:Place('Shotgunner', 13.83508586883545, -0.3959169387817383, 24.926334381103516, 0, 0, 20)--1
TDS:Upgrade(1, 0, 0, 19)--shotgun 1 upgrade 1
TDS:Target(1, 0, 0, 18)--shotgun 1 last
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 58)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 switch
TDS:Target(1, 1, 0, 57)--shotgun 1 first
TDS:Target(1, 1, 0, 5)--shotgun 1 last
TDS:Target(1, 2, 0, 56)--shotgun 1 switch
TDS:Target(1, 2, 0, 56)--shotgun 1 switch
TDS:Target(1, 2, 0, 56)--shotgun 1 switch
TDS:Target(1, 2, 0, 56)--shotgun 1 switch
TDS:Target(1, 2, 0, 5)--shotgun 1 switch
TDS:Target(1, 2, 0, 54)--shotgun 1 first
TDS:Skip(1, 0, 39)
TDS:Skip(1, 0, 38)
TDS:Place('Shotgunner', 13.86269760131836, -0.3958277702331543, 27.937232971191406, 2, 0, 5)--2
TDS:Upgrade(2, 2, 0, 4)--shotgun 2 upgrade 1
TDS:Skip(2, 0, 39)
TDS:Skip(2, 0, 38)
TDS:Place('Farm', 18.001707077026367, -0.39551401138305664, 5.0722246170043945, 3, 0, 5)--3 farm 1
TDS:Upgrade(3, 3, 0, 4)--farm 1 upgrade 1
TDS:Place('Shotgunner', 7.629072189331055, -0.3958287239074707, 27.919189453125, 4, 0, 5)--4
TDS:Upgrade(3, 5, 0, 5)--farm 1 upgrade 2
TDS:Place('Farm', 18.287023544311523, -0.39553356170654297, 8.319063186645508, 5, 0, 4)--5 farm 2
TDS:Upgrade(4, 6, 0, 1)--shotgun 3 upgrade 1
TDS:Upgrade(5, 6, 0, 5)--farm 2 upgrade 1
TDS:Place('Shotgunner', 7.662303447723389, -0.3959212303161621, 24.800270080566406, 6, 0, 4)--6
TDS:Upgrade(6, 7, 0, 1)--shotgun 4 upgrade 1
TDS:Upgrade(3, 7, 0, 5)--farm 1 upgrade 3
TDS:Upgrade(5, 8, 0, 1)--farm 2 upgrade 2
TDS:Upgrade(5, 8, 0, 5)--farm 2 upgrade 3
TDS:Place('Farm', 17.906578063964844, -0.3955073356628418, 11.4222412109375, 9, 0, 1)--7 farm 3
TDS:Upgrade(7, 9, 0, 59)--farm 3 upgrade 1
TDS:Place('Farm', 21.333860397338867, -0.39574623107910156, 11.859354019165039, 9, 0, 5)--8 farm 4
TDS:Upgrade(1, 10, 0, 1)--shotgun 1 upgrade 2
TDS:Upgrade(2, 10, 0, 55)--shotgun 2 upgrade 2
TDS:Upgrade(7, 10, 0, 5)--farm 3 upgrade 2
TDS:Upgrade(8, 10, 0, 4)--farm 4 upgrade 1
TDS:Place('Farm', 24.583528518676758, -0.39597225189208984, 11.59898853302002, 10, 0, 3)--9 farm 5
TDS:Upgrade(7, 11, 0, 57)--farm 3 upgrade 3
TDS:Upgrade(8, 11, 0, 5)--farm 4 upgrade 2
TDS:Upgrade(4, 12, 0, 1)--shotgun 3 upgrade 2
TDS:Upgrade(6, 12, 0, 1)--shotgun 4 upgrade 2
TDS:Target(1, 12, 0, 59)--shotgun 1 switch last
TDS:Target(6, 12, 0, 59)--shotgun 4 switch last
TDS:Upgrade(8, 12, 0, 5)--farm 4 upgrade 3
TDS:Upgrade(9, 12, 0, 4)--farm 5 upgrade 1
TDS:Upgrade(9, 12, 0, 3)--farm 5 upgrade 2
TDS:Upgrade(9, 13, 0, 56)--farm 5 upgrade 3
TDS:Place('Farm', 27.88498306274414, -0.39620161056518555, 11.810602188110352, 13, 0, 5)--10 farm 6
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 1
TDS:Upgrade(10, 13, 0, 4)--farm 6 upgrade 2
TDS:Upgrade(10, 13, 0, 3)--farm 6 upgrade 3
TDS:Place('Farm', 14.707386016845703, -0.39528512954711914, 11.453453063964844, 13, 0, 3)--11 farm 7
TDS:Upgrade(11, 13, 0, 2)--farm 7 upgrade 1
TDS:Place('Shotgunner', 13.793322563171387, -0.3957357406616211, 31.07854652404785, 14, 0, 1)--12
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 1
TDS:Upgrade(12, 14, 0, 59)--shotgun 5 upgrade 2
TDS:Place('Shotgunner', 7.600584983825684, -0.3957376480102539, 30.99810791015625, 14, 0, 58)--13
TDS:Upgrade(13, 14, 0, 57)--shotgun 6 upgrade 1--sell?
TDS:Upgrade(11, 14, 0, 5)--farm 7 upgrade 2
TDS:Upgrade(11, 14, 0, 4)--farm 7 upgrade 3
TDS:Place('Farm', 11.696805000305176, -0.39507436752319336, 11.500312805175781, 15, 0, 1)--14 farm 8
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 1
TDS:Upgrade(14, 15, 0, 59)--farm 8 upgrade 2
TDS:Upgrade(14, 15, 0, 58)--farm 8 upgrade 3
TDS:Place('DJ Booth', 13.64834213256836, -0.3961176872253418, 18.130657196044922, 15, 0, 5)--15
TDS:Upgrade(15, 15, 0, 4)--DJ 1
TDS:Upgrade(15, 15, 0, 3)--DJ 2
TDS:Place('Commander', 10.530678749084473, -0.3961200714111328, 18.06884002685547, 16, 0, 1)--16------
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 1
TDS:Upgrade(16, 16, 0, 59)--Comm 1 Upgrade 2
TDS:Upgrade(15, 16, 0, 5)--DJ 3
TDS:Place('Shotgunner', 16.93535804748535, -0.39569664001464844, 32.41918182373047, 17, 0, 1)--17
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 1
TDS:Upgrade(17, 17, 0, 59)--shotgun 7 upgrade 2
TDS:Place('Shotgunner', 16.945892333984375, -0.39578771591186523, 29.310068130493164, 17, 0, 5)--18
TDS:Upgrade(18, 17, 0, 4)--shotgun 8 upgrade 1
TDS:Upgrade(3, 17, 0, 3)--farm 1 upgrade 4
TDS:Ability(16, "Call Of Arms", 18, 0, 56)
TDS:Upgrade(3, 18, 0, 5)--farm 1 upgrade 5
TDS:Upgrade(5, 18, 0, 4)--farm 2 upgrade 4
TDS:Place('Commander', 16.657516479492188, -0.3961191177368164, 18.09326934814453, 19, 0, 1)--19
TDS:Upgrade(19, 19, 0, 59)--comm 2 upgrade 1
TDS:Upgrade(19, 19, 0, 58)--comm 2 upgrade 2
TDS:Ability(19, "Call Of Arms", 19, 0, 54)
TDS:Upgrade(1, 19, 0, 50)--shotgun 1 upgrade 3
TDS:Ability(16, "Call Of Arms", 20, 0, 1)
TDS:Upgrade(2, 20, 0, 59)--shotgun 2 upgrade 3
TDS:Upgrade(4, 20, 0, 59)--shotgun 3 upgrade 3
TDS:Upgrade(7, 20, 0, 5)--farm 3 upgrade 4
TDS:Place('Commander', 19.68813133239746, -0.3961176872253418, 18.14401626586914, 21, 0, 1)--20
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 1
TDS:Upgrade(20, 21, 0, 1)--comm 3 upgrade 2
TDS:AutoChain(20, 19, 16, 21, 0, 59)
TDS:Upgrade(1, 22, 0, 1)--shotgun 1 upgrade 4
TDS:Upgrade(6, 22, 0, 55)--shotgun 4 upgrade 3
TDS:Upgrade(2, 23, 0, 1)--shotgun 2 upgrade 4
TDS:Upgrade(5, 23, 0, 5)--farm 2 upgrade 5
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 2
TDS:Upgrade(18, 24, 0, 1)--shotgun 8 upgrade 3
TDS:Upgrade(7, 24, 0, 5)--farm 3 upgrade 5
TDS:Upgrade(8, 25, 0, 1)--farm 4 upgrade 4
TDS:Upgrade(8, 25, 0, 59)--farm 4 upgrade 5
TDS:Upgrade(9, 25, 0, 5)--farm 5 upgrade 4
TDS:Upgrade(10, 25, 0, 4)--farm 6 upgrade 4
TDS:Upgrade(9, 26, 0, 5)--farm 5 upgrade 5
TDS:Upgrade(11, 26, 0, 4)--farm 7 upgrade 4
TDS:Upgrade(11, 26, 0, 3)--farm 7 upgrade 5
TDS:Upgrade(10, 27, 0, 1)--farm 6 upgrade 5
TDS:Upgrade(14, 27, 0, 59)--farm 8 upgrade 4
TDS:Upgrade(14, 27, 0, 58)--farm 8 upgrade 5
TDS:Upgrade(4, 28, 0, 1)--shotgun 3 upgrade 4
TDS:Upgrade(12, 28, 0, 59)--shotgun 5 upgrade 3
TDS:Place('Shotgunner', 17.076522827148438, -0.395876407623291, 26.292295455932617, 28, 0, 55)--21
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 1
TDS:Upgrade(21, 28, 0, 54)--shotgun 9 upgrade 2
TDS:Upgrade(21, 28, 0, 53)--shotgun 9 upgrade 3
TDS:Upgrade(15, 28, 0, 5)--DJ 4
TDS:Upgrade(6, 29, 0, 1)--shotgun 4 upgrade 4
TDS:Upgrade(16, 29, 0, 56)--Comm 1 Upgrade 3
TDS:Place('Accelerator', 24.5113582611084, -0.39622068405151367, 14.645954132080078, 29, 0, 5)--22
TDS:Upgrade(22, 29, 0, 4)--Accel 1 Upgrade 1
TDS:Upgrade(22, 29, 0, 3)--Accel 1 Upgrade 2
TDS:Upgrade(22, 30, 1, 18)--Accel 1 Upgrade 3
TDS:Upgrade(22, 30, 1, 17)--Accel 1 Upgrade 4
TDS:Upgrade(22, 31, 0, 1)--Accel 1 Upgrade 5
TDS:Upgrade(15, 31, 0, 5)--DJ 5
TDS:Place('Accelerator', 27.543493270874023, -0.3962135314941406, 14.902482986450195, 32, 0, 1)--23
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 1
TDS:Upgrade(23, 32, 1, 19)--Accel 2 Upgrade 2
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 3
TDS:Upgrade(23, 32, 1, 18)--Accel 2 Upgrade 4
TDS:Upgrade(13, 32, 0, 5)--shotgun 6 upgrade 2
TDS:Upgrade(13, 32, 0, 4)--shotgun 6 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 3
TDS:Upgrade(17, 33, 0, 1)--shotgun 7 upgrade 4
TDS:Upgrade(16, 33, 1, 19)--Comm 1 Upgrade 4
TDS:Upgrade(12, 33, 1, 17)--shotgun 5 upgrade 4
TDS:Upgrade(23, 34, 0, 1)--Accel 2 Upgrade 5
TDS:Place('Accelerator', 28.213563919067383, -0.39612340927124023, 17.95889663696289, 34, 0, 5)--24
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 1
TDS:Upgrade(24, 34, 0, 4)--Accel 3 Upgrade 2
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 3
TDS:Upgrade(24, 34, 0, 3)--Accel 3 Upgrade 4
TDS:Upgrade(24, 35, 0, 1)--Accel 3 Upgrade 5
TDS:Place('Accelerator', 30.774715423583984, -0.395937442779541, 24.25123405456543, 35, 0, 5)--25
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 1
TDS:Upgrade(25, 36, 0, 1)--Accel 4 Upgrade 2
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 3
TDS:Upgrade(25, 36, 1, 19)--Accel 4 Upgrade 4
TDS:Upgrade(25, 37, 0, 1)--Accel 4 Upgrade 5
TDS:Place('Accelerator', 30.608495712280273, -0.3958249092102051, 28.072452545166016, 37, 1, 17)--26
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 1
TDS:Upgrade(26, 37, 1, 16)--Accel 5 Upgrade 2
TDS:Upgrade(26, 37, 1, 15)--Accel 5 Upgrade 3
TDS:Skip(37, 0, 53)
TDS:Skip(37, 0, 52)
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 4
TDS:Upgrade(26, 38, 0, 1)--Accel 5 Upgrade 5
TDS:Place('Accelerator', 31.328413009643555, -0.3961186408996582, 18.099573135375977, 38, 1, 16)--27
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 1
TDS:Upgrade(27, 38, 1, 15)--Accel 6 Upgrade 2
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 3
TDS:Upgrade(27, 38, 1, 14)--Accel 6 Upgrade 4
TDS:Skip(38, 0, 53)
TDS:Skip(38, 0, 52)
TDS:Upgrade(27, 39, 0, 1)--Accel 6 Upgrade 5
TDS:Place('Accelerator', 30.67957878112793, -0.3962116241455078, 14.955574035644531, 39, 1, 14)--28
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 1
TDS:Upgrade(28, 39, 1, 13)--Accel 7 Upgrade 2
TDS:Upgrade(28, 39, 1, 12)--Accel 7 Upgrade 3
TDS:Upgrade(28, 39, 0, 5)--Accel 7 Upgrade 4
TDS:Upgrade(28, 39, 0, 4)--Accel 7 Upgrade 5
TDS:Sell(3, 40, 0, 1)
TDS:Sell(5, 40, 0, 1)
TDS:Sell(7, 40, 0, 1)
TDS:Sell(8, 40, 99, 59)
TDS:Sell(9, 40, 99, 59)
TDS:Sell(10, 40, 99, 59)
TDS:Sell(11, 40, 99, 58)
TDS:Sell(14, 40, 99, 58)
TDS:Place('Accelerator', 24.725852966308594, -0.3959822654724121, 11.610925674438477, 40, 99, 57)--29
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 1
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 2
TDS:Upgrade(29, 40, 99, 56)--Accel 8 Upgrade 3
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 4
TDS:Upgrade(29, 40, 99, 55)--Accel 8 Upgrade 5
TDS:Place('Shotgunner', 20.122793197631836, -0.395932674407959, 24.406553268432617, 40, 99, 50)--30
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 1
TDS:Upgrade(30, 40, 99, 49)--late shotgun 1 upgrade 2
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 3
TDS:Upgrade(30, 40, 99, 48)--late shotgun 1 upgrade 4
TDS:Place('Shotgunner', 20.125720977783203, -0.395843505859375, 27.437143325805664, 40, 99, 45)--31
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 1
TDS:Upgrade(31, 40, 99, 44)--late shotgun 2 upgrade 2
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 3
TDS:Upgrade(31, 40, 99, 42)--late shotgun 2 upgrade 4
TDS:Place('Shotgunner', -23.221546173095703, -0.39593505859375, 24.338056564331055, 40, 99, 41)--32
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 1
TDS:Upgrade(32, 40, 99, 40)--late shotgun 3 upgrade 2
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 3
TDS:Upgrade(32, 40, 99, 39)--late shotgun 3 upgrade 4
	end
end