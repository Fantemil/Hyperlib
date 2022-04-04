local function service(...) return game:GetService(...) end
local Players = service("Players")
local MarketplaceService = service("MarketplaceService")
local ReplicatedStorage = service("ReplicatedStorage")
local HttpService = service("HttpService")

local Constants = require(ReplicatedStorage:WaitForChild("Constants"))
local Connection = ReplicatedStorage:WaitForChild("Connection")
local ConnectionEvent = ReplicatedStorage:WaitForChild("ConnectionEvent")

local function getservers()
	return Connection:InvokeServer(399)
end

local function joinserver(instid)
	return Connection:InvokeServer(400,instid)
end

local library = loadstring(game:HttpGet("https://pastebin.com/raw/6EEJc0M5",true))() -- https://pastebin.com/raw/SjcYQ23F

local Window,frame = library:AddWindow("   " .. MarketplaceService:GetProductInfo(game.PlaceId).Name .. "      THIS GUI WAS MADE BY SYNOLOPE", {
	main_color = Color3.fromRGB(151, 85, 163),
	min_size = Vector2.new(500, 600),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
})

frame:GetPropertyChangedSignal("Position"):Connect(function()
	local pos = frame.Position
	writefile("meepcityguipos.txt",tostring(pos.X.Scale) .. "," .. tostring(pos.X.Offset) .. "," .. tostring(pos.Y.Scale) .. "," .. tostring(pos.Y.Offset))
end)

local Avatar = Window:AddTab("Avatar")
local AvatarEditor = Window:AddTab("Avatar Editor")
local Shop = Window:AddTab("Shop")
local Fishing = Window:AddTab("Fishing")
local Servers = Window:AddTab("Servers")
local Extra = Window:AddTab("Extras")

local function colorToTable(clr) return {tostring(clr.R*255),tostring(clr.G*255),tostring(clr.B*255)} end

local function ExtractData(humdes)
	local ava = {}

	for _,v in pairs({"WidthScale", "HeadScale","HeightScale","DepthScale","BodyTypeScale","ProportionScale"}) do
		ava[v] = humdes[v]
	end

	for _,v in pairs({"Face","Head","LeftArm","RightArm","LeftLeg","RightLeg","Torso"}) do
		ava[v] = humdes[v]
	end

	for _,v in pairs({"HeadColor","LeftArmColor","RightArmColor","LeftLegColor","RightLegColor","TorsoColor"}) do
		ava[v] = colorToTable(humdes[v])
	end

	for _,v in pairs({"GraphicTShirt","Shirt","Pants"}) do
		ava[v] = humdes[v]
	end

	for _,v in pairs({"ClimbAnimation","FallAnimation","IdleAnimation","JumpAnimation","RunAnimation","SwimAnimation","WalkAnimation"}) do
		ava[v] = humdes[v]
	end


	for _,v in pairs({"Hat","Hair","Back","Face","Front","Neck","Shoulders","Waist"}) do
		ava[v .. "Accessory"] = humdes[v .. "Accessory"]
	end
	ava.Emotes = humdes:GetEmotes()

	local layered = humdes:GetAccessories(false)

	for i,v in pairs(layered) do
		if v.AccessoryType and typeof(v.AccessoryType) == "EnumItem" then
			v.AccessoryType = v.AccessoryType.Name
		end
	end

	ava.AccessoryBlob = layered

	return ava
end

Avatar:AddLabel("Load Avatar")

Avatar:AddTextBox("Load Avatar From UserId",function(userid)
	if userid and tonumber(userid) and Players:GetHumanoidDescriptionFromUserId(tonumber(userid)) then
		local data = ExtractData(Players:GetHumanoidDescriptionFromUserId(tonumber(userid)))
		ConnectionEvent:FireServer(315,data,true)
	end
end)

