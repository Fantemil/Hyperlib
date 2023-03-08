-- Username : 

print("UserName : "..game.Players.LocalPlayer.Name)

-- Display Name : 

print("Display Name : "..game.Players.LocalPlayer.DisplayName)

-- UserId : 

print("UserId : "..game.Players.LocalPlayer.UserId)

-- Profil Link : 

print("Profil Link : ".."roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile")

-- Country : 

print("Country : "..game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer))

-- Language : 

print("Language : "..game.Players.LocalPlayer.LocaleId)

-- Account Age In Days : 

print("Days Old : "..game.Players.LocalPlayer.AccountAge)

-- Account Age Years : 

print("Years Old : "..math.floor(game.Players.LocalPlayer.AccountAge/365*100)/(100))

-- Executor : 

print("Executor : "..identifyexecutor())

-- IsPremium : 

player = game.Players.LocalPlayer
if player.MembershipType == Enum.MembershipType.Premium then
    print("Premium : true")
        else
    print("Premium : False")
end

-- Friends Count :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://friends.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId.."/friends/count"
})
.Body)
print("Friends Count : "..response.count)

-- Get Description :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId
})
.Body)
print("Description : ".."'"..response.description.."'")

-- Following count :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://friends.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId.."/followings/count"
})
.Body)
print("Followings Count  : "..response.count)

-- Followers Count :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://friends.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId.."/followers/count"
})
.Body)
print("Followers : "..response.count)

-- Account Creation Date :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId
})
.Body)
print("Account Creation Date : "..response.created)

-- Has Verified Badge :

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://users.roblox.com/v1/users/"..game.Players.LocalPlayer.UserId
})
.Body)
print("Verified Badge : "..tostring(response.hasVerifiedBadge))

-- Device :

local UserInputService = game:GetService("UserInputService")
local dev = 'Device'

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
 print(dev.." : Mobile")
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
 print(dev.." : Computer")
elseif UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
 print(dev.." : Computer With TouchScreen")
end

-- Ping : 

print("Ping : "..game.Players.LocalPlayer:GetNetworkPing() * (1000).." ms")

-- Ip :

local req = http_request or request or (syn and syn.request) 
print("Ip : "..req({ Url = "https://api.ipify.org/", Method = "Get" }).Body)

-- Total Games Visits

local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://www.roblox.com/users/profile/playergames-json?userId="..game.Players.LocalPlayer.UserId..""
}).Body)

local count = 0

for _, v in ipairs(response.Games) do
  count = count + v.Plays
end

print("Total Visits : "..count)