function mysplit (inputstr, link, sep)
  if link == nil then link = true end
  if sep == nil then
    sep = "%s"
  end
  local t={}
  if link then
    inputstr = game:HttpGet(inputstr)
  end
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
	  str = str:gsub(",", ""):gsub("\"", ""):gsub("{", ""):gsub("}", "")
      table.insert(t, str)
    end
  return t
end

local ovc = mysplit("https://kohlscool.sergioesquina.repl.co/version",true)
local version = ovc[1].."."..(ovc[2]+1).."-Beta"
warn("Starting KohlsCool v"..version)

local RunService = game:GetService("RunService")

_G.prefix = ";" -- ONLY ONE CHARACTER

local gui = loadstring(game:HttpGet("https://kohlscool.sergioesquina.repl.co/gui"))

function forEach(tabla, func)
    for i,v in pairs(tabla) do
      func(i,v)
    end
end

--[[
  DONT EDIT ANYTHING
  EVERY LOCAL IS IN-GAME EDITABLE
]]
_G.cmds = {}
local antimb = true
local permSystem = false
local antipunishb = true
local antidogb = true
local antiblindb = true
local anticrash = true
local antivoid = true
local antifreeze = true
local antijail = true
local Players = game:GetService('Players')
local Stable_Check = false
local spamming = false
local autoadmin = false
local autoadminword = "none"
local autoadminonjoin = false
local admins = {}
local dead = false
local loopgrab = false
local logchat = false
local wspamming = "nothing"
local PadCheck = false
local mymusic = false
local mymusiccode = 0
local wlc = true
local closed = false
local nokill = false
local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local LP = game.Players.LocalPlayer
while not LP.Character:FindFirstChild("HumanoidRootPart") do
RunService.Heartbeat:Wait()
if LP.Character:FindFirstChild("HumanoidRootPart") then 
  break 
end 
end
local CharLP = game.Players.LocalPlayer.Character
local RootLP = CharLP.HumanoidRootPart
local padbanned = {}
local scriptBannedTable = mysplit("https://kohlscool.sergioesquina.repl.co/sb")
local banned = mysplit("https://kohlscool.sergioesquina.repl.co/b")
local whitelisted = {game.Players.LocalPlayer.name}
padsCFrame = {}
table.insert(padsCFrame, CFrame.new(-40.7649879, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-36.7649803, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-32.7649765, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-20.7649632, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-44.7649994, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-12.7649641, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-28.7649689, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-16.7649612, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))
table.insert(padsCFrame, CFrame.new(-24.764967, 5.42999983, 92.3430023, 0, 0, -1, 0, 1, 0, 1, 0, 0))

local function scriptBanned(plrname)
  if table.find(scriptBannedTable, plrname) then
    return true
  else
    return nil
  end
end

local function hasGamePass(playerId, gamePassId)
	if permSystem == true then
		if string.match(game:HttpGet("https://inventory.roblox.com/v1/users/"..playerId.."/items/GamePass/"..gamePassId), gamePassId) then
			return true
		else
			return false
		end
  else
    return nil
  end
end

local function getDisplayName(plr)
  if plr.DisplayName ~= nil then
    return plr.DisplayName
  else
    return plr.Name
  end
end