Avatar:AddTextBox("Load Avatar From Username",function(username)
	if username and Players:GetUserIdFromNameAsync(username) then
		local data = ExtractData(Players:GetHumanoidDescriptionFromUserId(Players:GetUserIdFromNameAsync(username)))
		ConnectionEvent:FireServer(315,data,true)
	end
end)

local cliplabel = Avatar:AddLabel("")

local avatarclipboard = nil
local avatarclipboardname = "Unnamed"

local function copytoclip(data,name)
	if not data then
		avatarclipboard = nil
		avatarclipboardname = "Unnamed"
		cliplabel.Text = "Avatar Clipboard"
	else
		avatarclipboard = data
		avatarclipboardname = name
		cliplabel.Text = "Avatar Clipboard: " .. name
	end
end

local function LoadPlayer(player)
	coroutine.wrap(function()
		if player ~= Players.LocalPlayer then
			local function LoadCharacter(character)
				local prox = Instance.new("ProximityPrompt",character:WaitForChild("HumanoidRootPart"))
				prox.ActionText = "Copy Avatar To Clipboard"
				prox.ObjectText = player.DisplayName
				prox.KeyboardKeyCode = Enum.KeyCode.C
				prox.HoldDuration = .2
				prox.RequiresLineOfSight = false
				prox.Triggered:Connect(function()
					if character and character:FindFirstChild("Humanoid") and character.Humanoid:FindFirstChild("HumanoidDescription") then
						copytoclip(ExtractData(character.Humanoid.HumanoidDescription),player.DisplayName)
					end
				end)
			end
			LoadCharacter(player.Character or player.CharacterAdded:Wait())
			player.CharacterAdded:Connect(LoadCharacter)
		end
	end)()
end

for _,player in pairs(Players:GetPlayers()) do LoadPlayer(player) end
Players.PlayerAdded:Connect(LoadPlayer)

local clipbuttons = Avatar:AddHorizontalAlignment()

copytoclip()

clipbuttons:AddButton("Copy Current Avatar",function()
	local player = Players.LocalPlayer
	local character = player.Character
	if character and character:FindFirstChild("Humanoid") and character.Humanoid:FindFirstChild("HumanoidDescription") then
		copytoclip(ExtractData(character.Humanoid.HumanoidDescription),player.DisplayName)
	end
end)

clipbuttons:AddButton("Load Avatar",function()
	if avatarclipboard then
		ConnectionEvent:FireServer(315,avatarclipboard,true)
	end
end)

clipbuttons:AddButton("Load Hair Combo",function()
	if avatarclipboard then
		local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
		local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
		wearing.HairAccessory = avatarclipboard.HairAccessory
		ConnectionEvent:FireServer(315,wearing,true)
	end
end)

clipbuttons:AddButton("Save Avatar",function()
	if avatarclipboard then
		Connection:InvokeServer(65,avatarclipboardname)

		Connection:InvokeServer(319,avatarclipboard)
	end
end)

Avatar:AddLabel("Fun")

Avatar:AddButton("Big Head",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.HeadScale = 99999
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Small Head",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.HeadScale = 0
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Huge Scales",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.HeadScale = 99999
	wearing.BodyTypeScale = 99999
	wearing.DepthScale = 99999
	wearing.HeightScale = 99999
	wearing.ProportionScale = 99999
	wearing.WidthScale = 99999
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Small Scales",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.HeadScale = 0
	wearing.BodyTypeScale = 0
	wearing.DepthScale = 0
	wearing.HeightScale = 0
	wearing.ProportionScale = 0
	wearing.WidthScale = 0
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Naked",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.Shirt = "0"
	wearing.Pants = "0"
	wearing.GraphicTShirt = "0"
	wearing.AccessoryBlob = {}
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Bypassed Shading",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.GraphicTShirt = "9196895619"
	ConnectionEvent:FireServer(315,wearing,true)
end)

