--have fun :D
--Script 👇
--loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Party-Open-source-8120"))()
--[[
WARING DO NOT DELETE OR EDIT ANYTHING
made by Icyscythe
execute the script when everyone at lobby 
]]


local function kill(player)
	local args = {
		[1] = player.UserId
	}
	
	game:GetService("ReplicatedStorage").Events.Weapons.KnifeSwing:FireServer(unpack(args))
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/UI-Library/main/Source/MyUILib(Unamed).lua"))();
local Window = Library:Create("koshary v2")

local ToggleGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ToggleGui.Name = "ToggleGui_HE"
ToggleGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ToggleGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Toggle.BackgroundTransparency = 0.660
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle"
Toggle.TextScaled = true
Toggle.TextColor3 = Color3.fromRGB(40, 40, 40)
Toggle.TextSize = 24.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left
Toggle.Active = true
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)
local TeleportTab = Window:Tab("Teleport","rbxassetid://6723742952")
local MainTab = Window:Tab("Main","rbxassetid://10888331510")
local PlayerTab = Window:Tab("Players","rbxassetid://12296135476")
local VisualTab = Window:Tab("Visuals","rbxassetid://12308581351")
local ExtraTab =
Window:Tab("Extra","rbxassetid://7734042071")
local InfoTab =
Window:Tab("Info","rbxassetid://9405926389")

TeleportTab:Section("Teleport")
TeleportTab:Button("Teleport to map", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12, 1210, 43)
end)
TeleportTab:Button("Teleport to safe place", function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(safePlace.Position) + Vector3.new(0,3,0)
end)
TeleportTab:Button("Teleport to obby master hat", function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1516.31042, 114.386124, -966.783813, 0, -1, 0, 1, 0, -0, 0, 0, 1)
end)
TeleportTab:Section("others Teleport")
TeleportTab:Button("Teleport to the trading (level 15 +)", function ()
local TeleportService = game:GetService("TeleportService")
 
local Place = 6341188614 --Game ID Goes Here
 
local player = game.Players.LocalPlayer
    TeleportService:Teleport(Place, player)
    end)
TeleportTab:Button("Teleport to the game", function ()
    local TeleportService = game:GetService("TeleportService")
 
local Place = 5611648039 --Game ID Goes Here
 
local player = game.Players.LocalPlayer
    TeleportService:Teleport(Place, player)
    end)
    TeleportTab:Button("Teleport to the ??? Knife", function ()
local TeleportService = game:GetService("TeleportService")
 
local Place = 9483296866 --Game ID Goes Here
 
local player = game.Players.LocalPlayer
    TeleportService:Teleport(Place, player)
    end)
    TeleportTab:Button("Get the ??? Knife", function ()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(733.877747, 886.589478, 522.016968, 4.58955765e-06, 0.882143319, 0.470981121, -1, 4.58955765e-06, 1.16229057e-06, -1.16229057e-06, -0.470981121, 0.882143319)
end)
MainTab:Section("Murder Party")
local AutoF = false
local AutoFTele = false
local ExpFarm = false

MainTab:Toggle("Auto collect coins", function(state)
    if state then
       AutoF = true
    else
        AutoF = true
    end
end)
game.Workspace.Time.Changed:Connect(function()
	if game.Workspace.Time.Value == 119 then
		
safePlace = Instance.new("Part",game.Workspace)
safePlace.Anchored = true
safePlace.Size = Vector3.new(6,1,6)
safePlace.CFrame = CFrame.new(game.Players.LocalPlayer.character.HumanoidRootPart.Position) + Vector3.new(0,150,0)

if AutoF == true then
	game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(safePlace.Position)+Vector3.new(0,4,0)
repeat
			for i,v in pairs(game.Workspace.Gems:GetDescendants()) do
				if v.Name == "TouchInterest" then
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent,0)
				wait()
				end
				end
until game.Players.LocalPlayer.MatchCurrency.Value == 15



	end
end
end)
MainTab:Button("Collect coins", function()
	for i,v in pairs(game.Workspace.Gems:GetDescendants()) do
		if v.Name == "TouchInterest" then
		firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent,0)
		wait(0.05)
		firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent,1)
		end
		end

