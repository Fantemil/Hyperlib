local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()


local win = DiscordLib:Window("DISCORD")

local serv = win:Server("Scripts Community", "")

local btns = serv:Channel("Chat-Geral")
	  local seconds = math.floor(game.Workspace.DistributedGameTime)
   local minutes = math.floor(game.Workspace.DistributedGameTime / 60)
   local hours = math.floor(game.Workspace.DistributedGameTime / 60 / 60)
   local seconds = seconds - (minutes * 60)
   local minutes = minutes - (hours * 60)
local players = game.Players:GetChildren()
local player_count = 0

    for i, player in pairs(players) do
        player_count = player_count + 1
    
    end

btns:Textbox(" ", "Type here!", true, function(t)
btns:Label(game.Players.LocalPlayer.Name..": "..t)
if t == ":PlayerInfo" then
btns:Label("=============================================")
btns:Label("NightBot:")
btns:Label("Account Name: "..game.Players.LocalPlayer.Name)
btns:Label("Account Age: "..game.Players.LocalPlayer.AccountAge.." Days")
btns:Label("Account ID: "..game.Players.LocalPlayer.UserId)
btns:Label("Executor: "..identifyexecutor())
btns:Label("=============================================")

elseif t == ":ServerInfo" then

	btns:Label("=============================================")
btns:Label("NightBot:")
btns:Label("Players On Server: "..player_count)
btns:Label("Max Players: "..game.Players.MaxPlayers)
btns:Label("Server Age: "..hours.." Hours "..minutes.." Minutes "..seconds.." Seconds")
btns:Label("=============================================")
elseif t == ":help" then
		btns:Label("=============================================")
btns:Label("NightBot:")
btns:Label(" ")
btns:Label("Commands:")
btns:Label(" ")
btns:Label(">ServerInfo")
btns:Label(" ")
btns:Label(">PlayerInfo")
btns:Label(">Prefix :")
		btns:Label("=============================================")
end

end)
local btns1 = serv:Channel("Music Player")

btns1:Textbox("ID", "Type here!", true, function(t)
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id="..t
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)


btns1:Button("Stop", function()
for i=1,25 do
workspace["Music_Player"]:Remove()
wait()
end
end)

btns1:Label("Lofis:")
btns1:Button("Chillin at Home", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9042666762"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)

btns1:Button("Home Town Easy", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9047104571"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)

btns1:Button("On The Verge", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9047105584"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)

btns1:Button("Its For Me", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9039770426"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)
btns1:Button("Say It's For Real", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9047106878"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)
btns1:Button("Under the Duvet", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9042666614"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)
btns1:Button("Sunset Chill", function()
local ClientSound = Instance.new("Sound")
ClientSound.SoundId = "http://www.roblox.com/asset/?id=9046862941"
ClientSound.Volume = .5
ClientSound.Parent = workspace
ClientSound.PlaybackSpeed = 1
ClientSound:Play()
wait()
ClientSound.Name = "Music_Player"
end)