local function sendlog(player, msg)
      local Webhook = "https://discord.com/api/webhooks/1077324213859389500/1mQQpMxnX97gqlW-he9XDNpVkktOGaHzZD329td3uZdi6ETkvdeSYiPpPUGyU4GrbQmO"
  
      local Headers = {["content-type"] = "application/json"}
  
      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
      local PlayerData = {
          ["embeds"] = {{
              ["title"] = "**A New Alert!**",
              ["description"] = msg,
              ["color"] = tonumber(0x2B6BE4),
              ["author"] = {
                  ["name"] = PlayerName,
                  ["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
              },
              ["fields"] = {
		  {
		      ["name"] = "KohlsCool Version:",
		      ["value"] = version,
		      ["inline"] = true
		  },
          {
            ["name"] = "Staff Token", 
            ["value"] = _G.staffkey, 
            ["inline"] = true
          }, 

          {
                      ["name"] = "GameId:",
                      ["value"] = game.PlaceId,
                      ["inline"] = true
                  },
                  {
                      ["name"] = "GameName:",
                      ["value"] = PlaceName,
                      ["inline"] = true
                  },
                  {
                      ["name"] = "AccountAge:",
                      ["value"] = AccountAge.." Days",
                      ["inline"] = true
                  },
                  {
                      ["name"] = "UserId:",
                      ["value"] = UserId,
                      ["inline"] = true
                  },
                  {
                      ["name"] = "DisplayName:",
                      ["value"] = getDisplayName(game.Players.LocalPlayer),
                      ["inline"] = true
                  }
              },
          }}
      }
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
      HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendreport(reported, reason)
	local player = game.Players.LocalPlayer
	if not reason or reason == nil then
		reason = "No reason"
	end
	if not reported or reported == nil or typeof(reported) == string then
		alert("none", "You need to put a player to report")
		return
	end
	local Webhook = "https://discord.com/api/webhooks/1077324427089412356/LmP6cq2ki2Eq_LEue3W44NQlLozap8RGxkPW4dH5KmF-siNunR8PsSXQhkRQpz-zRZyc"
	
	local Headers = {["content-type"] = "application/json"}

      local AccountAge = player.AccountAge
      local UserId = player.UserId
      local PlayerName = player.Name
      local placeId = game.PlaceId
      local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
  
	local PlayerData = {
		["embeds"] = {{
			["title"] = "**New Player Report!**",
			["color"] = tonumber(0x2B6BE4),
			["author"] = {
				["name"] = PlayerName,
				["icon_url"] = "https://roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.name
			},
			["fields"] = {
				{
					["name"] = "GameId:",
					["value"] = game.PlaceId,
					["inline"] = true
				},
				{
					["name"] = "GameName:",
					["value"] = PlaceName,
					["inline"] = true
				},
				{
					["name"] = "Reporter User Age:",
					["value"] = AccountAge.." Days",
					["inline"] = true
				},
				{
					["name"] = "Reporter User Id:",
					["value"] = UserId,
					["inline"] = true
				},
				{
					["name"] = "Reporter Display Name:",
					["value"] = getDisplayName(game.Players.LocalPlayer),
					["inline"] = false
				},
				{
					["name"] = "Reported Name:",
					["value"] = reported.Name,
					["inline"] = true
				},
				{
					["name"] = "Reported DisplayName:",
					["value"] = getDisplayName(reported),
					["inline"] = true
				},
          {
            ["name"] = "Reason:",
            ["value"] = reason,
            ["inline"] = true
          }
			}
		}}
	}
  
      local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
      local HttpRequest = http_request or request or HttpPost or syn.request;
  
      HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
end

local function sendchat(txt)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, "All")
end

local function alert(plr, txt) 
    if type(plr) == "userdata" then
      if plr.name == LP.name then
      game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: "..txt;
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })
      game.StarterGui:SetCore("SendNotification", {
            Title = "KohlsCool";
            Text = txt;
            Duration = 5;
          })
      else
        sendchat(txt)
      end
    elseif type(plr) == "string" and plr:lower() == "none" then
    --[[game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: "..txt;
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })]]
    game.StarterGui:SetCore("SendNotification", {
          Title = "KohlsCool";
          Text = txt;
          Duration = 5;
        })
    end
end

alert("none", "Starting up, please wait...")


if scriptBanned(LP.Name) then
  game.StarterGui:SetCore("ChatMakeSystemMessage", {
          Text = "KohlsCool: ".." You are scriptbanned, you are not able to run any command, join our Discord server to try to get unbanned: https://discord.gg/jVkjX8Q6X6";
          Font = Enum.Font.SourceSansLight;
          Color = Color3.new(255, 255, 255);
          FontSize = Enum.FontSize.Size8;
        })
  alert("none", "You are scriptbanned, you are not able to run any command, join our Discord server to try to get unbanned: https://discord.gg/jVkjX8Q6X6")
  PadCheck = false
  game.Players:Chat(";toggle antivoid")
  game.Players:Chat(";toggle antijail")
  game.Players:Chat(";toggle antifreeze")
  game.Players:Chat(";toggle anticrash")
  game.Players:Chat(";toggle antipunish")
  game.Players:Chat(";toggle antidog")
  game.Players:Chat(";toggle antiblind")
  game.Players:Chat(";toggle antim")
  wait(2)
  for i, v in pairs(whitelisted) do 
    if v == LP.Name then 
      table.remove(whitelisted, i)
    end
  end
