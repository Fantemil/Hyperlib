local botStandMSG = "Buy Shirt ✅ and type <i>!claim</i> to get your <u>fortune read by a BOT!</u> | 🤖";        -- FEEL FREE TO EDIT 

if tonumber(game.GameId) == 8737602449 then -- PLS DONATE GAME	game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(botStandMSG,"booth")
elseif if tonumber(game.GameId) == 8587816379 then -- DONATE ME
	warn("This has to be updated manually because the creator cant script for shit.")
	setclipboard(botStandMSG)
end

local Fortunes = {

	"Tomorrow will be your best day %s! 🌞 You will wake up after a nice sleep to find something unexpected awaiting your presences!",        -- FEEL FREE TO EDIT 
	"%s, helping the first person you see will bring fortune to you! 🥇 | Life is about giving, not taking! 💝",      -- FEEL FREE TO EDIT 
	"Someone in this server is waiting to tell %s something. 😇 Could it be good, or evil? 👿",          -- FEEL FREE TO EDIT 
	"%s, your next dream will have intense meaning! ⚡⛈",         -- FEEL FREE TO EDIT 
	"%s You should stop wishing, and start trying. Each day goes by fast, and there's no time to spare. 🤨",      -- FEEL FREE TO EDIT 
	"%s don't give up, you're on the edge of something BIG! 💗",         -- FEEL FREE TO EDIT 
	"%s! YOU WILL WAKE UP IN A BATHTUB FULL OF ICE WITH SEVERE HEAD TRAUMA! 🧊",      -- FEEL FREE TO EDIT 
	"%s. You will be lonley forever! 🎭",            -- FEEL FREE TO EDIT 
	"%s, you friends are your light. Follow them! 💙💡",      -- FEEL FREE TO EDIT 

}

local Messages = {
	["Fail"] = [[%s | COMMAND FAILED | Did you buy the shirt? 😣]],  -- FEEL FREE TO EDIT 
	["Claimed"] = [[%s | Oops.. You already claimed it 🏆❌]],   -- FEEL FREE TO EDIT 
}

local rarest_MSG = "%s, you got the rarest message here! This is 1/100! This truely means something about your luck! 🌈" -- FEEL FREE TO EDIT 
local cach = {[8818476453]={}, [8821317586] = {},};

local function sendMessage_TXT(message, playerName)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message:format(playerName), "All")
end;

local function sendFortune(player:Player)
	local forMSG = Fortunes[math.random(1, table.getn(Fortunes))];
	print(forMSG:format(player.Name));
	if math.random(1, 100) == 1 then
		sendMessage_TXT(rarest_MSG, player.Name)
	else
		sendMessage_TXT(forMSG, player.Name)
	end
end;

local function addToBlacklist(name, id)
	cach[name]=id
end;

local function owns(player, id)
	return game:GetService('MarketplaceService'):PlayerOwnsAsset(player, id)
end

local function findShirtOwned(player)

	local shirts = {
		12345,  -- NEED TO EDIT
		12345   -- NEED TO EDIT
	}


	local ownedprevious = false

	for a,b in pairs(shirts) do
		if not cach[b][player] and owns(player, b) then
			cach[b][player] = true;
			return true
		elseif cach[b][player] then
			ownedprevious = true
		end
	end


	if ownedprevious then
		return "ownedRATE"
	end

end

local function addPager(player)
	player.Chatted:Connect(function(msg)
		if msg:lower() == "!claim" then

			local name = player.Name
			local statusThing = findShirtOwned(player)

			print(statusThing)

			if statusThing == true then
				sendFortune(player)
			elseif statusThing == "ownedRATE" then
				sendMessage_TXT("😰 %s, you ran out of fortunes! You can always buy another shirt! ⭐", name) -- FEEL FREE TO EDIT
			else
				sendMessage_TXT(Messages.Fail, name)
			end


		end
	end)
end

for a,b in pairs(game.Players:GetPlayers()) do
	addPager(b)
end

game.Players.PlayerAdded:Connect(function(p)
	addPager(p)
end)

while wait(30) do
	sendMessage_TXT("🎁 Go over to my stand, and get your fortune read! 😲 | 💲 ONLY 2 ROBUX 💲 | THIS IS A BOT RUN STAND 💛") -- FEEL FREE TO EDIT
	task.wait(30)
	sendMessage_TXT("Having a bad day? ❓ | Get a funny/inspirational message by a bot for ONLY 2 Robux! 😎"); -- FEEL FREE TO EDIT
end