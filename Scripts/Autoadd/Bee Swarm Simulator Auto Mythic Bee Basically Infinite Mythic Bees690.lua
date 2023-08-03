--[[
Diamond = Diamond Egg, Gold = Golden Egg, Silver = Silver Egg, RoyalJelly = Royal Jelly
Bee Placement Info: https://media.discordapp.net/attachments/1115929998851842112/1134961707345784983/y5nzrj7j.png
Make Sure To Put It In Your Auto Execute, If The Script Doesnt Work Properly Change The wait(25) To wait(40)!
]]

local selectedrow = 5 -- Vertical Line
local selectedline = 4 -- Horizontal Line
local selectedegg = "RoyalJelly" -- Diamond, Gold, Silver, RoyalJelly 
local webhookurl = "" -- Ur Webhook Url

-- Waits Until The Game Loads
repeat
wait()
until game:IsLoaded()
wait(25)

-- Claims Hive
for i = 1, 2 do
for i = 1, 6 do
game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(i)
end
wait(2)
end

-- Notifies That The Script Has Been Executed
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({
Name = "Data Rollback State",
Content = "Executed!",
Image = "rbxassetid://4483345998",
Time = 5
})

-- Turns On Until Mythic If You Are Using Royal Jelly
if selectedegg == "RoyalJelly" then
local args = {
    [1] = "RollToMythic",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.PlayerSettingsEvent:FireServer(unpack(args))
end

-- Hatches The Selected Egg In The Selected Spot
local args = {
[1] = selectedrow,
[2] = selectedline,
[3] = selectedegg,
[4] = 1,
[5] = false
}

game:GetService("ReplicatedStorage").Events.ConstructHiveCellFromEgg:InvokeServer(unpack(args))

-- If The Egg Hatched A Mythic Bee, The Script Stops And Notifies You, Then Toggles Until Mythic Off (If You Selected Royal Jelly), Else The Script Notifies You That Ypu Didnt Get A Mythic Bee And Server Hops.
local BeeValue = game:GetService("Workspace").Honeycombs[tostring(game:GetService("Players").LocalPlayer.Honeycomb.Value)].Cells["C" .. tostring(selectedrow) .. "," .. tostring(selectedline)].CellType.Value
if BeeValue  == "FuzzyBee" or BeeValue  == "BuoyantBee" or BeeValue  == "PreciseBee" or BeeValue  == "SpicyBee" or BeeValue  == "TadpoleBee" or BeeValue  == "VectorBee" then
OrionLib:MakeNotification({
Name = "Data Rollback State",
Content = "Got The Wanted Bee!",
Image = "rbxassetid://4483345998",
Time = 5
})
local data = {
["content"] = "Got A Mythic Bee! " .. tostring(BeeValue),
}
local request = http_request or request or HttpPost
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
["content-type"] = "application/json"
}
request({
Url = webhookurl,
Body = newdata,
Method = "POST",
Headers = headers
})
if selectedegg == "RoyalJelly" then
local args = {
    [1] = "RollToMythic",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.PlayerSettingsEvent:FireServer(unpack(args))
end
return
else
OrionLib:MakeNotification({
Name = "Data Rollback State",
Content = "Didnt Get The Wanted Bee, Rolling Back Data...",
Image = "rbxassetid://4483345998",
Time = 5
})
local data = {
["content"] = "Didnt Get The Wanted Bee... Rolling Back Data And Teleporting To Another Server! (Got: " ..tostring(BeeValue).. ")",
}
local request = http_request or request or HttpPost
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
["content-type"] = "application/json"
}
request({
Url = webhookurl,
Body = newdata,
Method = "POST",
Headers = headers
})
end

-- Rollbacks Your Data
for i = 1, 10 do
local args = {
[1] = "Black Bear",
[2] = "f\255",
[3] = "Finish"
}
game:GetService("ReplicatedStorage").Events.UpdatePlayerNPCState:FireServer(unpack(args))
wait(.1)
end

-- Uses Field Dice To Make Sure You Get Your Egg Back
local args = {
[1] = {
["Name"] = "Field Dice"
}
}

game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer(unpack(args))

-- Notifies You That The Rollback Was Successful
OrionLib:MakeNotification({
Name = "Data Rollback State",
Content = "Succesful! Teleporting To Another Server...",
Image = "rbxassetid://4483345998",
Time = 5
})
wait(3)

-- Teleports You To Another Server
for i = 1, 5 do
local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/1537690962/servers/Public?sortOrder=Asc&limit=100"))
for i, v in pairs(Servers.data) do
if v.playing ~= v.maxPlayers then
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
end
end
end