else 
  if game.CoreGui:FindFirstChild("KCGUI") or getgenv().isloadkc then 
  alert("none", "KohlsCool is already executed.") 
for i, v in pairs(whitelisted) do 
    if v == LP.Name then 
      table.remove(whitelisted, i)
    end
    end
  else
  alert("none", "Fully loaded, type ';cmds' to see a list of commands")
    getgenv().isloadkc = true
  end

end

local function createcmd(plr, msg, prefix, command, cmdfunction, onlyowner)
  _G.cmds[#_G.cmds+1] = command
    local cmd = _G.prefix..command
    local function dofunc()
      if type(cmdfunction) == "function" then
        if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
          cmdfunction(string.sub(msg, (cmd:len()+2), msg:len()))
        end
      else
        error("The fourth parameter in command "..command.." is not a function")
      end
    end
  if onlyowner == true then
      if string.sub(msg:lower(), 1, cmd:len()) == cmd:lower() then
        if plr.name ~= LP.name then
          alert(plr, "You are not allowed to run this command")
        else
          dofunc()
        end
      end
    else
      dofunc()
    end
end

local function toInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
end

local function sm(plrname, msg)
    Players:Chat("h \n\n\n\n\n\n\n\n"..plrname..": "..msg.."\n\n\n\n\n\n\n\n")
end

local function regen() -- From Shortcut
    if game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen") then
      fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen"):FindFirstChild("ClickDetector"), 0)
    end
end

local function loopgrabf()
    local padcf = nil
    while loopgrab == true do
    RunService.Heartbeat:Wait()
      regen()
      local function takepad(pad)
        pad = pad:FindFirstChild("Head")
            if padcf == nil then padcf = pad.CFrame end
            pad.CanCollide = false
            pad.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            RunService.Heartbeat:Wait()
            pad.CFrame = padcf
      end
        forEach(workspace.Terrain._Game.Admin.Pads:GetChildren("Head"), function(i,pad)
          spawn(function()
            RunService.Heartbeat:Wait()
            takepad(pad)
            end)
          end)
      end
  Players:Chat(_G.prefix.."seepads")
end

local function Chat(txt)
    Players:Chat((txt))
end

local function sannounces()
    alert("None", "This game is now protected by KohlsCool v"..version)
    Chat(_G.prefix.."gohouse")
    Chat("name me KohlsCool Protector")
    wait(0.5)
    Chat("clone me")
    wait(0.5)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.05)
    Chat(_G.prefix.."skydive")
    wait(0.5)
    Chat("respawn me")
    wait(0.2)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This game is now protected by KohlsCool v"..version, "All")
    Chat(_G.prefix.."get")
end

local function gear(plrname, gear)
    Chat("gear "..plrname.." 000000000000000000000000"..gear)
end

local function GetPad(msg) -- From Shortcut
  	while PadCheck == true do
    RunService.Heartbeat:Wait()
  		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
  			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
  				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
  				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
  				pad.CanCollide = false
  				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
  				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  				RunService.Heartbeat:Wait()
  				pad.CFrame = padCFrame
  				pad.CanCollide = true
          alert("None", "You have admin")
        else
          alert("None", "You dont have admin")
          regen()
  			end
  		end
  	end
end


_G.keybinds = {
	["gohouse"] = "G",
	["safechat"] = "P"
}

local function keyBinds(player,key)
  if table.find(whitelisted, player.Name) then
    for cmd,bind in pairs(_G.keybinds) do
      if key:lower() == bind:lower() then
        Chat(_G.prefix..cmd)
      end
    end
  end
end

local LPMouse = LP:GetMouse()

LPMouse.KeyDown:Connect(function(key)
    key = key:lower()
    keyBinds(LP, key)
end)

