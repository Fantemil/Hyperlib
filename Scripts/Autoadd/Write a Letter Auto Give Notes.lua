-- AutoInfNotes



_G.AutoInfNotes = false
while _G.AutoInfNotes == true do

 
local A_1 = "made by demo"
local A_2 = false
local Event = game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote
Event:InvokeServer(A_1, A_2)

end