local ReplicatedStorage = game:GetService'ReplicatedStorage'
local Knit = ReplicatedStorage.Packages.Knit
local Spitfire = Knit.Services.QuestService.RF.SpitfireCollect

for _ = 1,45 do
   Spitfire:InvokeServer(_)
end