end)
MainTab:Toggle("xp Farm (Team Chaos/Hacker Only)", function (state)
	if state then
		ExpFarm = true
	else
		ExpFarm = false
	end
end)
game.Workspace.Time.Changed:Connect(function()
if game.Workspace.Time.Value == 119 then
		if ExpFarm == true then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			game.Players.LocalPlayer.character.Humanoid:EquipTool(v)
end
		end
	end
end)
local noclip = false
 game:GetService("RunService").Stepped:Connect(function()
if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
    end)
MainTab:Keybind("Toggle UI", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
PlayerTab:Slider("WalkSpeed", 16,500, function(value)
    getgenv().Walkspeed = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
end)

PlayerTab:Slider("JumpPower", 50,1000, function(value)
    getgenv().Jumppower = value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end)
end)

PlayerTab:Slider("Fov", 70,120, function(v)
     game.Workspace.CurrentCamera.FieldOfView = v
end)

PlayerTab:Toggle("Loop WalkSpeed/JumpPower", function(state)
    getgenv().loopWJ = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopWJ == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumppower
            end)
        end
    end)
end)

PlayerTab:Toggle("Loop WalkSpeed", function(state)
    getgenv().loopW = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopW == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
            end)
        end
    end)
end)

PlayerTab:Toggle("Loop JumpPower", function(state)
    getgenv().loopJ = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopJ == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumppower
            end)
        end
    end)
end)

