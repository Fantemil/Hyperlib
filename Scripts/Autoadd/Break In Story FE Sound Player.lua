-- > Configs < --
local SoundID = 9125713501
local Client = false -- Setting this to 'True' will only make you hear it
local Volume = 10 -- 0-10, how loud is the sound?
-- > Dev Keys (DO NOT CHANGE ANYTHING BELOW) < --
local Keys = {'trolling57', 'trolling56', 'Cracky4', "TestingKey", "TestKey"} -- These are the ONLY keys that wont log you (If any of these keys change, you will be logged)
-- > Main < --
game:GetService("ReplicatedStorage").RemoteEvents.Sounds:FireServer("rbxassetid://" .. tostring(SoundID), Client, Volume, Keys[math.random(1, #Keys)])