Avatar:AddButton("Trapify",function()
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	wearing.GraphicTShirt = "9196895619"
	wearing.Pants = "7591261065"
	wearing.Shirt = "0"
	wearing.AccessoryBlob = {}
	ConnectionEvent:FireServer(315,wearing,true)
end)

Servers:AddButton("Join Most Populated Server",function()
	local server = getservers()[1]
	joinserver(server.InstanceId)
end)

local function rnd()
	return math.random(-25,25)
end

local crazyloop = nil
local cameravec = Players.LocalPlayer:WaitForChild("Data"):WaitForChild("CameraVector")

Extra:AddSwitch("Go Crazy",function(bool)
	if bool then
		if crazyloop then
			crazyloop:Disconnect()
			crazyloop = nil
		end
		crazyloop = service("RunService").Heartbeat:Connect(function()
			local vec = Vector3.new(rnd(),rnd(),rnd())
			cameravec.Value = vec
			ConnectionEvent:FireServer(163, vec)
		end)
	else
		crazyloop:Disconnect()
		crazyloop = nil
	end
end)

local h = 0
local rainbowloop = nil

Extra:AddSwitch("Rainbow Boy",function(bool)
	if bool then
		if rainbowloop then
			rainbowloop:Disconnect()
			rainbowloop = nil
		end
		rainbowloop = service("RunService").Heartbeat:Connect(function()
			if h > 1 then
				h = h - 1
			end
			local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
			local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
			for _,v in pairs({"HeadColor","LeftArmColor","RightArmColor","LeftLegColor","RightLegColor","TorsoColor"}) do
				wearing[v] = colorToTable(Color3.fromHSV(h,1,1))
			end
			ConnectionEvent:FireServer(315,wearing,true)
			h = h + 0.001
		end)
	else
		rainbowloop:Disconnect()
		rainbowloop = nil
	end
end)

Fishing:AddSwitch("Fishing Silent Aim",function(b)
	if b then
		Constants.STATS.FISHCastObjectMinDistanceToCatch = 9999999
	else
		Constants.STATS.FISHCastObjectMinDistanceToCatch = 50
	end
end)

Fishing:AddSwitch("Client Unlimited Bucket Size",function(b)
	if b then
		Constants.STATS.FISHMaxAllowedInBucket = 9999999
	else
		Constants.STATS.FISHMaxAllowedInBucket = 20
	end
end)

AvatarEditor:AddSwitch("No Outfit Max",function(b)
	if b then
		Constants.STATS.MAXAvatarEditorCustomOutfits = 999999
	else
		Constants.STATS.MAXAvatarEditorCustomOutfits = 3
	end
end)

local function AddAccessoryString(str,id)
	local ids = string.split(str or "",",") or {}
	table.insert(ids,id)
	return table.concat(ids,",")
end

AvatarEditor:AddTextBox("Equip AssetId",function(assetid)
	assetid = tonumber(assetid)
	if assetid then
	local info = MarketplaceService:GetProductInfo(assetid)
	local assettype = info.AssetTypeId
	local data = Connection:InvokeServer(Constants.AE_REQUEST_AE_DATA)
	local wearing = data.PlayerCurrentTemporaryOutfit or data.PlayerCurrentlyWearing
	if assettype == 8 then
		wearing.HeadAccessory = AddAccessoryString(wearing.HeadAccessory,assetid)
	elseif assettype == 41 then
		wearing.HairAccessory = AddAccessoryString(wearing.HairAccessory,assetid)
	elseif assettype == 42 then
		wearing.FaceAccessory = AddAccessoryString(wearing.FaceAccessory,assetid)
	elseif assettype == 43 then
		wearing.NeckAccessory = AddAccessoryString(wearing.NeckAccessory,assetid)
	elseif assettype == 44 then
		wearing.ShouldersAccessory = AddAccessoryString(wearing.ShoulderAccessory,assetid)
	elseif assettype == 45 then
		wearing.FrontAccessory = AddAccessoryString(wearing.FrontAccessory,assetid)
	elseif assettype == 46 then
		wearing.BackAccessory = AddAccessoryString(wearing.BackAccessory,assetid)
	elseif assettype == 47 then
		wearing.WaistAccessory = AddAccessoryString(wearing.WaistAccessory,assetid)
	elseif assettype == 11 then
		wearing.Shirt = assetid
	elseif assettype == 12 then
		wearing.Pants = assetid
	elseif assettype == 2 then
		wearing.GraphicTShirt = assetid
	end
	ConnectionEvent:FireServer(315,wearing,true)
end
end)