PlayerTab:Toggle("Infinite Jump", function(s)
getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

PlayerTab:Button("Rejoin", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

VisualTab:Toggle("Character Highlight", function(state)
getgenv().enabled = state --Toggle on/off
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

VisualTab:Toggle("(Everyone) ESP Name", function(state)
    getgenv().ESPName = state
end)

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
	local h = cr:WaitForChild("Humanoid")
	local hrp = cr:WaitForChild("Head")

	local text = Drawing.new("Text")
	text.Visible = false
	text.Center = true
	text.Outline = false 
	text.Font = 3
	text.Size = 16.16
	text.Color = Color3.new(0,255,0)

	local conection
	local conection2
	local conection3

	local function dc()
		text.Visible = false
		text:Remove()
		if conection then
			conection:Disconnect()
			conection = nil 
		end
		if conection2 then
			conection2:Disconnect()
			conection2 = nil 
		end
		if conection3 then
			conection3:Disconnect()
			conection3 = nil 
		end
	end

	conection2 = cr.AncestryChanged:Connect(function(_,parent)
		if not parent then
			dc()
		end
	end)

	conection3 = h.HealthChanged:Connect(function(v)
		if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
			dc()
		end
	end)

	conection = rs.RenderStepped:Connect(function()
		local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
		if hrp_onscreen and ESPName == true then
			text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
			text.Text = p.DisplayName.." (@"..p.Name..")"
			text.Visible = true
		else
			text.Visible = false
		end
	end)
end

local function p_added(p)
	if p.Character then
		esp(p,p.Character)
	end
	p.CharacterAdded:Connect(function(cr)
		esp(p,cr)
	end)
end

for i,p in next, ps:GetPlayers() do 
	if p ~= lp then
		p_added(p)
	end
end

ps.PlayerAdded:Connect(p_added)

ExtraTab:Button("Infinite Yield",function ()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()
end)

ExtraTab:Button("UnnamedESP (PC)",function ()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)

ExtraTab:Button("FPS Booster",function()
    for i,v in pairs(game:GetDescendants()) do 
        if v:IsA("Texture") then
            v.Texture = ""
        elseif v:IsA("BasePart") then
            v.Material = Enum.Material.Wood
        end 
    end 
end)

ExtraTab:Button("Fps counter",function ()

loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
end)

ExtraTab:Button("Auto Report",function ()

repeat
	task.wait()
until game:IsLoaded()

local lib = {
	['notification'] = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"), true))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

local words = {
	['gay'] = 'Bullying',
	['trans'] = 'Bullying',
	['lgbt'] = 'Bullying',
	['lesbian'] = 'Bullying',
	['suicide'] = 'Bullying',
	['hacker'] = 'Scamming',
	['h@cker'] = 'Scamming',
	['noob'] = 'Bullying',
	['mad'] = 'Bullying',
	['furry'] = 'Bullying',
	['furries'] = 'Bullying',
	['ez'] = 'Bullying',
	['cry'] = 'Bullying',
	['cry about it'] = 'Bullying',
	['ez kid'] = 'Bullying',
	['cheat'] = 'Scamming',
	['report'] = 'Bullying',
	['ur mom'] = 'Bullying',
	['your mom'] = 'Bullying',
	['fk'] = 'Swearing',
	['cringe'] = 'Bullying',
	['trash'] = 'Bullying',
	['bth'] = 'Bullying',
	['dumb'] = 'Bullying',
	['idiot'] = 'Bullying',
	['kid'] = 'Bullying',
	['clown'] = 'Bullying',
	['bozo'] = 'Bullying',
	['racist'] = 'Bullying',
	['autist'] = 'Bullying',
	['autism'] = 'Bullying',
	['get a life'] = 'Bullying',
	['nolife'] = 'Bullying',
	['no life'] = 'Bullying',
	['adopted'] = 'Bullying',
	['skill issue'] = 'Bullying',
	['son'] = 'Bullying',
	['gender'] = 'Bullying',
	['parent'] = 'Bullying',
	['bitckh'] = 'Bullying',
	['lmao'] = 'Bullying',
	['noob'] = 'Bullying',
	['retard'] = 'Bullying',
	['burn'] = 'Bullying',
	['stupid'] = 'Bullying',
	['wthf'] = 'Swearing',
	['pride'] = 'Bullying',
	['mother'] = 'Bullying',
	['father'] = 'Bullying',
	['homo'] = 'Bullying',
	['hate'] = 'Bullying',
	['exploit'] = 'Scamming',
	['hack'] = 'Scamming',
	['download'] = 'Scamming',
	['youtube'] = 'Offsite Links'
}

local players = game:GetService('Players')
local user = game:GetService('Players').LocalPlayer

function lib.notify()
	lib.notification:message{
		Title = "AutoReport",
		Description = "Reported " .. lib.username .. ' for saying "' .. lib.bw .. '"',
		Icon = 6023426926
	}
end

function lib.report(user, name, rs)
	if user and lib.cooldown == false then
		lib.username = name
		local suc, er = pcall(function()
			players:ReportAbuse(players:FindFirstChild(name), rs, 'breaking TOS')
		end)
		if not suc then
			return warn("Couldn't report due to the reason: " .. er .. ' | AR')
		else
			lib.notify()
		end
		lib.cooldown = true
		task.wait(5)
		lib.username = 'unknown'
		lib.bw = 'unknown'
		lib.cooldown = false
	end
end

players.PlayerChatted:Connect(function(chatType, plr, msg)
	msg = string.lower(msg)
	if chatType ~= Enum.PlayerChatType.Whisper and plr ~= user then
		for i, v in next, words do
			if string.find(msg, i) then
				lib.bw = i
				lib.report(plr.UserId, plr.Name,v)
			end
		end
	end
end)

lib.notification:message{
	Title = "AutoReport",
	Description = "loaded",
	Icon = 6023426926
}
end)

ExtraTab:TextBox("Fps Cap", function(Value)
    Settings.Fps = Value
end)

InfoTab:Button("koshary v2 | Made by icyscythe#0001",function ()
setclipboard('icyscythe#0001')
end)
InfoTab:Button("Donation To Support me With Robux",function ()
setclipboard('https://www.roblox.com/games/9182833744/EpicHackhaveshts-Place#!/store')
end)
InfoTab:Button("Donation To Support me With USD",function ()
setclipboard('https://www.gofundme.com/f/urgent-help-libya-floods')
end)
 
		local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vKhonshu/intro/main/ui"))()
		NotifyLib.prompt('koshary v2', 'loaded', 5)
		NotifyLib.prompt('Made by', 'icyscythe 🇵🇸', 5)
		NotifyLib.prompt('Open source', '99% of the script works fine', 5)