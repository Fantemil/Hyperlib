local plrs = game:GetService("Players")
local lplr = plrs.LocalPlayer
local boothUpdate = game:GetService("ReplicatedStorage").CustomiseBooth
local messages = {
	"You are playing: Word Guess, edited chat by dux (heh lelelelel)",
}
local chatted = {}
local points = {}
local rounds = 5
local roundTime = 60
local function randomCategory(categories: table)
    local array = {}
	local name
    for i in pairs(categories) do
        table.insert(array, i)
    end
    local randomNum = math.random(1, #array)
    return categories[array[randomNum]]
end
local function sortLeaderboard()
	local players = plrs:GetPlayers()
	if players[1] == lplr then
		table.remove(players, 1)
	end
	table.sort(players, function(p1, p2)
		return points[p1.UserId] > points[p2.UserId]
	end)
	return players
end
local function displayLeaderboard()
	local leaderboardTable = sortLeaderboard()
	local leaderboard = "Leaderboard"
	for i=1, 4, 1 do
		leaderboard ..= "\n"..leaderboardTable[i].Name..": 💠 "..points[leaderboardTable[i].UserId]
	end
	boothUpdate:FireServer("Update", {
		["DescriptionText"] = leaderboard,
		["ImageId"] = 0,
	})
	print(leaderboard)
	task.wait(0.5)
	for _, booth in pairs(game.Workspace:GetChildren()) do
		if booth:GetAttribute("TenantUsername") == lplr.Name then
			if string.find(booth.Banner.SurfaceGui.Frame.Description.Text, "#####################") then
				boothUpdate:FireServer("Update", {
					["DescriptionText"] = "small intermission, a small sip from a forever well warn coffee!",
					["ImageId"] = 9731129379,
				})
			end
		end
	end
end
local function trim(str)
    return string.gsub(str, "^%s*(.-)%s*$", "%1")
end
local function updateSign(text: string, category: string, round: number, timeLeft: number, icon: number)
	boothUpdate:FireServer("Update", {
		["DescriptionText"] = "[🕹️] word guess ("..tostring(round).."/"..tostring(rounds)..")\n[🔤] "..text.."\ncategory: "..category.."\n[⏰]"..timeLeft,
		["ImageId"] = icon,
	})
end
plrs.PlayerRemoving:Connect(function(plr)
	if points[plr.UserId] then
		points[plr.UserId] = nil
	end
end)
plrs.PlayerAdded:Connect(function(plr)
	points[plr.UserId] = 0
end)
task.spawn(function()
	while true do
		task.wait(120)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(1, #messages)], "All")
	end
end)
task.spawn(function()
	local myBooth
	for _, booth in pairs(game.Workspace:GetChildren()) do
		if booth:GetAttribute("TenantUsername") == lplr.Name then
			booth.Carpet.Parent = game.Workspace
			myBooth = booth
		end
	end
	while true do
		for _, part in pairs(game:GetService("Workspace"):GetPartBoundsInBox(myBooth.Banner.CFrame, myBooth.Banner.Size  + Vector3.new(0.5, -1, 0.5))) do
			if part.Parent:FindFirstChildOfClass("Humanoid") and part.Parent.Name ~= lplr.Name then
				local name = part.Parent.Name
				boothUpdate:FireServer("AddBlacklist", name)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Don't block the sign, you are not a badass, "..name.."btw i like volkswagen, its my favorate car.", "All")
				task.wait(2)
				boothUpdate:FireServer("RemoveBlacklist", name)
				break
			end
		end
		task.wait(0.5)
	end
end)
-- main loop
while true do
	for _, plr in pairs(plrs:GetPlayers()) do
		points[plr.UserId] = 0
	end
	local words = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/07conicNuts/Lua-Scripts/main/RMAwords.json", true))
	for round=1, rounds, 1 do
		roundStarted = true
		local timeLeft = roundTime
		local category = randomCategory(words)
		local word = category["words"][math.random(1, #category["words"])]
		local splitWord = string.split(word, "")
		local loweredSplitWord = {}
		for _, v in ipairs(splitWord) do
			table.insert(loweredSplitWord, string.lower(v))
		end
		local found: string = ""
		local wordFound = false
		local foundBy
		print(word)
		for _, v in pairs(splitWord) do
			if v ~= " " then found ..= "_" else found ..= " " end
		end
		updateSign(found, category.name, round, timeLeft, 9730925630)
		for _, plr in pairs(plrs:GetPlayers()) do
			if plr ~= lplr then
				chatted[plr] = plr.Chatted:Connect(function(message)
					if roundStarted and wordFound == false and plr:DistanceFromCharacter(lplr.Character.Head.Position) <= 15 and string.lower(message) ~= "abcdefghijklmnopqrstuvwxyz" then -- "abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz" works help
						local trimmed = message
						trim(trimmed)
						if string.find(string.lower(trimmed), string.lower(word)) then -- string.find because we still want to accept the answer if theres trailing whitespace or something
							points[plr.UserId] += 1
							wordFound = true
							foundBy = plr.Name
						else
							for _, item in pairs(string.split(string.lower(trimmed), "")) do
								if table.find(loweredSplitWord, item) then
									local splitFound = string.split(found, "")
									splitFound[table.find(loweredSplitWord, item)] = splitWord[table.find(loweredSplitWord, item)]
									found = ""
									for _, letter in pairs(splitFound) do
										found ..= letter
									end
								end
							end
						end
					end
				end)
			end
		end
		repeat
			task.wait(1)
			timeLeft -= 1
			updateSign(found, category.name, round, timeLeft, 9730925630)
		until wordFound == true or timeLeft == 0
		task.wait(0.5)
		if wordFound then
			updateSign(foundBy.." found the word LOL! it was "..word, category.name, round, timeLeft, 9862155982)
		else
			updateSign("you ran out of time :(\n it was "..word, category.name, round, timeLeft, 10164270898)
		end
		for _, plr in pairs(plrs:GetPlayers()) do
			if chatted[plr] then
				chatted[plr]:Disconnect()
			end
		end
		task.wait(3)
		displayLeaderboard()
		task.wait(5)
	end
	local leaderboardTable = sortLeaderboard()
	print(points[leaderboardTable[1].UserId])
	boothUpdate:FireServer("Update", {
		["DescriptionText"] = leaderboardTable[1].Name.." wins with 💠 "..points, very cool,[leaderboardTable[1].UserId],
		["ImageId"] = 9731042021,
	})
	task.wait(5)
end