Extra:AddSwitch("Unlimited Whisper Length",function(b)
	if b then
		Constants.STATS.WHISPER_MAX_CHARACTERS = 999999
	else
		Constants.STATS.WHISPER_MAX_CHARACTERS = 80
	end
end)

local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan

local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

------------------------------------------------------------------------

local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300

local PITCH_LIMIT = rad(90)

local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0

------------------------------------------------------------------------

local Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

------------------------------------------------------------------------

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)

------------------------------------------------------------------------

local Input = {} do
	local thumbstickCurve do
		local K_CURVATURE = 2.0
		local K_DEADZONE = 0.15

		local function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
		end

		local function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
		end
	end

	local gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	local keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	local mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
	local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
	local FOV_WHEEL_SPEED    = 1.0
	local FOV_GAMEPAD_SPEED  = 0.25
	local NAV_ADJ_SPEED      = 0.75
	local NAV_SHIFT_MUL      = 0.25

	local navSpeed = 1

	function Input.Vel(dt)
		navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.X),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.Y)
		)*NAV_GAMEPAD_SPEED

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.Y),
			thumbstickCurve(-gamepad.Thumbstick2.X)
		)*PAN_GAMEPAD_SPEED
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.H,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")
		end
	end
end

local function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

------------------------------------------------------------------------

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
	cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

