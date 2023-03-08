local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local PlayerModel = Character:WaitForChild('Playermodel')
local IntStats = PlayerModel.Intstats
local Mobdata = require(PlayerModel:WaitForChild('Mobdata'))

local function QuickSpeed()
   IntStats['Speed'].Value = 100
   IntStats['Attackspd'].Value = 300
   IntStats['Speedmomentum'].Value = 5
   IntStats['Speedmelee'].Value = 10000
   IntStats['Stamrate'].Value = .000001
   IntStats['Speedwalk'].Value = 20
   IntStats['Speeddash'].Value = 700
   IntStats['Stamcharge'].Value = .5
end

QuickSpeed()