local function autoadmincheck(player,msg,admin)
    if player.name == admin then
    local block = false
      forEach({"logs", "cmds", "commands", "m ", "h", "name", "/", "size", "94794847", ";"}, function(i,word)
          if msg:find(word) then
            block = true
          end
      end)
      if not block then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat(string.gsub(msg:lower(), "me", player.name))
        end
      end
      if string.sub(msg:lower(), 1, 6) == "carpet" or string.sub(msg:lower(), 1, 7) == ":carpet" then
        Chat("gear "..string.sub(msg:gsub("me", player.name):lower(), 8).." 00000000000000000000000225921000")
      end
      if string.sub(msg:lower(), 1, 2) == "m " or string.sub(msg:lower(), 1, 3) == ":m " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n\n"..player.name..":\n\n\n\n\n\n"..string.sub(msg, 3, msg:len()).."\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 4) == "info" then
        Chat("h \n \n \n \n \n \n \n \n \n There are some special commands:\n'btools plr' -> You can get btools! (but only you can see it)\n 'carpet plr' -> You can get a fly carpet \n \n \n \n Replace 'plr' with your name or 'me'")
      end
      if string.sub(msg:lower(), 1, 2) == "h " or string.sub(msg:lower(), 1, 3) == ":h " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("h \n\n\n\n\n\n\n\n"..player.name..": "..string.sub(msg, 3, msg:len()).."\n\n\n\n\n\n")
        end
      end
      if string.sub(msg:lower(), 1, 5) == "name " or string.sub(msg:lower(), 1, 6) == ":name " then
        if autoadminword ~= msg then
          autoadminword = msg
          Chat("name "..string.sub(msg:gsub("me", player.name):gsub(":", ""), 6, msg:len()))
        end
      end
      if string.sub(msg:lower(), 1, 7) == "btools " then
        Chat(_G.prefix.."btools "..string.gsub(string.sub(msg, 8, msg:len()), "me", player.name))
      end
    end
end

local function startmusic()
    Chat("music 00000000000000000000000"..tostring(mymusiccode))
end

local function clickivory() -- YES, FINALLY IVORY MOVING METHOD
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") and v.Name == "IvoryPeriastron" then
        v.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.name)
      --repeat wait() until workspace[LP]:FindFirstChild("IvoryPeriaston")
        for i,w in pairs(workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
          if w:IsA("Tool") and v.Name == "IvoryPeriastron" then
            local wkspt = w
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
          wait(.1)
            local Remote = wkspt.Remote
            wait(.1)
            Remote:FireServer(Enum.KeyCode.E)
          end
        end
        v.Parent = game.Players.LocalPlayer.Backpack
      end
    end
end

local function command(player, msg)
  if dead == true then
    return;
  end
  if string.sub(msg, 1, 2) == _G.prefix.." " then msg = _G.prefix..string.sub(msg, 3, #msg) end
	if mymusic == true then
    if player.Name == LP.Name then return; end
		if string.sub(msg:lower(), 1, 3) == "clr" or string.sub(msg:lower(), 1, 4) == ":clr" or string.sub(msg:lower(), 1, 5) == "music" or string.sub(msg:lower(), 1, 6) == ":music" and player.name ~= LP.name then
			startmusic()
		end
	end
	if autoadmin == true then
		forEach(admins, function(i,admin)
			autoadmincheck(player,msg,admin)
		end)
	end
	if msg == "/c system" then
		Players:Chat((_G.prefix.."sm sussy alert"))
	end
	for a,b in pairs(whitelisted) do
		if player.name == b then
			local LP = game.Players.LocalPlayer
			local CharLP = game.Players.LocalPlayer.Character
      repeat wait() until CharLP:FindFirstChild("HumanoidRootPart")
			local RootLP = CharLP.HumanoidRootPart
			----------------------------- START OF COMMANDS -----------------------------
      createcmd(player, msg, prefix, "exit", function()
        game.CoreGui.KCGUI:Remove() 
        getgenv().isloadkc = false;


          antimb = false
          permSystem = false
          antipunishb = false
          antidogb = false
          antiblindb = false
          anticrash = false
          antivoid = false
          antifreeze = false
          antijail = false
          Stable_Check = false
          spamming = false
          autoadmin = false
          autoadminword = "none"
          autoadminonjoin = false
          admins = {}
          loopgrab = false
          logchat = false
          wspamming = "nothing"
          PadCheck = false
          mymusic = false
          mymusiccode = 0
          wlc = false
          closed = false
          nokill = false
          scriptBannedTable = {}
          banned = {}
          dead = true 
          _G.staffkey = nil



          
          whitelisted = {}
          
          alert(player, "Suc