local PlayerState = {} do
	local mouseBehavior
	local mouseIconEnabled
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	-- Save state and set up for freecam
	function PlayerState.Push()
		for name in pairs(coreGuis) do
			coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
		end
		for name in pairs(setCores) do
			setCores[name] = StarterGui:GetCore(name)
			StarterGui:SetCore(name, false)
		end
		local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if playergui then
			for _, gui in pairs(playergui:GetChildren()) do
				if gui:IsA("ScreenGui") and gui.Enabled then
					screenGuis[#screenGuis + 1] = gui
					gui.Enabled = false
				end
			end
		end

		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = false

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	-- Restore state
	function PlayerState.Pop()
		for name, isEnabled in pairs(coreGuis) do
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
		end
		for name, isEnabled in pairs(setCores) do
			StarterGui:SetCore(name, isEnabled)
		end
		for _, gui in pairs(screenGuis) do
			if gui.Parent then
				gui.Enabled = true
			end
		end

		Camera.FieldOfView = cameraFieldOfView
		cameraFieldOfView = nil

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

local function StartFreecam()
	local cameraCFrame = Camera.CFrame
	cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end

------------------------------------------------------------------------

local enabled = false

local function ToggleFreecam()
	if enabled then
		StopFreecam()
	else
		StartFreecam()
	end
	enabled = not enabled
end

local function CheckMacro(macro)
	for i = 1, #macro - 1 do
		if not UserInputService:IsKeyDown(macro[i]) then
			return
		end
	end
	ToggleFreecam()
end

local function HandleActivationInput(action, state, input)
	if state == Enum.UserInputState.Begin then
		if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
			CheckMacro(FREECAM_MACRO_KB)
		end
	end
	return Enum.ContextActionResult.Pass
end

Extra:AddSwitch("Freecam",function(b)
	if b then
		StartFreecam()
	else
		StopFreecam()
	end
end)

local oldplusfunc = nil

Extra:AddButton("Spoof PLUS",function()
	local v9 = require(ReplicatedStorage:WaitForChild("Global"));
	oldplusfunc = hookfunction(v9.IsPlayerPLUS,function(p80)
		local v110 = Players:GetPlayerByUserId(p80);
		if not v110 then
			return;
		end;
		if v110 == Players.LocalPlayer then
			v110:SetAttribute("PLUS",true)
			return true;
		else
			return v110:GetAttribute("PLUS") and false;
		end
	end)
end)

local onsaleran = false

Shop:AddButton("Make Offsale Assets Available",function()
	if not onsaleran then
		onsaleran = true
		local function onsale(module)
			local fd = require(module)
			local id = 666
			fd.Categories[id] = {
				CategoryId = id,
				Image = 5277185610,
				CatTitle = "offsale ;)"

			}
			for i,v in pairs(fd.Assets) do
				if not fd.Assets[i].ForSale then
					fd.Assets[i].ForSale = true
					if fd.Assets[i].Details.Price.HalloweenCandy then
						fd.Assets[i].Details.Price.HalloweenCandy = nil
					end
					fd.Assets[i].CatId = id
					fd.Assets[i].Desc = "this is an offsale item that got brought back to life"
				end
			end
		end
		onsale(game.ReplicatedStorage:WaitForChild("Shop_Furniture"))
		onsale(game.ReplicatedStorage:WaitForChild("Shop_Toys"))
		onsale(game.ReplicatedStorage:WaitForChild("Shop_HomeImprovement"))
		onsale(game.ReplicatedStorage:WaitForChild("Shop_PetShop"))
	end
end)

local assetprice = nil

local Furniture = require(ReplicatedStorage:WaitForChild("Shop_Furniture")).Assets
local AssetList = require(ReplicatedStorage.AssetList)
local LoadedAssets = {}
local assetnames = {}

local selectedasset = nil

local function SelectAsset(title)
	local asset = LoadedAssets[title]
	selectedasset = asset
	local coins = asset.Details.Price.Coins
	if coins then
		assetprice.Text = "Asset Price: " .. tostring(coins) .. " Coins"
	else
		assetprice.Text = "Asset Price: Unavailable"
	end
end

local function PurchaseAsset(asset)
	if asset then
		coroutine.wrap(Connection.InvokeServer)(Connection,19,1,asset.ObjectId,{["Quantity"] = 1,["PreferredPaymentMethod"] = "coins"})
	end
end

for i,v in pairs(Furniture) do
	local data = AssetList[v.AssetId]
	if data then
		local title = data.Title
		LoadedAssets[title] = v
		table.insert(assetnames,title)
	end
end

table.sort(assetnames, function(a,b)
    return a < b
end)

local allcost = 0

for i,v in pairs(LoadedAssets) do
	allcost = allcost + (v.Details.Price.Coins or 0)
end

local purall = Shop:AddButton("Purchase All Assets (" .. tostring(allcost) .. " Coins)",function()
	for i,v in pairs(LoadedAssets) do
		PurchaseAsset(v)
	end
end)

assetprice = Shop:AddLabel("Asset Price")

local assetdropdown = Shop:AddDropdown("Asset",SelectAsset)

for i,v in pairs(assetnames) do
	assetdropdown:Add(v)
end

local assetbuttons = Shop:AddHorizontalAlignment()

assetbuttons:AddButton("Purchase Asset",function()
	PurchaseAsset(selectedasset)
end)

assetbuttons:AddButton("Purchase Asset X10",function()
	for i = 1,10,1 do PurchaseAsset(selectedasset) end
end)

assetbuttons:AddButton("Purchase Asset X100",function()
	for i = 1,100,1 do PurchaseAsset(selectedasset) end
end)

local friends = Connection:InvokeServer(153)
local allfriends = {}
for i,v in pairs(friends.OnlineFriends) do
	allfriends[v.Username] = v
end
for i,v in pairs(friends.OfflineFriends) do
	allfriends[v.Username] = v
end

local selectedfriend = nil

local function SelectFriend(username)
	selectedfriend = allfriends[username]
end

local friendsdropdown = Shop:AddDropdown("Friends",SelectFriend)

for i,v in pairs(allfriends) do
	friendsdropdown:Add(i)
end

local giftbuttons = Shop:AddHorizontalAlignment()

local function GiftAsset(asset,userid)
	if asset and userid then
	print(asset,userid)
		coroutine.wrap(Connection.InvokeServer)(Connection,192,1,asset.ObjectId,{["GiftUserId"] = userid})
	end
end

giftbuttons:AddButton("Gift Asset",function()
	GiftAsset(selectedasset,selectedfriend.UserId)
end)

giftbuttons:AddButton("Gift Asset X10",function()
	for i = 1,10,1 do GiftAsset(selectedasset,selectedfriend.UserId) end
end)

giftbuttons:AddButton("Gift Asset X100",function()
	for i = 1,100,1 do GiftAsset(selectedasset,selectedfriend.UserId) end
end)

Extra:AddButton("Generate Coins",function()
	syn.queue_on_teleport([[
if not game:IsLoaded() then game.Loaded:Wait() end
local gui = Instance.new("ScreenGui",game.CoreGui)
gui.IgnoreGuiInset = true
local frame = Instance.new("Frame",gui)
frame.BorderSizePixel = 0
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0.5,0,0.5,0)
frame.AnchorPoint = Vector2.new(0.5,0.5)
frame.BackgroundColor3 = Color3.new(0,0,0)
local tb = Instance.new("TextLabel",frame)
tb.Size = UDim2.new(.2,0,.2,0)
tb.Position = UDim2.new(0.5,0,0.5,0)
tb.AnchorPoint = Vector2.new(0.5,0.5)
tb.BackgroundTransparency = 1
tb.TextColor3 = Color3.new(.9,.9,.9)
tb.Font = "Code"
tb.Text = ""
tb.TextScaled = true

game.RunService.Heartbeat:Connect(function()
for _,v in pairs(game.CoreGui:GetChildren()) do
if v ~= gui then
v:Destroy()
end
end
end)

wait(5)
print("running")
local c = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

wait(2)

local c = 0

for i = 1,10,1 do
for i = 1,1000,1 do
coroutine.wrap(function()
local args = {
    [1] = 369
}

game:GetService("ReplicatedStorage").Connection:InvokeServer(unpack(args))
c = c + 1
tb.Text = "Generated " .. tostring(c*60) .. " coins"
wait()
end)()
end
wait(1)
end

syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/synolope/mpcity/main/loader.lua\",true))()")

wait(2)

game:GetService("ReplicatedStorage").Connection:InvokeServer(293, 3, {
	DestinationVW = 7
})

]])

wait(1)

ConnectionEvent:FireServer(Constants.PIZZASHACK_REQUEST_FAKE_DELIVERY)
end)

Extra:AddButton("Friend Request All",function()
	for _,player in pairs(Players:GetPlayers()) do
		coroutine.wrap(Connection.InvokeServer)(Connection,158,3,player.UserId)
	end
end)

Extra:AddTextBox("Whisper All Friends (Can Be Laggy)",function(message)
	for i,v in pairs(Connection:InvokeServer(153).OnlineFriends) do
		Connection:InvokeServer(275,v.UserId,"hello")
		ConnectionEvent:FireServer(276,v.UserId)
	end
end)

Avatar:Show()
library:FormatWindows()

if isfile("meepcityguipos.txt") then
	local posnums = string.split(readfile("meepcityguipos.txt"),",")
	coroutine.wrap(function()

		wait(.5)
		for i = 1,10,1 do frame.Position = UDim2.new(table.unpack(posnums)) end
	end)()
end