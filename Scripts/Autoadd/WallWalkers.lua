--[[
local _p = game:WaitForChild("Players")
local _plr = _p.ChildAdded:Wait()
if _plr == _p.LocalPlayer then
	_plr.ChildAdded:Connect(function(cccc)
		if c.Name == "PlayerScriptsLoader" then
			c.Disabled = true
		end
	end)
end
]]
repeat wait()
a = pcall(function()
	game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
		if c.Name == "PlayerScriptsLoader"then
			c.Disabled = true
		end
	end)
	end)
	if a == true then break end
until true == false
game:WaitForChild("Players").LocalPlayer:WaitForChild("PlayerScripts").ChildAdded:Connect(function(c)
	if c.Name == "PlayerScriptsLoader"then
		c.Disabled = true
	end
end)


function _CameraUI()
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end
	
	local function waitForChildOfClass(parent, class)
		local child = parent:FindFirstChildOfClass(class)
		while not child or child.ClassName ~= class do
			child = parent.ChildAdded:Wait()
		end
		return child
	end
	
	local PlayerGui = waitForChildOfClass(LocalPlayer, "PlayerGui")
	
	local TOAST_OPEN_SIZE = UDim2.new(0, 326, 0, 58)
	local TOAST_CLOSED_SIZE = UDim2.new(0, 80, 0, 58)
	local TOAST_BACKGROUND_COLOR = Color3.fromRGB(32, 32, 32)
	local TOAST_BACKGROUND_TRANS = 0.4
	local TOAST_FOREGROUND_COLOR = Color3.fromRGB(200, 200, 200)
	local TOAST_FOREGROUND_TRANS = 0
	
	-- Convenient syntax for creating a tree of instanes
	local function create(className)
		return function(props)
			local inst = Instance.new(className)
			local parent = props.Parent
			props.Parent = nil
			for name, val in pairs(props) do
				if type(name) == "string" then
					inst[name] = val
				else
					val.Parent = inst
				end
			end
			-- Only set parent after all other properties are initialized
			inst.Parent = parent
			return inst
		end
	end
	
	local initialized = false
	
	local uiRoot
	local toast
	local toastIcon
	local toastUpperText
	local toastLowerText
	
	local function initializeUI()
		assert(not initialized)
	
		uiRoot = create("ScreenGui"){
			Name = "RbxCameraUI",
			AutoLocalize = false,
			Enabled = true,
			DisplayOrder = -1, -- Appears behind default developer UI
			IgnoreGuiInset = false,
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	
			create("ImageLabel"){
				Name = "Toast",
				Visible = false,
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, 0, 0, 8),
				Size = TOAST_CLOSED_SIZE,
				Image = "rbxasset://textures/ui/Camera/CameraToast9Slice.png",
				ImageColor3 = TOAST_BACKGROUND_COLOR,
				ImageRectSize = Vector2.new(6, 6),
				ImageTransparency = 1,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(3, 3, 3, 3),
				ClipsDescendants = true,
	
				create("Frame"){
					Name = "IconBuffer",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, 80, 1, 0),
	
					create("ImageLabel"){
						Name = "Icon",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, 48, 0, 48),
						ZIndex = 2,
						Image = "rbxasset://textures/ui/Camera/CameraToastIcon.png",
						ImageColor3 = TOAST_FOREGROUND_COLOR,
						ImageTransparency = 1,
					}
				},
	
				create("Frame"){
					Name = "TextBuffer",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 80, 0, 0),
					Size = UDim2.new(1, -80, 1, 0),
					ClipsDescendants = true,
	
					create("TextLabel"){
						Name = "Upper",
						AnchorPoint = Vector2.new(0, 1),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 0, 0.5, 0),
						Size = UDim2.new(1, 0, 0, 19),
						Font = Enum.Font.GothamSemibold,
						Text = "Camera control enabled",
						TextColor3 = TOAST_FOREGROUND_COLOR,
						TextTransparency = 1,
						TextSize = 19,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
					},
	
					create("TextLabel"){
						Name = "Lower",
						AnchorPoint = Vector2.new(0, 0),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 0, 0.5, 3),
						Size = UDim2.new(1, 0, 0, 15),
						Font = Enum.Font.Gotham,
						Text = "Right mouse button to toggle",
						TextColor3 = TOAST_FOREGROUND_COLOR,
						TextTransparency = 1,
						TextSize = 15,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
					},
				},
			},
	
			Parent = PlayerGui,
		}
	
		toast = uiRoot.Toast
		toastIcon = toast.IconBuffer.Icon
		toastUpperText = toast.TextBuffer.Upper
		toastLowerText = toast.TextBuffer.Lower
	
		initialized = true
	end
	
	local CameraUI = {}
	
	do
		-- Instantaneously disable the toast or enable for opening later on. Used when switching camera modes.
		function CameraUI.setCameraModeToastEnabled(enabled)
			if not enabled and not initialized then
				return
			end
	
			if not initialized then
				initializeUI()
			end
	
			toast.Visible = enabled
			if not enabled then
				CameraUI.setCameraModeToastOpen(false)
			end
		end
	
		local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
		-- Tween the toast in or out. Toast must be enabled with setCameraModeToastEnabled.
		function CameraUI.setCameraModeToastOpen(open)
			assert(initialized)
	
			TweenService:Create(toast, tweenInfo, {
				Size = open and TOAST_OPEN_SIZE or TOAST_CLOSED_SIZE,
				ImageTransparency = open and TOAST_BACKGROUND_TRANS or 1,
			}):Play()
	
			TweenService:Create(toastIcon, tweenInfo, {
				ImageTransparency = open and TOAST_FOREGROUND_TRANS or 1,
			}):Play()
	
			TweenService:Create(toastUpperText, tweenInfo, {
				TextTransparency = open and TOAST_FOREGROUND_TRANS or 1,
			}):Play()
	
			TweenService:Create(toastLowerText, tweenInfo, {
				TextTransparency = open and TOAST_FOREGROUND_TRANS or 1,
			}):Play()
		end
	end
	
	return CameraUI
end

function _CameraToggleStateController()
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local GameSettings = UserSettings():GetService("UserGameSettings")
	
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end
	
	local Mouse = LocalPlayer:GetMouse()
	
	local Input = _CameraInput()
	local CameraUI = _CameraUI()
	
	local lastTogglePan = false
	local lastTogglePanChange = tick()
	
	local CROSS_MOUSE_ICON = "rbxasset://textures/Cursors/CrossMouseIcon.png"
	
	local lockStateDirty = false
	local wasTogglePanOnTheLastTimeYouWentIntoFirstPerson = false
	local lastFirstPerson = false
	
	CameraUI.setCameraModeToastEnabled(false)
	
	return function(isFirstPerson)
		local togglePan = Input.getTogglePan()
		local toastTimeout = 3
	
		if isFirstPerson and togglePan ~= lastTogglePan then
			lockStateDirty = true
		end
	
		if lastTogglePan ~= togglePan or tick() - lastTogglePanChange > toastTimeout then
			local doShow = togglePan and tick() - lastTogglePanChange < toastTimeout
	
			CameraUI.setCameraModeToastOpen(doShow)
	
			if togglePan then
				lockStateDirty = false
			end
			lastTogglePanChange = tick()
			lastTogglePan = togglePan
		end
	
		if isFirstPerson ~= lastFirstPerson then
			if isFirstPerson then
				wasTogglePanOnTheLastTimeYouWentIntoFirstPerson = Input.getTogglePan()
				Input.setTogglePan(true)
			elseif not lockStateDirty then
				Input.setTogglePan(wasTogglePanOnTheLastTimeYouWentIntoFirstPerson)
			end
		end
	
		if isFirstPerson then
			if Input.getTogglePan() then
				Mouse.Icon = CROSS_MOUSE_ICON
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				--GameSettings.RotationType = Enum.RotationType.CameraRelative
			else
				Mouse.Icon = ""
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				--GameSettings.RotationType = Enum.RotationType.CameraRelative
			end
	
		elseif Input.getTogglePan() then
			Mouse.Icon = CROSS_MOUSE_ICON
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			GameSettings.RotationType = Enum.RotationType.MovementRelative
	
		elseif Input.getHoldPan() then
			Mouse.Icon = ""
			UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
			GameSettings.RotationType = Enum.RotationType.MovementRelative
	
		else
			Mouse.Icon = ""
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			GameSettings.RotationType = Enum.RotationType.MovementRelative
		end
	
		lastFirstPerson = isFirstPerson
	end
end

function _CameraInput()
	local UserInputService = game:GetService("UserInputService")
	
	local MB_TAP_LENGTH = 0.3 -- length of time for a short mouse button tap to be registered
	
	local rmbDown, rmbUp
	do
		local rmbDownBindable = Instance.new("BindableEvent")
		local rmbUpBindable = Instance.new("BindableEvent")
	
		rmbDown = rmbDownBindable.Event
		rmbUp = rmbUpBindable.Event
	
		UserInputService.InputBegan:Connect(function(input, gpe)
			if not gpe and input.UserInputType == Enum.UserInputType.MouseButton2 then
				rmbDownBindable:Fire()
			end
		end)
	
		UserInputService.InputEnded:Connect(function(input, gpe)
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				rmbUpBindable:Fire()
			end
		end)
	end
	
	local holdPan = false
	local togglePan = false
	local lastRmbDown = 0 -- tick() timestamp of the last right mouse button down event
	
	local CameraInput = {}
	
	function CameraInput.getHoldPan()
		return holdPan
	end
	
	function CameraInput.getTogglePan()
		return togglePan
	end
	
	function CameraInput.getPanning()
		return togglePan or holdPan
	end
	
	function CameraInput.setTogglePan(value)
		togglePan = value
	end
	
	local cameraToggleInputEnabled = false
	local rmbDownConnection
	local rmbUpConnection
	
	function CameraInput.enableCameraToggleInput()
		if cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = true
	
		holdPan = false
		togglePan = false
	
		if rmbDownConnection then
			rmbDownConnection:Disconnect()
		end
	
		if rmbUpConnection then
			rmbUpConnection:Disconnect()
		end
	
		rmbDownConnection = rmbDown:Connect(function()
			holdPan = true
			lastRmbDown = tick()
		end)
	
		rmbUpConnection = rmbUp:Connect(function()
			holdPan = false
			if tick() - lastRmbDown < MB_TAP_LENGTH and (togglePan or UserInputService:GetMouseDelta().Magnitude < 2) then
				togglePan = not togglePan
			end
		end)
	end
	
	function CameraInput.disableCameraToggleInput()
		if not cameraToggleInputEnabled then
			return
		end
		cameraToggleInputEnabled = false
	
		if rmbDownConnection then
			rmbDownConnection:Disconnect()
			rmbDownConnection = nil
		end
		if rmbUpConnection then
			rmbUpConnection:Disconnect()
			rmbUpConnection = nil
		end
	end
	
	return CameraInput
end

function _BaseCamera()
	--[[
		BaseCamera - Abstract base class for camera control modules
		2018 Camera Update - AllYourBlox
	--]]
	
	--[[ Local Constants ]]--
	local UNIT_Z = Vector3.new(0,0,1)
	local X1_Y0_Z1 = Vector3.new(1,0,1)	--Note: not a unit vector, used for projecting onto XZ plane
	
	local THUMBSTICK_DEADZONE = 0.2
	local DEFAULT_DISTANCE = 12.5	-- Studs
	local PORTRAIT_DEFAULT_DISTANCE = 25		-- Studs
	local FIRST_PERSON_DISTANCE_THRESHOLD = 1.0 -- Below this value, snap into first person
	
	local CAMERA_ACTION_PRIORITY = Enum.ContextActionPriority.Default.Value
	
	-- Note: DotProduct check in CoordinateFrame::lookAt() prevents using values within about
	-- 8.11 degrees of the +/- Y axis, that's why these limits are currently 80 degrees
	local MIN_Y = math.rad(-80)
	local MAX_Y = math.rad(80)
	
	local TOUCH_ADJUST_AREA_UP = math.rad(30)
	local TOUCH_ADJUST_AREA_DOWN = math.rad(-15)
	
	local TOUCH_SENSITIVTY_ADJUST_MAX_Y = 2.1
	local TOUCH_SENSITIVTY_ADJUST_MIN_Y = 0.5
	
	local VR_ANGLE = math.rad(15)
	local VR_LOW_INTENSITY_ROTATION = Vector2.new(math.rad(15), 0)
	local VR_HIGH_INTENSITY_ROTATION = Vector2.new(math.rad(45), 0)
	local VR_LOW_INTENSITY_REPEAT = 0.1
	local VR_HIGH_INTENSITY_REPEAT = 0.4
	
	local ZERO_VECTOR2 = Vector2.new(0,0)
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	
	local TOUCH_SENSITIVTY = Vector2.new(0.00945 * math.pi, 0.003375 * math.pi)
	local MOUSE_SENSITIVITY = Vector2.new( 0.002 * math.pi, 0.0015 * math.pi )
	
	local SEAT_OFFSET = Vector3.new(0,5,0)
	local VR_SEAT_OFFSET = Vector3.new(0,4,0)
	local HEAD_OFFSET = Vector3.new(0,1.5,0)
	local R15_HEAD_OFFSET = Vector3.new(0, 1.5, 0)
	local R15_HEAD_OFFSET_NO_SCALING = Vector3.new(0, 2, 0)
	local HUMANOID_ROOT_PART_SIZE = Vector3.new(2, 2, 1)
	
	local GAMEPAD_ZOOM_STEP_1 = 0
	local GAMEPAD_ZOOM_STEP_2 = 10
	local GAMEPAD_ZOOM_STEP_3 = 20
	
	local PAN_SENSITIVITY = 20
	local ZOOM_SENSITIVITY_CURVATURE = 0.5
	
	local abs = math.abs
	local sign = math.sign
	
	local FFlagUserCameraToggle do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserCameraToggle")
		end)
		FFlagUserCameraToggle = success and result
	end
	
	local FFlagUserDontAdjustSensitvityForPortrait do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserDontAdjustSensitvityForPortrait")
		end)
		FFlagUserDontAdjustSensitvityForPortrait = success and result
	end
	
	local FFlagUserFixZoomInZoomOutDiscrepancy do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserFixZoomInZoomOutDiscrepancy")
		end)
		FFlagUserFixZoomInZoomOutDiscrepancy = success and result
	end
	
	local Util = _CameraUtils()
	local ZoomController = _ZoomController()
	local CameraToggleStateController = _CameraToggleStateController()
	local CameraInput = _CameraInput()
	local CameraUI = _CameraUI()
	
	--[[ Roblox Services ]]--
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local StarterGui = game:GetService("StarterGui")
	local GuiService = game:GetService("GuiService")
	local ContextActionService = game:GetService("ContextActionService")
	local VRService = game:GetService("VRService")
	local UserGameSettings = UserSettings():GetService("UserGameSettings")
	
	local player = Players.LocalPlayer 
	
	--[[ The Module ]]--
	local BaseCamera = {}
	BaseCamera.__index = BaseCamera
	
	function BaseCamera.new()
		local self = setmetatable({}, BaseCamera)
	
		-- So that derived classes have access to this
		self.FIRST_PERSON_DISTANCE_THRESHOLD = FIRST_PERSON_DISTANCE_THRESHOLD
	
		self.cameraType = nil
		self.cameraMovementMode = nil
	
		self.lastCameraTransform = nil
		self.rotateInput = ZERO_VECTOR2
		self.userPanningCamera = false
		self.lastUserPanCamera = tick()
	
		self.humanoidRootPart = nil
		self.humanoidCache = {}
	
		-- Subject and position on last update call
		self.lastSubject = nil
		self.lastSubjectPosition = Vector3.new(0,5,0)
	
		-- These subject distance members refer to the nominal camera-to-subject follow distance that the camera
		-- is trying to maintain, not the actual measured value.
		-- The default is updated when screen orientation or the min/max distances change,
		-- to be sure the default is always in range and appropriate for the orientation.
		self.defaultSubjectDistance = math.clamp(DEFAULT_DISTANCE, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
		self.currentSubjectDistance = math.clamp(DEFAULT_DISTANCE, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
	
		self.inFirstPerson = false
		self.inMouseLockedMode = false
		self.portraitMode = false
		self.isSmallTouchScreen = false
	
		-- Used by modules which want to reset the camera angle on respawn.
		self.resetCameraAngle = true
	
		self.enabled = false
	
		-- Input Event Connections
		self.inputBeganConn = nil
		self.inputChangedConn = nil
		self.inputEndedConn = nil
	
		self.startPos = nil
		self.lastPos = nil
		self.panBeginLook = nil
	
		self.panEnabled = true
		self.keyPanEnabled = true
		self.distanceChangeEnabled = true
	
		self.PlayerGui = nil
	
		self.cameraChangedConn = nil
		self.viewportSizeChangedConn = nil
	
		self.boundContextActions = {}
	
		-- VR Support
		self.shouldUseVRRotation = false
		self.VRRotationIntensityAvailable = false
		self.lastVRRotationIntensityCheckTime = 0
		self.lastVRRotationTime = 0
		self.vrRotateKeyCooldown = {}
		self.cameraTranslationConstraints = Vector3.new(1, 1, 1)
		self.humanoidJumpOrigin = nil
		self.trackingHumanoid = nil
		self.cameraFrozen = false
		self.subjectStateChangedConn = nil
	
		-- Gamepad support
		self.activeGamepad = nil
		self.gamepadPanningCamera = false
		self.lastThumbstickRotate = nil
		self.numOfSeconds = 0.7
		self.currentSpeed = 0
		self.maxSpeed = 6
		self.vrMaxSpeed = 4
		self.lastThumbstickPos = Vector2.new(0,0)
		self.ySensitivity = 0.65
		self.lastVelocity = nil
		self.gamepadConnectedConn = nil
		self.gamepadDisconnectedConn = nil
		self.currentZoomSpeed = 1.0
		self.L3ButtonDown = false
		self.dpadLeftDown = false
		self.dpadRightDown = false
	
		-- Touch input support
		self.isDynamicThumbstickEnabled = false
		self.fingerTouches = {}
		self.dynamicTouchInput = nil
		self.numUnsunkTouches = 0
		self.inputStartPositions = {}
		self.inputStartTimes = {}
		self.startingDiff = nil
		self.pinchBeginZoom = nil
		self.userPanningTheCamera = false
		self.touchActivateConn = nil
	
		-- Mouse locked formerly known as shift lock mode
		self.mouseLockOffset = ZERO_VECTOR3
	
		-- [[ NOTICE ]] --
		-- Initialization things used to always execute at game load time, but now these camera modules are instantiated
		-- when needed, so the code here may run well after the start of the game
	
		if player.Character then
			self:OnCharacterAdded(player.Character)
		end
	
		player.CharacterAdded:Connect(function(char)
			self:OnCharacterAdded(char)
		end)
	
		if self.cameraChangedConn then self.cameraChangedConn:Disconnect() end
		self.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			self:OnCurrentCameraChanged()
		end)
		self:OnCurrentCameraChanged()
	
		if self.playerCameraModeChangeConn then self.playerCameraModeChangeConn:Disconnect() end
		self.playerCameraModeChangeConn = player:GetPropertyChangedSignal("CameraMode"):Connect(function()
			self:OnPlayerCameraPropertyChange()
		end)
	
		if self.minDistanceChangeConn then self.minDistanceChangeConn:Disconnect() end
		self.minDistanceChangeConn = player:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function()
			self:OnPlayerCameraPropertyChange()
		end)
	
		if self.maxDistanceChangeConn then self.maxDistanceChangeConn:Disconnect() end
		self.maxDistanceChangeConn = player:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function()
			self:OnPlayerCameraPropertyChange()
		end)
	
		if self.playerDevTouchMoveModeChangeConn then self.playerDevTouchMoveModeChangeConn:Disconnect() end
		self.playerDevTouchMoveModeChangeConn = player:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function()
			self:OnDevTouchMovementModeChanged()
		end)
		self:OnDevTouchMovementModeChanged() -- Init
	
		if self.gameSettingsTouchMoveMoveChangeConn then self.gameSettingsTouchMoveMoveChangeConn:Disconnect() end
		self.gameSettingsTouchMoveMoveChangeConn = UserGameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(function()
			self:OnGameSettingsTouchMovementModeChanged()
		end)
		self:OnGameSettingsTouchMovementModeChanged() -- Init
	
		UserGameSettings:SetCameraYInvertVisible()
		UserGameSettings:SetGamepadCameraSensitivityVisible()
	
		self.hasGameLoaded = game:IsLoaded()
		if not self.hasGameLoaded then
			self.gameLoadedConn = game.Loaded:Connect(function()
				self.hasGameLoaded = true
				self.gameLoadedConn:Disconnect()
				self.gameLoadedConn = nil
			end)
		end
	
		self:OnPlayerCameraPropertyChange()
	
		return self
	end
	
	function BaseCamera:GetModuleName()
		return "BaseCamera"
	end
	
	function BaseCamera:OnCharacterAdded(char)
		self.resetCameraAngle = self.resetCameraAngle or self:GetEnabled()
		self.humanoidRootPart = nil
		if UserInputService.TouchEnabled then
			self.PlayerGui = player:WaitForChild("PlayerGui")
			for _, child in ipairs(char:GetChildren()) do
				if child:IsA("Tool") then
					self.isAToolEquipped = true
				end
			end
			char.ChildAdded:Connect(function(child)
				if child:IsA("Tool") then
					self.isAToolEquipped = true
				end
			end)
			char.ChildRemoved:Connect(function(child)
				if child:IsA("Tool") then
					self.isAToolEquipped = false
				end
			end)
		end
	end
	
	function BaseCamera:GetHumanoidRootPart()
		if not self.humanoidRootPart then
			if player.Character then
				local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					self.humanoidRootPart = humanoid.RootPart
				end
			end
		end
		return self.humanoidRootPart
	end
	
	function BaseCamera:GetBodyPartToFollow(humanoid, isDead)
		-- If the humanoid is dead, prefer the head part if one still exists as a sibling of the humanoid
		if humanoid:GetState() == Enum.HumanoidStateType.Dead then
			local character = humanoid.Parent
			if character and character:IsA("Model") then
				return character:FindFirstChild("Head") or humanoid.RootPart
			end
		end
	
		return humanoid.RootPart
	end
	
	function BaseCamera:GetSubjectPosition()
		local result = self.lastSubjectPosition
		local camera = game.Workspace.CurrentCamera
		local cameraSubject = camera and camera.CameraSubject
	
		if cameraSubject then
			if cameraSubject:IsA("Humanoid") then
				local humanoid = cameraSubject
				local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead
	
				if VRService.VREnabled and humanoidIsDead and humanoid == self.lastSubject then
					result = self.lastSubjectPosition
				else
					local bodyPartToFollow = humanoid.RootPart
	
					-- If the humanoid is dead, prefer their head part as a follow target, if it exists
					if humanoidIsDead then
						if humanoid.Parent and humanoid.Parent:IsA("Model") then
							bodyPartToFollow = humanoid.Parent:FindFirstChild("Head") or bodyPartToFollow
						end
					end
	
					if bodyPartToFollow and bodyPartToFollow:IsA("BasePart") then
						local heightOffset
						if humanoid.RigType == Enum.HumanoidRigType.R15 then
							if humanoid.AutomaticScalingEnabled then
								heightOffset = R15_HEAD_OFFSET
								if bodyPartToFollow == humanoid.RootPart then
									local rootPartSizeOffset = (humanoid.RootPart.Size.Y/2) - (HUMANOID_ROOT_PART_SIZE.Y/2)
									heightOffset = heightOffset + Vector3.new(0, rootPartSizeOffset, 0)
								end
							else
								heightOffset = R15_HEAD_OFFSET_NO_SCALING
							end
						else
							heightOffset = HEAD_OFFSET
						end
	
						if humanoidIsDead then
							heightOffset = ZERO_VECTOR3
						end
	
						result = bodyPartToFollow.CFrame.p + bodyPartToFollow.CFrame:vectorToWorldSpace(heightOffset + humanoid.CameraOffset)
					end
				end
	
			elseif cameraSubject:IsA("VehicleSeat") then
				local offset = SEAT_OFFSET
				if VRService.VREnabled then
					offset = VR_SEAT_OFFSET
				end
				result = cameraSubject.CFrame.p + cameraSubject.CFrame:vectorToWorldSpace(offset)
			elseif cameraSubject:IsA("SkateboardPlatform") then
				result = cameraSubject.CFrame.p + SEAT_OFFSET
			elseif cameraSubject:IsA("BasePart") then
				result = cameraSubject.CFrame.p
			elseif cameraSubject:IsA("Model") then
				if cameraSubject.PrimaryPart then
					result = cameraSubject:GetPrimaryPartCFrame().p
				else
					result = cameraSubject:GetModelCFrame().p
				end
			end
		else
			-- cameraSubject is nil
			-- Note: Previous RootCamera did not have this else case and let self.lastSubject and self.lastSubjectPosition
			-- both get set to nil in the case of cameraSubject being nil. This function now exits here to preserve the
			-- last set valid values for these, as nil values are not handled cases
			return
		end
	
		self.lastSubject = cameraSubject
		self.lastSubjectPosition = result
	
		return result
	end
	
	function BaseCamera:UpdateDefaultSubjectDistance()
		if self.portraitMode then
			self.defaultSubjectDistance = math.clamp(PORTRAIT_DEFAULT_DISTANCE, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
		else
			self.defaultSubjectDistance = math.clamp(DEFAULT_DISTANCE, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
		end
	end
	
	function BaseCamera:OnViewportSizeChanged()
		local camera = game.Workspace.CurrentCamera
		local size = camera.ViewportSize
		self.portraitMode = size.X < size.Y
		self.isSmallTouchScreen = UserInputService.TouchEnabled and (size.Y < 500 or size.X < 700)
	
		self:UpdateDefaultSubjectDistance()
	end
	
	-- Listener for changes to workspace.CurrentCamera
	function BaseCamera:OnCurrentCameraChanged()
		if UserInputService.TouchEnabled then
			if self.viewportSizeChangedConn then
				self.viewportSizeChangedConn:Disconnect()
				self.viewportSizeChangedConn = nil
			end
	
			local newCamera = game.Workspace.CurrentCamera
	
			if newCamera then
				self:OnViewportSizeChanged()
				self.viewportSizeChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
					self:OnViewportSizeChanged()
				end)
			end
		end
	
		-- VR support additions
		if self.cameraSubjectChangedConn then
			self.cameraSubjectChangedConn:Disconnect()
			self.cameraSubjectChangedConn = nil
		end
	
		local camera = game.Workspace.CurrentCamera
		if camera then
			self.cameraSubjectChangedConn = camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
				self:OnNewCameraSubject()
			end)
			self:OnNewCameraSubject()
		end
	end
	
	function BaseCamera:OnDynamicThumbstickEnabled()
		if UserInputService.TouchEnabled then
			self.isDynamicThumbstickEnabled = true
		end
	end
	
	function BaseCamera:OnDynamicThumbstickDisabled()
		self.isDynamicThumbstickEnabled = false
	end
	
	function BaseCamera:OnGameSettingsTouchMovementModeChanged()
		if player.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
			if (UserGameSettings.TouchMovementMode == Enum.TouchMovementMode.DynamicThumbstick
				or UserGameSettings.TouchMovementMode == Enum.TouchMovementMode.Default) then
				self:OnDynamicThumbstickEnabled()
			else
				self:OnDynamicThumbstickDisabled()
			end
		end
	end
	
	function BaseCamera:OnDevTouchMovementModeChanged()
		if player.DevTouchMovementMode.Name == "DynamicThumbstick" then
			self:OnDynamicThumbstickEnabled()
		else
			self:OnGameSettingsTouchMovementModeChanged()
		end
	end
	
	function BaseCamera:OnPlayerCameraPropertyChange()
		-- This call forces re-evaluation of player.CameraMode and clamping to min/max distance which may have changed
		self:SetCameraToSubjectDistance(self.currentSubjectDistance)
	end
	
	function BaseCamera:GetCameraHeight()
		if VRService.VREnabled and not self.inFirstPerson then
			return math.sin(VR_ANGLE) * self.currentSubjectDistance
		end
		return 0
	end
	
	function BaseCamera:InputTranslationToCameraAngleChange(translationVector, sensitivity)
		if not FFlagUserDontAdjustSensitvityForPortrait then
			local camera = game.Workspace.CurrentCamera
			if camera and camera.ViewportSize.X > 0 and camera.ViewportSize.Y > 0 and (camera.ViewportSize.Y > camera.ViewportSize.X) then
				-- Screen has portrait orientation, swap X and Y sensitivity
				return translationVector * Vector2.new( sensitivity.Y, sensitivity.X)
			end
		end
		return translationVector * sensitivity
	end
	
	function BaseCamera:Enable(enable)
		if self.enabled ~= enable then
			self.enabled = enable
			if self.enabled then
				self:ConnectInputEvents()
				self:BindContextActions()
	
				if player.CameraMode == Enum.CameraMode.LockFirstPerson then
					self.currentSubjectDistance = 0.5
					if not self.inFirstPerson then
						self:EnterFirstPerson()
					end
				end
			else
				self:DisconnectInputEvents()
				self:UnbindContextActions()
				-- Clean up additional event listeners and reset a bunch of properties
				self:Cleanup()
			end
		end
	end
	
	function BaseCamera:GetEnabled()
		return self.enabled
	end
	
	function BaseCamera:OnInputBegan(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchBegan(input, processed)
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			self:OnMouse2Down(input, processed)
		elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
			self:OnMouse3Down(input, processed)
		end
	end
	
	function BaseCamera:OnInputChanged(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchChanged(input, processed)
		elseif input.UserInputType == Enum.UserInputType.MouseMovement then
			self:OnMouseMoved(input, processed)
		end
	end
	
	function BaseCamera:OnInputEnded(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchEnded(input, processed)
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			self:OnMouse2Up(input, processed)
		elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
			self:OnMouse3Up(input, processed)
		end
	end
	
	function BaseCamera:OnPointerAction(wheel, pan, pinch, processed)
		if processed then
			return
		end
	
		if pan.Magnitude > 0 then
			local inversionVector = Vector2.new(1, UserGameSettings:GetCameraYInvertValue())
			local rotateDelta = self:InputTranslationToCameraAngleChange(PAN_SENSITIVITY*pan, MOUSE_SENSITIVITY)*inversionVector
			self.rotateInput = self.rotateInput + rotateDelta
		end
	
		local zoom = self.currentSubjectDistance
		local zoomDelta = -(wheel + pinch)
	
		if abs(zoomDelta) > 0 then
			local newZoom
			if self.inFirstPerson and zoomDelta > 0 then
				newZoom = FIRST_PERSON_DISTANCE_THRESHOLD
			else
				if FFlagUserFixZoomInZoomOutDiscrepancy then
					if (zoomDelta > 0) then
						newZoom = zoom + zoomDelta*(1 + zoom*ZOOM_SENSITIVITY_CURVATURE)
					else
						newZoom = (zoom + zoomDelta) / (1 - zoomDelta*ZOOM_SENSITIVITY_CURVATURE)
					end
				else
					newZoom = zoom + zoomDelta*(1 + zoom*ZOOM_SENSITIVITY_CURVATURE)
				end
			end
	
			self:SetCameraToSubjectDistance(newZoom)
		end
	end
	
	function BaseCamera:ConnectInputEvents()
		self.pointerActionConn = UserInputService.PointerAction:Connect(function(wheel, pan, pinch, processed)
			self:OnPointerAction(wheel, pan, pinch, processed)
		end)
	
		self.inputBeganConn = UserInputService.InputBegan:Connect(function(input, processed)
			self:OnInputBegan(input, processed)
		end)
	
		self.inputChangedConn = UserInputService.InputChanged:Connect(function(input, processed)
			self:OnInputChanged(input, processed)
		end)
	
		self.inputEndedConn = UserInputService.InputEnded:Connect(function(input, processed)
			self:OnInputEnded(input, processed)
		end)
	
		self.menuOpenedConn = GuiService.MenuOpened:connect(function()
			self:ResetInputStates()
		end)
	
		self.gamepadConnectedConn = UserInputService.GamepadDisconnected:connect(function(gamepadEnum)
			if self.activeGamepad ~= gamepadEnum then return end
			self.activeGamepad = nil
			self:AssignActivateGamepad()
		end)
	
		self.gamepadDisconnectedConn = UserInputService.GamepadConnected:connect(function(gamepadEnum)
			if self.activeGamepad == nil then
				self:AssignActivateGamepad()
			end
		end)
	
		self:AssignActivateGamepad()
		if not FFlagUserCameraToggle then
			self:UpdateMouseBehavior()
		end
	end
	
	function BaseCamera:BindContextActions()
		self:BindGamepadInputActions()
		self:BindKeyboardInputActions()
	end
	
	function BaseCamera:AssignActivateGamepad()
		local connectedGamepads = UserInputService:GetConnectedGamepads()
		if #connectedGamepads > 0 then
			for i = 1, #connectedGamepads do
				if self.activeGamepad == nil then
					self.activeGamepad = connectedGamepads[i]
				elseif connectedGamepads[i].Value < self.activeGamepad.Value then
					self.activeGamepad = connectedGamepads[i]
				end
			end
		end
	
		if self.activeGamepad == nil then -- nothing is connected, at least set up for gamepad1
			self.activeGamepad = Enum.UserInputType.Gamepad1
		end
	end
	
	function BaseCamera:DisconnectInputEvents()
		if self.inputBeganConn then
			self.inputBeganConn:Disconnect()
			self.inputBeganConn = nil
		end
		if self.inputChangedConn then
			self.inputChangedConn:Disconnect()
			self.inputChangedConn = nil
		end
		if self.inputEndedConn then
			self.inputEndedConn:Disconnect()
			self.inputEndedConn = nil
		end
	end
	
	function BaseCamera:UnbindContextActions()
		for i = 1, #self.boundContextActions do
			ContextActionService:UnbindAction(self.boundContextActions[i])
		end
		self.boundContextActions = {}
	end
	
	function BaseCamera:Cleanup()
		if self.pointerActionConn then
			self.pointerActionConn:Disconnect()
			self.pointerActionConn = nil
		end
		if self.menuOpenedConn then
			self.menuOpenedConn:Disconnect()
			self.menuOpenedConn = nil
		end
		if self.mouseLockToggleConn then
			self.mouseLockToggleConn:Disconnect()
			self.mouseLockToggleConn = nil
		end
		if self.gamepadConnectedConn then
			self.gamepadConnectedConn:Disconnect()
			self.gamepadConnectedConn = nil
		end
		if self.gamepadDisconnectedConn then
			self.gamepadDisconnectedConn:Disconnect()
			self.gamepadDisconnectedConn = nil
		end
		if self.subjectStateChangedConn then
			self.subjectStateChangedConn:Disconnect()
			self.subjectStateChangedConn = nil
		end
		if self.viewportSizeChangedConn then
			self.viewportSizeChangedConn:Disconnect()
			self.viewportSizeChangedConn = nil
		end
		if self.touchActivateConn then
			self.touchActivateConn:Disconnect()
			self.touchActivateConn = nil
		end
	
		self.turningLeft = false
		self.turningRight = false
		self.lastCameraTransform = nil
		self.lastSubjectCFrame = nil
		self.userPanningTheCamera = false
		self.rotateInput = Vector2.new()
		self.gamepadPanningCamera = Vector2.new(0,0)
	
		-- Reset input states
		self.startPos = nil
		self.lastPos = nil
		self.panBeginLook = nil
		self.isRightMouseDown = false
		self.isMiddleMouseDown = false
	
		self.fingerTouches = {}
		self.dynamicTouchInput = nil
		self.numUnsunkTouches = 0
	
		self.startingDiff = nil
		self.pinchBeginZoom = nil
	
		-- Unlock mouse for example if right mouse button was being held down
		if UserInputService.MouseBehavior ~= Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end
	end
	
	-- This is called when settings menu is opened
	function BaseCamera:ResetInputStates()
		self.isRightMouseDown = false
		self.isMiddleMouseDown = false
		self:OnMousePanButtonReleased() -- this function doesn't seem to actually need parameters
	
		if UserInputService.TouchEnabled then
			--[[menu opening was causing serious touch issues
			this should disable all active touch events if
			they're active when menu opens.]]
			for inputObject in pairs(self.fingerTouches) do
				self.fingerTouches[inputObject] = nil
			end
			self.dynamicTouchInput = nil
			self.panBeginLook = nil
			self.startPos = nil
			self.lastPos = nil
			self.userPanningTheCamera = false
			self.startingDiff = nil
			self.pinchBeginZoom = nil
			self.numUnsunkTouches = 0
		end
	end
	
	function BaseCamera:GetGamepadPan(name, state, input)
		if input.UserInputType == self.activeGamepad and input.KeyCode == Enum.KeyCode.Thumbstick2 then
	--		if self.L3ButtonDown then
	--			-- L3 Thumbstick is depressed, right stick controls dolly in/out
	--			if (input.Position.Y > THUMBSTICK_DEADZONE) then
	--				self.currentZoomSpeed = 0.96
	--			elseif (input.Position.Y < -THUMBSTICK_DEADZONE) then
	--				self.currentZoomSpeed = 1.04
	--			else
	--				self.currentZoomSpeed = 1.00
	--			end
	--		else
				if state == Enum.UserInputState.Cancel then
					self.gamepadPanningCamera = ZERO_VECTOR2
					return
				end
	
				local inputVector = Vector2.new(input.Position.X, -input.Position.Y)
				if inputVector.magnitude > THUMBSTICK_DEADZONE then
					self.gamepadPanningCamera = Vector2.new(input.Position.X, -input.Position.Y)
				else
					self.gamepadPanningCamera = ZERO_VECTOR2
				end
			--end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function BaseCamera:DoKeyboardPanTurn(name, state, input)
		if not self.hasGameLoaded and VRService.VREnabled then
			return Enum.ContextActionResult.Pass
		end
	
		if state == Enum.UserInputState.Cancel then
			self.turningLeft = false
			self.turningRight = false
			return Enum.ContextActionResult.Sink
		end
	
		if self.panBeginLook == nil and self.keyPanEnabled then
			if input.KeyCode == Enum.KeyCode.Left then
				self.turningLeft = state == Enum.UserInputState.Begin
			elseif input.KeyCode == Enum.KeyCode.Right then
				self.turningRight = state == Enum.UserInputState.Begin
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function BaseCamera:DoPanRotateCamera(rotateAngle)
		local angle = Util.RotateVectorByAngleAndRound(self:GetCameraLookVector() * Vector3.new(1,0,1), rotateAngle, math.pi*0.25)
		if angle ~= 0 then
			self.rotateInput = self.rotateInput + Vector2.new(angle, 0)
			self.lastUserPanCamera = tick()
			self.lastCameraTransform = nil
		end
	end
	
	function BaseCamera:DoGamepadZoom(name, state, input)
		if input.UserInputType == self.activeGamepad then
			if input.KeyCode == Enum.KeyCode.ButtonR3 then
				if state == Enum.UserInputState.Begin then
					if self.distanceChangeEnabled then
						local dist = self:GetCameraToSubjectDistance()
	
						if dist > (GAMEPAD_ZOOM_STEP_2 + GAMEPAD_ZOOM_STEP_3)/2 then
							self:SetCameraToSubjectDistance(GAMEPAD_ZOOM_STEP_2)
						elseif dist > (GAMEPAD_ZOOM_STEP_1 + GAMEPAD_ZOOM_STEP_2)/2 then
							self:SetCameraToSubjectDistance(GAMEPAD_ZOOM_STEP_1)
						else
							self:SetCameraToSubjectDistance(GAMEPAD_ZOOM_STEP_3)
						end
					end
				end
			elseif input.KeyCode == Enum.KeyCode.DPadLeft then
				self.dpadLeftDown = (state == Enum.UserInputState.Begin)
			elseif input.KeyCode == Enum.KeyCode.DPadRight then
				self.dpadRightDown = (state == Enum.UserInputState.Begin)
			end
	
			if self.dpadLeftDown then
				self.currentZoomSpeed = 1.04
			elseif self.dpadRightDown then
				self.currentZoomSpeed = 0.96
			else
				self.currentZoomSpeed = 1.00
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	--	elseif input.UserInputType == self.activeGamepad and input.KeyCode == Enum.KeyCode.ButtonL3 then
	--		if (state == Enum.UserInputState.Begin) then
	--			self.L3ButtonDown = true
	--		elseif (state == Enum.UserInputState.End) then
	--			self.L3ButtonDown = false
	--			self.currentZoomSpeed = 1.00
	--		end
	--	end
	end
	
	function BaseCamera:DoKeyboardZoom(name, state, input)
		if not self.hasGameLoaded and VRService.VREnabled then
			return Enum.ContextActionResult.Pass
		end
	
		if state ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
	
		if self.distanceChangeEnabled and player.CameraMode ~= Enum.CameraMode.LockFirstPerson then
			if input.KeyCode == Enum.KeyCode.I then
				self:SetCameraToSubjectDistance( self.currentSubjectDistance - 5 )
			elseif input.KeyCode == Enum.KeyCode.O then
				self:SetCameraToSubjectDistance( self.currentSubjectDistance + 5 )
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function BaseCamera:BindAction(actionName, actionFunc, createTouchButton, ...)
		table.insert(self.boundContextActions, actionName)
		ContextActionService:BindActionAtPriority(actionName, actionFunc, createTouchButton,
			CAMERA_ACTION_PRIORITY, ...)
	end
	
	function BaseCamera:BindGamepadInputActions()
		self:BindAction("BaseCameraGamepadPan", function(name, state, input) return self:GetGamepadPan(name, state, input) end,
			false, Enum.KeyCode.Thumbstick2)
		self:BindAction("BaseCameraGamepadZoom", function(name, state, input) return self:DoGamepadZoom(name, state, input) end,
			false, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight, Enum.KeyCode.ButtonR3)
	end
	
	function BaseCamera:BindKeyboardInputActions()
		self:BindAction("BaseCameraKeyboardPanArrowKeys", function(name, state, input) return self:DoKeyboardPanTurn(name, state, input) end,
			false, Enum.KeyCode.Left, Enum.KeyCode.Right)
		self:BindAction("BaseCameraKeyboardZoom", function(name, state, input) return self:DoKeyboardZoom(name, state, input) end,
			false, Enum.KeyCode.I, Enum.KeyCode.O)
	end
	
	local function isInDynamicThumbstickArea(input)
		local playerGui = player:FindFirstChildOfClass("PlayerGui")
		local touchGui = playerGui and playerGui:FindFirstChild("TouchGui")
		local touchFrame = touchGui and touchGui:FindFirstChild("TouchControlFrame")
		local thumbstickFrame = touchFrame and touchFrame:FindFirstChild("DynamicThumbstickFrame")
	
		if not thumbstickFrame then
			return false
		end
	
		local frameCornerTopLeft = thumbstickFrame.AbsolutePosition
		local frameCornerBottomRight = frameCornerTopLeft + thumbstickFrame.AbsoluteSize
		if input.Position.X >= frameCornerTopLeft.X and input.Position.Y >= frameCornerTopLeft.Y then
			if input.Position.X <= frameCornerBottomRight.X and input.Position.Y <= frameCornerBottomRight.Y then
				return true
			end
		end
	
		return false
	end
	
	---Adjusts the camera Y touch Sensitivity when moving away from the center and in the TOUCH_SENSITIVTY_ADJUST_AREA
	function BaseCamera:AdjustTouchSensitivity(delta, sensitivity)
		local cameraCFrame = game.Workspace.CurrentCamera and game.Workspace.CurrentCamera.CFrame
		if not cameraCFrame then
			return sensitivity
		end
		local currPitchAngle = cameraCFrame:ToEulerAnglesYXZ()
	
		local multiplierY = TOUCH_SENSITIVTY_ADJUST_MAX_Y
		if currPitchAngle > TOUCH_ADJUST_AREA_UP and delta.Y < 0 then
			local fractionAdjust = (currPitchAngle - TOUCH_ADJUST_AREA_UP)/(MAX_Y - TOUCH_ADJUST_AREA_UP)
			fractionAdjust = 1 - (1 - fractionAdjust)^3
			multiplierY = TOUCH_SENSITIVTY_ADJUST_MAX_Y - fractionAdjust * (
				TOUCH_SENSITIVTY_ADJUST_MAX_Y - TOUCH_SENSITIVTY_ADJUST_MIN_Y)
		elseif currPitchAngle < TOUCH_ADJUST_AREA_DOWN and delta.Y > 0 then
			local fractionAdjust = (currPitchAngle - TOUCH_ADJUST_AREA_DOWN)/(MIN_Y - TOUCH_ADJUST_AREA_DOWN)
			fractionAdjust = 1 - (1 - fractionAdjust)^3
			multiplierY = TOUCH_SENSITIVTY_ADJUST_MAX_Y - fractionAdjust * (
				TOUCH_SENSITIVTY_ADJUST_MAX_Y - TOUCH_SENSITIVTY_ADJUST_MIN_Y)
		end
	
		return Vector2.new(
			sensitivity.X,
			sensitivity.Y * multiplierY
		)
	end
	
	function BaseCamera:OnTouchBegan(input, processed)
		local canUseDynamicTouch = self.isDynamicThumbstickEnabled and not processed
		if canUseDynamicTouch then
			if self.dynamicTouchInput == nil and isInDynamicThumbstickArea(input) then
				-- First input in the dynamic thumbstick area should always be ignored for camera purposes
				-- Even if the dynamic thumbstick does not process it immediately
				self.dynamicTouchInput = input
				return
			end
			self.fingerTouches[input] = processed
			self.inputStartPositions[input] = input.Position
			self.inputStartTimes[input] = tick()
			self.numUnsunkTouches = self.numUnsunkTouches + 1
		end
	end
	
	function BaseCamera:OnTouchChanged(input, processed)
		if self.fingerTouches[input] == nil then
			if self.isDynamicThumbstickEnabled then
				return
			end
			self.fingerTouches[input] = processed
			if not processed then
				self.numUnsunkTouches = self.numUnsunkTouches + 1
			end
		end
	
		if self.numUnsunkTouches == 1 then
			if self.fingerTouches[input] == false then
				self.panBeginLook = self.panBeginLook or self:GetCameraLookVector()
				self.startPos = self.startPos or input.Position
				self.lastPos = self.lastPos or self.startPos
				self.userPanningTheCamera = true
	
				local delta = input.Position - self.lastPos
				delta = Vector2.new(delta.X, delta.Y * UserGameSettings:GetCameraYInvertValue())
				if self.panEnabled then
					local adjustedTouchSensitivity = TOUCH_SENSITIVTY
					self:AdjustTouchSensitivity(delta, TOUCH_SENSITIVTY)
	
					local desiredXYVector = self:InputTranslationToCameraAngleChange(delta, adjustedTouchSensitivity)
					self.rotateInput = self.rotateInput + desiredXYVector
				end
				self.lastPos = input.Position
			end
		else
			self.panBeginLook = nil
			self.startPos = nil
			self.lastPos = nil
			self.userPanningTheCamera = false
		end
		if self.numUnsunkTouches == 2 then
			local unsunkTouches = {}
			for touch, wasSunk in pairs(self.fingerTouches) do
				if not wasSunk then
					table.insert(unsunkTouches, touch)
				end
			end
			if #unsunkTouches == 2 then
				local difference = (unsunkTouches[1].Position - unsunkTouches[2].Position).magnitude
				if self.startingDiff and self.pinchBeginZoom then
					local scale = difference / math.max(0.01, self.startingDiff)
					local clampedScale = math.clamp(scale, 0.1, 10)
					if self.distanceChangeEnabled then
						self:SetCameraToSubjectDistance(self.pinchBeginZoom / clampedScale)
					end
				else
					self.startingDiff = difference
					self.pinchBeginZoom = self:GetCameraToSubjectDistance()
				end
			end
		else
			self.startingDiff = nil
			self.pinchBeginZoom = nil
		end
	end
	
	function BaseCamera:OnTouchEnded(input, processed)
		if input == self.dynamicTouchInput then
			self.dynamicTouchInput = nil
			return
		end
	
		if self.fingerTouches[input] == false then
			if self.numUnsunkTouches == 1 then
				self.panBeginLook = nil
				self.startPos = nil
				self.lastPos = nil
				self.userPanningTheCamera = false
			elseif self.numUnsunkTouches == 2 then
				self.startingDiff = nil
				self.pinchBeginZoom = nil
			end
		end
	
		if self.fingerTouches[input] ~= nil and self.fingerTouches[input] == false then
			self.numUnsunkTouches = self.numUnsunkTouches - 1
		end
		self.fingerTouches[input] = nil
		self.inputStartPositions[input] = nil
		self.inputStartTimes[input] = nil
	end
	
	function BaseCamera:OnMouse2Down(input, processed)
		if processed then return end
	
		self.isRightMouseDown = true
		self:OnMousePanButtonPressed(input, processed)
	end
	
	function BaseCamera:OnMouse2Up(input, processed)
		self.isRightMouseDown = false
		self:OnMousePanButtonReleased(input, processed)
	end
	
	function BaseCamera:OnMouse3Down(input, processed)
		if processed then return end
	
		self.isMiddleMouseDown = true
		self:OnMousePanButtonPressed(input, processed)
	end
	
	function BaseCamera:OnMouse3Up(input, processed)
		self.isMiddleMouseDown = false
		self:OnMousePanButtonReleased(input, processed)
	end
	
	function BaseCamera:OnMouseMoved(input, processed)
		if not self.hasGameLoaded and VRService.VREnabled then
			return
		end
	
		local inputDelta = input.Delta
		inputDelta = Vector2.new(inputDelta.X, inputDelta.Y * UserGameSettings:GetCameraYInvertValue())
	
		local isInputPanning = FFlagUserCameraToggle and CameraInput.getPanning()
		local isBeginLook = self.startPos and self.lastPos and self.panBeginLook
		local isPanning = isBeginLook or self.inFirstPerson or self.inMouseLockedMode or isInputPanning
	
		if self.panEnabled and isPanning then
			local desiredXYVector = self:InputTranslationToCameraAngleChange(inputDelta, MOUSE_SENSITIVITY)
			self.rotateInput = self.rotateInput + desiredXYVector
		end
	
		if self.startPos and self.lastPos and self.panBeginLook then
			self.lastPos = self.lastPos + input.Delta
		end
	end
	
	function BaseCamera:OnMousePanButtonPressed(input, processed)
		if processed then return end
		if not FFlagUserCameraToggle then
			self:UpdateMouseBehavior()
		end
		self.panBeginLook = self.panBeginLook or self:GetCameraLookVector()
		self.startPos = self.startPos or input.Position
		self.lastPos = self.lastPos or self.startPos
		self.userPanningTheCamera = true
	end
	
	function BaseCamera:OnMousePanButtonReleased(input, processed)
		if not FFlagUserCameraToggle then
			self:UpdateMouseBehavior()
		end
		if not (self.isRightMouseDown or self.isMiddleMouseDown) then
			self.panBeginLook = nil
			self.startPos = nil
			self.lastPos = nil
			self.userPanningTheCamera = false
		end
	end
	
	function BaseCamera:UpdateMouseBehavior()
		if FFlagUserCameraToggle and self.isCameraToggle then
			CameraUI.setCameraModeToastEnabled(true)
			CameraInput.enableCameraToggleInput()
			CameraToggleStateController(self.inFirstPerson)
		else
			if FFlagUserCameraToggle then
				CameraUI.setCameraModeToastEnabled(false)
				CameraInput.disableCameraToggleInput()
			end
			-- first time transition to first person mode or mouse-locked third person
			if self.inFirstPerson or self.inMouseLockedMode then
				--UserGameSettings.RotationType = Enum.RotationType.CameraRelative
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			else
				UserGameSettings.RotationType = Enum.RotationType.MovementRelative
				if self.isRightMouseDown or self.isMiddleMouseDown then
					UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
				else
					UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				end
			end
		end
	end
	
	function BaseCamera:UpdateForDistancePropertyChange()
		-- Calling this setter with the current value will force checking that it is still
		-- in range after a change to the min/max distance limits
		self:SetCameraToSubjectDistance(self.currentSubjectDistance)
	end
	
	function BaseCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
		local lastSubjectDistance = self.currentSubjectDistance
	
		-- By default, camera modules will respect LockFirstPerson and override the currentSubjectDistance with 0
		-- regardless of what Player.CameraMinZoomDistance is set to, so that first person can be made
		-- available by the developer without needing to allow players to mousewheel dolly into first person.
		-- Some modules will override this function to remove or change first-person capability.
		if player.CameraMode == Enum.CameraMode.LockFirstPerson then
			self.currentSubjectDistance = 0.5
			if not self.inFirstPerson then
				self:EnterFirstPerson()
			end
		else
			local newSubjectDistance = math.clamp(desiredSubjectDistance, player.CameraMinZoomDistance, player.CameraMaxZoomDistance)
			if newSubjectDistance < FIRST_PERSON_DISTANCE_THRESHOLD then
				self.currentSubjectDistance = 0.5
				if not self.inFirstPerson then
					self:EnterFirstPerson()
				end
			else
				self.currentSubjectDistance = newSubjectDistance
				if self.inFirstPerson then
					self:LeaveFirstPerson()
				end
			end
		end
	
		-- Pass target distance and zoom direction to the zoom controller
		ZoomController.SetZoomParameters(self.currentSubjectDistance, math.sign(desiredSubjectDistance - lastSubjectDistance))
	
		-- Returned only for convenience to the caller to know the outcome
		return self.currentSubjectDistance
	end
	
	function BaseCamera:SetCameraType( cameraType )
		--Used by derived classes
		self.cameraType = cameraType
	end
	
	function BaseCamera:GetCameraType()
		return self.cameraType
	end
	
	-- Movement mode standardized to Enum.ComputerCameraMovementMode values
	function BaseCamera:SetCameraMovementMode( cameraMovementMode )
		self.cameraMovementMode = cameraMovementMode
	end
	
	function BaseCamera:GetCameraMovementMode()
		return self.cameraMovementMode
	end
	
	function BaseCamera:SetIsMouseLocked(mouseLocked)
		self.inMouseLockedMode = mouseLocked
		if not FFlagUserCameraToggle then
			self:UpdateMouseBehavior()
		end
	end
	
	function BaseCamera:GetIsMouseLocked()
		return self.inMouseLockedMode
	end
	
	function BaseCamera:SetMouseLockOffset(offsetVector)
		self.mouseLockOffset = offsetVector
	end
	
	function BaseCamera:GetMouseLockOffset()
		return self.mouseLockOffset
	end
	
	function BaseCamera:InFirstPerson()
		return self.inFirstPerson
	end
	
	function BaseCamera:EnterFirstPerson()
		-- Overridden in ClassicCamera, the only module which supports FirstPerson
	end
	
	function BaseCamera:LeaveFirstPerson()
		-- Overridden in ClassicCamera, the only module which supports FirstPerson
	end
	
	-- Nominal distance, set by dollying in and out with the mouse wheel or equivalent, not measured distance
	function BaseCamera:GetCameraToSubjectDistance()
		return self.currentSubjectDistance
	end
	
	-- Actual measured distance to the camera Focus point, which may be needed in special circumstances, but should
	-- never be used as the starting point for updating the nominal camera-to-subject distance (self.currentSubjectDistance)
	-- since that is a desired target value set only by mouse wheel (or equivalent) input, PopperCam, and clamped to min max camera distance
	function BaseCamera:GetMeasuredDistanceToFocus()
		local camera = game.Workspace.CurrentCamera
		if camera then
			return (camera.CoordinateFrame.p - camera.Focus.p).magnitude
		end
		return nil
	end
	
	function BaseCamera:GetCameraLookVector()
		return game.Workspace.CurrentCamera and game.Workspace.CurrentCamera.CFrame.lookVector or UNIT_Z
	end
	
	-- Replacements for RootCamera:RotateCamera() which did not actually rotate the camera
	-- suppliedLookVector is not normally passed in, it's used only by Watch camera
	function BaseCamera:CalculateNewLookCFrame(suppliedLookVector)
		local currLookVector = suppliedLookVector or self:GetCameraLookVector()
		local currPitchAngle = math.asin(currLookVector.y)
		local yTheta = math.clamp(self.rotateInput.y, -MAX_Y + currPitchAngle, -MIN_Y + currPitchAngle)
		local constrainedRotateInput = Vector2.new(self.rotateInput.x, yTheta)
		local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
		local newLookCFrame = CFrame.Angles(0, -constrainedRotateInput.x, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.y,0,0)
		return newLookCFrame
	end
	function BaseCamera:CalculateNewLookVector(suppliedLookVector)
		local newLookCFrame = self:CalculateNewLookCFrame(suppliedLookVector)
		return newLookCFrame.lookVector
	end
	
	function BaseCamera:CalculateNewLookVectorVR()
		local subjectPosition = self:GetSubjectPosition()
		local vecToSubject = (subjectPosition - game.Workspace.CurrentCamera.CFrame.p)
		local currLookVector = (vecToSubject * X1_Y0_Z1).unit
		local vrRotateInput = Vector2.new(self.rotateInput.x, 0)
		local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
		local yawRotatedVector = (CFrame.Angles(0, -vrRotateInput.x, 0) * startCFrame * CFrame.Angles(-vrRotateInput.y,0,0)).lookVector
		return (yawRotatedVector * X1_Y0_Z1).unit
	end
	
	function BaseCamera:GetHumanoid()
		local character = player and player.Character
		if character then
			local resultHumanoid = self.humanoidCache[player]
			if resultHumanoid and resultHumanoid.Parent == character then
				return resultHumanoid
			else
				self.humanoidCache[player] = nil -- Bust Old Cache
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					self.humanoidCache[player] = humanoid
				end
				return humanoid
			end
		end
		return nil
	end
	
	function BaseCamera:GetHumanoidPartToFollow(humanoid, humanoidStateType)
		if humanoidStateType == Enum.HumanoidStateType.Dead then
			local character = humanoid.Parent
			if character then
				return character:FindFirstChild("Head") or humanoid.Torso
			else
				return humanoid.Torso
			end
		else
			return humanoid.Torso
		end
	end
	
	function BaseCamera:UpdateGamepad()
		local gamepadPan = self.gamepadPanningCamera
		if gamepadPan and (self.hasGameLoaded or not VRService.VREnabled) then
			gamepadPan = Util.GamepadLinearToCurve(gamepadPan)
			local currentTime = tick()
			if gamepadPan.X ~= 0 or gamepadPan.Y ~= 0 then
				self.userPanningTheCamera = true
			elseif gamepadPan == ZERO_VECTOR2 then
				self.lastThumbstickRotate = nil
				if self.lastThumbstickPos == ZERO_VECTOR2 then
					self.currentSpeed = 0
				end
			end
	
			local finalConstant = 0
	
			if self.lastThumbstickRotate then
				if VRService.VREnabled then
					self.currentSpeed = self.vrMaxSpeed
				else
					local elapsedTime = (currentTime - self.lastThumbstickRotate) * 10
					self.currentSpeed = self.currentSpeed + (self.maxSpeed * ((elapsedTime*elapsedTime)/self.numOfSeconds))
	
					if self.currentSpeed > self.maxSpeed then self.currentSpeed = self.maxSpeed end
	
					if self.lastVelocity then
						local velocity = (gamepadPan - self.lastThumbstickPos)/(currentTime - self.lastThumbstickRotate)
						local velocityDeltaMag = (velocity - self.lastVelocity).magnitude
	
						if velocityDeltaMag > 12 then
							self.currentSpeed = self.currentSpeed * (20/velocityDeltaMag)
							if self.currentSpeed > self.maxSpeed then self.currentSpeed = self.maxSpeed end
						end
					end
				end
	
				finalConstant = UserGameSettings.GamepadCameraSensitivity * self.currentSpeed
				self.lastVelocity = (gamepadPan - self.lastThumbstickPos)/(currentTime - self.lastThumbstickRotate)
			end
	
			self.lastThumbstickPos = gamepadPan
			self.lastThumbstickRotate = currentTime
	
			return Vector2.new( gamepadPan.X * finalConstant, gamepadPan.Y * finalConstant * self.ySensitivity * UserGameSettings:GetCameraYInvertValue())
		end
	
		return ZERO_VECTOR2
	end
	
	-- [[ VR Support Section ]] --
	
	function BaseCamera:ApplyVRTransform()
		if not VRService.VREnabled then
			return
		end
	
		--we only want this to happen in first person VR
		local rootJoint = self.humanoidRootPart and self.humanoidRootPart:FindFirstChild("RootJoint")
		if not rootJoint then
			return
		end
	
		local cameraSubject = game.Workspace.CurrentCamera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA("VehicleSeat")
	
		if self.inFirstPerson and not isInVehicle then
			local vrFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
			local vrRotation = vrFrame - vrFrame.p
			rootJoint.C0 = CFrame.new(vrRotation:vectorToObjectSpace(vrFrame.p)) * CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
		else
			rootJoint.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
		end
	end
	
	function BaseCamera:IsInFirstPerson()
		return self.inFirstPerson
	end
	
	function BaseCamera:ShouldUseVRRotation()
		if not VRService.VREnabled then
			return false
		end
	
		if not self.VRRotationIntensityAvailable and tick() - self.lastVRRotationIntensityCheckTime < 1 then
			return false
		end
	
		local success, vrRotationIntensity = pcall(function() return StarterGui:GetCore("VRRotationIntensity") end)
		self.VRRotationIntensityAvailable = success and vrRotationIntensity ~= nil
		self.lastVRRotationIntensityCheckTime = tick()
	
		self.shouldUseVRRotation = success and vrRotationIntensity ~= nil and vrRotationIntensity ~= "Smooth"
	
		return self.shouldUseVRRotation
	end
	
	function BaseCamera:GetVRRotationInput()
		local vrRotateSum = ZERO_VECTOR2
		local success, vrRotationIntensity = pcall(function() return StarterGui:GetCore("VRRotationIntensity") end)
	
		if not success then
			return
		end
	
		local vrGamepadRotation = self.GamepadPanningCamera or ZERO_VECTOR2
		local delayExpired = (tick() - self.lastVRRotationTime) >= self:GetRepeatDelayValue(vrRotationIntensity)
	
		if math.abs(vrGamepadRotation.x) >= self:GetActivateValue() then
			if (delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2]) then
				local sign = 1
				if vrGamepadRotation.x < 0 then
					sign = -1
				end
				vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity) * sign
				self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = true
			end
		elseif math.abs(vrGamepadRotation.x) < self:GetActivateValue() - 0.1 then
			self.vrRotateKeyCooldown[Enum.KeyCode.Thumbstick2] = nil
		end
		if self.turningLeft then
			if delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Left] then
				vrRotateSum = vrRotateSum - self:GetRotateAmountValue(vrRotationIntensity)
				self.vrRotateKeyCooldown[Enum.KeyCode.Left] = true
			end
		else
			self.vrRotateKeyCooldown[Enum.KeyCode.Left] = nil
		end
		if self.turningRight then
			if (delayExpired or not self.vrRotateKeyCooldown[Enum.KeyCode.Right]) then
				vrRotateSum = vrRotateSum + self:GetRotateAmountValue(vrRotationIntensity)
				self.vrRotateKeyCooldown[Enum.KeyCode.Right] = true
			end
		else
			self.vrRotateKeyCooldown[Enum.KeyCode.Right] = nil
		end
	
		if vrRotateSum ~= ZERO_VECTOR2 then
			self.lastVRRotationTime = tick()
		end
	
		return vrRotateSum
	end
	
	function BaseCamera:CancelCameraFreeze(keepConstraints)
		if not keepConstraints then
			self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, 1, self.cameraTranslationConstraints.z)
		end
		if self.cameraFrozen then
			self.trackingHumanoid = nil
			self.cameraFrozen = false
		end
	end
	
	function BaseCamera:StartCameraFreeze(subjectPosition, humanoidToTrack)
		if not self.cameraFrozen then
			self.humanoidJumpOrigin = subjectPosition
			self.trackingHumanoid = humanoidToTrack
			self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, 0, self.cameraTranslationConstraints.z)
			self.cameraFrozen = true
		end
	end
	
	function BaseCamera:OnNewCameraSubject()
		if self.subjectStateChangedConn then
			self.subjectStateChangedConn:Disconnect()
			self.subjectStateChangedConn = nil
		end
	
		local humanoid = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject
		if self.trackingHumanoid ~= humanoid then
			self:CancelCameraFreeze()
		end
		if humanoid and humanoid:IsA("Humanoid") then
			self.subjectStateChangedConn = humanoid.StateChanged:Connect(function(oldState, newState)
				if VRService.VREnabled and newState == Enum.HumanoidStateType.Jumping and not self.inFirstPerson then
					self:StartCameraFreeze(self:GetSubjectPosition(), humanoid)
				elseif newState ~= Enum.HumanoidStateType.Jumping and newState ~= Enum.HumanoidStateType.Freefall then
					self:CancelCameraFreeze(true)
				end
			end)
		end
	end
	
	function BaseCamera:GetVRFocus(subjectPosition, timeDelta)
		local lastFocus = self.LastCameraFocus or subjectPosition
		if not self.cameraFrozen then
			self.cameraTranslationConstraints = Vector3.new(self.cameraTranslationConstraints.x, math.min(1, self.cameraTranslationConstraints.y + 0.42 * timeDelta), self.cameraTranslationConstraints.z)
		end
	
		local newFocus
		if self.cameraFrozen and self.humanoidJumpOrigin and self.humanoidJumpOrigin.y > lastFocus.y then
			newFocus = CFrame.new(Vector3.new(subjectPosition.x, math.min(self.humanoidJumpOrigin.y, lastFocus.y + 5 * timeDelta), subjectPosition.z))
		else
			newFocus = CFrame.new(Vector3.new(subjectPosition.x, lastFocus.y, subjectPosition.z):lerp(subjectPosition, self.cameraTranslationConstraints.y))
		end
	
		if self.cameraFrozen then
			-- No longer in 3rd person
			if self.inFirstPerson then -- not VRService.VREnabled
				self:CancelCameraFreeze()
			end
			-- This case you jumped off a cliff and want to keep your character in view
			-- 0.5 is to fix floating point error when not jumping off cliffs
			if self.humanoidJumpOrigin and subjectPosition.y < (self.humanoidJumpOrigin.y - 0.5) then
				self:CancelCameraFreeze()
			end
		end
	
		return newFocus
	end
	
	function BaseCamera:GetRotateAmountValue(vrRotationIntensity)
		vrRotationIntensity = vrRotationIntensity or StarterGui:GetCore("VRRotationIntensity")
		if vrRotationIntensity then
			if vrRotationIntensity == "Low" then
				return VR_LOW_INTENSITY_ROTATION
			elseif vrRotationIntensity == "High" then
				return VR_HIGH_INTENSITY_ROTATION
			end
		end
		return ZERO_VECTOR2
	end
	
	function BaseCamera:GetRepeatDelayValue(vrRotationIntensity)
		vrRotationIntensity = vrRotationIntensity or StarterGui:GetCore("VRRotationIntensity")
		if vrRotationIntensity then
			if vrRotationIntensity == "Low" then
				return VR_LOW_INTENSITY_REPEAT
			elseif vrRotationIntensity == "High" then
				return VR_HIGH_INTENSITY_REPEAT
			end
		end
		return 0
	end
	
	function BaseCamera:Update(dt)
		error("BaseCamera:Update() This is a virtual function that should never be getting called.", 2)
	end
	
	BaseCamera.UpCFrame = CFrame.new()
	
	function BaseCamera:UpdateUpCFrame(cf)
		self.UpCFrame = cf
	end
	local ZERO = Vector3.new(0, 0, 0)
	function BaseCamera:CalculateNewLookCFrame(suppliedLookVector)
		local currLookVector = suppliedLookVector or self:GetCameraLookVector()
		currLookVector = self.UpCFrame:VectorToObjectSpace(currLookVector)
		
		local currPitchAngle = math.asin(currLookVector.y)
		local yTheta = math.clamp(self.rotateInput.y, -MAX_Y + currPitchAngle, -MIN_Y + currPitchAngle)
		local constrainedRotateInput = Vector2.new(self.rotateInput.x, yTheta)
		local startCFrame = CFrame.new(ZERO, currLookVector)
		local newLookCFrame = CFrame.Angles(0, -constrainedRotateInput.x, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.y,0,0)
		
		return newLookCFrame
	end
	
	return BaseCamera
end

function _BaseOcclusion()
	--[[ The Module ]]--
	local BaseOcclusion = {}
	BaseOcclusion.__index = BaseOcclusion
	setmetatable(BaseOcclusion, {
		__call = function(_, ...)
			return BaseOcclusion.new(...)
		end
	})
	
	function BaseOcclusion.new()
		local self = setmetatable({}, BaseOcclusion)
		return self
	end
	
	-- Called when character is added
	function BaseOcclusion:CharacterAdded(char, player)
	end
	
	-- Called when character is about to be removed
	function BaseOcclusion:CharacterRemoving(char, player)
	end
	
	function BaseOcclusion:OnCameraSubjectChanged(newSubject)
	end
	
	--[[ Derived classes are required to override and implement all of the following functions ]]--
	function BaseOcclusion:GetOcclusionMode()
		-- Must be overridden in derived classes to return an Enum.DevCameraOcclusionMode value
		warn("BaseOcclusion GetOcclusionMode must be overridden by derived classes")
		return nil
	end
	
	function BaseOcclusion:Enable(enabled)
		warn("BaseOcclusion Enable must be overridden by derived classes")
	end
	
	function BaseOcclusion:Update(dt, desiredCameraCFrame, desiredCameraFocus)
		warn("BaseOcclusion Update must be overridden by derived classes")
		return desiredCameraCFrame, desiredCameraFocus
	end
	
	return BaseOcclusion
end

function _Popper()
	
	local Players = game:GetService("Players")
	
	local camera = game.Workspace.CurrentCamera
	
	local min = math.min
	local tan = math.tan
	local rad = math.rad
	local inf = math.huge
	local ray = Ray.new
	
	local function getTotalTransparency(part)
		return 1 - (1 - part.Transparency)*(1 - part.LocalTransparencyModifier)
	end
	
	local function eraseFromEnd(t, toSize)
		for i = #t, toSize + 1, -1 do
			t[i] = nil
		end
	end
	
	local nearPlaneZ, projX, projY do
		local function updateProjection()
			local fov = rad(camera.FieldOfView)
			local view = camera.ViewportSize
			local ar = view.X/view.Y
	
			projY = 2*tan(fov/2)
			projX = ar*projY
		end
	
		camera:GetPropertyChangedSignal("FieldOfView"):Connect(updateProjection)
		camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateProjection)
	
		updateProjection()
	
		nearPlaneZ = camera.NearPlaneZ
		camera:GetPropertyChangedSignal("NearPlaneZ"):Connect(function()
			nearPlaneZ = camera.NearPlaneZ
		end)
	end
	
	local blacklist = {} do
		local charMap = {}
	
		local function refreshIgnoreList()
			local n = 1
			blacklist = {}
			for _, character in pairs(charMap) do
				blacklist[n] = character
				n = n + 1
			end
		end
	
		local function playerAdded(player)
			local function characterAdded(character)
				charMap[player] = character
				refreshIgnoreList()
			end
			local function characterRemoving()
				charMap[player] = nil
				refreshIgnoreList()
			end
	
			player.CharacterAdded:Connect(characterAdded)
			player.CharacterRemoving:Connect(characterRemoving)
			if player.Character then
				characterAdded(player.Character)
			end
		end
	
		local function playerRemoving(player)
			charMap[player] = nil
			refreshIgnoreList()
		end
	
		Players.PlayerAdded:Connect(playerAdded)
		Players.PlayerRemoving:Connect(playerRemoving)
	
		for _, player in ipairs(Players:GetPlayers()) do
			playerAdded(player)
		end
		refreshIgnoreList()
	end
	
	--------------------------------------------------------------------------------------------
	-- Popper uses the level geometry find an upper bound on subject-to-camera distance.
	--
	-- Hard limits are applied immediately and unconditionally. They are generally caused
	-- when level geometry intersects with the near plane (with exceptions, see below).
	--
	-- Soft limits are only applied under certain conditions.
	-- They are caused when level geometry occludes the subject without actually intersecting
	-- with the near plane at the target distance.
	--
	-- Soft limits can be promoted to hard limits and hard limits can be demoted to soft limits.
	-- We usually don"t want the latter to happen.
	--
	-- A soft limit will be promoted to a hard limit if an obstruction
	-- lies between the current and target camera positions.
	--------------------------------------------------------------------------------------------
	
	local subjectRoot
	local subjectPart
	
	camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
		local subject = camera.CameraSubject
		if subject:IsA("Humanoid") then
			subjectPart = subject.RootPart
		elseif subject:IsA("BasePart") then
			subjectPart = subject
		else
			subjectPart = nil
		end
	end)
	
	local function canOcclude(part)
		-- Occluders must be:
		-- 1. Opaque
		-- 2. Interactable
		-- 3. Not in the same assembly as the subject
	
		return
			getTotalTransparency(part) < 0.25 and
			part.CanCollide and
			subjectRoot ~= (part:GetRootPart() or part) and
			not part:IsA("TrussPart")
	end
	
	-- Offsets for the volume visibility test
	local SCAN_SAMPLE_OFFSETS = {
		Vector2.new( 0.4, 0.0),
		Vector2.new(-0.4, 0.0),
		Vector2.new( 0.0,-0.4),
		Vector2.new( 0.0, 0.4),
		Vector2.new( 0.0, 0.2),
	}
	
	--------------------------------------------------------------------------------
	-- Piercing raycasts
	
	local function getCollisionPoint(origin, dir)
		local originalSize = #blacklist
		repeat
			local hitPart, hitPoint = workspace:FindPartOnRayWithIgnoreList(
				ray(origin, dir), blacklist, false, true
			)
	
			if hitPart then
				if hitPart.CanCollide then
					eraseFromEnd(blacklist, originalSize)
					return hitPoint, true
				end
				blacklist[#blacklist + 1] = hitPart
			end
		until not hitPart
	
		eraseFromEnd(blacklist, originalSize)
		return origin + dir, false
	end
	
	--------------------------------------------------------------------------------
	
	local function queryPoint(origin, unitDir, dist, lastPos)
		debug.profilebegin("queryPoint")
	
		local originalSize = #blacklist
	
		dist = dist + nearPlaneZ
		local target = origin + unitDir*dist
	
		local softLimit = inf
		local hardLimit = inf
		local movingOrigin = origin
	
		repeat
			local entryPart, entryPos = workspace:FindPartOnRayWithIgnoreList(ray(movingOrigin, target - movingOrigin), blacklist, false, true)
	
			if entryPart then
				if canOcclude(entryPart) then
					local wl = {entryPart}
					local exitPart = workspace:FindPartOnRayWithWhitelist(ray(target, entryPos - target), wl, true)
	
					local lim = (entryPos - origin).Magnitude
	
					if exitPart then
						local promote = false
						if lastPos then
							promote =
								workspace:FindPartOnRayWithWhitelist(ray(lastPos, target - lastPos), wl, true) or
								workspace:FindPartOnRayWithWhitelist(ray(target, lastPos - target), wl, true)
						end
	
						if promote then
							-- Ostensibly a soft limit, but the camera has passed through it in the last frame, so promote to a hard limit.
							hardLimit = lim
						elseif dist < softLimit then
							-- Trivial soft limit
							softLimit = lim
						end
					else
						-- Trivial hard limit
						hardLimit = lim
					end
				end
	
				blacklist[#blacklist + 1] = entryPart
				movingOrigin = entryPos - unitDir*1e-3
			end
		until hardLimit < inf or not entryPart
	
		eraseFromEnd(blacklist, originalSize)
	
		debug.profileend()
		return softLimit - nearPlaneZ, hardLimit - nearPlaneZ
	end
	
	local function queryViewport(focus, dist)
		debug.profilebegin("queryViewport")
	
		local fP =  focus.p
		local fX =  focus.rightVector
		local fY =  focus.upVector
		local fZ = -focus.lookVector
	
		local viewport = camera.ViewportSize
	
		local hardBoxLimit = inf
		local softBoxLimit = inf
	
		-- Center the viewport on the PoI, sweep points on the edge towards the target, and take the minimum limits
		for viewX = 0, 1 do
			local worldX = fX*((viewX - 0.5)*projX)
	
			for viewY = 0, 1 do
				local worldY = fY*((viewY - 0.5)*projY)
	
				local origin = fP + nearPlaneZ*(worldX + worldY)
				local lastPos = camera:ViewportPointToRay(
					viewport.x*viewX,
					viewport.y*viewY
				).Origin
	
				local softPointLimit, hardPointLimit = queryPoint(origin, fZ, dist, lastPos)
	
				if hardPointLimit < hardBoxLimit then
					hardBoxLimit = hardPointLimit
				end
				if softPointLimit < softBoxLimit then
					softBoxLimit = softPointLimit
				end
			end
		end
		debug.profileend()
	
		return softBoxLimit, hardBoxLimit
	end
	
	local function testPromotion(focus, dist, focusExtrapolation)
		debug.profilebegin("testPromotion")
	
		local fP = focus.p
		local fX = focus.rightVector
		local fY = focus.upVector
		local fZ = -focus.lookVector
	
		do
			-- Dead reckoning the camera rotation and focus
			debug.profilebegin("extrapolate")
	
			local SAMPLE_DT = 0.0625
			local SAMPLE_MAX_T = 1.25
	
			local maxDist = (getCollisionPoint(fP, focusExtrapolation.posVelocity*SAMPLE_MAX_T) - fP).Magnitude
			-- Metric that decides how many samples to take
			local combinedSpeed = focusExtrapolation.posVelocity.magnitude
	
			for dt = 0, min(SAMPLE_MAX_T, focusExtrapolation.rotVelocity.magnitude + maxDist/combinedSpeed), SAMPLE_DT do
				local cfDt = focusExtrapolation.extrapolate(dt) -- Extrapolated CFrame at time dt
	
				if queryPoint(cfDt.p, -cfDt.lookVector, dist) >= dist then
					return false
				end
			end
	
			debug.profileend()
		end
	
		do
			-- Test screen-space offsets from the focus for the presence of soft limits
			debug.profilebegin("testOffsets")
	
			for _, offset in ipairs(SCAN_SAMPLE_OFFSETS) do
				local scaledOffset = offset
				local pos = getCollisionPoint(fP, fX*scaledOffset.x + fY*scaledOffset.y)
				if queryPoint(pos, (fP + fZ*dist - pos).Unit, dist) == inf then
					return false
				end
			end
	
			debug.profileend()
		end
	
		debug.profileend()
		return true
	end
	
	local function Popper(focus, targetDist, focusExtrapolation)
		debug.profilebegin("popper")
	
		subjectRoot = subjectPart and subjectPart:GetRootPart() or subjectPart
	
		local dist = targetDist
		local soft, hard = queryViewport(focus, targetDist)
		if hard < dist then
			dist = hard
		end
		if soft < dist and testPromotion(focus, targetDist, focusExtrapolation) then
			dist = soft
		end
	
		subjectRoot = nil
	
		debug.profileend()
		return dist
	end
	
	return Popper
end

function _ZoomController()
	local ZOOM_STIFFNESS = 4.5
	local ZOOM_DEFAULT = 12.5
	local ZOOM_ACCELERATION = 0.0375
	
	local MIN_FOCUS_DIST = 0.5
	local DIST_OPAQUE = 1
	
	local Popper = _Popper()
	
	local clamp = math.clamp
	local exp = math.exp
	local min = math.min
	local max = math.max
	local pi = math.pi
	
	local cameraMinZoomDistance, cameraMaxZoomDistance do
		local Player = game:GetService("Players").LocalPlayer
	
		local function updateBounds()
			cameraMinZoomDistance = Player.CameraMinZoomDistance
			cameraMaxZoomDistance = Player.CameraMaxZoomDistance
		end
	
		updateBounds()
	
		Player:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(updateBounds)
		Player:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(updateBounds)
	end
	
	local ConstrainedSpring = {} do
		ConstrainedSpring.__index = ConstrainedSpring
	
		function ConstrainedSpring.new(freq, x, minValue, maxValue)
			x = clamp(x, minValue, maxValue)
			return setmetatable({
				freq = freq, -- Undamped frequency (Hz)
				x = x, -- Current position
				v = 0, -- Current velocity
				minValue = minValue, -- Minimum bound
				maxValue = maxValue, -- Maximum bound
				goal = x, -- Goal position
			}, ConstrainedSpring)
		end
	
		function ConstrainedSpring:Step(dt)
			local freq = self.freq*2*pi -- Convert from Hz to rad/s
			local x = self.x
			local v = self.v
			local minValue = self.minValue
			local maxValue = self.maxValue
			local goal = self.goal
	
			-- Solve the spring ODE for position and velocity after time t, assuming critical damping:
			--   2*f*x'[t] + x''[t] = f^2*(g - x[t])
			-- Knowns are x[0] and x'[0].
			-- Solve for x[t] and x'[t].
	
			local offset = goal - x
			local step = freq*dt
			local decay = exp(-step)
	
			local x1 = goal + (v*dt - offset*(step + 1))*decay
			local v1 = ((offset*freq - v)*step + v)*decay
	
			-- Constrain
			if x1 < minValue then
				x1 = minValue
				v1 = 0
			elseif x1 > maxValue then
				x1 = maxValue
				v1 = 0
			end
	
			self.x = x1
			self.v = v1
	
			return x1
		end
	end
	
	local zoomSpring = ConstrainedSpring.new(ZOOM_STIFFNESS, ZOOM_DEFAULT, MIN_FOCUS_DIST, cameraMaxZoomDistance)
	
	local function stepTargetZoom(z, dz, zoomMin, zoomMax)
		z = clamp(z + dz*(1 + z*ZOOM_ACCELERATION), zoomMin, zoomMax)
		if z < DIST_OPAQUE then
			z = dz <= 0 and zoomMin or DIST_OPAQUE
		end
		return z
	end
	
	local zoomDelta = 0
	
	local Zoom = {} do
		function Zoom.Update(renderDt, focus, extrapolation)
			local poppedZoom = math.huge
	
			if zoomSpring.goal > DIST_OPAQUE then
				-- Make a pessimistic estimate of zoom distance for this step without accounting for poppercam
				local maxPossibleZoom = max(
					zoomSpring.x,
					stepTargetZoom(zoomSpring.goal, zoomDelta, cameraMinZoomDistance, cameraMaxZoomDistance)
				)
	
				-- Run the Popper algorithm on the feasible zoom range, [MIN_FOCUS_DIST, maxPossibleZoom]
				poppedZoom = Popper(
					focus*CFrame.new(0, 0, MIN_FOCUS_DIST),
					maxPossibleZoom - MIN_FOCUS_DIST,
					extrapolation
				) + MIN_FOCUS_DIST
			end
	
			zoomSpring.minValue = MIN_FOCUS_DIST
			zoomSpring.maxValue = min(cameraMaxZoomDistance, poppedZoom)
	
			return zoomSpring:Step(renderDt)
		end
	
		function Zoom.SetZoomParameters(targetZoom, newZoomDelta)
			zoomSpring.goal = targetZoom
			zoomDelta = newZoomDelta
		end
	end
	
	return Zoom
end

function _MouseLockController()
	--[[ Constants ]]--
	local DEFAULT_MOUSE_LOCK_CURSOR = "rbxasset://textures/MouseLockedCursor.png"
	
	local CONTEXT_ACTION_NAME = "MouseLockSwitchAction"
	local MOUSELOCK_ACTION_PRIORITY = Enum.ContextActionPriority.Default.Value
	
	--[[ Services ]]--
	local PlayersService = game:GetService("Players")
	local ContextActionService = game:GetService("ContextActionService")
	local Settings = UserSettings()	-- ignore warning
	local GameSettings = Settings.GameSettings
	local Mouse = PlayersService.LocalPlayer:GetMouse()
	
	--[[ The Module ]]--
	local MouseLockController = {}
	MouseLockController.__index = MouseLockController
	
	function MouseLockController.new()
		local self = setmetatable({}, MouseLockController)
	
		self.isMouseLocked = false
		self.savedMouseCursor = nil
		self.boundKeys = {Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift} -- defaults
	
		self.mouseLockToggledEvent = Instance.new("BindableEvent")
	
		local boundKeysObj = script:FindFirstChild("BoundKeys")
		if (not boundKeysObj) or (not boundKeysObj:IsA("StringValue")) then
			-- If object with correct name was found, but it's not a StringValue, destroy and replace
			if boundKeysObj then
				boundKeysObj:Destroy()
			end
	
			boundKeysObj = Instance.new("StringValue")
			boundKeysObj.Name = "BoundKeys"
			boundKeysObj.Value = "LeftShift,RightShift"
			boundKeysObj.Parent = script
		end
	
		if boundKeysObj then
			boundKeysObj.Changed:Connect(function(value)
				self:OnBoundKeysObjectChanged(value)
			end)
			self:OnBoundKeysObjectChanged(boundKeysObj.Value) -- Initial setup call
		end
	
		-- Watch for changes to user's ControlMode and ComputerMovementMode settings and update the feature availability accordingly
		GameSettings.Changed:Connect(function(property)
			if property == "ControlMode" or property == "ComputerMovementMode" then
				self:UpdateMouseLockAvailability()
			end
		end)
	
		-- Watch for changes to DevEnableMouseLock and update the feature availability accordingly
		PlayersService.LocalPlayer:GetPropertyChangedSignal("DevEnableMouseLock"):Connect(function()
			self:UpdateMouseLockAvailability()
		end)
	
		-- Watch for changes to DevEnableMouseLock and update the feature availability accordingly
		PlayersService.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function()
			self:UpdateMouseLockAvailability()
		end)
	
		self:UpdateMouseLockAvailability()
	
		return self
	end
	
	function MouseLockController:GetIsMouseLocked()
		return self.isMouseLocked
	end
	
	function MouseLockController:GetBindableToggleEvent()
		return self.mouseLockToggledEvent.Event
	end
	
	function MouseLockController:GetMouseLockOffset()
		local offsetValueObj = script:FindFirstChild("CameraOffset")
		if offsetValueObj and offsetValueObj:IsA("Vector3Value") then
			return offsetValueObj.Value
		else
			-- If CameraOffset object was found but not correct type, destroy
			if offsetValueObj then
				offsetValueObj:Destroy()
			end
			offsetValueObj = Instance.new("Vector3Value")
			offsetValueObj.Name = "CameraOffset"
			offsetValueObj.Value = Vector3.new(1.75,0,0) -- Legacy Default Value
			offsetValueObj.Parent = script
		end
	
		if offsetValueObj and offsetValueObj.Value then
			return offsetValueObj.Value
		end
	
		return Vector3.new(1.75,0,0)
	end
	
	function MouseLockController:UpdateMouseLockAvailability()
		local devAllowsMouseLock = PlayersService.LocalPlayer.DevEnableMouseLock
		local devMovementModeIsScriptable = PlayersService.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable
		local userHasMouseLockModeEnabled = GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch
		local userHasClickToMoveEnabled =  GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove
		local MouseLockAvailable = devAllowsMouseLock and userHasMouseLockModeEnabled and not userHasClickToMoveEnabled and not devMovementModeIsScriptable
	
		if MouseLockAvailable~=self.enabled then
			self:EnableMouseLock(MouseLockAvailable)
		end
	end
	
	function MouseLockController:OnBoundKeysObjectChanged(newValue)
		self.boundKeys = {} -- Overriding defaults, note: possibly with nothing at all if boundKeysObj.Value is "" or contains invalid values
		for token in string.gmatch(newValue,"[^%s,]+") do
			for _, keyEnum in pairs(Enum.KeyCode:GetEnumItems()) do
				if token == keyEnum.Name then
					self.boundKeys[#self.boundKeys+1] = keyEnum
					break
				end
			end
		end
		self:UnbindContextActions()
		self:BindContextActions()
	end
	
	--[[ Local Functions ]]--
	function MouseLockController:OnMouseLockToggled()
		self.isMouseLocked = not self.isMouseLocked
	
		if self.isMouseLocked then
			local cursorImageValueObj = script:FindFirstChild("CursorImage")
			if cursorImageValueObj and cursorImageValueObj:IsA("StringValue") and cursorImageValueObj.Value then
				self.savedMouseCursor = Mouse.Icon
				Mouse.Icon = cursorImageValueObj.Value
			else
				if cursorImageValueObj then
					cursorImageValueObj:Destroy()
				end
				cursorImageValueObj = Instance.new("StringValue")
				cursorImageValueObj.Name = "CursorImage"
				cursorImageValueObj.Value = DEFAULT_MOUSE_LOCK_CURSOR
				cursorImageValueObj.Parent = script
				self.savedMouseCursor = Mouse.Icon
				Mouse.Icon = DEFAULT_MOUSE_LOCK_CURSOR
			end
		else
			if self.savedMouseCursor then
				Mouse.Icon = self.savedMouseCursor
				self.savedMouseCursor = nil
			end
		end
	
		self.mouseLockToggledEvent:Fire()
	end
	
	function MouseLockController:DoMouseLockSwitch(name, state, input)
		if state == Enum.UserInputState.Begin then
			self:OnMouseLockToggled()
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function MouseLockController:BindContextActions()
		ContextActionService:BindActionAtPriority(CONTEXT_ACTION_NAME, function(name, state, input)
			return self:DoMouseLockSwitch(name, state, input)
		end, false, MOUSELOCK_ACTION_PRIORITY, unpack(self.boundKeys))
	end
	
	function MouseLockController:UnbindContextActions()
		ContextActionService:UnbindAction(CONTEXT_ACTION_NAME)
	end
	
	function MouseLockController:IsMouseLocked()
		return self.enabled and self.isMouseLocked
	end
	
	function MouseLockController:EnableMouseLock(enable)
		if enable ~= self.enabled then
	
			self.enabled = enable
	
			if self.enabled then
				-- Enabling the mode
				self:BindContextActions()
			else
				-- Disabling
				-- Restore mouse cursor
				if Mouse.Icon~="" then
					Mouse.Icon = ""
				end
	
				self:UnbindContextActions()
	
				-- If the mode is disabled while being used, fire the event to toggle it off
				if self.isMouseLocked then
					self.mouseLockToggledEvent:Fire()
				end
	
				self.isMouseLocked = false
			end
	
		end
	end
	
	return MouseLockController
end

function _TransparencyController()
	
	local MAX_TWEEN_RATE = 2.8 -- per second
	
	local Util = _CameraUtils()
	
	--[[ The Module ]]--
	local TransparencyController = {}
	TransparencyController.__index = TransparencyController
	
	function TransparencyController.new()
		local self = setmetatable({}, TransparencyController)
	
		self.lastUpdate = tick()
		self.transparencyDirty = false
		self.enabled = false
		self.lastTransparency = nil
	
		self.descendantAddedConn, self.descendantRemovingConn = nil, nil
		self.toolDescendantAddedConns = {}
		self.toolDescendantRemovingConns = {}
		self.cachedParts = {}
	
		return self
	end
	
	
	function TransparencyController:HasToolAncestor(object)
		if object.Parent == nil then return false end
		return object.Parent:IsA('Tool') or self:HasToolAncestor(object.Parent)
	end
	
	function TransparencyController:IsValidPartToModify(part)
		if part:IsA('BasePart') or part:IsA('Decal') then
			return not self:HasToolAncestor(part)
		end
		return false
	end
	
	function TransparencyController:CachePartsRecursive(object)
		if object then
			if self:IsValidPartToModify(object) then
				self.cachedParts[object] = true
				self.transparencyDirty = true
			end
			for _, child in pairs(object:GetChildren()) do
				self:CachePartsRecursive(child)
			end
		end
	end
	
	function TransparencyController:TeardownTransparency()
		for child, _ in pairs(self.cachedParts) do
			child.LocalTransparencyModifier = 0
		end
		self.cachedParts = {}
		self.transparencyDirty = true
		self.lastTransparency = nil
	
		if self.descendantAddedConn then
			self.descendantAddedConn:disconnect()
			self.descendantAddedConn = nil
		end
		if self.descendantRemovingConn then
			self.descendantRemovingConn:disconnect()
			self.descendantRemovingConn = nil
		end
		for object, conn in pairs(self.toolDescendantAddedConns) do
			conn:Disconnect()
			self.toolDescendantAddedConns[object] = nil
		end
		for object, conn in pairs(self.toolDescendantRemovingConns) do
			conn:Disconnect()
			self.toolDescendantRemovingConns[object] = nil
		end
	end
	
	function TransparencyController:SetupTransparency(character)
		self:TeardownTransparency()
	
		if self.descendantAddedConn then self.descendantAddedConn:disconnect() end
		self.descendantAddedConn = character.DescendantAdded:Connect(function(object)
			-- This is a part we want to invisify
			if self:IsValidPartToModify(object) then
				self.cachedParts[object] = true
				self.transparencyDirty = true
			-- There is now a tool under the character
			elseif object:IsA('Tool') then
				if self.toolDescendantAddedConns[object] then self.toolDescendantAddedConns[object]:Disconnect() end
				self.toolDescendantAddedConns[object] = object.DescendantAdded:Connect(function(toolChild)
					self.cachedParts[toolChild] = nil
					if toolChild:IsA('BasePart') or toolChild:IsA('Decal') then
						-- Reset the transparency
						toolChild.LocalTransparencyModifier = 0
					end
				end)
				if self.toolDescendantRemovingConns[object] then self.toolDescendantRemovingConns[object]:disconnect() end
				self.toolDescendantRemovingConns[object] = object.DescendantRemoving:Connect(function(formerToolChild)
					wait() -- wait for new parent
					if character and formerToolChild and formerToolChild:IsDescendantOf(character) then
						if self:IsValidPartToModify(formerToolChild) then
							self.cachedParts[formerToolChild] = true
							self.transparencyDirty = true
						end
					end
				end)
			end
		end)
		if self.descendantRemovingConn then self.descendantRemovingConn:disconnect() end
		self.descendantRemovingConn = character.DescendantRemoving:connect(function(object)
			if self.cachedParts[object] then
				self.cachedParts[object] = nil
				-- Reset the transparency
				object.LocalTransparencyModifier = 0
			end
		end)
		self:CachePartsRecursive(character)
	end
	
	
	function TransparencyController:Enable(enable)
		if self.enabled ~= enable then
			self.enabled = enable
			self:Update()
		end
	end
	
	function TransparencyController:SetSubject(subject)
		local character = nil
		if subject and subject:IsA("Humanoid") then
			character = subject.Parent
		end
		if subject and subject:IsA("VehicleSeat") and subject.Occupant then
			character = subject.Occupant.Parent
		end
		if character then
			self:SetupTransparency(character)
		else
			self:TeardownTransparency()
		end
	end
	
	function TransparencyController:Update()
		local instant = false
		local now = tick()
		local currentCamera = workspace.CurrentCamera
	
		if currentCamera then
			local transparency = 0
			if not self.enabled then
				instant = true
			else
				local distance = (currentCamera.Focus.p - currentCamera.CoordinateFrame.p).magnitude
				transparency = (distance<2) and (1.0-(distance-0.5)/1.5) or 0 --(7 - distance) / 5
				if transparency < 0.5 then
					transparency = 0
				end
	
				if self.lastTransparency then
					local deltaTransparency = transparency - self.lastTransparency
	
					-- Don't tween transparency if it is instant or your character was fully invisible last frame
					if not instant and transparency < 1 and self.lastTransparency < 0.95 then
						local maxDelta = MAX_TWEEN_RATE * (now - self.lastUpdate)
						deltaTransparency = math.clamp(deltaTransparency, -maxDelta, maxDelta)
					end
					transparency = self.lastTransparency + deltaTransparency
				else
					self.transparencyDirty = true
				end
	
				transparency = math.clamp(Util.Round(transparency, 2), 0, 1)
			end
	
			if self.transparencyDirty or self.lastTransparency ~= transparency then
				for child, _ in pairs(self.cachedParts) do
					child.LocalTransparencyModifier = transparency
				end
				self.transparencyDirty = false
				self.lastTransparency = transparency
			end
		end
		self.lastUpdate = now
	end
	
	return TransparencyController
end

function _Poppercam()
	local ZoomController =  _ZoomController()
	
	local TransformExtrapolator = {} do
		TransformExtrapolator.__index = TransformExtrapolator
	
		local CF_IDENTITY = CFrame.new()
	
		local function cframeToAxis(cframe)
			local axis, angle = cframe:toAxisAngle()
			return axis*angle
		end
	
		local function axisToCFrame(axis)
			local angle = axis.magnitude
			if angle > 1e-5 then
				return CFrame.fromAxisAngle(axis, angle)
			end
			return CF_IDENTITY
		end
	
		local function extractRotation(cf)
			local _, _, _, xx, yx, zx, xy, yy, zy, xz, yz, zz = cf:components()
			return CFrame.new(0, 0, 0, xx, yx, zx, xy, yy, zy, xz, yz, zz)
		end
	
		function TransformExtrapolator.new()
			return setmetatable({
				lastCFrame = nil,
			}, TransformExtrapolator)
		end
	
		function TransformExtrapolator:Step(dt, currentCFrame)
			local lastCFrame = self.lastCFrame or currentCFrame
			self.lastCFrame = currentCFrame
	
			local currentPos = currentCFrame.p
			local currentRot = extractRotation(currentCFrame)
	
			local lastPos = lastCFrame.p
			local lastRot = extractRotation(lastCFrame)
	
			-- Estimate velocities from the delta between now and the last frame
			-- This estimation can be a little noisy.
			local dp = (currentPos - lastPos)/dt
			local dr = cframeToAxis(currentRot*lastRot:inverse())/dt
	
			local function extrapolate(t)
				local p = dp*t + currentPos
				local r = axisToCFrame(dr*t)*currentRot
				return r + p
			end
	
			return {
				extrapolate = extrapolate,
				posVelocity = dp,
				rotVelocity = dr,
			}
		end
	
		function TransformExtrapolator:Reset()
			self.lastCFrame = nil
		end
	end
	
	--[[ The Module ]]--
	local BaseOcclusion = _BaseOcclusion()
	local Poppercam = setmetatable({}, BaseOcclusion)
	Poppercam.__index = Poppercam
	
	function Poppercam.new()
		local self = setmetatable(BaseOcclusion.new(), Poppercam)
		self.focusExtrapolator = TransformExtrapolator.new()
		return self
	end
	
	function Poppercam:GetOcclusionMode()
		return Enum.DevCameraOcclusionMode.Zoom
	end
	
	function Poppercam:Enable(enable)
		self.focusExtrapolator:Reset()
	end
	
	function Poppercam:Update(renderDt, desiredCameraCFrame, desiredCameraFocus, cameraController)
		local rotatedFocus = CFrame.new(desiredCameraFocus.p, desiredCameraCFrame.p)*CFrame.new(
			0, 0, 0,
			-1, 0, 0,
			0, 1, 0,
			0, 0, -1
		)
		local extrapolation = self.focusExtrapolator:Step(renderDt, rotatedFocus)
		local zoom = ZoomController.Update(renderDt, rotatedFocus, extrapolation)
		return rotatedFocus*CFrame.new(0, 0, zoom), desiredCameraFocus
	end
	
	-- Called when character is added
	function Poppercam:CharacterAdded(character, player)
	end
	
	-- Called when character is about to be removed
	function Poppercam:CharacterRemoving(character, player)
	end
	
	function Poppercam:OnCameraSubjectChanged(newSubject)
	end
	
	local ZoomController = _ZoomController()
	
	function Poppercam:Update(renderDt, desiredCameraCFrame, desiredCameraFocus, cameraController)
		local rotatedFocus = desiredCameraFocus * (desiredCameraCFrame - desiredCameraCFrame.p)
		local extrapolation = self.focusExtrapolator:Step(renderDt, rotatedFocus)
		local zoom = ZoomController.Update(renderDt, rotatedFocus, extrapolation)
		return rotatedFocus*CFrame.new(0, 0, zoom), desiredCameraFocus
	end
	
	return Poppercam
end

function _Invisicam()
	
	--[[ Top Level Roblox Services ]]--
	local PlayersService = game:GetService("Players")
	
	--[[ Constants ]]--
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local USE_STACKING_TRANSPARENCY = true	-- Multiple items between the subject and camera get transparency values that add up to TARGET_TRANSPARENCY
	local TARGET_TRANSPARENCY = 0.75 -- Classic Invisicam's Value, also used by new invisicam for parts hit by head and torso rays
	local TARGET_TRANSPARENCY_PERIPHERAL = 0.5 -- Used by new SMART_CIRCLE mode for items not hit by head and torso rays
	
	local MODE = {
		--CUSTOM = 1, 		-- Retired, unused
		LIMBS = 2, 			-- Track limbs
		MOVEMENT = 3, 		-- Track movement
		CORNERS = 4, 		-- Char model corners
		CIRCLE1 = 5, 		-- Circle of casts around character
		CIRCLE2 = 6, 		-- Circle of casts around character, camera relative
		LIMBMOVE = 7, 		-- LIMBS mode + MOVEMENT mode
		SMART_CIRCLE = 8, 	-- More sample points on and around character
		CHAR_OUTLINE = 9,	-- Dynamic outline around the character
	}
	
	local LIMB_TRACKING_SET = {
		-- Body parts common to R15 and R6
		['Head'] = true,
	
		-- Body parts unique to R6
		['Left Arm'] = true,
		['Right Arm'] = true,
		['Left Leg'] = true,
		['Right Leg'] = true,
	
		-- Body parts unique to R15
		['LeftLowerArm'] = true,
		['RightLowerArm'] = true,
		['LeftUpperLeg'] = true,
		['RightUpperLeg'] = true
	}
	
	local CORNER_FACTORS = {
		Vector3.new(1,1,-1),
		Vector3.new(1,-1,-1),
		Vector3.new(-1,-1,-1),
		Vector3.new(-1,1,-1)
	}
	
	local CIRCLE_CASTS = 10
	local MOVE_CASTS = 3
	local SMART_CIRCLE_CASTS = 24
	local SMART_CIRCLE_INCREMENT = 2.0 * math.pi / SMART_CIRCLE_CASTS
	local CHAR_OUTLINE_CASTS = 24
	
	-- Used to sanitize user-supplied functions
	local function AssertTypes(param, ...)
		local allowedTypes = {}
		local typeString = ''
		for _, typeName in pairs({...}) do
			allowedTypes[typeName] = true
			typeString = typeString .. (typeString == '' and '' or ' or ') .. typeName
		end
		local theType = type(param)
		assert(allowedTypes[theType], typeString .. " type expected, got: " .. theType)
	end
	
	-- Helper function for Determinant of 3x3, not in CameraUtils for performance reasons
	local function Det3x3(a,b,c,d,e,f,g,h,i)
		return (a*(e*i-f*h)-b*(d*i-f*g)+c*(d*h-e*g))
	end
	
	-- Smart Circle mode needs the intersection of 2 rays that are known to be in the same plane
	-- because they are generated from cross products with a common vector. This function is computing
	-- that intersection, but it's actually the general solution for the point halfway between where
	-- two skew lines come nearest to each other, which is more forgiving.
	local function RayIntersection(p0, v0, p1, v1)
		local v2 = v0:Cross(v1)
		local d1 = p1.x - p0.x
		local d2 = p1.y - p0.y
		local d3 = p1.z - p0.z
		local denom = Det3x3(v0.x,-v1.x,v2.x,v0.y,-v1.y,v2.y,v0.z,-v1.z,v2.z)
	
		if (denom == 0) then
			return ZERO_VECTOR3 -- No solution (rays are parallel)
		end
	
		local t0 = Det3x3(d1,-v1.x,v2.x,d2,-v1.y,v2.y,d3,-v1.z,v2.z) / denom
		local t1 = Det3x3(v0.x,d1,v2.x,v0.y,d2,v2.y,v0.z,d3,v2.z) / denom
		local s0 = p0 + t0 * v0
		local s1 = p1 + t1 * v1
		local s = s0 + 0.5 * ( s1 - s0 )
	
		-- 0.25 studs is a threshold for deciding if the rays are
		-- close enough to be considered intersecting, found through testing 
		if (s1-s0).Magnitude < 0.25 then
			return s
		else
			return ZERO_VECTOR3
		end
	end
	
	
	
	--[[ The Module ]]--
	local BaseOcclusion = _BaseOcclusion()
	local Invisicam = setmetatable({}, BaseOcclusion)
	Invisicam.__index = Invisicam
	
	function Invisicam.new()
		local self = setmetatable(BaseOcclusion.new(), Invisicam)
	
		self.char = nil
		self.humanoidRootPart = nil
		self.torsoPart = nil
		self.headPart = nil
	
		self.childAddedConn = nil
		self.childRemovedConn = nil
	
		self.behaviors = {} 	-- Map of modes to behavior fns
		self.behaviors[MODE.LIMBS] = self.LimbBehavior
		self.behaviors[MODE.MOVEMENT] = self.MoveBehavior
		self.behaviors[MODE.CORNERS] = self.CornerBehavior
		self.behaviors[MODE.CIRCLE1] = self.CircleBehavior
		self.behaviors[MODE.CIRCLE2] = self.CircleBehavior
		self.behaviors[MODE.LIMBMOVE] = self.LimbMoveBehavior
		self.behaviors[MODE.SMART_CIRCLE] = self.SmartCircleBehavior
		self.behaviors[MODE.CHAR_OUTLINE] = self.CharacterOutlineBehavior
	
		self.mode = MODE.SMART_CIRCLE
		self.behaviorFunction = self.SmartCircleBehavior
	
		self.savedHits = {} 	-- Objects currently being faded in/out
		self.trackedLimbs = {}	-- Used in limb-tracking casting modes
	
		self.camera = game.Workspace.CurrentCamera
	
		self.enabled = false
		return self
	end
	
	function Invisicam:Enable(enable)
		self.enabled = enable
	
		if not enable then
			self:Cleanup()
		end
	end
	
	function Invisicam:GetOcclusionMode()
		return Enum.DevCameraOcclusionMode.Invisicam
	end
	
	--[[ Module functions ]]--
	function Invisicam:LimbBehavior(castPoints)
		for limb, _ in pairs(self.trackedLimbs) do
			castPoints[#castPoints + 1] = limb.Position
		end
	end
	
	function Invisicam:MoveBehavior(castPoints)
		for i = 1, MOVE_CASTS do
			local position, velocity = self.humanoidRootPart.Position, self.humanoidRootPart.Velocity
			local horizontalSpeed = Vector3.new(velocity.X, 0, velocity.Z).Magnitude / 2
			local offsetVector = (i - 1) * self.humanoidRootPart.CFrame.lookVector * horizontalSpeed
			castPoints[#castPoints + 1] = position + offsetVector
		end
	end
	
	function Invisicam:CornerBehavior(castPoints)
		local cframe = self.humanoidRootPart.CFrame
		local centerPoint = cframe.p
		local rotation = cframe - centerPoint
		local halfSize = self.char:GetExtentsSize() / 2 --NOTE: Doesn't update w/ limb animations
		castPoints[#castPoints + 1] = centerPoint
		for i = 1, #CORNER_FACTORS do
			castPoints[#castPoints + 1] = centerPoint + (rotation * (halfSize * CORNER_FACTORS[i]))
		end
	end
	
	function Invisicam:CircleBehavior(castPoints)
		local cframe
		if self.mode == MODE.CIRCLE1 then
			cframe = self.humanoidRootPart.CFrame
		else
			local camCFrame = self.camera.CoordinateFrame
			cframe = camCFrame - camCFrame.p + self.humanoidRootPart.Position
		end
		castPoints[#castPoints + 1] = cframe.p
		for i = 0, CIRCLE_CASTS - 1 do
			local angle = (2 * math.pi / CIRCLE_CASTS) * i
			local offset = 3 * Vector3.new(math.cos(angle), math.sin(angle), 0)
			castPoints[#castPoints + 1] = cframe * offset
		end
	end
	
	function Invisicam:LimbMoveBehavior(castPoints)
		self:LimbBehavior(castPoints)
		self:MoveBehavior(castPoints)
	end
	
	function Invisicam:CharacterOutlineBehavior(castPoints)
		local torsoUp = self.torsoPart.CFrame.upVector.unit
		local torsoRight = self.torsoPart.CFrame.rightVector.unit
	
		-- Torso cross of points for interior coverage
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoUp
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoUp
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoRight
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoRight
		if self.headPart then
			castPoints[#castPoints + 1] = self.headPart.CFrame.p
		end
	
		local cframe = CFrame.new(ZERO_VECTOR3,Vector3.new(self.camera.CoordinateFrame.lookVector.X,0,self.camera.CoordinateFrame.lookVector.Z))
		local centerPoint = (self.torsoPart and self.torsoPart.Position or self.humanoidRootPart.Position)
	
		local partsWhitelist = {self.torsoPart}
		if self.headPart then
			partsWhitelist[#partsWhitelist + 1] = self.headPart
		end
	
		for i = 1, CHAR_OUTLINE_CASTS do
			local angle = (2 * math.pi * i / CHAR_OUTLINE_CASTS)
			local offset = cframe * (3 * Vector3.new(math.cos(angle), math.sin(angle), 0))
	
			offset = Vector3.new(offset.X, math.max(offset.Y, -2.25), offset.Z)	
	
			local ray = Ray.new(centerPoint + offset, -3 * offset)
			local hit, hitPoint = game.Workspace:FindPartOnRayWithWhitelist(ray, partsWhitelist, false, false)
	
			if hit then
				-- Use hit point as the cast point, but nudge it slightly inside the character so that bumping up against
				-- walls is less likely to cause a transparency glitch
				castPoints[#castPoints + 1] = hitPoint + 0.2 * (centerPoint - hitPoint).unit
			end
		end
	end
	
	function Invisicam:SmartCircleBehavior(castPoints)
		local torsoUp = self.torsoPart.CFrame.upVector.unit
		local torsoRight = self.torsoPart.CFrame.rightVector.unit
	
		-- SMART_CIRCLE mode includes rays to head and 5 to the torso.
		-- Hands, arms, legs and feet are not included since they
		-- are not canCollide and can therefore go inside of parts
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoUp
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoUp
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p + torsoRight
		castPoints[#castPoints + 1] = self.torsoPart.CFrame.p - torsoRight
		if self.headPart then
			castPoints[#castPoints + 1] = self.headPart.CFrame.p
		end
	
		local cameraOrientation = self.camera.CFrame - self.camera.CFrame.p
		local torsoPoint = Vector3.new(0,0.5,0) + (self.torsoPart and self.torsoPart.Position or self.humanoidRootPart.Position)
		local radius = 2.5
	
		-- This loop first calculates points in a circle of radius 2.5 around the torso of the character, in the
		-- plane orthogonal to the camera's lookVector. Each point is then raycast to, to determine if it is within
		-- the free space surrounding the player (not inside anything). Two iterations are done to adjust points that
		-- are inside parts, to try to move them to valid locations that are still on their camera ray, so that the
		-- circle remains circular from the camera's perspective, but does not cast rays into walls or parts that are
		-- behind, below or beside the character and not really obstructing view of the character. This minimizes
		-- the undesirable situation where the character walks up to an exterior wall and it is made invisible even
		-- though it is behind the character.
		for i = 1, SMART_CIRCLE_CASTS do
			local angle = SMART_CIRCLE_INCREMENT * i - 0.5 * math.pi
			local offset = radius * Vector3.new(math.cos(angle), math.sin(angle), 0)
			local circlePoint = torsoPoint + cameraOrientation * offset
	
			-- Vector from camera to point on the circle being tested
			local vp = circlePoint - self.camera.CFrame.p
	
			local ray = Ray.new(torsoPoint, circlePoint - torsoPoint)
			local hit, hp, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )
			local castPoint = circlePoint
	
			if hit then
				local hprime = hp + 0.1 * hitNormal.unit -- Slightly offset hit point from the hit surface
				local v0 = hprime - torsoPoint -- Vector from torso to offset hit point
	
				local perp = (v0:Cross(vp)).unit
	
				-- Vector from the offset hit point, along the hit surface
				local v1 = (perp:Cross(hitNormal)).unit
	
				-- Vector from camera to offset hit
				local vprime = (hprime - self.camera.CFrame.p).unit
	
				-- This dot product checks to see if the vector along the hit surface would hit the correct
				-- side of the invisicam cone, or if it would cross the camera look vector and hit the wrong side
				if ( v0.unit:Dot(-v1) < v0.unit:Dot(vprime)) then
					castPoint = RayIntersection(hprime, v1, circlePoint, vp)
	
					if castPoint.Magnitude > 0 then
						local ray = Ray.new(hprime, castPoint - hprime)
						local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )
	
						if hit then
							local hprime2 = hitPoint + 0.1 * hitNormal.unit
							castPoint = hprime2
						end
					else
						castPoint = hprime
					end
				else
					castPoint = hprime
				end
	
				local ray = Ray.new(torsoPoint, (castPoint - torsoPoint))
				local hit, hitPoint, hitNormal = game.Workspace:FindPartOnRayWithIgnoreList(ray, {self.char}, false, false )
	
				if hit then
					local castPoint2 = hitPoint - 0.1 * (castPoint - torsoPoint).unit
					castPoint = castPoint2
				end
			end
	
			castPoints[#castPoints + 1] = castPoint
		end
	end
	
	function Invisicam:CheckTorsoReference()
		if self.char then
			self.torsoPart = self.char:FindFirstChild("Torso")
			if not self.torsoPart then
				self.torsoPart = self.char:FindFirstChild("UpperTorso")
				if not self.torsoPart then
					self.torsoPart = self.char:FindFirstChild("HumanoidRootPart")
				end
			end
	
			self.headPart = self.char:FindFirstChild("Head")
		end
	end
	
	function Invisicam:CharacterAdded(char, player)
		-- We only want the LocalPlayer's character
		if player~=PlayersService.LocalPlayer then return end
	
		if self.childAddedConn then
			self.childAddedConn:Disconnect()
			self.childAddedConn = nil
		end
		if self.childRemovedConn then
			self.childRemovedConn:Disconnect()
			self.childRemovedConn = nil
		end
	
		self.char = char
	
		self.trackedLimbs = {}
		local function childAdded(child)
			if child:IsA("BasePart") then
				if LIMB_TRACKING_SET[child.Name] then
					self.trackedLimbs[child] = true
				end
	
				if child.Name == "Torso" or child.Name == "UpperTorso" then
					self.torsoPart = child
				end
	
				if child.Name == "Head" then
					self.headPart = child
				end
			end
		end
	
		local function childRemoved(child)
			self.trackedLimbs[child] = nil
	
			-- If removed/replaced part is 'Torso' or 'UpperTorso' double check that we still have a TorsoPart to use
			self:CheckTorsoReference()
		end
	
		self.childAddedConn = char.ChildAdded:Connect(childAdded)
		self.childRemovedConn = char.ChildRemoved:Connect(childRemoved)
		for _, child in pairs(self.char:GetChildren()) do
			childAdded(child)
		end
	end
	
	function Invisicam:SetMode(newMode)
		AssertTypes(newMode, 'number')
		for _, modeNum in pairs(MODE) do
			if modeNum == newMode then
				self.mode = newMode
				self.behaviorFunction = self.behaviors[self.mode]
				return
			end
		end
		error("Invalid mode number")
	end
	
	function Invisicam:GetObscuredParts()
		return self.savedHits
	end
	
	-- Want to turn off Invisicam? Be sure to call this after.
	function Invisicam:Cleanup()
		for hit, originalFade in pairs(self.savedHits) do
			hit.LocalTransparencyModifier = originalFade
		end
	end
	
	function Invisicam:Update(dt, desiredCameraCFrame, desiredCameraFocus)
		-- Bail if there is no Character
		if not self.enabled or not self.char then
			return desiredCameraCFrame, desiredCameraFocus
		end
	
		self.camera = game.Workspace.CurrentCamera
	
		-- TODO: Move this to a GetHumanoidRootPart helper, probably combine with CheckTorsoReference
		-- Make sure we still have a HumanoidRootPart
		if not self.humanoidRootPart then
			local humanoid = self.char:FindFirstChildOfClass("Humanoid")
			if humanoid and humanoid.RootPart then
				self.humanoidRootPart = humanoid.RootPart
			else
				-- Not set up with Humanoid? Try and see if there's one in the Character at all:
				self.humanoidRootPart = self.char:FindFirstChild("HumanoidRootPart")
				if not self.humanoidRootPart then
					-- Bail out, since we're relying on HumanoidRootPart existing
					return desiredCameraCFrame, desiredCameraFocus
				end
			end
	
			-- TODO: Replace this with something more sensible
			local ancestryChangedConn
			ancestryChangedConn = self.humanoidRootPart.AncestryChanged:Connect(function(child, parent)
				if child == self.humanoidRootPart and not parent then 
					self.humanoidRootPart = nil
					if ancestryChangedConn and ancestryChangedConn.Connected then
						ancestryChangedConn:Disconnect()
						ancestryChangedConn = nil
					end
				end
			end)
		end
	
		if not self.torsoPart then
			self:CheckTorsoReference()
			if not self.torsoPart then
				-- Bail out, since we're relying on Torso existing, should never happen since we fall back to using HumanoidRootPart as torso
				return desiredCameraCFrame, desiredCameraFocus
			end
		end
	
		-- Make a list of world points to raycast to
		local castPoints = {}
		self.behaviorFunction(self, castPoints)
	
		-- Cast to get a list of objects between the camera and the cast points
		local currentHits = {}
		local ignoreList = {self.char}
		local function add(hit)
			currentHits[hit] = true
			if not self.savedHits[hit] then
				self.savedHits[hit] = hit.LocalTransparencyModifier
			end
		end
	
		local hitParts
		local hitPartCount = 0
	
		-- Hash table to treat head-ray-hit parts differently than the rest of the hit parts hit by other rays
		-- head/torso ray hit parts will be more transparent than peripheral parts when USE_STACKING_TRANSPARENCY is enabled
		local headTorsoRayHitParts = {}
	
		local perPartTransparencyHeadTorsoHits = TARGET_TRANSPARENCY
		local perPartTransparencyOtherHits = TARGET_TRANSPARENCY
	
		if USE_STACKING_TRANSPARENCY then
	
			-- This first call uses head and torso rays to find out how many parts are stacked up
			-- for the purpose of calculating required per-part transparency
			local headPoint = self.headPart and self.headPart.CFrame.p or castPoints[1]
			local torsoPoint = self.torsoPart and self.torsoPart.CFrame.p or castPoints[2]
			hitParts = self.camera:GetPartsObscuringTarget({headPoint, torsoPoint}, ignoreList)
	
			-- Count how many things the sample rays passed through, including decals. This should only
			-- count decals facing the camera, but GetPartsObscuringTarget does not return surface normals,
			-- so my compromise for now is to just let any decal increase the part count by 1. Only one
			-- decal per part will be considered.
			for i = 1, #hitParts do
				local hitPart = hitParts[i]
				hitPartCount = hitPartCount + 1 -- count the part itself
				headTorsoRayHitParts[hitPart] = true
				for _, child in pairs(hitPart:GetChildren()) do
					if child:IsA('Decal') or child:IsA('Texture') then
						hitPartCount = hitPartCount + 1 -- count first decal hit, then break
						break
					end
				end
			end
	
			if (hitPartCount > 0) then
				perPartTransparencyHeadTorsoHits = math.pow( ((0.5 * TARGET_TRANSPARENCY) + (0.5 * TARGET_TRANSPARENCY / hitPartCount)), 1 / hitPartCount )
				perPartTransparencyOtherHits = math.pow( ((0.5 * TARGET_TRANSPARENCY_PERIPHERAL) + (0.5 * TARGET_TRANSPARENCY_PERIPHERAL / hitPartCount)), 1 / hitPartCount )
			end
		end
	
		-- Now get all the parts hit by all the rays
		hitParts = self.camera:GetPartsObscuringTarget(castPoints, ignoreList)
	
		local partTargetTransparency = {}
	
		-- Include decals and textures
		for i = 1, #hitParts do
			local hitPart = hitParts[i]
	
			partTargetTransparency[hitPart] =headTorsoRayHitParts[hitPart] and perPartTransparencyHeadTorsoHits or perPartTransparencyOtherHits
	
			-- If the part is not already as transparent or more transparent than what invisicam requires, add it to the list of
			-- parts to be modified by invisicam
			if hitPart.Transparency < partTargetTransparency[hitPart] then
				add(hitPart)
			end
	
			-- Check all decals and textures on the part
			for _, child in pairs(hitPart:GetChildren()) do
				if child:IsA('Decal') or child:IsA('Texture') then
					if (child.Transparency < partTargetTransparency[hitPart]) then
						partTargetTransparency[child] = partTargetTransparency[hitPart]
						add(child)
					end
				end
			end
		end
	
		-- Invisibilize objects that are in the way, restore those that aren't anymore
		for hitPart, originalLTM in pairs(self.savedHits) do
			if currentHits[hitPart] then
				-- LocalTransparencyModifier gets whatever value is required to print the part's total transparency to equal perPartTransparency
				hitPart.LocalTransparencyModifier = (hitPart.Transparency < 1) and ((partTargetTransparency[hitPart] - hitPart.Transparency) / (1.0 - hitPart.Transparency)) or 0
			else -- Restore original pre-invisicam value of LTM
				hitPart.LocalTransparencyModifier = originalLTM
				self.savedHits[hitPart] = nil
			end
		end
	
		-- Invisicam does not change the camera values
		return desiredCameraCFrame, desiredCameraFocus
	end
	
	return Invisicam
end

function _LegacyCamera()
	
	local ZERO_VECTOR2 = Vector2.new(0,0)
	
	local Util = _CameraUtils()
	
	--[[ Services ]]--
	local PlayersService = game:GetService('Players')
	
	--[[ The Module ]]--
	local BaseCamera = _BaseCamera()
	local LegacyCamera = setmetatable({}, BaseCamera)
	LegacyCamera.__index = LegacyCamera
	
	function LegacyCamera.new()
		local self = setmetatable(BaseCamera.new(), LegacyCamera)
	
		self.cameraType = Enum.CameraType.Fixed
		self.lastUpdate = tick()
		self.lastDistanceToSubject = nil
	
		return self
	end
	
	function LegacyCamera:GetModuleName()
		return "LegacyCamera"
	end
	
	--[[ Functions overridden from BaseCamera ]]--
	function LegacyCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
		return BaseCamera.SetCameraToSubjectDistance(self,desiredSubjectDistance)
	end
	
	function LegacyCamera:Update(dt)
	
		-- Cannot update until cameraType has been set
		if not self.cameraType then return end
	
		local now = tick()
		local timeDelta = (now - self.lastUpdate)
		local camera = 	workspace.CurrentCamera
		local newCameraCFrame = camera.CFrame
		local newCameraFocus = camera.Focus
		local player = PlayersService.LocalPlayer
	
		if self.lastUpdate == nil or timeDelta > 1 then
			self.lastDistanceToSubject = nil
		end
		local subjectPosition = self:GetSubjectPosition()
	
		if self.cameraType == Enum.CameraType.Fixed then
			if self.lastUpdate then
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math.min(0.1, now - self.lastUpdate)
				local gamepadRotation = self:UpdateGamepad()
				self.rotateInput = self.rotateInput + (gamepadRotation * delta)
			end
	
			if subjectPosition and player and camera then
				local distanceToSubject = self:GetCameraToSubjectDistance()
				local newLookVector = self:CalculateNewLookVector()
				self.rotateInput = ZERO_VECTOR2
	
				newCameraFocus = camera.Focus -- Fixed camera does not change focus
				newCameraCFrame = CFrame.new(camera.CFrame.p, camera.CFrame.p + (distanceToSubject * newLookVector))
			end
		elseif self.cameraType == Enum.CameraType.Attach then
			if subjectPosition and camera then
				local distanceToSubject = self:GetCameraToSubjectDistance()
				local humanoid = self:GetHumanoid()
				if self.lastUpdate and humanoid and humanoid.RootPart then
	
					-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
					local delta = math.min(0.1, now - self.lastUpdate)
					local gamepadRotation = self:UpdateGamepad()
					self.rotateInput = self.rotateInput + (gamepadRotation * delta)
	
					local forwardVector = humanoid.RootPart.CFrame.lookVector
	
					local y = Util.GetAngleBetweenXZVectors(forwardVector, self:GetCameraLookVector())
					if Util.IsFinite(y) then
						-- Preserve vertical rotation from user input
						self.rotateInput = Vector2.new(y, self.rotateInput.Y)
					end
				end
	
				local newLookVector = self:CalculateNewLookVector()
				self.rotateInput = ZERO_VECTOR2
	
				newCameraFocus = CFrame.new(subjectPosition)
				newCameraCFrame = CFrame.new(subjectPosition - (distanceToSubject * newLookVector), subjectPosition)
			end
		elseif self.cameraType == Enum.CameraType.Watch then
			if subjectPosition and player and camera then
				local cameraLook = nil
	
				local humanoid = self:GetHumanoid()
				if humanoid and humanoid.RootPart then
					local diffVector = subjectPosition - camera.CFrame.p
					cameraLook = diffVector.unit
	
					if self.lastDistanceToSubject and self.lastDistanceToSubject == self:GetCameraToSubjectDistance() then
						-- Don't clobber the zoom if they zoomed the camera
						local newDistanceToSubject = diffVector.magnitude
						self:SetCameraToSubjectDistance(newDistanceToSubject)
					end
				end
	
				local distanceToSubject = self:GetCameraToSubjectDistance()
				local newLookVector = self:CalculateNewLookVector(cameraLook)
				self.rotateInput = ZERO_VECTOR2
	
				newCameraFocus = CFrame.new(subjectPosition)
				newCameraCFrame = CFrame.new(subjectPosition - (distanceToSubject * newLookVector), subjectPosition)
	
				self.lastDistanceToSubject = distanceToSubject
			end
		else
			-- Unsupported type, return current values unchanged
			return camera.CFrame, camera.Focus
		end
	
		self.lastUpdate = now
		return newCameraCFrame, newCameraFocus
	end
	
	return LegacyCamera
end

function _OrbitalCamera()
	
	-- Local private variables and constants
	local UNIT_Z = Vector3.new(0,0,1)
	local X1_Y0_Z1 = Vector3.new(1,0,1)	--Note: not a unit vector, used for projecting onto XZ plane
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local ZERO_VECTOR2 = Vector2.new(0,0)
	local TAU = 2 * math.pi
	
	--[[ Gamepad Support ]]--
	local THUMBSTICK_DEADZONE = 0.2
	
	-- Do not edit these values, they are not the developer-set limits, they are limits
	-- to the values the camera system equations can correctly handle
	local MIN_ALLOWED_ELEVATION_DEG = -80
	local MAX_ALLOWED_ELEVATION_DEG = 80
	
	local externalProperties = {}
	externalProperties["InitialDistance"]  = 25
	externalProperties["MinDistance"]      = 10
	externalProperties["MaxDistance"]      = 100
	externalProperties["InitialElevation"] = 35
	externalProperties["MinElevation"]     = 35
	externalProperties["MaxElevation"]     = 35
	externalProperties["ReferenceAzimuth"] = -45	-- Angle around the Y axis where the camera starts. -45 offsets the camera in the -X and +Z directions equally
	externalProperties["CWAzimuthTravel"]  = 90	-- How many degrees the camera is allowed to rotate from the reference position, CW as seen from above
	externalProperties["CCWAzimuthTravel"] = 90	-- How many degrees the camera is allowed to rotate from the reference position, CCW as seen from above
	externalProperties["UseAzimuthLimits"] = false -- Full rotation around Y axis available by default
	
	local Util = _CameraUtils()
	
	--[[ Services ]]--
	local PlayersService = game:GetService('Players')
	local VRService = game:GetService("VRService")
	
	--[[ The Module ]]--
	local BaseCamera = _BaseCamera()
	local OrbitalCamera = setmetatable({}, BaseCamera)
	OrbitalCamera.__index = OrbitalCamera
	
	
	function OrbitalCamera.new()
		local self = setmetatable(BaseCamera.new(), OrbitalCamera)
	
		self.lastUpdate = tick()
	
		-- OrbitalCamera-specific members
		self.changedSignalConnections = {}
		self.refAzimuthRad = nil
		self.curAzimuthRad = nil
		self.minAzimuthAbsoluteRad = nil
		self.maxAzimuthAbsoluteRad = nil
		self.useAzimuthLimits = nil
		self.curElevationRad = nil
		self.minElevationRad = nil
		self.maxElevationRad = nil
		self.curDistance = nil
		self.minDistance = nil
		self.maxDistance = nil
	
		-- Gamepad
		self.r3ButtonDown = false
		self.l3ButtonDown = false
		self.gamepadDollySpeedMultiplier = 1
	
		self.lastUserPanCamera = tick()
	
		self.externalProperties = {}
		self.externalProperties["InitialDistance"] 	= 25
		self.externalProperties["MinDistance"] 		= 10
		self.externalProperties["MaxDistance"] 		= 100
		self.externalProperties["InitialElevation"] 	= 35
		self.externalProperties["MinElevation"] 		= 35
		self.externalProperties["MaxElevation"] 		= 35
		self.externalProperties["ReferenceAzimuth"] 	= -45	-- Angle around the Y axis where the camera starts. -45 offsets the camera in the -X and +Z directions equally
		self.externalProperties["CWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CW as seen from above
		self.externalProperties["CCWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CCW as seen from above
		self.externalProperties["UseAzimuthLimits"] 	= false -- Full rotation around Y axis available by default
		self:LoadNumberValueParameters()
	
		return self
	end
	
	function OrbitalCamera:LoadOrCreateNumberValueParameter(name, valueType, updateFunction)
		local valueObj = script:FindFirstChild(name)
	
		if valueObj and valueObj:isA(valueType) then
			-- Value object exists and is the correct type, use its value
			self.externalProperties[name] = valueObj.Value
		elseif self.externalProperties[name] ~= nil then
			-- Create missing (or replace incorrectly-typed) valueObject with default value
			valueObj = Instance.new(valueType)
			valueObj.Name = name
			valueObj.Parent = script
			valueObj.Value = self.externalProperties[name]
		else
			print("externalProperties table has no entry for ",name)
			return
		end
	
		if updateFunction then
			if self.changedSignalConnections[name] then
				self.changedSignalConnections[name]:Disconnect()
			end
			self.changedSignalConnections[name] = valueObj.Changed:Connect(function(newValue)
				self.externalProperties[name] = newValue
				updateFunction(self)
			end)
		end
	end
	
	function OrbitalCamera:SetAndBoundsCheckAzimuthValues()
		self.minAzimuthAbsoluteRad = math.rad(self.externalProperties["ReferenceAzimuth"]) - math.abs(math.rad(self.externalProperties["CWAzimuthTravel"]))
		self.maxAzimuthAbsoluteRad = math.rad(self.externalProperties["ReferenceAzimuth"]) + math.abs(math.rad(self.externalProperties["CCWAzimuthTravel"]))
		self.useAzimuthLimits = self.externalProperties["UseAzimuthLimits"]
		if self.useAzimuthLimits then
			self.curAzimuthRad = math.max(self.curAzimuthRad, self.minAzimuthAbsoluteRad)
			self.curAzimuthRad = math.min(self.curAzimuthRad, self.maxAzimuthAbsoluteRad)
		end
	end
	
	function OrbitalCamera:SetAndBoundsCheckElevationValues()
		-- These degree values are the direct user input values. It is deliberate that they are
		-- ranged checked only against the extremes, and not against each other. Any time one
		-- is changed, both of the internal values in radians are recalculated. This allows for
		-- A developer to change the values in any order and for the end results to be that the
		-- internal values adjust to match intent as best as possible.
		local minElevationDeg = math.max(self.externalProperties["MinElevation"], MIN_ALLOWED_ELEVATION_DEG)
		local maxElevationDeg = math.min(self.externalProperties["MaxElevation"], MAX_ALLOWED_ELEVATION_DEG)
	
		-- Set internal values in radians
		self.minElevationRad = math.rad(math.min(minElevationDeg, maxElevationDeg))
		self.maxElevationRad = math.rad(math.max(minElevationDeg, maxElevationDeg))
		self.curElevationRad = math.max(self.curElevationRad, self.minElevationRad)
		self.curElevationRad = math.min(self.curElevationRad, self.maxElevationRad)
	end
	
	function OrbitalCamera:SetAndBoundsCheckDistanceValues()
		self.minDistance = self.externalProperties["MinDistance"]
		self.maxDistance = self.externalProperties["MaxDistance"]
		self.curDistance = math.max(self.curDistance, self.minDistance)
		self.curDistance = math.min(self.curDistance, self.maxDistance)
	end
	
	-- This loads from, or lazily creates, NumberValue objects for exposed parameters
	function OrbitalCamera:LoadNumberValueParameters()
		-- These initial values do not require change listeners since they are read only once
		self:LoadOrCreateNumberValueParameter("InitialElevation", "NumberValue", nil)
		self:LoadOrCreateNumberValueParameter("InitialDistance", "NumberValue", nil)
	
		-- Note: ReferenceAzimuth is also used as an initial value, but needs a change listener because it is used in the calculation of the limits
		self:LoadOrCreateNumberValueParameter("ReferenceAzimuth", "NumberValue", self.SetAndBoundsCheckAzimuthValue)
		self:LoadOrCreateNumberValueParameter("CWAzimuthTravel", "NumberValue", self.SetAndBoundsCheckAzimuthValues)
		self:LoadOrCreateNumberValueParameter("CCWAzimuthTravel", "NumberValue", self.SetAndBoundsCheckAzimuthValues)
		self:LoadOrCreateNumberValueParameter("MinElevation", "NumberValue", self.SetAndBoundsCheckElevationValues)
		self:LoadOrCreateNumberValueParameter("MaxElevation", "NumberValue", self.SetAndBoundsCheckElevationValues)
		self:LoadOrCreateNumberValueParameter("MinDistance", "NumberValue", self.SetAndBoundsCheckDistanceValues)
		self:LoadOrCreateNumberValueParameter("MaxDistance", "NumberValue", self.SetAndBoundsCheckDistanceValues)
		self:LoadOrCreateNumberValueParameter("UseAzimuthLimits", "BoolValue", self.SetAndBoundsCheckAzimuthValues)
	
		-- Internal values set (in radians, from degrees), plus sanitization
		self.curAzimuthRad = math.rad(self.externalProperties["ReferenceAzimuth"])
		self.curElevationRad = math.rad(self.externalProperties["InitialElevation"])
		self.curDistance = self.externalProperties["InitialDistance"]
	
		self:SetAndBoundsCheckAzimuthValues()
		self:SetAndBoundsCheckElevationValues()
		self:SetAndBoundsCheckDistanceValues()
	end
	
	function OrbitalCamera:GetModuleName()
		return "OrbitalCamera"
	end
	
	function OrbitalCamera:SetInitialOrientation(humanoid)
		if not humanoid or not humanoid.RootPart then
			warn("OrbitalCamera could not set initial orientation due to missing humanoid")
			return
		end
		local newDesiredLook = (humanoid.RootPart.CFrame.lookVector - Vector3.new(0,0.23,0)).unit
		local horizontalShift = Util.GetAngleBetweenXZVectors(newDesiredLook, self:GetCameraLookVector())
		local vertShift = math.asin(self:GetCameraLookVector().y) - math.asin(newDesiredLook.y)
		if not Util.IsFinite(horizontalShift) then
			horizontalShift = 0
		end
		if not Util.IsFinite(vertShift) then
			vertShift = 0
		end
		self.rotateInput = Vector2.new(horizontalShift, vertShift)
	end
	
	--[[ Functions of BaseCamera that are overridden by OrbitalCamera ]]--
	function OrbitalCamera:GetCameraToSubjectDistance()
		return self.curDistance
	end
	
	function OrbitalCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
		print("OrbitalCamera SetCameraToSubjectDistance ",desiredSubjectDistance)
		local player = PlayersService.LocalPlayer
		if player then
			self.currentSubjectDistance = math.clamp(desiredSubjectDistance, self.minDistance, self.maxDistance)
	
			-- OrbitalCamera is not allowed to go into the first-person range
			self.currentSubjectDistance = math.max(self.currentSubjectDistance, self.FIRST_PERSON_DISTANCE_THRESHOLD)
		end
		self.inFirstPerson = false
		self:UpdateMouseBehavior()
		return self.currentSubjectDistance
	end
	
	function OrbitalCamera:CalculateNewLookVector(suppliedLookVector, xyRotateVector)
		local currLookVector = suppliedLookVector or self:GetCameraLookVector()
		local currPitchAngle = math.asin(currLookVector.y)
		local yTheta = math.clamp(xyRotateVector.y, currPitchAngle - math.rad(MAX_ALLOWED_ELEVATION_DEG), currPitchAngle - math.rad(MIN_ALLOWED_ELEVATION_DEG))
		local constrainedRotateInput = Vector2.new(xyRotateVector.x, yTheta)
		local startCFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
		local newLookVector = (CFrame.Angles(0, -constrainedRotateInput.x, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.y,0,0)).lookVector
		return newLookVector
	end
	
	function OrbitalCamera:GetGamepadPan(name, state, input)
		if input.UserInputType == self.activeGamepad and input.KeyCode == Enum.KeyCode.Thumbstick2 then
			if self.r3ButtonDown or self.l3ButtonDown then
			-- R3 or L3 Thumbstick is depressed, right stick controls dolly in/out
				if (input.Position.Y > THUMBSTICK_DEADZONE) then
					self.gamepadDollySpeedMultiplier = 0.96
				elseif (input.Position.Y < -THUMBSTICK_DEADZONE) then
					self.gamepadDollySpeedMultiplier = 1.04
				else
					self.gamepadDollySpeedMultiplier = 1.00
				end
			else
				if state == Enum.UserInputState.Cancel then
					self.gamepadPanningCamera = ZERO_VECTOR2
					return
				end
	
				local inputVector = Vector2.new(input.Position.X, -input.Position.Y)
				if inputVector.magnitude > THUMBSTICK_DEADZONE then
					self.gamepadPanningCamera = Vector2.new(input.Position.X, -input.Position.Y)
				else
					self.gamepadPanningCamera = ZERO_VECTOR2
				end
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function OrbitalCamera:DoGamepadZoom(name, state, input)
		if input.UserInputType == self.activeGamepad and (input.KeyCode == Enum.KeyCode.ButtonR3 or input.KeyCode == Enum.KeyCode.ButtonL3) then
			if (state == Enum.UserInputState.Begin) then
				self.r3ButtonDown = input.KeyCode == Enum.KeyCode.ButtonR3
				self.l3ButtonDown = input.KeyCode == Enum.KeyCode.ButtonL3
			elseif (state == Enum.UserInputState.End) then
				if (input.KeyCode == Enum.KeyCode.ButtonR3) then
					self.r3ButtonDown = false
				elseif (input.KeyCode == Enum.KeyCode.ButtonL3) then
					self.l3ButtonDown = false
				end
				if (not self.r3ButtonDown) and (not self.l3ButtonDown) then
					self.gamepadDollySpeedMultiplier = 1.00
				end
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end
	
	function OrbitalCamera:BindGamepadInputActions()
		self:BindAction("OrbitalCamGamepadPan", function(name, state, input) return self:GetGamepadPan(name, state, input) end,
			false, Enum.KeyCode.Thumbstick2)
		self:BindAction("OrbitalCamGamepadZoom", function(name, state, input) return self:DoGamepadZoom(name, state, input) end,
			false, Enum.KeyCode.ButtonR3, Enum.KeyCode.ButtonL3)
	end
	
	
	-- [[ Update ]]--
	function OrbitalCamera:Update(dt)
		local now = tick()
		local timeDelta = (now - self.lastUpdate)
		local userPanningTheCamera = (self.UserPanningTheCamera == true)
		local camera = 	workspace.CurrentCamera
		local newCameraCFrame = camera.CFrame
		local newCameraFocus = camera.Focus
		local player = PlayersService.LocalPlayer
		local cameraSubject = camera and camera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
		local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
	
		if self.lastUpdate == nil or timeDelta > 1 then
			self.lastCameraTransform = nil
		end
	
		if self.lastUpdate then
			local gamepadRotation = self:UpdateGamepad()
	
			if self:ShouldUseVRRotation() then
				self.RotateInput = self.RotateInput + self:GetVRRotationInput()
			else
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math.min(0.1, timeDelta)
	
				if gamepadRotation ~= ZERO_VECTOR2 then
					userPanningTheCamera = true
					self.rotateInput = self.rotateInput + (gamepadRotation * delta)
				end
	
				local angle = 0
				if not (isInVehicle or isOnASkateboard) then
					angle = angle + (self.TurningLeft and -120 or 0)
					angle = angle + (self.TurningRight and 120 or 0)
				end
	
				if angle ~= 0 then
					self.rotateInput = self.rotateInput +  Vector2.new(math.rad(angle * delta), 0)
					userPanningTheCamera = true
				end
			end
		end
	
		-- Reset tween speed if user is panning
		if userPanningTheCamera then
			self.lastUserPanCamera = tick()
		end
	
		local subjectPosition = self:GetSubjectPosition()
	
		if subjectPosition and player and camera then
	
			-- Process any dollying being done by gamepad
			-- TODO: Move this
			if self.gamepadDollySpeedMultiplier ~= 1 then
				self:SetCameraToSubjectDistance(self.currentSubjectDistance * self.gamepadDollySpeedMultiplier)
			end
	
			local VREnabled = VRService.VREnabled
			newCameraFocus = VREnabled and self:GetVRFocus(subjectPosition, timeDelta) or CFrame.new(subjectPosition)
	
			local cameraFocusP = newCameraFocus.p
			if VREnabled and not self:IsInFirstPerson() then
				local cameraHeight = self:GetCameraHeight()
				local vecToSubject = (subjectPosition - camera.CFrame.p)
				local distToSubject = vecToSubject.magnitude
	
				-- Only move the camera if it exceeded a maximum distance to the subject in VR
				if distToSubject > self.currentSubjectDistance or self.rotateInput.x ~= 0 then
					local desiredDist = math.min(distToSubject, self.currentSubjectDistance)
	
					-- Note that CalculateNewLookVector is overridden from BaseCamera
					vecToSubject = self:CalculateNewLookVector(vecToSubject.unit * X1_Y0_Z1, Vector2.new(self.rotateInput.x, 0)) * desiredDist
	
					local newPos = cameraFocusP - vecToSubject
					local desiredLookDir = camera.CFrame.lookVector
					if self.rotateInput.x ~= 0 then
						desiredLookDir = vecToSubject
					end
					local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
					self.RotateInput = ZERO_VECTOR2
	
					newCameraCFrame = CFrame.new(newPos, lookAt) + Vector3.new(0, cameraHeight, 0)
				end
			else
				-- self.RotateInput is a Vector2 of mouse movement deltas since last update
				self.curAzimuthRad = self.curAzimuthRad - self.rotateInput.x
	
				if self.useAzimuthLimits then
					self.curAzimuthRad = math.clamp(self.curAzimuthRad, self.minAzimuthAbsoluteRad, self.maxAzimuthAbsoluteRad)
				else
					self.curAzimuthRad = (self.curAzimuthRad ~= 0) and (math.sign(self.curAzimuthRad) * (math.abs(self.curAzimuthRad) % TAU)) or 0
				end
	
				self.curElevationRad = math.clamp(self.curElevationRad + self.rotateInput.y, self.minElevationRad, self.maxElevationRad)
	
				local cameraPosVector = self.currentSubjectDistance * ( CFrame.fromEulerAnglesYXZ( -self.curElevationRad, self.curAzimuthRad, 0 ) * UNIT_Z )
				local camPos = subjectPosition + cameraPosVector
	
				newCameraCFrame = CFrame.new(camPos, subjectPosition)
	
				self.rotateInput = ZERO_VECTOR2
			end
	
			self.lastCameraTransform = newCameraCFrame
			self.lastCameraFocus = newCameraFocus
			if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
				self.lastSubjectCFrame = cameraSubject.CFrame
			else
				self.lastSubjectCFrame = nil
			end
		end
	
		self.lastUpdate = now
		return newCameraCFrame, newCameraFocus
	end
	
	return OrbitalCamera
end

function _ClassicCamera()
	
	-- Local private variables and constants
	local ZERO_VECTOR2 = Vector2.new(0,0)
	
	local tweenAcceleration = math.rad(220)		--Radians/Second^2
	local tweenSpeed = math.rad(0)				--Radians/Second
	local tweenMaxSpeed = math.rad(250)			--Radians/Second
	local TIME_BEFORE_AUTO_ROTATE = 2.0 		--Seconds, used when auto-aligning camera with vehicles
	
	local INITIAL_CAMERA_ANGLE = CFrame.fromOrientation(math.rad(-15), 0, 0)
	
	local FFlagUserCameraToggle do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserCameraToggle")
		end)
		FFlagUserCameraToggle = success and result
	end
	
	--[[ Services ]]--
	local PlayersService = game:GetService('Players')
	local VRService = game:GetService("VRService")
	
	local CameraInput = _CameraInput()
	local Util = _CameraUtils()
	
	--[[ The Module ]]--
	local BaseCamera = _BaseCamera()
	local ClassicCamera = setmetatable({}, BaseCamera)
	ClassicCamera.__index = ClassicCamera
	
	function ClassicCamera.new()
		local self = setmetatable(BaseCamera.new(), ClassicCamera)
	
		self.isFollowCamera = false
		self.isCameraToggle = false
		self.lastUpdate = tick()
		self.cameraToggleSpring = Util.Spring.new(5, 0)
	
		return self
	end
	
	function ClassicCamera:GetCameraToggleOffset(dt)
		assert(FFlagUserCameraToggle)
	
		if self.isCameraToggle then
			local zoom = self.currentSubjectDistance
	
			if CameraInput.getTogglePan() then
				self.cameraToggleSpring.goal = math.clamp(Util.map(zoom, 0.5, self.FIRST_PERSON_DISTANCE_THRESHOLD, 0, 1), 0, 1)
			else
				self.cameraToggleSpring.goal = 0
			end
	
			local distanceOffset = math.clamp(Util.map(zoom, 0.5, 64, 0, 1), 0, 1) + 1
			return Vector3.new(0, self.cameraToggleSpring:step(dt)*distanceOffset, 0)
		end
	
		return Vector3.new()
	end
	
	-- Movement mode standardized to Enum.ComputerCameraMovementMode values
	function ClassicCamera:SetCameraMovementMode(cameraMovementMode)
		BaseCamera.SetCameraMovementMode(self, cameraMovementMode)
	
		self.isFollowCamera = cameraMovementMode == Enum.ComputerCameraMovementMode.Follow
		self.isCameraToggle = cameraMovementMode == Enum.ComputerCameraMovementMode.CameraToggle
	end
	
	function ClassicCamera:Update()
		local now = tick()
		local timeDelta = now - self.lastUpdate
	
		local camera = workspace.CurrentCamera
		local newCameraCFrame = camera.CFrame
		local newCameraFocus = camera.Focus
	
		local overrideCameraLookVector = nil
		if self.resetCameraAngle then
			local rootPart = self:GetHumanoidRootPart()
			if rootPart then
				overrideCameraLookVector = (rootPart.CFrame * INITIAL_CAMERA_ANGLE).lookVector
			else
				overrideCameraLookVector = INITIAL_CAMERA_ANGLE.lookVector
			end
			self.resetCameraAngle = false
		end
	
		local player = PlayersService.LocalPlayer
		local humanoid = self:GetHumanoid()
		local cameraSubject = camera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
		local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
		local isClimbing = humanoid and humanoid:GetState() == Enum.HumanoidStateType.Climbing
	
		if self.lastUpdate == nil or timeDelta > 1 then
			self.lastCameraTransform = nil
		end
	
		if self.lastUpdate then
			local gamepadRotation = self:UpdateGamepad()
	
			if self:ShouldUseVRRotation() then
				self.rotateInput = self.rotateInput + self:GetVRRotationInput()
			else
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math.min(0.1, timeDelta)
	
				if gamepadRotation ~= ZERO_VECTOR2 then
					self.rotateInput = self.rotateInput + (gamepadRotation * delta)
				end
	
				local angle = 0
				if not (isInVehicle or isOnASkateboard) then
					angle = angle + (self.turningLeft and -120 or 0)
					angle = angle + (self.turningRight and 120 or 0)
				end
	
				if angle ~= 0 then
					self.rotateInput = self.rotateInput +  Vector2.new(math.rad(angle * delta), 0)
				end
			end
		end
	
		local cameraHeight = self:GetCameraHeight()
	
		-- Reset tween speed if user is panning
		if self.userPanningTheCamera then
			tweenSpeed = 0
			self.lastUserPanCamera = tick()
		end
	
		local userRecentlyPannedCamera = now - self.lastUserPanCamera < TIME_BEFORE_AUTO_ROTATE
		local subjectPosition = self:GetSubjectPosition()
	
		if subjectPosition and player and camera then
			local zoom = self:GetCameraToSubjectDistance()
			if zoom < 0.5 then
				zoom = 0.5
			end
	
			if self:GetIsMouseLocked() and not self:IsInFirstPerson() then
				-- We need to use the right vector of the camera after rotation, not before
				local newLookCFrame = self:CalculateNewLookCFrame(overrideCameraLookVector)
	
				local offset = self:GetMouseLockOffset()
				local cameraRelativeOffset = offset.X * newLookCFrame.rightVector + offset.Y * newLookCFrame.upVector + offset.Z * newLookCFrame.lookVector
	
				--offset can be NAN, NAN, NAN if newLookVector has only y component
				if Util.IsFiniteVector3(cameraRelativeOffset) then
					subjectPosition = subjectPosition + cameraRelativeOffset
				end
			else
				if not self.userPanningTheCamera and self.lastCameraTransform then
	
					local isInFirstPerson = self:IsInFirstPerson()
	
					if (isInVehicle or isOnASkateboard or (self.isFollowCamera and isClimbing)) and self.lastUpdate and humanoid and humanoid.Torso then
						if isInFirstPerson then
							if self.lastSubjectCFrame and (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
								local y = -Util.GetAngleBetweenXZVectors(self.lastSubjectCFrame.lookVector, cameraSubject.CFrame.lookVector)
								if Util.IsFinite(y) then
									self.rotateInput = self.rotateInput + Vector2.new(y, 0)
								end
								tweenSpeed = 0
							end
						elseif not userRecentlyPannedCamera then
							local forwardVector = humanoid.Torso.CFrame.lookVector
							if isOnASkateboard then
								forwardVector = cameraSubject.CFrame.lookVector
							end
	
							tweenSpeed = math.clamp(tweenSpeed + tweenAcceleration * timeDelta, 0, tweenMaxSpeed)
	
							local percent = math.clamp(tweenSpeed * timeDelta, 0, 1)
							if self:IsInFirstPerson() and not (self.isFollowCamera and self.isClimbing) then
								percent = 1
							end
	
							local y = Util.GetAngleBetweenXZVectors(forwardVector, self:GetCameraLookVector())
							if Util.IsFinite(y) and math.abs(y) > 0.0001 then
								self.rotateInput = self.rotateInput + Vector2.new(y * percent, 0)
							end
						end
	
					elseif self.isFollowCamera and (not (isInFirstPerson or userRecentlyPannedCamera) and not VRService.VREnabled) then
						-- Logic that was unique to the old FollowCamera module
						local lastVec = -(self.lastCameraTransform.p - subjectPosition)
	
						local y = Util.GetAngleBetweenXZVectors(lastVec, self:GetCameraLookVector())
	
						-- This cutoff is to decide if the humanoid's angle of movement,
						-- relative to the camera's look vector, is enough that
						-- we want the camera to be following them. The point is to provide
						-- a sizable dead zone to allow more precise forward movements.
						local thetaCutoff = 0.4
	
						-- Check for NaNs
						if Util.IsFinite(y) and math.abs(y) > 0.0001 and math.abs(y) > thetaCutoff * timeDelta then
							self.rotateInput = self.rotateInput + Vector2.new(y, 0)
						end
					end
				end
			end
	
			if not self.isFollowCamera then
				local VREnabled = VRService.VREnabled
	
				if VREnabled then
					newCameraFocus = self:GetVRFocus(subjectPosition, timeDelta)
				else
					newCameraFocus = CFrame.new(subjectPosition)
				end
	
				local cameraFocusP = newCameraFocus.p
				if VREnabled and not self:IsInFirstPerson() then
					local vecToSubject = (subjectPosition - camera.CFrame.p)
					local distToSubject = vecToSubject.magnitude
	
					-- Only move the camera if it exceeded a maximum distance to the subject in VR
					if distToSubject > zoom or self.rotateInput.x ~= 0 then
						local desiredDist = math.min(distToSubject, zoom)
						vecToSubject = self:CalculateNewLookVectorVR() * desiredDist
						local newPos = cameraFocusP - vecToSubject
						local desiredLookDir = camera.CFrame.lookVector
						if self.rotateInput.x ~= 0 then
							desiredLookDir = vecToSubject
						end
						local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
						self.rotateInput = ZERO_VECTOR2
	
						newCameraCFrame = CFrame.new(newPos, lookAt) + Vector3.new(0, cameraHeight, 0)
					end
				else
					local newLookVector = self:CalculateNewLookVector(overrideCameraLookVector)
					self.rotateInput = ZERO_VECTOR2
					newCameraCFrame = CFrame.new(cameraFocusP - (zoom * newLookVector), cameraFocusP)
				end
			else -- is FollowCamera
				local newLookVector = self:CalculateNewLookVector(overrideCameraLookVector)
				self.rotateInput = ZERO_VECTOR2
	
				if VRService.VREnabled then
					newCameraFocus = self:GetVRFocus(subjectPosition, timeDelta)
				else
					newCameraFocus = CFrame.new(subjectPosition)
				end
				newCameraCFrame = CFrame.new(newCameraFocus.p - (zoom * newLookVector), newCameraFocus.p) + Vector3.new(0, cameraHeight, 0)
			end
	
			if FFlagUserCameraToggle then
				local toggleOffset = self:GetCameraToggleOffset(timeDelta)
				newCameraFocus = newCameraFocus + toggleOffset
				newCameraCFrame = newCameraCFrame + toggleOffset
			end
	
			self.lastCameraTransform = newCameraCFrame
			self.lastCameraFocus = newCameraFocus
			if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
				self.lastSubjectCFrame = cameraSubject.CFrame
			else
				self.lastSubjectCFrame = nil
			end
		end
	
		self.lastUpdate = now
		return newCameraCFrame, newCameraFocus
	end
	
	function ClassicCamera:EnterFirstPerson()
		self.inFirstPerson = true
		self:UpdateMouseBehavior()
	end
	
	function ClassicCamera:LeaveFirstPerson()
		self.inFirstPerson = false
		self:UpdateMouseBehavior()
	end
	
	return ClassicCamera
end

function _CameraUtils()

	local CameraUtils = {}
	
	local FFlagUserCameraToggle do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserCameraToggle")
		end)
		FFlagUserCameraToggle = success and result
	end
	
	local function round(num)
		return math.floor(num + 0.5)
	end
	
	-- Critically damped spring class for fluid motion effects
	local Spring = {} do
		Spring.__index = Spring
	
		-- Initialize to a given undamped frequency and default position
		function Spring.new(freq, pos)
			return setmetatable({
				freq = freq,
				goal = pos,
				pos = pos,
				vel = 0,
			}, Spring)
		end
	
		-- Advance the spring simulation by `dt` seconds
		function Spring:step(dt)
			local f = self.freq*2*math.pi
			local g = self.goal
			local p0 = self.pos
			local v0 = self.vel
	
			local offset = p0 - g
			local decay = math.exp(-f*dt)
	
			local p1 = (offset*(1 + f*dt) + v0*dt)*decay + g
			local v1 = (v0*(1 - f*dt) - offset*(f*f*dt))*decay
	
			self.pos = p1
			self.vel = v1
	
			return p1
		end
	end
	
	CameraUtils.Spring = Spring
	
	-- map a value from one range to another
	function CameraUtils.map(x, inMin, inMax, outMin, outMax)
		return (x - inMin)*(outMax - outMin)/(inMax - inMin) + outMin
	end
	
	-- From TransparencyController
	function CameraUtils.Round(num, places)
		local decimalPivot = 10^places
		return math.floor(num * decimalPivot + 0.5) / decimalPivot
	end
	
	function CameraUtils.IsFinite(val)
		return val == val and val ~= math.huge and val ~= -math.huge
	end
	
	function CameraUtils.IsFiniteVector3(vec3)
		return CameraUtils.IsFinite(vec3.X) and CameraUtils.IsFinite(vec3.Y) and CameraUtils.IsFinite(vec3.Z)
	end
	
	-- Legacy implementation renamed
	function CameraUtils.GetAngleBetweenXZVectors(v1, v2)
		return math.atan2(v2.X*v1.Z-v2.Z*v1.X, v2.X*v1.X+v2.Z*v1.Z)
	end
	
	function  CameraUtils.RotateVectorByAngleAndRound(camLook, rotateAngle, roundAmount)
		if camLook.Magnitude > 0 then
			camLook = camLook.unit
			local currAngle = math.atan2(camLook.z, camLook.x)
			local newAngle = round((math.atan2(camLook.z, camLook.x) + rotateAngle) / roundAmount) * roundAmount
			return newAngle - currAngle
		end
		return 0
	end
	
	-- K is a tunable parameter that changes the shape of the S-curve
	-- the larger K is the more straight/linear the curve gets
	local k = 0.35
	local lowerK = 0.8
	local function SCurveTranform(t)
		t = math.clamp(t, -1, 1)
		if t >= 0 then
			return (k*t) / (k - t + 1)
		end
		return -((lowerK*-t) / (lowerK + t + 1))
	end
	
	local DEADZONE = 0.1
	local function toSCurveSpace(t)
		return (1 + DEADZONE) * (2*math.abs(t) - 1) - DEADZONE
	end
	
	local function fromSCurveSpace(t)
		return t/2 + 0.5
	end
	
	function CameraUtils.GamepadLinearToCurve(thumbstickPosition)
		local function onAxis(axisValue)
			local sign = 1
			if axisValue < 0 then
				sign = -1
			end
			local point = fromSCurveSpace(SCurveTranform(toSCurveSpace(math.abs(axisValue))))
			point = point * sign
			return math.clamp(point, -1, 1)
		end
		return Vector2.new(onAxis(thumbstickPosition.x), onAxis(thumbstickPosition.y))
	end
	
	-- This function converts 4 different, redundant enumeration types to one standard so the values can be compared
	function CameraUtils.ConvertCameraModeEnumToStandard(enumValue)
		if enumValue == Enum.TouchCameraMovementMode.Default then
			return Enum.ComputerCameraMovementMode.Follow
		end
	
		if enumValue == Enum.ComputerCameraMovementMode.Default then
			return Enum.ComputerCameraMovementMode.Classic
		end
	
		if enumValue == Enum.TouchCameraMovementMode.Classic or
			enumValue == Enum.DevTouchCameraMovementMode.Classic or
			enumValue == Enum.DevComputerCameraMovementMode.Classic or
			enumValue == Enum.ComputerCameraMovementMode.Classic then
			return Enum.ComputerCameraMovementMode.Classic
		end
	
		if enumValue == Enum.TouchCameraMovementMode.Follow or
			enumValue == Enum.DevTouchCameraMovementMode.Follow or
			enumValue == Enum.DevComputerCameraMovementMode.Follow or
			enumValue == Enum.ComputerCameraMovementMode.Follow then
			return Enum.ComputerCameraMovementMode.Follow
		end
	
		if enumValue == Enum.TouchCameraMovementMode.Orbital or
			enumValue == Enum.DevTouchCameraMovementMode.Orbital or
			enumValue == Enum.DevComputerCameraMovementMode.Orbital or
			enumValue == Enum.ComputerCameraMovementMode.Orbital then
			return Enum.ComputerCameraMovementMode.Orbital
		end
	
		if FFlagUserCameraToggle then
			if enumValue == Enum.ComputerCameraMovementMode.CameraToggle or
				enumValue == Enum.DevComputerCameraMovementMode.CameraToggle then
				return Enum.ComputerCameraMovementMode.CameraToggle
			end
		end
	
		-- Note: Only the Dev versions of the Enums have UserChoice as an option
		if enumValue == Enum.DevTouchCameraMovementMode.UserChoice or
			enumValue == Enum.DevComputerCameraMovementMode.UserChoice then
			return Enum.DevComputerCameraMovementMode.UserChoice
		end
	
		-- For any unmapped options return Classic camera
		return Enum.ComputerCameraMovementMode.Classic
	end
	
	return CameraUtils
end

function _CameraModule()
	local CameraModule = {}
	CameraModule.__index = CameraModule
	
	local FFlagUserCameraToggle do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserCameraToggle")
		end)
		FFlagUserCameraToggle = success and result
	end
	
	local FFlagUserRemoveTheCameraApi do
		local success, result = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserRemoveTheCameraApi")
		end)
		FFlagUserRemoveTheCameraApi = success and result
	end
	
	-- NOTICE: Player property names do not all match their StarterPlayer equivalents,
	-- with the differences noted in the comments on the right
	local PLAYER_CAMERA_PROPERTIES =
	{
		"CameraMinZoomDistance",
		"CameraMaxZoomDistance",
		"CameraMode",
		"DevCameraOcclusionMode",
		"DevComputerCameraMode",			-- Corresponds to StarterPlayer.DevComputerCameraMovementMode
		"DevTouchCameraMode",				-- Corresponds to StarterPlayer.DevTouchCameraMovementMode
	
		-- Character movement mode
		"DevComputerMovementMode",
		"DevTouchMovementMode",
		"DevEnableMouseLock",				-- Corresponds to StarterPlayer.EnableMouseLockOption
	}
	
	local USER_GAME_SETTINGS_PROPERTIES =
	{
		"ComputerCameraMovementMode",
		"ComputerMovementMode",
		"ControlMode",
		"GamepadCameraSensitivity",
		"MouseSensitivity",
		"RotationType",
		"TouchCameraMovementMode",
		"TouchMovementMode",
	}
	
	--[[ Roblox Services ]]--
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local UserGameSettings = UserSettings():GetService("UserGameSettings")
	
	-- Camera math utility library
	local CameraUtils = _CameraUtils()
	
	-- Load Roblox Camera Controller Modules
	local ClassicCamera = _ClassicCamera()
	local OrbitalCamera = _OrbitalCamera()
	local LegacyCamera = _LegacyCamera()
	
	-- Load Roblox Occlusion Modules
	local Invisicam = _Invisicam()
	local Poppercam = _Poppercam()
	
	-- Load the near-field character transparency controller and the mouse lock "shift lock" controller
	local TransparencyController = _TransparencyController()
	local MouseLockController = _MouseLockController()
	
	-- Table of camera controllers that have been instantiated. They are instantiated as they are used.
	local instantiatedCameraControllers = {}
	local instantiatedOcclusionModules = {}
	
	-- Management of which options appear on the Roblox User Settings screen
	do
		local PlayerScripts = Players.LocalPlayer:WaitForChild("PlayerScripts")
	
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)
	
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
		if FFlagUserCameraToggle then
			PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
		end
	end
	
	CameraModule.FFlagUserCameraToggle = FFlagUserCameraToggle
	
	
	function CameraModule.new()
		local self = setmetatable({},CameraModule)
	
		-- Current active controller instances
		self.activeCameraController = nil
		self.activeOcclusionModule = nil
		self.activeTransparencyController = nil
		self.activeMouseLockController = nil
	
		self.currentComputerCameraMovementMode = nil
	
		-- Connections to events
		self.cameraSubjectChangedConn = nil
		self.cameraTypeChangedConn = nil
	
		-- Adds CharacterAdded and CharacterRemoving event handlers for all current players
		for _,player in pairs(Players:GetPlayers()) do
			self:OnPlayerAdded(player)
		end
	
		-- Adds CharacterAdded and CharacterRemoving event handlers for all players who join in the future
		Players.PlayerAdded:Connect(function(player)
			self:OnPlayerAdded(player)
		end)
	
		self.activeTransparencyController = TransparencyController.new()
		self.activeTransparencyController:Enable(true)
	
		if not UserInputService.TouchEnabled then
			self.activeMouseLockController = MouseLockController.new()
			local toggleEvent = self.activeMouseLockController:GetBindableToggleEvent()
			if toggleEvent then
				toggleEvent:Connect(function()
					self:OnMouseLockToggled()
				end)
			end
		end
	
		self:ActivateCameraController(self:GetCameraControlChoice())
		self:ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)
		self:OnCurrentCameraChanged() -- Does initializations and makes first camera controller
		RunService:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, function(dt) self:Update(dt) end)
	
		-- Connect listeners to camera-related properties
		for _, propertyName in pairs(PLAYER_CAMERA_PROPERTIES) do
			Players.LocalPlayer:GetPropertyChangedSignal(propertyName):Connect(function()
				self:OnLocalPlayerCameraPropertyChanged(propertyName)
			end)
		end
	
		for _, propertyName in pairs(USER_GAME_SETTINGS_PROPERTIES) do
			UserGameSettings:GetPropertyChangedSignal(propertyName):Connect(function()
				self:OnUserGameSettingsPropertyChanged(propertyName)
			end)
		end
		game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			self:OnCurrentCameraChanged()
		end)
	
		self.lastInputType = UserInputService:GetLastInputType()
		UserInputService.LastInputTypeChanged:Connect(function(newLastInputType)
			self.lastInputType = newLastInputType
		end)
	
		return self
	end
	
	function CameraModule:GetCameraMovementModeFromSettings()
		local cameraMode = Players.LocalPlayer.CameraMode
	
		-- Lock First Person trumps all other settings and forces ClassicCamera
		if cameraMode == Enum.CameraMode.LockFirstPerson then
			return CameraUtils.ConvertCameraModeEnumToStandard(Enum.ComputerCameraMovementMode.Classic)
		end
	
		local devMode, userMode
		if UserInputService.TouchEnabled then
			devMode = CameraUtils.ConvertCameraModeEnumToStandard(Players.LocalPlayer.DevTouchCameraMode)
			userMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.TouchCameraMovementMode)
		else
			devMode = CameraUtils.ConvertCameraModeEnumToStandard(Players.LocalPlayer.DevComputerCameraMode)
			userMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.ComputerCameraMovementMode)
		end
	
		if devMode == Enum.DevComputerCameraMovementMode.UserChoice then
			-- Developer is allowing user choice, so user setting is respected
			return userMode
		end
	
		return devMode
	end
	
	function CameraModule:ActivateOcclusionModule( occlusionMode )
		local newModuleCreator
		if occlusionMode == Enum.DevCameraOcclusionMode.Zoom then
			newModuleCreator = Poppercam
		elseif occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
			newModuleCreator = Invisicam
		else
			warn("CameraScript ActivateOcclusionModule called with unsupported mode")
			return
		end
	
		-- First check to see if there is actually a change. If the module being requested is already
		-- the currently-active solution then just make sure it's enabled and exit early
		if self.activeOcclusionModule and self.activeOcclusionModule:GetOcclusionMode() == occlusionMode then
			if not self.activeOcclusionModule:GetEnabled() then
				self.activeOcclusionModule:Enable(true)
			end
			return
		end
	
		-- Save a reference to the current active module (may be nil) so that we can disable it if
		-- we are successful in activating its replacement
		local prevOcclusionModule = self.activeOcclusionModule
	
		-- If there is no active module, see if the one we need has already been instantiated
		self.activeOcclusionModule = instantiatedOcclusionModules[newModuleCreator]
	
		-- If the module was not already instantiated and selected above, instantiate it
		if not self.activeOcclusionModule then
			self.activeOcclusionModule = newModuleCreator.new()
			if self.activeOcclusionModule then
				instantiatedOcclusionModules[newModuleCreator] = self.activeOcclusionModule
			end
		end
	
		-- If we were successful in either selecting or instantiating the module,
		-- enable it if it's not already the currently-active enabled module
		if self.activeOcclusionModule then
			local newModuleOcclusionMode = self.activeOcclusionModule:GetOcclusionMode()
			-- Sanity check that the module we selected or instantiated actually supports the desired occlusionMode
			if newModuleOcclusionMode ~= occlusionMode then
				warn("CameraScript ActivateOcclusionModule mismatch: ",self.activeOcclusionModule:GetOcclusionMode(),"~=",occlusionMode)
			end
	
			-- Deactivate current module if there is one
			if prevOcclusionModule then
				-- Sanity check that current module is not being replaced by itself (that should have been handled above)
				if prevOcclusionModule ~= self.activeOcclusionModule then
					prevOcclusionModule:Enable(false)
				else
					warn("CameraScript ActivateOcclusionModule failure to detect already running correct module")
				end
			end
	
			-- Occlusion modules need to be initialized with information about characters and cameraSubject
			-- Invisicam needs the LocalPlayer's character
			-- Poppercam needs all player characters and the camera subject
			if occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
				-- Optimization to only send Invisicam what we know it needs
				if Players.LocalPlayer.Character then
					self.activeOcclusionModule:CharacterAdded(Players.LocalPlayer.Character, Players.LocalPlayer )
				end
			else
				-- When Poppercam is enabled, we send it all existing player characters for its raycast ignore list
				for _, player in pairs(Players:GetPlayers()) do
					if player and player.Character then
						self.activeOcclusionModule:CharacterAdded(player.Character, player)
					end
				end
				self.activeOcclusionModule:OnCameraSubjectChanged(game.Workspace.CurrentCamera.CameraSubject)
			end
	
			-- Activate new choice
			self.activeOcclusionModule:Enable(true)
		end
	end
	
	-- When supplied, legacyCameraType is used and cameraMovementMode is ignored (should be nil anyways)
	-- Next, if userCameraCreator is passed in, that is used as the cameraCreator
	function CameraModule:ActivateCameraController(cameraMovementMode, legacyCameraType)
		local newCameraCreator = nil
	
		if legacyCameraType~=nil then
			--[[
				This function has been passed a CameraType enum value. Some of these map to the use of
				the LegacyCamera module, the value "Custom" will be translated to a movementMode enum
				value based on Dev and User settings, and "Scriptable" will disable the camera controller.
			--]]
	
			if legacyCameraType == Enum.CameraType.Scriptable then
				if self.activeCameraController then
					self.activeCameraController:Enable(false)
					self.activeCameraController = nil
					return
				end
			elseif legacyCameraType == Enum.CameraType.Custom then
				cameraMovementMode = self:GetCameraMovementModeFromSettings()
	
			elseif legacyCameraType == Enum.CameraType.Track then
				-- Note: The TrackCamera module was basically an older, less fully-featured
				-- version of ClassicCamera, no longer actively maintained, but it is re-implemented in
				-- case a game was dependent on its lack of ClassicCamera's extra functionality.
				cameraMovementMode = Enum.ComputerCameraMovementMode.Classic
	
			elseif legacyCameraType == Enum.CameraType.Follow then
				cameraMovementMode = Enum.ComputerCameraMovementMode.Follow
	
			elseif legacyCameraType == Enum.CameraType.Orbital then
				cameraMovementMode = Enum.ComputerCameraMovementMode.Orbital
	
			elseif legacyCameraType == Enum.CameraType.Attach or
				   legacyCameraType == Enum.CameraType.Watch or
				   legacyCameraType == Enum.CameraType.Fixed then
				newCameraCreator = LegacyCamera
			else
				warn("CameraScript encountered an unhandled Camera.CameraType value: ",legacyCameraType)
			end
		end
	
		if not newCameraCreator then
			if cameraMovementMode == Enum.ComputerCameraMovementMode.Classic or
				cameraMovementMode == Enum.ComputerCameraMovementMode.Follow or
				cameraMovementMode == Enum.ComputerCameraMovementMode.Default or
				(FFlagUserCameraToggle and cameraMovementMode == Enum.ComputerCameraMovementMode.CameraToggle) then
				newCameraCreator = ClassicCamera
			elseif cameraMovementMode == Enum.ComputerCameraMovementMode.Orbital then
				newCameraCreator = OrbitalCamera
			else
				warn("ActivateCameraController did not select a module.")
				return
			end
		end
	
		-- Create the camera control module we need if it does not already exist in instantiatedCameraControllers
		local newCameraController
		if not instantiatedCameraControllers[newCameraCreator] then
			newCameraController = newCameraCreator.new()
			instantiatedCameraControllers[newCameraCreator] = newCameraController
		else
			newCameraController = instantiatedCameraControllers[newCameraCreator]
		end
	
		-- If there is a controller active and it's not the one we need, disable it,
		-- if it is the one we need, make sure it's enabled
		if self.activeCameraController then
			if self.activeCameraController ~= newCameraController then
				self.activeCameraController:Enable(false)
				self.activeCameraController = newCameraController
				self.activeCameraController:Enable(true)
			elseif not self.activeCameraController:GetEnabled() then
				self.activeCameraController:Enable(true)
			end
		elseif newCameraController ~= nil then
			self.activeCameraController = newCameraController
			self.activeCameraController:Enable(true)
		end
	
		if self.activeCameraController then
			if cameraMovementMode~=nil then
				self.activeCameraController:SetCameraMovementMode(cameraMovementMode)
			elseif legacyCameraType~=nil then
				-- Note that this is only called when legacyCameraType is not a type that
				-- was convertible to a ComputerCameraMovementMode value, i.e. really only applies to LegacyCamera
				self.activeCameraController:SetCameraType(legacyCameraType)
			end
		end
	end
	
	-- Note: The active transparency controller could be made to listen for this event itself.
	function CameraModule:OnCameraSubjectChanged()
		if self.activeTransparencyController then
			self.activeTransparencyController:SetSubject(game.Workspace.CurrentCamera.CameraSubject)
		end
	
		if self.activeOcclusionModule then
			self.activeOcclusionModule:OnCameraSubjectChanged(game.Workspace.CurrentCamera.CameraSubject)
		end
	end
	
	function CameraModule:OnCameraTypeChanged(newCameraType)
		if newCameraType == Enum.CameraType.Scriptable then
			if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
		end
	
		-- Forward the change to ActivateCameraController to handle
		self:ActivateCameraController(nil, newCameraType)
	end
	
	-- Note: Called whenever workspace.CurrentCamera changes, but also on initialization of this script
	function CameraModule:OnCurrentCameraChanged()
		local currentCamera = game.Workspace.CurrentCamera
		if not currentCamera then return end
	
		if self.cameraSubjectChangedConn then
			self.cameraSubjectChangedConn:Disconnect()
		end
	
		if self.cameraTypeChangedConn then
			self.cameraTypeChangedConn:Disconnect()
		end
	
		self.cameraSubjectChangedConn = currentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
			self:OnCameraSubjectChanged(currentCamera.CameraSubject)
		end)
	
		self.cameraTypeChangedConn = currentCamera:GetPropertyChangedSignal("CameraType"):Connect(function()
			self:OnCameraTypeChanged(currentCamera.CameraType)
		end)
	
		self:OnCameraSubjectChanged(currentCamera.CameraSubject)
		self:OnCameraTypeChanged(currentCamera.CameraType)
	end
	
	function CameraModule:OnLocalPlayerCameraPropertyChanged(propertyName)
		if propertyName == "CameraMode" then
			-- CameraMode is only used to turn on/off forcing the player into first person view. The
			-- Note: The case "Classic" is used for all other views and does not correspond only to the ClassicCamera module
			if Players.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
				-- Locked in first person, use ClassicCamera which supports this
				if not self.activeCameraController or self.activeCameraController:GetModuleName() ~= "ClassicCamera" then
					self:ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(Enum.DevComputerCameraMovementMode.Classic))
				end
	
				if self.activeCameraController then
					self.activeCameraController:UpdateForDistancePropertyChange()
				end
			elseif Players.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
				-- Not locked in first person view
				local cameraMovementMode =self: GetCameraMovementModeFromSettings()
				self:ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
			else
				warn("Unhandled value for property player.CameraMode: ",Players.LocalPlayer.CameraMode)
			end
	
		elseif propertyName == "DevComputerCameraMode" or 
			   propertyName == "DevTouchCameraMode" then
			local cameraMovementMode = self:GetCameraMovementModeFromSettings()
			self:ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
	
		elseif propertyName == "DevCameraOcclusionMode" then
			self:ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)
	
		elseif propertyName == "CameraMinZoomDistance" or propertyName == "CameraMaxZoomDistance" then
			if self.activeCameraController then
				self.activeCameraController:UpdateForDistancePropertyChange()
			end
		elseif propertyName == "DevTouchMovementMode" then
		elseif propertyName == "DevComputerMovementMode" then
		elseif propertyName == "DevEnableMouseLock" then
			-- This is the enabling/disabling of "Shift Lock" mode, not LockFirstPerson (which is a CameraMode)
			-- Note: Enabling and disabling of MouseLock mode is normally only a publish-time choice made via
			-- the corresponding EnableMouseLockOption checkbox of StarterPlayer, and this script does not have
			-- support for changing the availability of MouseLock at runtime (this would require listening to
			-- Player.DevEnableMouseLock changes)
		end
	end
	
	function CameraModule:OnUserGameSettingsPropertyChanged(propertyName)
		if propertyName == 	"ComputerCameraMovementMode" then
			local cameraMovementMode = self:GetCameraMovementModeFromSettings()
			self:ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
		end
	end
	
	--[[
		Main RenderStep Update. The camera controller and occlusion module both have opportunities
		to set and modify (respectively) the CFrame and Focus before it is set once on CurrentCamera.
		The camera and occlusion modules should only return CFrames, not set the CFrame property of
		CurrentCamera directly.
	--]]
	function CameraModule:Update(dt)
		if self.activeCameraController then
			if FFlagUserCameraToggle then
				self.activeCameraController:UpdateMouseBehavior()
			end
	
			local newCameraCFrame, newCameraFocus = self.activeCameraController:Update(dt)
			self.activeCameraController:ApplyVRTransform()
			if self.activeOcclusionModule then
				newCameraCFrame, newCameraFocus = self.activeOcclusionModule:Update(dt, newCameraCFrame, newCameraFocus)
			end
	
			-- Here is where the new CFrame and Focus are set for this render frame
			game.Workspace.CurrentCamera.CFrame = newCameraCFrame
			game.Workspace.CurrentCamera.Focus = newCameraFocus
	
			-- Update to character local transparency as needed based on camera-to-subject distance
			if self.activeTransparencyController then
				self.activeTransparencyController:Update()
			end
		end
	end
	
	-- Formerly getCurrentCameraMode, this function resolves developer and user camera control settings to
	-- decide which camera control module should be instantiated. The old method of converting redundant enum types
	function CameraModule:GetCameraControlChoice()
		local player = Players.LocalPlayer
	
		if player then
			if self.lastInputType == Enum.UserInputType.Touch or UserInputService.TouchEnabled then
				-- Touch
				if player.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice then
					return CameraUtils.ConvertCameraModeEnumToStandard( UserGameSettings.TouchCameraMovementMode )
				else
					return CameraUtils.ConvertCameraModeEnumToStandard( player.DevTouchCameraMode )
				end
			else
				-- Computer
				if player.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice then
					local computerMovementMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.ComputerCameraMovementMode)
					return CameraUtils.ConvertCameraModeEnumToStandard(computerMovementMode)
				else
					return CameraUtils.ConvertCameraModeEnumToStandard(player.DevComputerCameraMode)
				end
			end
		end
	end
	
	function CameraModule:OnCharacterAdded(char, player)
		if self.activeOcclusionModule then
			self.activeOcclusionModule:CharacterAdded(char, player)
		end
	end
	
	function CameraModule:OnCharacterRemoving(char, player)
		if self.activeOcclusionModule then
			self.activeOcclusionModule:CharacterRemoving(char, player)
		end
	end
	
	function CameraModule:OnPlayerAdded(player)
		player.CharacterAdded:Connect(function(char)
			self:OnCharacterAdded(char, player)
		end)
		player.CharacterRemoving:Connect(function(char)
			self:OnCharacterRemoving(char, player)
		end)
	end
	
	function CameraModule:OnMouseLockToggled()
		if self.activeMouseLockController then
			local mouseLocked = self.activeMouseLockController:GetIsMouseLocked()
			local mouseLockOffset = self.activeMouseLockController:GetMouseLockOffset()
			if self.activeCameraController then
				self.activeCameraController:SetIsMouseLocked(mouseLocked)
				self.activeCameraController:SetMouseLockOffset(mouseLockOffset)
			end
		end
	end
	--begin edit
	local Camera = CameraModule
	local IDENTITYCF = CFrame.new()
	local lastUpCFrame = IDENTITYCF
	
	Camera.UpVector = Vector3.new(0, 1, 0)
	Camera.TransitionRate = 0.15
	Camera.UpCFrame = IDENTITYCF
	
	function Camera:GetUpVector(oldUpVector)
		return oldUpVector
	end
	local function getRotationBetween(u, v, axis)
		local dot, uxv = u:Dot(v), u:Cross(v)
		if (dot < -0.99999) then return CFrame.fromAxisAngle(axis, math.pi) end
		return CFrame.new(0, 0, 0, uxv.x, uxv.y, uxv.z, 1 + dot)
	end
	function Camera:CalculateUpCFrame()
		local oldUpVector = self.UpVector
		local newUpVector = self:GetUpVector(oldUpVector)
		
		local backup = game.Workspace.CurrentCamera.CFrame.RightVector
		local transitionCF = getRotationBetween(oldUpVector, newUpVector, backup)
		local vecSlerpCF = IDENTITYCF:Lerp(transitionCF, self.TransitionRate)
		
		self.UpVector = vecSlerpCF * oldUpVector
		self.UpCFrame = vecSlerpCF * self.UpCFrame
		
		lastUpCFrame = self.UpCFrame
	end
	
	function Camera:Update(dt)
		if self.activeCameraController then
			if Camera.FFlagUserCameraToggle then
				self.activeCameraController:UpdateMouseBehavior()
			end
			
			local newCameraCFrame, newCameraFocus = self.activeCameraController:Update(dt)
			self.activeCameraController:ApplyVRTransform()
			
			self:CalculateUpCFrame()
			self.activeCameraController:UpdateUpCFrame(self.UpCFrame)
			
			-- undo shift-lock offset
	
			local lockOffset = Vector3.new(0, 0, 0)
			if (self.activeMouseLockController and self.activeMouseLockController:GetIsMouseLocked()) then
				lockOffset = self.activeMouseLockController:GetMouseLockOffset()
			end
			
			local offset = newCameraFocus:ToObjectSpace(newCameraCFrame)
			local camRotation = self.UpCFrame * offset
			newCameraFocus = newCameraFocus - newCameraCFrame:VectorToWorldSpace(lockOffset) + camRotation:VectorToWorldSpace(lockOffset)
			newCameraCFrame = newCameraFocus * camRotation
			
			--local offset = newCameraFocus:Inverse() * newCameraCFrame
			--newCameraCFrame = newCameraFocus * self.UpCFrame * offset
			
			if (self.activeCameraController.lastCameraTransform) then
				self.activeCameraController.lastCameraTransform = newCameraCFrame
				self.activeCameraController.lastCameraFocus = newCameraFocus
			end
			
			if self.activeOcclusionModule then
				newCameraCFrame, newCameraFocus = self.activeOcclusionModule:Update(dt, newCameraCFrame, newCameraFocus)
			end
	
			game.Workspace.CurrentCamera.CFrame = newCameraCFrame
			game.Workspace.CurrentCamera.Focus = newCameraFocus
	
			if self.activeTransparencyController then
				self.activeTransparencyController:Update()
			end
		end
	end
	
	function Camera:IsFirstPerson()
		if self.activeCameraController then
			return self.activeCameraController:InFirstPerson()
		end
		return false
	end
	
	function Camera:IsMouseLocked()
		if self.activeCameraController then
			return self.activeCameraController:GetIsMouseLocked()
		end
		return false
	end
	function Camera:IsToggleMode()
		if self.activeCameraController then
			return self.activeCameraController.isCameraToggle
		end
		return false
	end
	function Camera:IsCamRelative()
		return self:IsMouseLocked() or self:IsFirstPerson()
		--return self:IsToggleMode(), self:IsMouseLocked(), self:IsFirstPerson()
	end
	--
	local Utils = _CameraUtils()
	function Utils.GetAngleBetweenXZVectors(v1, v2)
		local upCFrame = lastUpCFrame
		v1 = upCFrame:VectorToObjectSpace(v1)
		v2 = upCFrame:VectorToObjectSpace(v2)
		return math.atan2(v2.X*v1.Z-v2.Z*v1.X, v2.X*v1.X+v2.Z*v1.Z)
	end
	--end edit
	local cameraModuleObject = CameraModule.new()
	local cameraApi = {}
	return cameraModuleObject
end

function _ClickToMoveDisplay()
	local ClickToMoveDisplay = {}
	
	local FAILURE_ANIMATION_ID = "rbxassetid://2874840706"
	
	local TrailDotIcon = "rbxasset://textures/ui/traildot.png"
	local EndWaypointIcon = "rbxasset://textures/ui/waypoint.png"
	
	local WaypointsAlwaysOnTop = false
	
	local WAYPOINT_INCLUDE_FACTOR = 2
	local LAST_DOT_DISTANCE = 3
	
	local WAYPOINT_BILLBOARD_SIZE = UDim2.new(0, 1.68 * 25, 0, 2 * 25)
	
	local ENDWAYPOINT_SIZE_OFFSET_MIN = Vector2.new(0, 0.5)
	local ENDWAYPOINT_SIZE_OFFSET_MAX = Vector2.new(0, 1)
	
	local FAIL_WAYPOINT_SIZE_OFFSET_CENTER = Vector2.new(0, 0.5)
	local FAIL_WAYPOINT_SIZE_OFFSET_LEFT = Vector2.new(0.1, 0.5)
	local FAIL_WAYPOINT_SIZE_OFFSET_RIGHT = Vector2.new(-0.1, 0.5)
	
	local FAILURE_TWEEN_LENGTH = 0.125
	local FAILURE_TWEEN_COUNT = 4
	
	local TWEEN_WAYPOINT_THRESHOLD = 5
	
	local TRAIL_DOT_PARENT_NAME = "ClickToMoveDisplay"
	
	local TrailDotSize = Vector2.new(1.5, 1.5)
	
	local TRAIL_DOT_MIN_SCALE = 1
	local TRAIL_DOT_MIN_DISTANCE = 10
	local TRAIL_DOT_MAX_SCALE = 2.5
	local TRAIL_DOT_MAX_DISTANCE = 100
	
	local PlayersService = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	
	local LocalPlayer = PlayersService.LocalPlayer
	
	local function CreateWaypointTemplates()
		local TrailDotTemplate = Instance.new("Part")
		TrailDotTemplate.Size = Vector3.new(1, 1, 1)
		TrailDotTemplate.Anchored = true
		TrailDotTemplate.CanCollide = false
		TrailDotTemplate.Name = "TrailDot"
		TrailDotTemplate.Transparency = 1
		local TrailDotImage = Instance.new("ImageHandleAdornment")
		TrailDotImage.Name = "TrailDotImage"
		TrailDotImage.Size = TrailDotSize
		TrailDotImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
		TrailDotImage.AlwaysOnTop = WaypointsAlwaysOnTop
		TrailDotImage.Image = TrailDotIcon
		TrailDotImage.Adornee = TrailDotTemplate
		TrailDotImage.Parent = TrailDotTemplate
	
		local EndWaypointTemplate = Instance.new("Part")
		EndWaypointTemplate.Size = Vector3.new(2, 2, 2)
		EndWaypointTemplate.Anchored = true
		EndWaypointTemplate.CanCollide = false
		EndWaypointTemplate.Name = "EndWaypoint"
		EndWaypointTemplate.Transparency = 1
		local EndWaypointImage = Instance.new("ImageHandleAdornment")
		EndWaypointImage.Name = "TrailDotImage"
		EndWaypointImage.Size = TrailDotSize
		EndWaypointImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
		EndWaypointImage.AlwaysOnTop = WaypointsAlwaysOnTop
		EndWaypointImage.Image = TrailDotIcon
		EndWaypointImage.Adornee = EndWaypointTemplate
		EndWaypointImage.Parent = EndWaypointTemplate
		local EndWaypointBillboard = Instance.new("BillboardGui")
		EndWaypointBillboard.Name = "EndWaypointBillboard"
		EndWaypointBillboard.Size = WAYPOINT_BILLBOARD_SIZE
		EndWaypointBillboard.LightInfluence = 0
		EndWaypointBillboard.SizeOffset = ENDWAYPOINT_SIZE_OFFSET_MIN
		EndWaypointBillboard.AlwaysOnTop = true
		EndWaypointBillboard.Adornee = EndWaypointTemplate
		EndWaypointBillboard.Parent = EndWaypointTemplate
		local EndWaypointImageLabel = Instance.new("ImageLabel")
		EndWaypointImageLabel.Image = EndWaypointIcon
		EndWaypointImageLabel.BackgroundTransparency = 1
		EndWaypointImageLabel.Size = UDim2.new(1, 0, 1, 0)
		EndWaypointImageLabel.Parent = EndWaypointBillboard
	
	
		local FailureWaypointTemplate = Instance.new("Part")
		FailureWaypointTemplate.Size = Vector3.new(2, 2, 2)
		FailureWaypointTemplate.Anchored = true
		FailureWaypointTemplate.CanCollide = false
		FailureWaypointTemplate.Name = "FailureWaypoint"
		FailureWaypointTemplate.Transparency = 1
		local FailureWaypointImage = Instance.new("ImageHandleAdornment")
		FailureWaypointImage.Name = "TrailDotImage"
		FailureWaypointImage.Size = TrailDotSize
		FailureWaypointImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
		FailureWaypointImage.AlwaysOnTop = WaypointsAlwaysOnTop
		FailureWaypointImage.Image = TrailDotIcon
		FailureWaypointImage.Adornee = FailureWaypointTemplate
		FailureWaypointImage.Parent = FailureWaypointTemplate
		local FailureWaypointBillboard = Instance.new("BillboardGui")
		FailureWaypointBillboard.Name = "FailureWaypointBillboard"
		FailureWaypointBillboard.Size = WAYPOINT_BILLBOARD_SIZE
		FailureWaypointBillboard.LightInfluence = 0
		FailureWaypointBillboard.SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_CENTER
		FailureWaypointBillboard.AlwaysOnTop = true
		FailureWaypointBillboard.Adornee = FailureWaypointTemplate
		FailureWaypointBillboard.Parent = FailureWaypointTemplate
		local FailureWaypointFrame = Instance.new("Frame")
		FailureWaypointFrame.BackgroundTransparency = 1
		FailureWaypointFrame.Size = UDim2.new(0, 0, 0, 0)
		FailureWaypointFrame.Position = UDim2.new(0.5, 0, 1, 0)
		FailureWaypointFrame.Parent = FailureWaypointBillboard
		local FailureWaypointImageLabel = Instance.new("ImageLabel")
		FailureWaypointImageLabel.Image = EndWaypointIcon
		FailureWaypointImageLabel.BackgroundTransparency = 1
		FailureWaypointImageLabel.Position = UDim2.new(
			0, -WAYPOINT_BILLBOARD_SIZE.X.Offset/2, 0, -WAYPOINT_BILLBOARD_SIZE.Y.Offset
		)
		FailureWaypointImageLabel.Size = WAYPOINT_BILLBOARD_SIZE
		FailureWaypointImageLabel.Parent = FailureWaypointFrame
	
		return TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate
	end
	
	local TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
	
	local function getTrailDotParent()
		local camera = Workspace.CurrentCamera
		local trailParent = camera:FindFirstChild(TRAIL_DOT_PARENT_NAME)
		if not trailParent then
			trailParent = Instance.new("Model")
			trailParent.Name = TRAIL_DOT_PARENT_NAME
			trailParent.Parent = camera
		end
		return trailParent
	end
	
	local function placePathWaypoint(waypointModel, position)
		local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
		local hitPart, hitPoint, hitNormal = Workspace:FindPartOnRayWithIgnoreList(
			ray,
			{ Workspace.CurrentCamera, LocalPlayer.Character }
		)
		if hitPart then
			waypointModel.CFrame = CFrame.new(hitPoint, hitPoint + hitNormal)
			waypointModel.Parent = getTrailDotParent()
		end
	end
	
	local TrailDot = {}
	TrailDot.__index = TrailDot
	
	function TrailDot:Destroy()
		self.DisplayModel:Destroy()
	end
	
	function TrailDot:NewDisplayModel(position)
		local newDisplayModel = TrailDotTemplate:Clone()
		placePathWaypoint(newDisplayModel, position)
		return newDisplayModel
	end
	
	function TrailDot.new(position, closestWaypoint)
		local self = setmetatable({}, TrailDot)
	
		self.DisplayModel = self:NewDisplayModel(position)
		self.ClosestWayPoint = closestWaypoint
	
		return self
	end
	
	local EndWaypoint = {}
	EndWaypoint.__index = EndWaypoint
	
	function EndWaypoint:Destroy()
		self.Destroyed = true
		self.Tween:Cancel()
		self.DisplayModel:Destroy()
	end
	
	function EndWaypoint:NewDisplayModel(position)
		local newDisplayModel = EndWaypointTemplate:Clone()
		placePathWaypoint(newDisplayModel, position)
		return newDisplayModel
	end
	
	function EndWaypoint:CreateTween()
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, -1, true)
		local tween = TweenService:Create(
			self.DisplayModel.EndWaypointBillboard,
			tweenInfo,
			{ SizeOffset = ENDWAYPOINT_SIZE_OFFSET_MAX }
		)
		tween:Play()
		return tween
	end
	
	function EndWaypoint:TweenInFrom(originalPosition)
		local currentPositon = self.DisplayModel.Position
		local studsOffset = originalPosition - currentPositon
		self.DisplayModel.EndWaypointBillboard.StudsOffset = Vector3.new(0, studsOffset.Y, 0)
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		local tween = TweenService:Create(
			self.DisplayModel.EndWaypointBillboard,
			tweenInfo,
			{ StudsOffset = Vector3.new(0, 0, 0) }
		)
		tween:Play()
		return tween
	end
	
	function EndWaypoint.new(position, closestWaypoint, originalPosition)
		local self = setmetatable({}, EndWaypoint)
	
		self.DisplayModel = self:NewDisplayModel(position)
		self.Destroyed = false
		if originalPosition and (originalPosition - position).magnitude > TWEEN_WAYPOINT_THRESHOLD then
			self.Tween = self:TweenInFrom(originalPosition)
			coroutine.wrap(function()
				self.Tween.Completed:Wait()
				if not self.Destroyed then
					self.Tween = self:CreateTween()
				end
			end)()
		else
			self.Tween = self:CreateTween()
		end
		self.ClosestWayPoint = closestWaypoint
	
		return self
	end
	
	local FailureWaypoint = {}
	FailureWaypoint.__index = FailureWaypoint
	
	function FailureWaypoint:Hide()
		self.DisplayModel.Parent = nil
	end
	
	function FailureWaypoint:Destroy()
		self.DisplayModel:Destroy()
	end
	
	function FailureWaypoint:NewDisplayModel(position)
		local newDisplayModel = FailureWaypointTemplate:Clone()
		placePathWaypoint(newDisplayModel, position)
		local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
		local hitPart, hitPoint, hitNormal = Workspace:FindPartOnRayWithIgnoreList(
			ray, { Workspace.CurrentCamera, LocalPlayer.Character }
		)
		if hitPart then
			newDisplayModel.CFrame = CFrame.new(hitPoint, hitPoint + hitNormal)
			newDisplayModel.Parent = getTrailDotParent()
		end
		return newDisplayModel
	end
	
	function FailureWaypoint:RunFailureTween()
		wait(FAILURE_TWEEN_LENGTH) -- Delay one tween length betfore starting tweening
		-- Tween out from center
		local tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH/2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		local tweenLeft = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
			{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_LEFT })
		tweenLeft:Play()
	
		local tweenLeftRoation = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
			{ Rotation = 10 })
		tweenLeftRoation:Play()
	
		tweenLeft.Completed:wait()
	
		-- Tween back and forth
		tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,
			FAILURE_TWEEN_COUNT - 1, true)
		local tweenSideToSide = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
			{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_RIGHT})
		tweenSideToSide:Play()
	
		-- Tween flash dark and roate left and right
		tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,
			FAILURE_TWEEN_COUNT - 1, true)
		local tweenFlash = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame.ImageLabel, tweenInfo,
			{ ImageColor3 = Color3.new(0.75, 0.75, 0.75)})
		tweenFlash:Play()
	
		local tweenRotate = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
			{ Rotation = -10 })
		tweenRotate:Play()
	
		tweenSideToSide.Completed:wait()
	
		-- Tween back to center
		tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH/2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
		local tweenCenter = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
			{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_CENTER })
		tweenCenter:Play()
	
		local tweenRoation = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
			{ Rotation = 0 })
		tweenRoation:Play()
	
		tweenCenter.Completed:wait()
	
		wait(FAILURE_TWEEN_LENGTH) -- Delay one tween length betfore removing
	end
	
	function FailureWaypoint.new(position)
		local self = setmetatable({}, FailureWaypoint)
	
		self.DisplayModel = self:NewDisplayModel(position)
	
		return self
	end
	
	local failureAnimation = Instance.new("Animation")
	failureAnimation.AnimationId = FAILURE_ANIMATION_ID
	
	local lastHumanoid = nil
	local lastFailureAnimationTrack = nil
	
	local function getFailureAnimationTrack(myHumanoid)
		if myHumanoid == lastHumanoid then
			return lastFailureAnimationTrack
		end
		lastFailureAnimationTrack = myHumanoid:LoadAnimation(failureAnimation)
		lastFailureAnimationTrack.Priority = Enum.AnimationPriority.Action
		lastFailureAnimationTrack.Looped = false
		return lastFailureAnimationTrack
	end
	
	local function findPlayerHumanoid()
		local character = LocalPlayer.Character
		if character then
			return character:FindFirstChildOfClass("Humanoid")
		end
	end
	
	local function createTrailDots(wayPoints, originalEndWaypoint)
		local newTrailDots = {}
		local count = 1
		for i = 1, #wayPoints - 1 do
			local closeToEnd = (wayPoints[i].Position - wayPoints[#wayPoints].Position).magnitude < LAST_DOT_DISTANCE
			local includeWaypoint = i % WAYPOINT_INCLUDE_FACTOR == 0 and not closeToEnd
			if includeWaypoint then
				local trailDot = TrailDot.new(wayPoints[i].Position, i)
				newTrailDots[count] = trailDot
				count = count + 1
			end
		end
	
		local newEndWaypoint = EndWaypoint.new(wayPoints[#wayPoints].Position, #wayPoints, originalEndWaypoint)
		table.insert(newTrailDots, newEndWaypoint)
	
		local reversedTrailDots = {}
		count = 1
		for i = #newTrailDots, 1, -1 do
			reversedTrailDots[count] = newTrailDots[i]
			count = count + 1
		end
		return reversedTrailDots
	end
	
	local function getTrailDotScale(distanceToCamera, defaultSize)
		local rangeLength = TRAIL_DOT_MAX_DISTANCE - TRAIL_DOT_MIN_DISTANCE
		local inRangePoint = math.clamp(distanceToCamera - TRAIL_DOT_MIN_DISTANCE, 0, rangeLength)/rangeLength
		local scale = TRAIL_DOT_MIN_SCALE + (TRAIL_DOT_MAX_SCALE - TRAIL_DOT_MIN_SCALE)*inRangePoint
		return defaultSize * scale
	end
	
	local createPathCount = 0
	-- originalEndWaypoint is optional, causes the waypoint to tween from that position.
	function ClickToMoveDisplay.CreatePathDisplay(wayPoints, originalEndWaypoint)
		createPathCount = createPathCount + 1
		local trailDots = createTrailDots(wayPoints, originalEndWaypoint)
	
		local function removePathBeforePoint(wayPointNumber)
			-- kill all trailDots before and at wayPointNumber
			for i = #trailDots, 1, -1 do
				local trailDot = trailDots[i]
				if trailDot.ClosestWayPoint <= wayPointNumber then
					trailDot:Destroy()
					trailDots[i] = nil
				else
					break
				end
			end
		end
	
		local reiszeTrailDotsUpdateName = "ClickToMoveResizeTrail" ..createPathCount
		local function resizeTrailDots()
			if #trailDots == 0 then
				RunService:UnbindFromRenderStep(reiszeTrailDotsUpdateName)
				return
			end
			local cameraPos = Workspace.CurrentCamera.CFrame.p
			for i = 1, #trailDots do
				local trailDotImage = trailDots[i].DisplayModel:FindFirstChild("TrailDotImage")
				if trailDotImage then
					local distanceToCamera = (trailDots[i].DisplayModel.Position - cameraPos).magnitude
					trailDotImage.Size = getTrailDotScale(distanceToCamera, TrailDotSize)
				end
			end
		end
		RunService:BindToRenderStep(reiszeTrailDotsUpdateName, Enum.RenderPriority.Camera.Value - 1, resizeTrailDots)
	
		local function removePath()
			removePathBeforePoint(#wayPoints)
		end
	
		return removePath, removePathBeforePoint
	end
	
	local lastFailureWaypoint = nil
	function ClickToMoveDisplay.DisplayFailureWaypoint(position)
		if lastFailureWaypoint then
			lastFailureWaypoint:Hide()
		end
		local failureWaypoint = FailureWaypoint.new(position)
		lastFailureWaypoint = failureWaypoint
		coroutine.wrap(function()
			failureWaypoint:RunFailureTween()
			failureWaypoint:Destroy()
			failureWaypoint = nil
		end)()
	end
	
	function ClickToMoveDisplay.CreateEndWaypoint(position)
		return EndWaypoint.new(position)
	end
	
	function ClickToMoveDisplay.PlayFailureAnimation()
		local myHumanoid = findPlayerHumanoid()
		if myHumanoid then
			local animationTrack = getFailureAnimationTrack(myHumanoid)
			animationTrack:Play()
		end
	end
	
	function ClickToMoveDisplay.CancelFailureAnimation()
		if lastFailureAnimationTrack ~= nil and lastFailureAnimationTrack.IsPlaying then
			lastFailureAnimationTrack:Stop()
		end
	end
	
	function ClickToMoveDisplay.SetWaypointTexture(texture)
		TrailDotIcon = texture
		TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
	end
	
	function ClickToMoveDisplay.GetWaypointTexture()
		return TrailDotIcon
	end
	
	function ClickToMoveDisplay.SetWaypointRadius(radius)
		TrailDotSize = Vector2.new(radius, radius)
		TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
	end
	
	function ClickToMoveDisplay.GetWaypointRadius()
		return TrailDotSize.X
	end
	
	function ClickToMoveDisplay.SetEndWaypointTexture(texture)
		EndWaypointIcon = texture
		TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
	end
	
	function ClickToMoveDisplay.GetEndWaypointTexture()
		return EndWaypointIcon
	end
	
	function ClickToMoveDisplay.SetWaypointsAlwaysOnTop(alwaysOnTop)
		WaypointsAlwaysOnTop = alwaysOnTop
		TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
	end
	
	function ClickToMoveDisplay.GetWaypointsAlwaysOnTop()
		return WaypointsAlwaysOnTop
	end
	
	return ClickToMoveDisplay
end

function _BaseCharacterController()

	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	
	--[[ The Module ]]--
	local BaseCharacterController = {}
	BaseCharacterController.__index = BaseCharacterController
	
	function BaseCharacterController.new()
		local self = setmetatable({}, BaseCharacterController)
		self.enabled = false
		self.moveVector = ZERO_VECTOR3
		self.moveVectorIsCameraRelative = true
		self.isJumping = false
		return self
	end
	
	function BaseCharacterController:OnRenderStepped(dt)
		-- By default, nothing to do
	end
	
	function BaseCharacterController:GetMoveVector()
		return self.moveVector
	end
	
	function BaseCharacterController:IsMoveVectorCameraRelative()
		return self.moveVectorIsCameraRelative
	end
	
	function BaseCharacterController:GetIsJumping()
		return self.isJumping
	end
	
	-- Override in derived classes to set self.enabled and return boolean indicating
	-- whether Enable/Disable was successful. Return true if controller is already in the requested state.
	function BaseCharacterController:Enable(enable)
		error("BaseCharacterController:Enable must be overridden in derived classes and should not be called.")
		return false
	end
	
	return BaseCharacterController
end

function _VehicleController()
	local ContextActionService = game:GetService("ContextActionService")
	
	--[[ Constants ]]--
	-- Set this to true if you want to instead use the triggers for the throttle
	local useTriggersForThrottle = true
	-- Also set this to true if you want the thumbstick to not affect throttle, only triggers when a gamepad is conected
	local onlyTriggersForThrottle = false
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	
	local AUTO_PILOT_DEFAULT_MAX_STEERING_ANGLE = 35
	
	
	-- Note that VehicleController does not derive from BaseCharacterController, it is a special case
	local VehicleController = {}
	VehicleController.__index = VehicleController
	
	function VehicleController.new(CONTROL_ACTION_PRIORITY)
		local self = setmetatable({}, VehicleController)
	
		self.CONTROL_ACTION_PRIORITY = CONTROL_ACTION_PRIORITY
	
		self.enabled = false
		self.vehicleSeat = nil
		self.throttle = 0
		self.steer = 0
	
		self.acceleration = 0
		self.decceleration = 0
		self.turningRight = 0
		self.turningLeft = 0
	
		self.vehicleMoveVector = ZERO_VECTOR3
	
		self.autoPilot = {}
		self.autoPilot.MaxSpeed = 0
		self.autoPilot.MaxSteeringAngle = 0
	
		return self
	end
	
	function VehicleController:BindContextActions()
		if useTriggersForThrottle then
			ContextActionService:BindActionAtPriority("throttleAccel", (function(actionName, inputState, inputObject)
				self:OnThrottleAccel(actionName, inputState, inputObject)
				return Enum.ContextActionResult.Pass
			end), false, self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.ButtonR2)
			ContextActionService:BindActionAtPriority("throttleDeccel", (function(actionName, inputState, inputObject)
				self:OnThrottleDeccel(actionName, inputState, inputObject)
				return Enum.ContextActionResult.Pass
			end), false, self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.ButtonL2)
		end
		ContextActionService:BindActionAtPriority("arrowSteerRight", (function(actionName, inputState, inputObject)
			self:OnSteerRight(actionName, inputState, inputObject)
			return Enum.ContextActionResult.Pass
		end), false, self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.Right)
		ContextActionService:BindActionAtPriority("arrowSteerLeft", (function(actionName, inputState, inputObject)
			self:OnSteerLeft(actionName, inputState, inputObject)
			return Enum.ContextActionResult.Pass
		end), false, self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.Left)
	end
	
	function VehicleController:Enable(enable, vehicleSeat)
		if enable == self.enabled and vehicleSeat == self.vehicleSeat then
			return
		end
	
		self.enabled = enable
		self.vehicleMoveVector = ZERO_VECTOR3
	
		if enable then
			if vehicleSeat then
				self.vehicleSeat = vehicleSeat
	
				self:SetupAutoPilot()
				self:BindContextActions()
			end
		else
			if useTriggersForThrottle then
				ContextActionService:UnbindAction("throttleAccel")
				ContextActionService:UnbindAction("throttleDeccel")
			end
			ContextActionService:UnbindAction("arrowSteerRight")
			ContextActionService:UnbindAction("arrowSteerLeft")
			self.vehicleSeat = nil
		end
	end
	
	function VehicleController:OnThrottleAccel(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End or inputState == Enum.UserInputState.Cancel then
			self.acceleration = 0
		else
			self.acceleration = -1
		end
		self.throttle = self.acceleration + self.decceleration
	end
	
	function VehicleController:OnThrottleDeccel(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End or inputState == Enum.UserInputState.Cancel then
			self.decceleration = 0
		else
			self.decceleration = 1
		end
		self.throttle = self.acceleration + self.decceleration
	end
	
	function VehicleController:OnSteerRight(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End or inputState == Enum.UserInputState.Cancel then
			self.turningRight = 0
		else
			self.turningRight = 1
		end
		self.steer = self.turningRight + self.turningLeft
	end
	
	function VehicleController:OnSteerLeft(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End or inputState == Enum.UserInputState.Cancel then
			self.turningLeft = 0
		else
			self.turningLeft = -1
		end
		self.steer = self.turningRight + self.turningLeft
	end
	
	-- Call this from a function bound to Renderstep with Input Priority
	function VehicleController:Update(moveVector, cameraRelative, usingGamepad)
		if self.vehicleSeat then
			if cameraRelative then
				-- This is the default steering mode
				moveVector = moveVector + Vector3.new(self.steer, 0, self.throttle)
				if usingGamepad and onlyTriggersForThrottle and useTriggersForThrottle then
					self.vehicleSeat.ThrottleFloat = -self.throttle
				else
					self.vehicleSeat.ThrottleFloat = -moveVector.Z
				end
				self.vehicleSeat.SteerFloat = moveVector.X
	
				return moveVector, true
			else
				-- This is the path following mode
				local localMoveVector = self.vehicleSeat.Occupant.RootPart.CFrame:VectorToObjectSpace(moveVector)
	
				self.vehicleSeat.ThrottleFloat = self:ComputeThrottle(localMoveVector)
				self.vehicleSeat.SteerFloat = self:ComputeSteer(localMoveVector)
	
				return ZERO_VECTOR3, true
			end
		end
		return moveVector, false
	end
	
	function VehicleController:ComputeThrottle(localMoveVector)
		if localMoveVector ~= ZERO_VECTOR3 then
			local throttle = -localMoveVector.Z
			return throttle
		else
			return 0.0
		end
	end
	
	function VehicleController:ComputeSteer(localMoveVector)
		if localMoveVector ~= ZERO_VECTOR3 then
			local steerAngle = -math.atan2(-localMoveVector.x, -localMoveVector.z) * (180 / math.pi)
			return steerAngle / self.autoPilot.MaxSteeringAngle
		else
			return 0.0
		end
	end
	
	function VehicleController:SetupAutoPilot()
		-- Setup default
		self.autoPilot.MaxSpeed = self.vehicleSeat.MaxSpeed
		self.autoPilot.MaxSteeringAngle = AUTO_PILOT_DEFAULT_MAX_STEERING_ANGLE
	
		-- VehicleSeat should have a MaxSteeringAngle as well.
		-- Or we could look for a child "AutoPilotConfigModule" to find these values
		-- Or allow developer to set them through the API as like the CLickToMove customization API
	end
	
	return VehicleController
end

function _TouchJump()
	
	local Players = game:GetService("Players")
	local GuiService = game:GetService("GuiService")
	
	--[[ Constants ]]--
	local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
	
	--[[ The Module ]]--
	local BaseCharacterController = _BaseCharacterController()
	local TouchJump = setmetatable({}, BaseCharacterController)
	TouchJump.__index = TouchJump
	
	function TouchJump.new()
		local self = setmetatable(BaseCharacterController.new(), TouchJump)
	
		self.parentUIFrame = nil
		self.jumpButton = nil
		self.characterAddedConn = nil
		self.humanoidStateEnabledChangedConn = nil
		self.humanoidJumpPowerConn = nil
		self.humanoidParentConn = nil
		self.externallyEnabled = false
		self.jumpPower = 0
		self.jumpStateEnabled = true
		self.isJumping = false
		self.humanoid = nil -- saved reference because property change connections are made using it
	
		return self
	end
	
	function TouchJump:EnableButton(enable)
		if enable then
			if not self.jumpButton then
				self:Create()
			end
			local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			if humanoid and self.externallyEnabled then
				if self.externallyEnabled then
					if humanoid.JumpPower > 0 then
						self.jumpButton.Visible = true
					end
				end
			end
		else
			self.jumpButton.Visible = false
			self.isJumping = false
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	end
	
	function TouchJump:UpdateEnabled()
		if self.jumpPower > 0 and self.jumpStateEnabled then
			self:EnableButton(true)
		else
			self:EnableButton(false)
		end
	end
	
	function TouchJump:HumanoidChanged(prop)
		local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			if prop == "JumpPower" then
				self.jumpPower =  humanoid.JumpPower
				self:UpdateEnabled()
			elseif prop == "Parent" then
				if not humanoid.Parent then
					self.humanoidChangeConn:Disconnect()
				end
			end
		end
	end
	
	function TouchJump:HumanoidStateEnabledChanged(state, isEnabled)
		if state == Enum.HumanoidStateType.Jumping then
			self.jumpStateEnabled = isEnabled
			self:UpdateEnabled()
		end
	end
	
	function TouchJump:CharacterAdded(char)
		if self.humanoidChangeConn then
			self.humanoidChangeConn:Disconnect()
			self.humanoidChangeConn = nil
		end
	
		self.humanoid = char:FindFirstChildOfClass("Humanoid")
		while not self.humanoid do
			char.ChildAdded:wait()
			self.humanoid = char:FindFirstChildOfClass("Humanoid")
		end
	
		self.humanoidJumpPowerConn = self.humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
			self.jumpPower =  self.humanoid.JumpPower
			self:UpdateEnabled()
		end)
	
		self.humanoidParentConn = self.humanoid:GetPropertyChangedSignal("Parent"):Connect(function()
			if not self.humanoid.Parent then
				self.humanoidJumpPowerConn:Disconnect()
				self.humanoidJumpPowerConn = nil
				self.humanoidParentConn:Disconnect()
				self.humanoidParentConn = nil
			end
		end)
	
		self.humanoidStateEnabledChangedConn = self.humanoid.StateEnabledChanged:Connect(function(state, enabled)
			self:HumanoidStateEnabledChanged(state, enabled)
		end)
	
		self.jumpPower = self.humanoid.JumpPower
		self.jumpStateEnabled = self.humanoid:GetStateEnabled(Enum.HumanoidStateType.Jumping)
		self:UpdateEnabled()
	end
	
	function TouchJump:SetupCharacterAddedFunction()
		self.characterAddedConn = Players.LocalPlayer.CharacterAdded:Connect(function(char)
			self:CharacterAdded(char)
		end)
		if Players.LocalPlayer.Character then
			self:CharacterAdded(Players.LocalPlayer.Character)
		end
	end
	
	function TouchJump:Enable(enable, parentFrame)
		if parentFrame then
			self.parentUIFrame = parentFrame
		end
		self.externallyEnabled = enable
		self:EnableButton(enable)
	end
	
	function TouchJump:Create()
		if not self.parentUIFrame then
			return
		end
	
		if self.jumpButton then
			self.jumpButton:Destroy()
			self.jumpButton = nil
		end
	
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500
		local jumpButtonSize = isSmallScreen and 70 or 120
	
		self.jumpButton = Instance.new("ImageButton")
		self.jumpButton.Name = "JumpButton"
		self.jumpButton.Visible = false
		self.jumpButton.BackgroundTransparency = 1
		self.jumpButton.Image = TOUCH_CONTROL_SHEET
		self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		self.jumpButton.ImageRectSize = Vector2.new(144, 144)
		self.jumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)
	
	    self.jumpButton.Position = isSmallScreen and UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize - 20) or
	        UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize * 1.75)
	
		local touchObject = nil
		self.jumpButton.InputBegan:connect(function(inputObject)
			--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
			--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
			if touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
				or inputObject.UserInputState ~= Enum.UserInputState.Begin then
				return
			end
	
			touchObject = inputObject
			self.jumpButton.ImageRectOffset = Vector2.new(146, 146)
			self.isJumping = true
		end)
	
		local OnInputEnded = function()
			touchObject = nil
			self.isJumping = false
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	
		self.jumpButton.InputEnded:connect(function(inputObject)
			if inputObject == touchObject then
				OnInputEnded()
			end
		end)
	
		GuiService.MenuOpened:connect(function()
			if touchObject then
				OnInputEnded()
			end
		end)
	
		if not self.characterAddedConn then
			self:SetupCharacterAddedFunction()
		end
	
		self.jumpButton.Parent = self.parentUIFrame
	end
	
	return TouchJump
end

function _ClickToMoveController()
	--[[ Roblox Services ]]--
	local UserInputService = game:GetService("UserInputService")
	local PathfindingService = game:GetService("PathfindingService")
	local Players = game:GetService("Players")
	local DebrisService = game:GetService('Debris')
	local StarterGui = game:GetService("StarterGui")
	local Workspace = game:GetService("Workspace")
	local CollectionService = game:GetService("CollectionService")
	local GuiService = game:GetService("GuiService")
	
	--[[ Configuration ]]
	local ShowPath = true
	local PlayFailureAnimation = true
	local UseDirectPath = false
	local UseDirectPathForVehicle = true
	local AgentSizeIncreaseFactor = 1.0
	local UnreachableWaypointTimeout = 8
	
	--[[ Constants ]]--
	local movementKeys = {
		[Enum.KeyCode.W] = true;
		[Enum.KeyCode.A] = true;
		[Enum.KeyCode.S] = true;
		[Enum.KeyCode.D] = true;
		[Enum.KeyCode.Up] = true;
		[Enum.KeyCode.Down] = true;
	}
	
	local FFlagUserNavigationClickToMoveSkipPassedWaypointsSuccess, FFlagUserNavigationClickToMoveSkipPassedWaypointsResult = pcall(function() return UserSettings():IsUserFeatureEnabled("UserNavigationClickToMoveSkipPassedWaypoints") end)
	local FFlagUserNavigationClickToMoveSkipPassedWaypoints = FFlagUserNavigationClickToMoveSkipPassedWaypointsSuccess and FFlagUserNavigationClickToMoveSkipPassedWaypointsResult
	
	local Player = Players.LocalPlayer
	
	local ClickToMoveDisplay = _ClickToMoveDisplay()
	
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local ALMOST_ZERO = 0.000001
	
	
	--------------------------UTIL LIBRARY-------------------------------
	local Utility = {}
	do
		local function FindCharacterAncestor(part)
			if part then
				local humanoid = part:FindFirstChildOfClass("Humanoid")
				if humanoid then
					return part, humanoid
				else
					return FindCharacterAncestor(part.Parent)
				end
			end
		end
		Utility.FindCharacterAncestor = FindCharacterAncestor
	
		local function Raycast(ray, ignoreNonCollidable, ignoreList)
			ignoreList = ignoreList or {}
			local hitPart, hitPos, hitNorm, hitMat = Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
			if hitPart then
				if ignoreNonCollidable and hitPart.CanCollide == false then
					-- We always include character parts so a user can click on another character
					-- to walk to them.
					local _, humanoid = FindCharacterAncestor(hitPart)
					if humanoid == nil then
						table.insert(ignoreList, hitPart)
						return Raycast(ray, ignoreNonCollidable, ignoreList)
					end
				end
				return hitPart, hitPos, hitNorm, hitMat
			end
			return nil, nil
		end
		Utility.Raycast = Raycast
	end
	
	local humanoidCache = {}
	local function findPlayerHumanoid(player)
		local character = player and player.Character
		if character then
			local resultHumanoid = humanoidCache[player]
			if resultHumanoid and resultHumanoid.Parent == character then
				return resultHumanoid
			else
				humanoidCache[player] = nil -- Bust Old Cache
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					humanoidCache[player] = humanoid
				end
				return humanoid
			end
		end
	end
	
	--------------------------CHARACTER CONTROL-------------------------------
	local CurrentIgnoreList
	local CurrentIgnoreTag = nil
	
	local TaggedInstanceAddedConnection = nil
	local TaggedInstanceRemovedConnection = nil
	
	local function GetCharacter()
		return Player and Player.Character
	end
	
	local function UpdateIgnoreTag(newIgnoreTag)
		if newIgnoreTag == CurrentIgnoreTag then
			return
		end
		if TaggedInstanceAddedConnection then
			TaggedInstanceAddedConnection:Disconnect()
			TaggedInstanceAddedConnection = nil
		end
		if TaggedInstanceRemovedConnection then
			TaggedInstanceRemovedConnection:Disconnect()
			TaggedInstanceRemovedConnection = nil
		end
		CurrentIgnoreTag = newIgnoreTag
		CurrentIgnoreList = {GetCharacter()}
		if CurrentIgnoreTag ~= nil then
			local ignoreParts = CollectionService:GetTagged(CurrentIgnoreTag)
			for _, ignorePart in ipairs(ignoreParts) do
				table.insert(CurrentIgnoreList, ignorePart)
			end
			TaggedInstanceAddedConnection = CollectionService:GetInstanceAddedSignal(
				CurrentIgnoreTag):Connect(function(ignorePart)
				table.insert(CurrentIgnoreList, ignorePart)
			end)
			TaggedInstanceRemovedConnection = CollectionService:GetInstanceRemovedSignal(
				CurrentIgnoreTag):Connect(function(ignorePart)
				for i = 1, #CurrentIgnoreList do
					if CurrentIgnoreList[i] == ignorePart then
						CurrentIgnoreList[i] = CurrentIgnoreList[#CurrentIgnoreList]
						table.remove(CurrentIgnoreList)
						break
					end
				end
			end)
		end
	end
	
	local function getIgnoreList()
		if CurrentIgnoreList then
			return CurrentIgnoreList
		end
		CurrentIgnoreList = {}
		table.insert(CurrentIgnoreList, GetCharacter())
		return CurrentIgnoreList
	end
	
	-----------------------------------PATHER--------------------------------------
	
	local function Pather(endPoint, surfaceNormal, overrideUseDirectPath)
		local this = {}
	
		local directPathForHumanoid
		local directPathForVehicle
		if overrideUseDirectPath ~= nil then
			directPathForHumanoid = overrideUseDirectPath
			directPathForVehicle = overrideUseDirectPath
		else
			directPathForHumanoid = UseDirectPath
			directPathForVehicle = UseDirectPathForVehicle
		end
	
		this.Cancelled = false
		this.Started = false
	
		this.Finished = Instance.new("BindableEvent")
		this.PathFailed = Instance.new("BindableEvent")
	
		this.PathComputing = false
		this.PathComputed = false
	
		this.OriginalTargetPoint = endPoint
		this.TargetPoint = endPoint
		this.TargetSurfaceNormal = surfaceNormal
	
		this.DiedConn = nil
		this.SeatedConn = nil
		this.BlockedConn = nil
		this.TeleportedConn = nil
	
		this.CurrentPoint = 0
	
		this.HumanoidOffsetFromPath = ZERO_VECTOR3
	
		this.CurrentWaypointPosition = nil
		this.CurrentWaypointPlaneNormal = ZERO_VECTOR3
		this.CurrentWaypointPlaneDistance = 0
		this.CurrentWaypointNeedsJump = false;
	
		this.CurrentHumanoidPosition = ZERO_VECTOR3
		this.CurrentHumanoidVelocity = 0
	
		this.NextActionMoveDirection = ZERO_VECTOR3
		this.NextActionJump = false
	
		this.Timeout = 0
	
		this.Humanoid = findPlayerHumanoid(Player)
		this.OriginPoint = nil
		this.AgentCanFollowPath = false
		this.DirectPath = false
		this.DirectPathRiseFirst = false
	
		local rootPart = this.Humanoid and this.Humanoid.RootPart
		if rootPart then
			-- Setup origin
			this.OriginPoint = rootPart.CFrame.p
	
			-- Setup agent
			local agentRadius = 2
			local agentHeight = 5
			local agentCanJump = true
	
			local seat = this.Humanoid.SeatPart
			if seat and seat:IsA("VehicleSeat") then
				-- Humanoid is seated on a vehicle
				local vehicle = seat:FindFirstAncestorOfClass("Model")
				if vehicle then
					-- Make sure the PrimaryPart is set to the vehicle seat while we compute the extends.
					local tempPrimaryPart = vehicle.PrimaryPart
					vehicle.PrimaryPart = seat
	
					-- For now, only direct path
					if directPathForVehicle then
						local extents = vehicle:GetExtentsSize()
						agentRadius = AgentSizeIncreaseFactor * 0.5 * math.sqrt(extents.X * extents.X + extents.Z * extents.Z)
						agentHeight = AgentSizeIncreaseFactor * extents.Y
						agentCanJump = false
						this.AgentCanFollowPath = true
						this.DirectPath = directPathForVehicle
					end
	
					-- Reset PrimaryPart
					vehicle.PrimaryPart = tempPrimaryPart
				end
			else
				local extents = GetCharacter():GetExtentsSize()
				agentRadius = AgentSizeIncreaseFactor * 0.5 * math.sqrt(extents.X * extents.X + extents.Z * extents.Z)
				agentHeight = AgentSizeIncreaseFactor * extents.Y
				agentCanJump = (this.Humanoid.JumpPower > 0)
				this.AgentCanFollowPath = true
				this.DirectPath = directPathForHumanoid
				this.DirectPathRiseFirst = this.Humanoid.Sit
			end
	
			-- Build path object
			this.pathResult = PathfindingService:CreatePath({AgentRadius = agentRadius, AgentHeight = agentHeight, AgentCanJump = agentCanJump})
		end
	
		function this:Cleanup()
			if this.stopTraverseFunc then
				this.stopTraverseFunc()
				this.stopTraverseFunc = nil
			end
	
			if this.MoveToConn then
				this.MoveToConn:Disconnect()
				this.MoveToConn = nil
			end
	
			if this.BlockedConn then
				this.BlockedConn:Disconnect()
				this.BlockedConn = nil
			end
	
			if this.DiedConn then
				this.DiedConn:Disconnect()
				this.DiedConn = nil
			end
	
			if this.SeatedConn then
				this.SeatedConn:Disconnect()
				this.SeatedConn = nil
			end
	
			if this.TeleportedConn then
				this.TeleportedConn:Disconnect()
				this.TeleportedConn = nil
			end
	
			this.Started = false
		end
	
		function this:Cancel()
			this.Cancelled = true
			this:Cleanup()
		end
	
		function this:IsActive()
			return this.AgentCanFollowPath and this.Started and not this.Cancelled
		end
	
		function this:OnPathInterrupted()
			-- Stop moving
			this.Cancelled = true
			this:OnPointReached(false)
		end
	
		function this:ComputePath()
			if this.OriginPoint then
				if this.PathComputed or this.PathComputing then return end
				this.PathComputing = true
				if this.AgentCanFollowPath then
					if this.DirectPath then
						this.pointList = {
							PathWaypoint.new(this.OriginPoint, Enum.PathWaypointAction.Walk),
							PathWaypoint.new(this.TargetPoint, this.DirectPathRiseFirst and Enum.PathWaypointAction.Jump or Enum.PathWaypointAction.Walk)
						}
						this.PathComputed = true
					else
						this.pathResult:ComputeAsync(this.OriginPoint, this.TargetPoint)
						this.pointList = this.pathResult:GetWaypoints()
						this.BlockedConn = this.pathResult.Blocked:Connect(function(blockedIdx) this:OnPathBlocked(blockedIdx) end)
						this.PathComputed = this.pathResult.Status == Enum.PathStatus.Success
					end
				end
				this.PathComputing = false
			end
		end
	
		function this:IsValidPath()
			this:ComputePath()
			return this.PathComputed and this.AgentCanFollowPath
		end
	
		this.Recomputing = false
		function this:OnPathBlocked(blockedWaypointIdx)
			local pathBlocked = blockedWaypointIdx >= this.CurrentPoint
			if not pathBlocked or this.Recomputing then
				return
			end
	
			this.Recomputing = true
	
			if this.stopTraverseFunc then
				this.stopTraverseFunc()
				this.stopTraverseFunc = nil
			end
	
			this.OriginPoint = this.Humanoid.RootPart.CFrame.p
	
			this.pathResult:ComputeAsync(this.OriginPoint, this.TargetPoint)
			this.pointList = this.pathResult:GetWaypoints()
			if #this.pointList > 0 then
				this.HumanoidOffsetFromPath = this.pointList[1].Position - this.OriginPoint
			end
			this.PathComputed = this.pathResult.Status == Enum.PathStatus.Success
	
			if ShowPath then
				this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList)
			end
			if this.PathComputed then
				this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
				this:OnPointReached(true) -- Move to first point
			else
				this.PathFailed:Fire()
				this:Cleanup()
			end
	
			this.Recomputing = false
		end
	
		function this:OnRenderStepped(dt)
			if this.Started and not this.Cancelled then
				-- Check for Timeout (if a waypoint is not reached within the delay, we fail)
				this.Timeout = this.Timeout + dt
				if this.Timeout > UnreachableWaypointTimeout then
					this:OnPointReached(false)
					return
				end
	
				-- Get Humanoid position and velocity
				this.CurrentHumanoidPosition = this.Humanoid.RootPart.Position + this.HumanoidOffsetFromPath
				this.CurrentHumanoidVelocity = this.Humanoid.RootPart.Velocity
	
				-- Check if it has reached some waypoints
				while this.Started and this:IsCurrentWaypointReached() do
					this:OnPointReached(true)
				end
	
				-- If still started, update actions
				if this.Started then
					-- Move action
					this.NextActionMoveDirection = this.CurrentWaypointPosition - this.CurrentHumanoidPosition
					if this.NextActionMoveDirection.Magnitude > ALMOST_ZERO then
						this.NextActionMoveDirection = this.NextActionMoveDirection.Unit
					else
						this.NextActionMoveDirection = ZERO_VECTOR3
					end
					-- Jump action
					if this.CurrentWaypointNeedsJump then
						this.NextActionJump = true
						this.CurrentWaypointNeedsJump = false	-- Request jump only once
					else
						this.NextActionJump = false
					end
				end
			end
		end
	
		function this:IsCurrentWaypointReached()
			local reached = false
	
			-- Check we do have a plane, if not, we consider the waypoint reached
			if this.CurrentWaypointPlaneNormal ~= ZERO_VECTOR3 then
				-- Compute distance of Humanoid from destination plane
				local dist = this.CurrentWaypointPlaneNormal:Dot(this.CurrentHumanoidPosition) - this.CurrentWaypointPlaneDistance
				-- Compute the component of the Humanoid velocity that is towards the plane
				local velocity = -this.CurrentWaypointPlaneNormal:Dot(this.CurrentHumanoidVelocity)
				-- Compute the threshold from the destination plane based on Humanoid velocity
				local threshold = math.max(1.0, 0.0625 * velocity)
				-- If we are less then threshold in front of the plane (between 0 and threshold) or if we are behing the plane (less then 0), we consider we reached it
				reached = dist < threshold
			else
				reached = true
			end
	
			if reached then
				this.CurrentWaypointPosition = nil
				this.CurrentWaypointPlaneNormal	= ZERO_VECTOR3
				this.CurrentWaypointPlaneDistance = 0
			end
	
			return reached
		end
	
		function this:OnPointReached(reached)
	
			if reached and not this.Cancelled then
				-- First, destroyed the current displayed waypoint
				if this.setPointFunc then
					this.setPointFunc(this.CurrentPoint)
				end
	
				local nextWaypointIdx = this.CurrentPoint + 1
	
				if nextWaypointIdx > #this.pointList then
					-- End of path reached
					if this.stopTraverseFunc then
						this.stopTraverseFunc()
					end
					this.Finished:Fire()
					this:Cleanup()
				else
					local currentWaypoint = this.pointList[this.CurrentPoint]
					local nextWaypoint = this.pointList[nextWaypointIdx]
	
					-- If airborne, only allow to keep moving
					-- if nextWaypoint.Action ~= Jump, or path mantains a direction
					-- Otherwise, wait until the humanoid gets to the ground
					local currentState = this.Humanoid:GetState()
					local isInAir = currentState == Enum.HumanoidStateType.FallingDown
						or currentState == Enum.HumanoidStateType.Freefall
						or currentState == Enum.HumanoidStateType.Jumping
	
					if isInAir then
						local shouldWaitForGround = nextWaypoint.Action == Enum.PathWaypointAction.Jump
						if not shouldWaitForGround and this.CurrentPoint > 1 then
							local prevWaypoint = this.pointList[this.CurrentPoint - 1]
	
							local prevDir = currentWaypoint.Position - prevWaypoint.Position
							local currDir = nextWaypoint.Position - currentWaypoint.Position
	
							local prevDirXZ = Vector2.new(prevDir.x, prevDir.z).Unit
							local currDirXZ = Vector2.new(currDir.x, currDir.z).Unit
	
							local THRESHOLD_COS = 0.996 -- ~cos(5 degrees)
							shouldWaitForGround = prevDirXZ:Dot(currDirXZ) < THRESHOLD_COS
						end
	
						if shouldWaitForGround then
							this.Humanoid.FreeFalling:Wait()
	
							-- Give time to the humanoid's state to change
							-- Otherwise, the jump flag in Humanoid
							-- will be reset by the state change
							wait(0.1)
						end
					end
	
					-- Move to the next point
					if FFlagUserNavigationClickToMoveSkipPassedWaypoints then
						this:MoveToNextWayPoint(currentWaypoint, nextWaypoint, nextWaypointIdx)
					else
						if this.setPointFunc then
							this.setPointFunc(nextWaypointIdx)
						end
						if nextWaypoint.Action == Enum.PathWaypointAction.Jump then
							this.Humanoid.Jump = true
						end
						this.Humanoid:MoveTo(nextWaypoint.Position)
	
						this.CurrentPoint = nextWaypointIdx
					end
				end
			else
				this.PathFailed:Fire()
				this:Cleanup()
			end
		end
	
		function this:MoveToNextWayPoint(currentWaypoint, nextWaypoint, nextWaypointIdx)
			-- Build next destination plane
			-- (plane normal is perpendicular to the y plane and is from next waypoint towards current one (provided the two waypoints are not at the same location))
			-- (plane location is at next waypoint)
			this.CurrentWaypointPlaneNormal = currentWaypoint.Position - nextWaypoint.Position
			this.CurrentWaypointPlaneNormal = Vector3.new(this.CurrentWaypointPlaneNormal.X, 0, this.CurrentWaypointPlaneNormal.Z)
			if this.CurrentWaypointPlaneNormal.Magnitude > ALMOST_ZERO then
				this.CurrentWaypointPlaneNormal	= this.CurrentWaypointPlaneNormal.Unit
				this.CurrentWaypointPlaneDistance = this.CurrentWaypointPlaneNormal:Dot(nextWaypoint.Position)
			else
				-- Next waypoint is the same as current waypoint so no plane
				this.CurrentWaypointPlaneNormal	= ZERO_VECTOR3
				this.CurrentWaypointPlaneDistance = 0
			end
	
			-- Should we jump
			this.CurrentWaypointNeedsJump = nextWaypoint.Action == Enum.PathWaypointAction.Jump;
	
			-- Remember next waypoint position
			this.CurrentWaypointPosition = nextWaypoint.Position
	
			-- Move to next point
			this.CurrentPoint = nextWaypointIdx
	
			-- Finally reset Timeout
			this.Timeout = 0
		end
	
		function this:Start(overrideShowPath)
			if not this.AgentCanFollowPath then
				this.PathFailed:Fire()
				return
			end
	
			if this.Started then return end
			this.Started = true
	
			ClickToMoveDisplay.CancelFailureAnimation()
	
			if ShowPath then
				if overrideShowPath == nil or overrideShowPath then
					this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList, this.OriginalTargetPoint)
				end
			end
	
			if #this.pointList > 0 then
				-- Determine the humanoid offset from the path's first point
				-- Offset of the first waypoint from the path's origin point
				this.HumanoidOffsetFromPath = Vector3.new(0, this.pointList[1].Position.Y - this.OriginPoint.Y, 0)
	
				-- As well as its current position and velocity
				this.CurrentHumanoidPosition = this.Humanoid.RootPart.Position + this.HumanoidOffsetFromPath
				this.CurrentHumanoidVelocity = this.Humanoid.RootPart.Velocity
	
				-- Connect to events
				this.SeatedConn = this.Humanoid.Seated:Connect(function(isSeated, seat) this:OnPathInterrupted() end)
				this.DiedConn = this.Humanoid.Died:Connect(function() this:OnPathInterrupted() end)
				this.TeleportedConn = this.Humanoid.RootPart:GetPropertyChangedSignal("CFrame"):Connect(function() this:OnPathInterrupted() end)
	
				-- Actually start
				this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
				this:OnPointReached(true) -- Move to first point
			else
				this.PathFailed:Fire()
				if this.stopTraverseFunc then
					this.stopTraverseFunc()
				end
			end
		end
	
		--We always raycast to the ground in the case that the user clicked a wall.
		local offsetPoint = this.TargetPoint + this.TargetSurfaceNormal*1.5
		local ray = Ray.new(offsetPoint, Vector3.new(0,-1,0)*50)
		local newHitPart, newHitPos = Workspace:FindPartOnRayWithIgnoreList(ray, getIgnoreList())
		if newHitPart then
			this.TargetPoint = newHitPos
		end
		this:ComputePath()
	
		return this
	end
	
	-------------------------------------------------------------------------
	
	local function CheckAlive()
		local humanoid = findPlayerHumanoid(Player)
		return humanoid ~= nil and humanoid.Health > 0
	end
	
	local function GetEquippedTool(character)
		if character ~= nil then
			for _, child in pairs(character:GetChildren()) do
				if child:IsA('Tool') then
					return child
				end
			end
		end
	end
	
	local ExistingPather = nil
	local ExistingIndicator = nil
	local PathCompleteListener = nil
	local PathFailedListener = nil
	
	local function CleanupPath()
		if ExistingPather then
			ExistingPather:Cancel()
			ExistingPather = nil
		end
		if PathCompleteListener then
			PathCompleteListener:Disconnect()
			PathCompleteListener = nil
		end
		if PathFailedListener then
			PathFailedListener:Disconnect()
			PathFailedListener = nil
		end
		if ExistingIndicator then
			ExistingIndicator:Destroy()
		end
	end
	
	local function HandleMoveTo(thisPather, hitPt, hitChar, character, overrideShowPath)
		if ExistingPather then
			CleanupPath()
		end
		ExistingPather = thisPather
		thisPather:Start(overrideShowPath)
	
		PathCompleteListener = thisPather.Finished.Event:Connect(function()
			CleanupPath()
			if hitChar then
				local currentWeapon = GetEquippedTool(character)
				if currentWeapon then
					currentWeapon:Activate()
				end
			end
		end)
		PathFailedListener = thisPather.PathFailed.Event:Connect(function()
			CleanupPath()
			if overrideShowPath == nil or overrideShowPath then
				local shouldPlayFailureAnim = PlayFailureAnimation and not (ExistingPather and ExistingPather:IsActive())
				if shouldPlayFailureAnim then
					ClickToMoveDisplay.PlayFailureAnimation()
				end
				ClickToMoveDisplay.DisplayFailureWaypoint(hitPt)
			end
		end)
	end
	
	local function ShowPathFailedFeedback(hitPt)
		if ExistingPather and ExistingPather:IsActive() then
			ExistingPather:Cancel()
		end
		if PlayFailureAnimation then
			ClickToMoveDisplay.PlayFailureAnimation()
		end
		ClickToMoveDisplay.DisplayFailureWaypoint(hitPt)
	end
	
	function OnTap(tapPositions, goToPoint, wasTouchTap)
		-- Good to remember if this is the latest tap event
		local camera = Workspace.CurrentCamera
		local character = Player.Character
	
		if not CheckAlive() then return end
	
		-- This is a path tap position
		if #tapPositions == 1 or goToPoint then
			if camera then
				local unitRay = camera:ScreenPointToRay(tapPositions[1].x, tapPositions[1].y)
				local ray = Ray.new(unitRay.Origin, unitRay.Direction*1000)
	
				local myHumanoid = findPlayerHumanoid(Player)
				local hitPart, hitPt, hitNormal = Utility.Raycast(ray, true, getIgnoreList())
	
				local hitChar, hitHumanoid = Utility.FindCharacterAncestor(hitPart)
				if wasTouchTap and hitHumanoid and StarterGui:GetCore("AvatarContextMenuEnabled") then
					local clickedPlayer = Players:GetPlayerFromCharacter(hitHumanoid.Parent)
					if clickedPlayer then
						CleanupPath()
						return
					end
				end
				if goToPoint then
					hitPt = goToPoint
					hitChar = nil
				end
				if hitPt and character then
					-- Clean up current path
					CleanupPath()
					local thisPather = Pather(hitPt, hitNormal)
					if thisPather:IsValidPath() then
						HandleMoveTo(thisPather, hitPt, hitChar, character)
					else
						-- Clean up
						thisPather:Cleanup()
						-- Feedback here for when we don't have a good path
						ShowPathFailedFeedback(hitPt)
					end
				end
			end
		elseif #tapPositions >= 2 then
			if camera then
				-- Do shoot
				local currentWeapon = GetEquippedTool(character)
				if currentWeapon then
					currentWeapon:Activate()
				end
			end
		end
	end
	
	local function DisconnectEvent(event)
		if event then
			event:Disconnect()
		end
	end
	
	--[[ The ClickToMove Controller Class ]]--
	local KeyboardController = _Keyboard()
	local ClickToMove = setmetatable({}, KeyboardController)
	ClickToMove.__index = ClickToMove
	
	function ClickToMove.new(CONTROL_ACTION_PRIORITY)
		local self = setmetatable(KeyboardController.new(CONTROL_ACTION_PRIORITY), ClickToMove)
	
		self.fingerTouches = {}
		self.numUnsunkTouches = 0
		-- PC simulation
		self.mouse1Down = tick()
		self.mouse1DownPos = Vector2.new()
		self.mouse2DownTime = tick()
		self.mouse2DownPos = Vector2.new()
		self.mouse2UpTime = tick()
	
		self.keyboardMoveVector = ZERO_VECTOR3
	
		self.tapConn = nil
		self.inputBeganConn = nil
		self.inputChangedConn = nil
		self.inputEndedConn = nil
		self.humanoidDiedConn = nil
		self.characterChildAddedConn = nil
		self.onCharacterAddedConn = nil
		self.characterChildRemovedConn = nil
		self.renderSteppedConn = nil
		self.menuOpenedConnection = nil
	
		self.running = false
	
		self.wasdEnabled = false
	
		return self
	end
	
	function ClickToMove:DisconnectEvents()
		DisconnectEvent(self.tapConn)
		DisconnectEvent(self.inputBeganConn)
		DisconnectEvent(self.inputChangedConn)
		DisconnectEvent(self.inputEndedConn)
		DisconnectEvent(self.humanoidDiedConn)
		DisconnectEvent(self.characterChildAddedConn)
		DisconnectEvent(self.onCharacterAddedConn)
		DisconnectEvent(self.renderSteppedConn)
		DisconnectEvent(self.characterChildRemovedConn)
		DisconnectEvent(self.menuOpenedConnection)
	end
	
	function ClickToMove:OnTouchBegan(input, processed)
		if self.fingerTouches[input] == nil and not processed then
			self.numUnsunkTouches = self.numUnsunkTouches + 1
		end
		self.fingerTouches[input] = processed
	end
	
	function ClickToMove:OnTouchChanged(input, processed)
		if self.fingerTouches[input] == nil then
			self.fingerTouches[input] = processed
			if not processed then
				self.numUnsunkTouches = self.numUnsunkTouches + 1
			end
		end
	end
	
	function ClickToMove:OnTouchEnded(input, processed)
		if self.fingerTouches[input] ~= nil and self.fingerTouches[input] == false then
			self.numUnsunkTouches = self.numUnsunkTouches - 1
		end
		self.fingerTouches[input] = nil
	end
	
	
	function ClickToMove:OnCharacterAdded(character)
		self:DisconnectEvents()
	
		self.inputBeganConn = UserInputService.InputBegan:Connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				self:OnTouchBegan(input, processed)
			end
	
			-- Cancel path when you use the keyboard controls if wasd is enabled.
			if self.wasdEnabled and processed == false and input.UserInputType == Enum.UserInputType.Keyboard
				and movementKeys[input.KeyCode] then
				CleanupPath()
				ClickToMoveDisplay.CancelFailureAnimation()
			end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.mouse1DownTime = tick()
				self.mouse1DownPos = input.Position
			end
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				self.mouse2DownTime = tick()
				self.mouse2DownPos = input.Position
			end
		end)
	
		self.inputChangedConn = UserInputService.InputChanged:Connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				self:OnTouchChanged(input, processed)
			end
		end)
	
		self.inputEndedConn = UserInputService.InputEnded:Connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				self:OnTouchEnded(input, processed)
			end
	
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				self.mouse2UpTime = tick()
				local currPos = input.Position
				-- We allow click to move during path following or if there is no keyboard movement
				local allowed = ExistingPather or self.keyboardMoveVector.Magnitude <= 0
				if self.mouse2UpTime - self.mouse2DownTime < 0.25 and (currPos - self.mouse2DownPos).magnitude < 5 and allowed then
					local positions = {currPos}
					OnTap(positions)
				end
			end
		end)
	
		self.tapConn = UserInputService.TouchTap:Connect(function(touchPositions, processed)
			if not processed then
				OnTap(touchPositions, nil, true)
			end
		end)
	
		self.menuOpenedConnection = GuiService.MenuOpened:Connect(function()
			CleanupPath()
		end)
	
		local function OnCharacterChildAdded(child)
			if UserInputService.TouchEnabled then
				if child:IsA('Tool') then
					child.ManualActivationOnly = true
				end
			end
			if child:IsA('Humanoid') then
				DisconnectEvent(self.humanoidDiedConn)
				self.humanoidDiedConn = child.Died:Connect(function()
					if ExistingIndicator then
						DebrisService:AddItem(ExistingIndicator.Model, 1)
					end
				end)
			end
		end
	
		self.characterChildAddedConn = character.ChildAdded:Connect(function(child)
			OnCharacterChildAdded(child)
		end)
		self.characterChildRemovedConn = character.ChildRemoved:Connect(function(child)
			if UserInputService.TouchEnabled then
				if child:IsA('Tool') then
					child.ManualActivationOnly = false
				end
			end
		end)
		for _, child in pairs(character:GetChildren()) do
			OnCharacterChildAdded(child)
		end
	end
	
	function ClickToMove:Start()
		self:Enable(true)
	end
	
	function ClickToMove:Stop()
		self:Enable(false)
	end
	
	function ClickToMove:CleanupPath()
		CleanupPath()
	end
	
	function ClickToMove:Enable(enable, enableWASD, touchJumpController)
		if enable then
			if not self.running then
				if Player.Character then -- retro-listen
					self:OnCharacterAdded(Player.Character)
				end
				self.onCharacterAddedConn = Player.CharacterAdded:Connect(function(char)
					self:OnCharacterAdded(char)
				end)
				self.running = true
			end
			self.touchJumpController = touchJumpController
			if self.touchJumpController then
				self.touchJumpController:Enable(self.jumpEnabled)
			end
		else
			if self.running then
				self:DisconnectEvents()
				CleanupPath()
				-- Restore tool activation on shutdown
				if UserInputService.TouchEnabled then
					local character = Player.Character
					if character then
						for _, child in pairs(character:GetChildren()) do
							if child:IsA('Tool') then
								child.ManualActivationOnly = false
							end
						end
					end
				end
				self.running = false
			end
			if self.touchJumpController and not self.jumpEnabled then
				self.touchJumpController:Enable(true)
			end
			self.touchJumpController = nil
		end
	
		-- Extension for initializing Keyboard input as this class now derives from Keyboard
		if UserInputService.KeyboardEnabled and enable ~= self.enabled then
	
			self.forwardValue  = 0
			self.backwardValue = 0
			self.leftValue = 0
			self.rightValue = 0
	
			self.moveVector = ZERO_VECTOR3
	
			if enable then
				self:BindContextActions()
				self:ConnectFocusEventListeners()
			else
				self:UnbindContextActions()
				self:DisconnectFocusEventListeners()
			end
		end
	
		self.wasdEnabled = enable and enableWASD or false
		self.enabled = enable
	end
	
	function ClickToMove:OnRenderStepped(dt)
		-- Reset jump
		self.isJumping = false
	
		-- Handle Pather
		if ExistingPather then
			-- Let the Pather update
			ExistingPather:OnRenderStepped(dt)
	
			-- If we still have a Pather, set the resulting actions
			if ExistingPather then
				-- Setup move (NOT relative to camera)
				self.moveVector = ExistingPather.NextActionMoveDirection
				self.moveVectorIsCameraRelative = false
	
				-- Setup jump (but do NOT prevent the base Keayboard class from requesting jumps as well)
				if ExistingPather.NextActionJump then
					self.isJumping = true
				end
			else
				self.moveVector = self.keyboardMoveVector
				self.moveVectorIsCameraRelative = true
			end
		else
			self.moveVector = self.keyboardMoveVector
			self.moveVectorIsCameraRelative = true
		end
	
		-- Handle Keyboard's jump
		if self.jumpRequested then
			self.isJumping = true
		end
	end
	
	-- Overrides Keyboard:UpdateMovement(inputState) to conditionally consider self.wasdEnabled and let OnRenderStepped handle the movement
	function ClickToMove:UpdateMovement(inputState)
		if inputState == Enum.UserInputState.Cancel then
			self.keyboardMoveVector = ZERO_VECTOR3
		elseif self.wasdEnabled then
			self.keyboardMoveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
		end
	end
	
	-- Overrides Keyboard:UpdateJump() because jump is handled in OnRenderStepped
	function ClickToMove:UpdateJump()
		-- Nothing to do (handled in OnRenderStepped)
	end
	
	--Public developer facing functions
	function ClickToMove:SetShowPath(value)
		ShowPath = value
	end
	
	function ClickToMove:GetShowPath()
		return ShowPath
	end
	
	function ClickToMove:SetWaypointTexture(texture)
		ClickToMoveDisplay.SetWaypointTexture(texture)
	end
	
	function ClickToMove:GetWaypointTexture()
		return ClickToMoveDisplay.GetWaypointTexture()
	end
	
	function ClickToMove:SetWaypointRadius(radius)
		ClickToMoveDisplay.SetWaypointRadius(radius)
	end
	
	function ClickToMove:GetWaypointRadius()
		return ClickToMoveDisplay.GetWaypointRadius()
	end
	
	function ClickToMove:SetEndWaypointTexture(texture)
		ClickToMoveDisplay.SetEndWaypointTexture(texture)
	end
	
	function ClickToMove:GetEndWaypointTexture()
		return ClickToMoveDisplay.GetEndWaypointTexture()
	end
	
	function ClickToMove:SetWaypointsAlwaysOnTop(alwaysOnTop)
		ClickToMoveDisplay.SetWaypointsAlwaysOnTop(alwaysOnTop)
	end
	
	function ClickToMove:GetWaypointsAlwaysOnTop()
		return ClickToMoveDisplay.GetWaypointsAlwaysOnTop()
	end
	
	function ClickToMove:SetFailureAnimationEnabled(enabled)
		PlayFailureAnimation = enabled
	end
	
	function ClickToMove:GetFailureAnimationEnabled()
		return PlayFailureAnimation
	end
	
	function ClickToMove:SetIgnoredPartsTag(tag)
		UpdateIgnoreTag(tag)
	end
	
	function ClickToMove:GetIgnoredPartsTag()
		return CurrentIgnoreTag
	end
	
	function ClickToMove:SetUseDirectPath(directPath)
		UseDirectPath = directPath
	end
	
	function ClickToMove:GetUseDirectPath()
		return UseDirectPath
	end
	
	function ClickToMove:SetAgentSizeIncreaseFactor(increaseFactorPercent)
		AgentSizeIncreaseFactor = 1.0 + (increaseFactorPercent / 100.0)
	end
	
	function ClickToMove:GetAgentSizeIncreaseFactor()
		return (AgentSizeIncreaseFactor - 1.0) * 100.0
	end
	
	function ClickToMove:SetUnreachableWaypointTimeout(timeoutInSec)
		UnreachableWaypointTimeout = timeoutInSec
	end
	
	function ClickToMove:GetUnreachableWaypointTimeout()
		return UnreachableWaypointTimeout
	end
	
	function ClickToMove:SetUserJumpEnabled(jumpEnabled)
		self.jumpEnabled = jumpEnabled
		if self.touchJumpController then
			self.touchJumpController:Enable(jumpEnabled)
		end
	end
	
	function ClickToMove:GetUserJumpEnabled()
		return self.jumpEnabled
	end
	
	function ClickToMove:MoveTo(position, showPath, useDirectPath)
		local character = Player.Character
		if character == nil then
			return false
		end
		local thisPather = Pather(position, Vector3.new(0, 1, 0), useDirectPath)
		if thisPather and thisPather:IsValidPath() then
			HandleMoveTo(thisPather, position, nil, character, showPath)
			return true
		end
		return false
	end
	
	return ClickToMove
end

function _TouchThumbstick()
	local Players = game:GetService("Players")
	local GuiService = game:GetService("GuiService")
	local UserInputService = game:GetService("UserInputService")
	--[[ Constants ]]--
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"
	--[[ The Module ]]--
	local BaseCharacterController = _BaseCharacterController()
	local TouchThumbstick = setmetatable({}, BaseCharacterController)
	TouchThumbstick.__index = TouchThumbstick
	function TouchThumbstick.new()
		local self = setmetatable(BaseCharacterController.new(), TouchThumbstick)
		
		self.isFollowStick = false
		
		self.thumbstickFrame = nil
		self.moveTouchObject = nil
		self.onTouchMovedConn = nil
		self.onTouchEndedConn = nil
		self.screenPos = nil
		self.stickImage = nil
		self.thumbstickSize = nil -- Float
		
		return self
	end
	function TouchThumbstick:Enable(enable, uiParentFrame)
		if enable == nil then return false end			-- If nil, return false (invalid argument)
		enable = enable and true or false				-- Force anything non-nil to boolean before comparison
		if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
		
		self.moveVector = ZERO_VECTOR3
		self.isJumping = false
		
		if enable then
			-- Enable
			if not self.thumbstickFrame then
				self:Create(uiParentFrame)
			end
			self.thumbstickFrame.Visible = true
		else 
			-- Disable
			self.thumbstickFrame.Visible = false
			self:OnInputEnded()
		end
		self.enabled = enable
	end
	function TouchThumbstick:OnInputEnded()
		self.thumbstickFrame.Position = self.screenPos
		self.stickImage.Position = UDim2.new(0, self.thumbstickFrame.Size.X.Offset/2 - self.thumbstickSize/4, 0, self.thumbstickFrame.Size.Y.Offset/2 - self.thumbstickSize/4)
		
		self.moveVector = ZERO_VECTOR3
		self.isJumping = false
		self.thumbstickFrame.Position = self.screenPos
		self.moveTouchObject = nil
	end
	function TouchThumbstick:Create(parentFrame)
		
		if self.thumbstickFrame then
			self.thumbstickFrame:Destroy()
			self.thumbstickFrame = nil
			if self.onTouchMovedConn then
				self.onTouchMovedConn:Disconnect()
				self.onTouchMovedConn = nil
			end
			if self.onTouchEndedConn then
				self.onTouchEndedConn:Disconnect()
				self.onTouchEndedConn = nil
			end
		end
		
		local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500
		self.thumbstickSize = isSmallScreen and 70 or 120
		self.screenPos = isSmallScreen and UDim2.new(0, (self.thumbstickSize/2) - 10, 1, -self.thumbstickSize - 20) or
			UDim2.new(0, self.thumbstickSize/2, 1, -self.thumbstickSize * 1.75)
			
		self.thumbstickFrame = Instance.new("Frame")
		self.thumbstickFrame.Name = "ThumbstickFrame"
		self.thumbstickFrame.Active = true
		self.thumbstickFrame.Visible = false
		self.thumbstickFrame.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
		self.thumbstickFrame.Position = self.screenPos
		self.thumbstickFrame.BackgroundTransparency = 1
		
		local outerImage = Instance.new("ImageLabel")
		outerImage.Name = "OuterImage"
		outerImage.Image = TOUCH_CONTROL_SHEET
		outerImage.ImageRectOffset = Vector2.new()
		outerImage.ImageRectSize = Vector2.new(220, 220)
		outerImage.BackgroundTransparency = 1
		outerImage.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
		outerImage.Position = UDim2.new(0, 0, 0, 0)
		outerImage.Parent = self.thumbstickFrame
		
		self.stickImage = Instance.new("ImageLabel")
		self.stickImage.Name = "StickImage"
		self.stickImage.Image = TOUCH_CONTROL_SHEET
		self.stickImage.ImageRectOffset = Vector2.new(220, 0)
		self.stickImage.ImageRectSize = Vector2.new(111, 111)
		self.stickImage.BackgroundTransparency = 1
		self.stickImage.Size = UDim2.new(0, self.thumbstickSize/2, 0, self.thumbstickSize/2)
		self.stickImage.Position = UDim2.new(0, self.thumbstickSize/2 - self.thumbstickSize/4, 0, self.thumbstickSize/2 - self.thumbstickSize/4)
		self.stickImage.ZIndex = 2
		self.stickImage.Parent = self.thumbstickFrame
		
		local centerPosition = nil
		local deadZone = 0.05
		
		local function DoMove(direction)
			
			local currentMoveVector = direction / (self.thumbstickSize/2)
			
			-- Scaled Radial Dead Zone
			local inputAxisMagnitude = currentMoveVector.magnitude
			if inputAxisMagnitude < deadZone then
				currentMoveVector = Vector3.new()
			else
				currentMoveVector = currentMoveVector.unit * ((inputAxisMagnitude - deadZone) / (1 - deadZone))
				-- NOTE: Making currentMoveVector a unit vector will cause the player to instantly go max speed
				-- must check for zero length vector is using unit
				currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
			end
			
			self.moveVector = currentMoveVector
		end
		
		local function MoveStick(pos)
			local relativePosition = Vector2.new(pos.x - centerPosition.x, pos.y - centerPosition.y)
			local length = relativePosition.magnitude
			local maxLength = self.thumbstickFrame.AbsoluteSize.x/2
			if self.isFollowStick and length > maxLength then
				local offset = relativePosition.unit * maxLength
				self.thumbstickFrame.Position = UDim2.new(
					0, pos.x - self.thumbstickFrame.AbsoluteSize.x/2 - offset.x,
					0, pos.y - self.thumbstickFrame.AbsoluteSize.y/2 - offset.y)
			else
				length = math.min(length, maxLength)
				relativePosition = relativePosition.unit * length
			end
			self.stickImage.Position = UDim2.new(0, relativePosition.x + self.stickImage.AbsoluteSize.x/2, 0, relativePosition.y + self.stickImage.AbsoluteSize.y/2)
		end
		
		-- input connections
		self.thumbstickFrame.InputBegan:Connect(function(inputObject)
			--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
			--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
			if self.moveTouchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
				or inputObject.UserInputState ~= Enum.UserInputState.Begin then
				return
			end
			
			self.moveTouchObject = inputObject
			self.thumbstickFrame.Position = UDim2.new(0, inputObject.Position.x - self.thumbstickFrame.Size.X.Offset/2, 0, inputObject.Position.y - self.thumbstickFrame.Size.Y.Offset/2)
			centerPosition = Vector2.new(self.thumbstickFrame.AbsolutePosition.x + self.thumbstickFrame.AbsoluteSize.x/2,
				self.thumbstickFrame.AbsolutePosition.y + self.thumbstickFrame.AbsoluteSize.y/2)
			local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
		end)
		
		self.onTouchMovedConn = UserInputService.TouchMoved:Connect(function(inputObject, isProcessed)
			if inputObject == self.moveTouchObject then
				centerPosition = Vector2.new(self.thumbstickFrame.AbsolutePosition.x + self.thumbstickFrame.AbsoluteSize.x/2,
					self.thumbstickFrame.AbsolutePosition.y + self.thumbstickFrame.AbsoluteSize.y/2)
				local direction = Vector2.new(inputObject.Position.x - centerPosition.x, inputObject.Position.y - centerPosition.y)
				DoMove(direction)
				MoveStick(inputObject.Position)
			end
		end)
		
		self.onTouchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject, isProcessed)
			if inputObject == self.moveTouchObject then
				self:OnInputEnded()
			end
		end)
		
		GuiService.MenuOpened:Connect(function()
			if self.moveTouchObject then
				self:OnInputEnded()
			end
		end)	
		
		self.thumbstickFrame.Parent = parentFrame
	end
	return TouchThumbstick
end

function _DynamicThumbstick()
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local TOUCH_CONTROLS_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
	
	local DYNAMIC_THUMBSTICK_ACTION_NAME = "DynamicThumbstickAction"
	local DYNAMIC_THUMBSTICK_ACTION_PRIORITY = Enum.ContextActionPriority.High.Value
	
	local MIDDLE_TRANSPARENCIES = {
		1 - 0.89,
		1 - 0.70,
		1 - 0.60,
		1 - 0.50,
		1 - 0.40,
		1 - 0.30,
		1 - 0.25
	}
	local NUM_MIDDLE_IMAGES = #MIDDLE_TRANSPARENCIES
	
	local FADE_IN_OUT_BACKGROUND = true
	local FADE_IN_OUT_MAX_ALPHA = 0.35
	
	local FADE_IN_OUT_HALF_DURATION_DEFAULT = 0.3
	local FADE_IN_OUT_BALANCE_DEFAULT = 0.5
	local ThumbstickFadeTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	
	local Players = game:GetService("Players")
	local GuiService = game:GetService("GuiService")
	local UserInputService = game:GetService("UserInputService")
	local ContextActionService = game:GetService("ContextActionService")
	local RunService = game:GetService("RunService")
	local TweenService = game:GetService("TweenService")
	
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end
	
	--[[ The Module ]]--
	local BaseCharacterController = _BaseCharacterController()
	local DynamicThumbstick = setmetatable({}, BaseCharacterController)
	DynamicThumbstick.__index = DynamicThumbstick
	
	function DynamicThumbstick.new()
		local self = setmetatable(BaseCharacterController.new(), DynamicThumbstick)
	
		self.moveTouchObject = nil
		self.moveTouchLockedIn = false
		self.moveTouchFirstChanged = false
		self.moveTouchStartPosition = nil
	
		self.startImage = nil
		self.endImage = nil
		self.middleImages = {}
	
		self.startImageFadeTween = nil
		self.endImageFadeTween = nil
		self.middleImageFadeTweens = {}
	
		self.isFirstTouch = true
	
		self.thumbstickFrame = nil
	
		self.onRenderSteppedConn = nil
	
		self.fadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
		self.fadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
		self.hasFadedBackgroundInPortrait = false
		self.hasFadedBackgroundInLandscape = false
	
		self.tweenInAlphaStart = nil
		self.tweenOutAlphaStart = nil
	
		return self
	end
	
	-- Note: Overrides base class GetIsJumping with get-and-clear behavior to do a single jump
	-- rather than sustained jumping. This is only to preserve the current behavior through the refactor.
	function DynamicThumbstick:GetIsJumping()
		local wasJumping = self.isJumping
		self.isJumping = false
		return wasJumping
	end
	
	function DynamicThumbstick:Enable(enable, uiParentFrame)
		if enable == nil then return false end			-- If nil, return false (invalid argument)
		enable = enable and true or false				-- Force anything non-nil to boolean before comparison
		if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	
		if enable then
			-- Enable
			if not self.thumbstickFrame then
				self:Create(uiParentFrame)
			end
	
			self:BindContextActions()
		else
			ContextActionService:UnbindAction(DYNAMIC_THUMBSTICK_ACTION_NAME)
			-- Disable
			self:OnInputEnded() -- Cleanup
		end
	
		self.enabled = enable
		self.thumbstickFrame.Visible = enable
	end
	
	-- Was called OnMoveTouchEnded in previous version
	function DynamicThumbstick:OnInputEnded()
		self.moveTouchObject = nil
		self.moveVector = ZERO_VECTOR3
		self:FadeThumbstick(false)
	end
	
	function DynamicThumbstick:FadeThumbstick(visible)
		if not visible and self.moveTouchObject then
			return
		end
		if self.isFirstTouch then return end
	
		if self.startImageFadeTween then
			self.startImageFadeTween:Cancel()
		end
		if self.endImageFadeTween then
			self.endImageFadeTween:Cancel()
		end
		for i = 1, #self.middleImages do
			if self.middleImageFadeTweens[i] then
				self.middleImageFadeTweens[i]:Cancel()
			end
		end
	
		if visible then
			self.startImageFadeTween = TweenService:Create(self.startImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0 })
			self.startImageFadeTween:Play()
	
			self.endImageFadeTween = TweenService:Create(self.endImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0.2 })
			self.endImageFadeTween:Play()
	
			for i = 1, #self.middleImages do
				self.middleImageFadeTweens[i] = TweenService:Create(self.middleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = MIDDLE_TRANSPARENCIES[i] })
				self.middleImageFadeTweens[i]:Play()
			end
		else
			self.startImageFadeTween = TweenService:Create(self.startImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
			self.startImageFadeTween:Play()
	
			self.endImageFadeTween = TweenService:Create(self.endImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
			self.endImageFadeTween:Play()
	
			for i = 1, #self.middleImages do
				self.middleImageFadeTweens[i] = TweenService:Create(self.middleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
				self.middleImageFadeTweens[i]:Play()
			end
		end
	end
	
	function DynamicThumbstick:FadeThumbstickFrame(fadeDuration, fadeRatio)
		self.fadeInAndOutHalfDuration = fadeDuration * 0.5
		self.fadeInAndOutBalance = fadeRatio
		self.tweenInAlphaStart = tick()
	end
	
	function DynamicThumbstick:InputInFrame(inputObject)
		local frameCornerTopLeft = self.thumbstickFrame.AbsolutePosition
		local frameCornerBottomRight = frameCornerTopLeft + self.thumbstickFrame.AbsoluteSize
		local inputPosition = inputObject.Position
		if inputPosition.X >= frameCornerTopLeft.X and inputPosition.Y >= frameCornerTopLeft.Y then
			if inputPosition.X <= frameCornerBottomRight.X and inputPosition.Y <= frameCornerBottomRight.Y then
				return true
			end
		end
		return false
	end
	
	function DynamicThumbstick:DoFadeInBackground()
		local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		local hasFadedBackgroundInOrientation = false
	
		-- only fade in/out the background once per orientation
		if playerGui then
			if playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or
				playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight then
					hasFadedBackgroundInOrientation = self.hasFadedBackgroundInLandscape
					self.hasFadedBackgroundInLandscape = true
			elseif playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait then
					hasFadedBackgroundInOrientation = self.hasFadedBackgroundInPortrait
					self.hasFadedBackgroundInPortrait = true
			end
		end
	
		if not hasFadedBackgroundInOrientation then
			self.fadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
			self.fadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
			self.tweenInAlphaStart = tick()
		end
	end
	
	function DynamicThumbstick:DoMove(direction)
		local currentMoveVector = direction
	
		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < self.radiusOfDeadZone then
			currentMoveVector = ZERO_VECTOR3
		else
			currentMoveVector = currentMoveVector.unit*(
				1 - math.max(0, (self.radiusOfMaxSpeed - currentMoveVector.magnitude)/self.radiusOfMaxSpeed)
			)
			currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
		end
	
		self.moveVector = currentMoveVector
	end
	
	
	function DynamicThumbstick:LayoutMiddleImages(startPos, endPos)
		local startDist = (self.thumbstickSize / 2) + self.middleSize
		local vector = endPos - startPos
		local distAvailable = vector.magnitude - (self.thumbstickRingSize / 2) - self.middleSize
		local direction = vector.unit
	
		local distNeeded = self.middleSpacing * NUM_MIDDLE_IMAGES
		local spacing = self.middleSpacing
	
		if distNeeded < distAvailable then
			spacing = distAvailable / NUM_MIDDLE_IMAGES
		end
	
		for i = 1, NUM_MIDDLE_IMAGES do
			local image = self.middleImages[i]
			local distWithout = startDist + (spacing * (i - 2))
			local currentDist = startDist + (spacing * (i - 1))
	
			if distWithout < distAvailable then
				local pos = endPos - direction * currentDist
				local exposedFraction = math.clamp(1 - ((currentDist - distAvailable) / spacing), 0, 1)
	
				image.Visible = true
				image.Position = UDim2.new(0, pos.X, 0, pos.Y)
				image.Size = UDim2.new(0, self.middleSize * exposedFraction, 0, self.middleSize * exposedFraction)
			else
				image.Visible = false
			end
		end
	end
	
	function DynamicThumbstick:MoveStick(pos)
		local vector2StartPosition = Vector2.new(self.moveTouchStartPosition.X, self.moveTouchStartPosition.Y)
		local startPos = vector2StartPosition - self.thumbstickFrame.AbsolutePosition
		local endPos = Vector2.new(pos.X, pos.Y) - self.thumbstickFrame.AbsolutePosition
		self.endImage.Position = UDim2.new(0, endPos.X, 0, endPos.Y)
		self:LayoutMiddleImages(startPos, endPos)
	end
	
	function DynamicThumbstick:BindContextActions()
		local function inputBegan(inputObject)
			if self.moveTouchObject then
				return Enum.ContextActionResult.Pass
			end
	
			if not self:InputInFrame(inputObject) then
				return Enum.ContextActionResult.Pass
			end
	
			if self.isFirstTouch then
				self.isFirstTouch = false
				local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0,false,0)
				TweenService:Create(self.startImage, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)}):Play()
				TweenService:Create(
					self.endImage,
					tweenInfo,
					{Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize), ImageColor3 = Color3.new(0,0,0)}
				):Play()
			end
	
			self.moveTouchLockedIn = false
			self.moveTouchObject = inputObject
			self.moveTouchStartPosition = inputObject.Position
			self.moveTouchFirstChanged = true
	
			if FADE_IN_OUT_BACKGROUND then
				self:DoFadeInBackground()
			end
	
			return Enum.ContextActionResult.Pass
		end
	
		local function inputChanged(inputObject)
			if inputObject == self.moveTouchObject then
				if self.moveTouchFirstChanged then
					self.moveTouchFirstChanged = false
	
					local startPosVec2 = Vector2.new(
						inputObject.Position.X - self.thumbstickFrame.AbsolutePosition.X,
						inputObject.Position.Y - self.thumbstickFrame.AbsolutePosition.Y
					)
					self.startImage.Visible = true
					self.startImage.Position = UDim2.new(0, startPosVec2.X, 0, startPosVec2.Y)
					self.endImage.Visible = true
					self.endImage.Position = self.startImage.Position
	
					self:FadeThumbstick(true)
					self:MoveStick(inputObject.Position)
				end
	
				self.moveTouchLockedIn = true
	
				local direction = Vector2.new(
					inputObject.Position.x - self.moveTouchStartPosition.x,
					inputObject.Position.y - self.moveTouchStartPosition.y
				)
				if math.abs(direction.x) > 0 or math.abs(direction.y) > 0 then
					self:DoMove(direction)
					self:MoveStick(inputObject.Position)
				end
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end
	
		local function inputEnded(inputObject)
			if inputObject == self.moveTouchObject then
				self:OnInputEnded()
				if self.moveTouchLockedIn then
					return Enum.ContextActionResult.Sink
				end
			end
			return Enum.ContextActionResult.Pass
		end
	
		local function handleInput(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				return inputBegan(inputObject)
			elseif inputState == Enum.UserInputState.Change then
				return inputChanged(inputObject)
			elseif inputState == Enum.UserInputState.End then
				return inputEnded(inputObject)
			elseif inputState == Enum.UserInputState.Cancel then
				self:OnInputEnded()
			end
		end
	
		ContextActionService:BindActionAtPriority(
			DYNAMIC_THUMBSTICK_ACTION_NAME,
			handleInput,
			false,
			DYNAMIC_THUMBSTICK_ACTION_PRIORITY,
			Enum.UserInputType.Touch)
	end
	
	function DynamicThumbstick:Create(parentFrame)
		if self.thumbstickFrame then
			self.thumbstickFrame:Destroy()
			self.thumbstickFrame = nil
			if self.onRenderSteppedConn then
				self.onRenderSteppedConn:Disconnect()
				self.onRenderSteppedConn = nil
			end
		end
	
		self.thumbstickSize = 45
		self.thumbstickRingSize = 20
		self.middleSize = 10
		self.middleSpacing = self.middleSize + 4
		self.radiusOfDeadZone = 2
		self.radiusOfMaxSpeed = 20
	
		local screenSize = parentFrame.AbsoluteSize
		local isBigScreen = math.min(screenSize.x, screenSize.y) > 500
		if isBigScreen then
			self.thumbstickSize = self.thumbstickSize * 2
			self.thumbstickRingSize = self.thumbstickRingSize * 2
			self.middleSize = self.middleSize * 2
			self.middleSpacing = self.middleSpacing * 2
			self.radiusOfDeadZone = self.radiusOfDeadZone * 2
			self.radiusOfMaxSpeed = self.radiusOfMaxSpeed * 2
		end
	
		local function layoutThumbstickFrame(portraitMode)
			if portraitMode then
				self.thumbstickFrame.Size = UDim2.new(1, 0, 0.4, 0)
				self.thumbstickFrame.Position = UDim2.new(0, 0, 0.6, 0)
			else
				self.thumbstickFrame.Size = UDim2.new(0.4, 0, 2/3, 0)
				self.thumbstickFrame.Position = UDim2.new(0, 0, 1/3, 0)
			end
		end
	
		self.thumbstickFrame = Instance.new("Frame")
		self.thumbstickFrame.BorderSizePixel = 0
		self.thumbstickFrame.Name = "DynamicThumbstickFrame"
		self.thumbstickFrame.Visible = false
		self.thumbstickFrame.BackgroundTransparency = 1.0
		self.thumbstickFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		self.thumbstickFrame.Active = false
		layoutThumbstickFrame(false)
	
		self.startImage = Instance.new("ImageLabel")
		self.startImage.Name = "ThumbstickStart"
		self.startImage.Visible = true
		self.startImage.BackgroundTransparency = 1
		self.startImage.Image = TOUCH_CONTROLS_SHEET
		self.startImage.ImageRectOffset = Vector2.new(1,1)
		self.startImage.ImageRectSize = Vector2.new(144, 144)
		self.startImage.ImageColor3 = Color3.new(0, 0, 0)
		self.startImage.AnchorPoint = Vector2.new(0.5, 0.5)
		self.startImage.Position = UDim2.new(0, self.thumbstickRingSize * 3.3, 1, -self.thumbstickRingSize  * 2.8)
		self.startImage.Size = UDim2.new(0, self.thumbstickRingSize  * 3.7, 0, self.thumbstickRingSize  * 3.7)
		self.startImage.ZIndex = 10
		self.startImage.Parent = self.thumbstickFrame
	
		self.endImage = Instance.new("ImageLabel")
		self.endImage.Name = "ThumbstickEnd"
		self.endImage.Visible = true
		self.endImage.BackgroundTransparency = 1
		self.endImage.Image = TOUCH_CONTROLS_SHEET
		self.endImage.ImageRectOffset = Vector2.new(1,1)
		self.endImage.ImageRectSize =  Vector2.new(144, 144)
		self.endImage.AnchorPoint = Vector2.new(0.5, 0.5)
		self.endImage.Position = self.startImage.Position
		self.endImage.Size = UDim2.new(0, self.thumbstickSize * 0.8, 0, self.thumbstickSize * 0.8)
		self.endImage.ZIndex = 10
		self.endImage.Parent = self.thumbstickFrame
	
		for i = 1, NUM_MIDDLE_IMAGES do
			self.middleImages[i] = Instance.new("ImageLabel")
			self.middleImages[i].Name = "ThumbstickMiddle"
			self.middleImages[i].Visible = false
			self.middleImages[i].BackgroundTransparency = 1
			self.middleImages[i].Image = TOUCH_CONTROLS_SHEET
			self.middleImages[i].ImageRectOffset = Vector2.new(1,1)
			self.middleImages[i].ImageRectSize = Vector2.new(144, 144)
			self.middleImages[i].ImageTransparency = MIDDLE_TRANSPARENCIES[i]
			self.middleImages[i].AnchorPoint = Vector2.new(0.5, 0.5)
			self.middleImages[i].ZIndex = 9
			self.middleImages[i].Parent = self.thumbstickFrame
		end
	
		local CameraChangedConn = nil
		local function onCurrentCameraChanged()
			if CameraChangedConn then
				CameraChangedConn:Disconnect()
				CameraChangedConn = nil
			end
			local newCamera = workspace.CurrentCamera
			if newCamera then
				local function onViewportSizeChanged()
					local size = newCamera.ViewportSize
					local portraitMode = size.X < size.Y
					layoutThumbstickFrame(portraitMode)
				end
				CameraChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportSizeChanged)
				onViewportSizeChanged()
			end
		end
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
		if workspace.CurrentCamera then
			onCurrentCameraChanged()
		end
	
		self.moveTouchStartPosition = nil
	
		self.startImageFadeTween = nil
		self.endImageFadeTween = nil
		self.middleImageFadeTweens = {}
	
		self.onRenderSteppedConn = RunService.RenderStepped:Connect(function()
			if self.tweenInAlphaStart ~= nil then
				local delta = tick() - self.tweenInAlphaStart
				local fadeInTime = (self.fadeInAndOutHalfDuration * 2 * self.fadeInAndOutBalance)
				self.thumbstickFrame.BackgroundTransparency = 1 - FADE_IN_OUT_MAX_ALPHA*math.min(delta/fadeInTime, 1)
				if delta > fadeInTime then
					self.tweenOutAlphaStart = tick()
					self.tweenInAlphaStart = nil
				end
			elseif self.tweenOutAlphaStart ~= nil then
				local delta = tick() - self.tweenOutAlphaStart
				local fadeOutTime = (self.fadeInAndOutHalfDuration * 2) - (self.fadeInAndOutHalfDuration * 2 * self.fadeInAndOutBalance)
				self.thumbstickFrame.BackgroundTransparency = 1 - FADE_IN_OUT_MAX_ALPHA + FADE_IN_OUT_MAX_ALPHA*math.min(delta/fadeOutTime, 1)
				if delta > fadeOutTime  then
					self.tweenOutAlphaStart = nil
				end
			end
		end)
	
		self.onTouchEndedConn = UserInputService.TouchEnded:connect(function(inputObject)
			if inputObject == self.moveTouchObject then
				self:OnInputEnded()
			end
		end)
	
		GuiService.MenuOpened:connect(function()
			if self.moveTouchObject then
				self:OnInputEnded()
			end
		end)
	
		local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		while not playerGui do
			LocalPlayer.ChildAdded:wait()
			playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		end
	
		local playerGuiChangedConn = nil
		local originalScreenOrientationWasLandscape =	playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or
														playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight
	
		local function longShowBackground()
			self.fadeInAndOutHalfDuration = 2.5
			self.fadeInAndOutBalance = 0.05
			self.tweenInAlphaStart = tick()
		end
	
		playerGuiChangedConn = playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function()
			if (originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait) or
				(not originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation ~= Enum.ScreenOrientation.Portrait) then
	
				playerGuiChangedConn:disconnect()
				longShowBackground()
	
				if originalScreenOrientationWasLandscape then
					self.hasFadedBackgroundInPortrait = true
				else
					self.hasFadedBackgroundInLandscape = true
				end
			end
		end)
	
		self.thumbstickFrame.Parent = parentFrame
	
		if game:IsLoaded() then
			longShowBackground()
		else
			coroutine.wrap(function()
				game.Loaded:Wait()
				longShowBackground()
			end)()
		end
	end
	
	return DynamicThumbstick
end

function _Gamepad()
	local UserInputService = game:GetService("UserInputService")
	local ContextActionService = game:GetService("ContextActionService")
	
	--[[ Constants ]]--
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	local NONE = Enum.UserInputType.None
	local thumbstickDeadzone = 0.2
	
	--[[ The Module ]]--
	local BaseCharacterController = _BaseCharacterController()
	local Gamepad = setmetatable({}, BaseCharacterController)
	Gamepad.__index = Gamepad
	
	function Gamepad.new(CONTROL_ACTION_PRIORITY)
		local self = setmetatable(BaseCharacterController.new(), Gamepad)
	
		self.CONTROL_ACTION_PRIORITY = CONTROL_ACTION_PRIORITY
	
		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0
	
		self.activeGamepad = NONE	-- Enum.UserInputType.Gamepad1, 2, 3...
		self.gamepadConnectedConn = nil
		self.gamepadDisconnectedConn = nil
		return self
	end
	
	function Gamepad:Enable(enable)
		if not UserInputService.GamepadEnabled then
			return false
		end
	
		if enable == self.enabled then
			-- Module is already in the state being requested. True is returned here since the module will be in the state
			-- expected by the code that follows the Enable() call. This makes more sense than returning false to indicate
			-- no action was necessary. False indicates failure to be in requested/expected state.
			return true
		end
	
		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0
		self.moveVector = ZERO_VECTOR3
		self.isJumping = false
	
		if enable then
			self.activeGamepad = self:GetHighestPriorityGamepad()
			if self.activeGamepad ~= NONE then
				self:BindContextActions()
				self:ConnectGamepadConnectionListeners()
			else
				-- No connected gamepads, failure to enable
				return false
			end
		else
			self:UnbindContextActions()
			self:DisconnectGamepadConnectionListeners()
			self.activeGamepad = NONE
		end
	
		self.enabled = enable
		return true
	end
	
	-- This function selects the lowest number gamepad from the currently-connected gamepad
	-- and sets it as the active gamepad
	function Gamepad:GetHighestPriorityGamepad()
		local connectedGamepads = UserInputService:GetConnectedGamepads()
		local bestGamepad = NONE -- Note that this value is higher than all valid gamepad values
		for _, gamepad in pairs(connectedGamepads) do
			if gamepad.Value < bestGamepad.Value then
				bestGamepad = gamepad
			end
		end
		return bestGamepad
	end
	
	function Gamepad:BindContextActions()
	
		if self.activeGamepad == NONE then
			-- There must be an active gamepad to set up bindings
			return false
		end
	
		local handleJumpAction = function(actionName, inputState, inputObject)
			self.isJumping = (inputState == Enum.UserInputState.Begin)
			return Enum.ContextActionResult.Sink
		end
	
		local handleThumbstickInput = function(actionName, inputState, inputObject)
	
			if inputState == Enum.UserInputState.Cancel then
				self.moveVector = ZERO_VECTOR3
				return Enum.ContextActionResult.Sink
			end
	
			if self.activeGamepad ~= inputObject.UserInputType then
				return Enum.ContextActionResult.Pass
			end
			if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
	
			if inputObject.Position.magnitude > thumbstickDeadzone then
				self.moveVector  =  Vector3.new(inputObject.Position.X, 0, -inputObject.Position.Y)
			else
				self.moveVector = ZERO_VECTOR3
			end
			return Enum.ContextActionResult.Sink
		end
	
		ContextActionService:BindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
		ContextActionService:BindActionAtPriority("jumpAction", handleJumpAction, false,
			self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.ButtonA)
		ContextActionService:BindActionAtPriority("moveThumbstick", handleThumbstickInput, false,
			self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.Thumbstick1)
	
		return true
	end
	
	function Gamepad:UnbindContextActions()
		if self.activeGamepad ~= NONE then
			ContextActionService:UnbindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
		end
		ContextActionService:UnbindAction("moveThumbstick")
		ContextActionService:UnbindAction("jumpAction")
	end
	
	function Gamepad:OnNewGamepadConnected()
		-- A new gamepad has been connected.
		local bestGamepad = self:GetHighestPriorityGamepad()
	
		if bestGamepad == self.activeGamepad then
			-- A new gamepad was connected, but our active gamepad is not changing
			return
		end
	
		if bestGamepad == NONE then
			-- There should be an active gamepad when GamepadConnected fires, so this should not
			-- normally be hit. If there is no active gamepad, unbind actions but leave
			-- the module enabled and continue to listen for a new gamepad connection.
			warn("Gamepad:OnNewGamepadConnected found no connected gamepads")
			self:UnbindContextActions()
			return
		end
	
		if self.activeGamepad ~= NONE then
			-- Switching from one active gamepad to another
			self:UnbindContextActions()
		end
	
		self.activeGamepad = bestGamepad
		self:BindContextActions()
	end
	
	function Gamepad:OnCurrentGamepadDisconnected()
		if self.activeGamepad ~= NONE then
			ContextActionService:UnbindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
		end
	
		local bestGamepad = self:GetHighestPriorityGamepad()
	
		if self.activeGamepad ~= NONE and bestGamepad == self.activeGamepad then
			warn("Gamepad:OnCurrentGamepadDisconnected found the supposedly disconnected gamepad in connectedGamepads.")
			self:UnbindContextActions()
			self.activeGamepad = NONE
			return
		end
	
		if bestGamepad == NONE then
			-- No active gamepad, unbinding actions but leaving gamepad connection listener active
			self:UnbindContextActions()
			self.activeGamepad = NONE
		else
			-- Set new gamepad as active and bind to tool activation
			self.activeGamepad = bestGamepad
			ContextActionService:BindActivate(self.activeGamepad, Enum.KeyCode.ButtonR2)
		end
	end
	
	function Gamepad:ConnectGamepadConnectionListeners()
		self.gamepadConnectedConn = UserInputService.GamepadConnected:Connect(function(gamepadEnum)
			self:OnNewGamepadConnected()
		end)
	
		self.gamepadDisconnectedConn = UserInputService.GamepadDisconnected:Connect(function(gamepadEnum)
			if self.activeGamepad == gamepadEnum then
				self:OnCurrentGamepadDisconnected()
			end
		end)
	
	end
	
	function Gamepad:DisconnectGamepadConnectionListeners()
		if self.gamepadConnectedConn then
			self.gamepadConnectedConn:Disconnect()
			self.gamepadConnectedConn = nil
		end
	
		if self.gamepadDisconnectedConn then
			self.gamepadDisconnectedConn:Disconnect()
			self.gamepadDisconnectedConn = nil
		end
	end
	
	return Gamepad
end

function _Keyboard()
	
	--[[ Roblox Services ]]--
	local UserInputService = game:GetService("UserInputService")
	local ContextActionService = game:GetService("ContextActionService")
	
	--[[ Constants ]]--
	local ZERO_VECTOR3 = Vector3.new(0,0,0)
	
	--[[ The Module ]]--
	local BaseCharacterController = _BaseCharacterController()
	local Keyboard = setmetatable({}, BaseCharacterController)
	Keyboard.__index = Keyboard
	
	function Keyboard.new(CONTROL_ACTION_PRIORITY)
		local self = setmetatable(BaseCharacterController.new(), Keyboard)
	
		self.CONTROL_ACTION_PRIORITY = CONTROL_ACTION_PRIORITY
	
		self.textFocusReleasedConn = nil
		self.textFocusGainedConn = nil
		self.windowFocusReleasedConn = nil
	
		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0
	
		self.jumpEnabled = true
	
		return self
	end
	
	function Keyboard:Enable(enable)
		if not UserInputService.KeyboardEnabled then
			return false
		end
	
		if enable == self.enabled then
			-- Module is already in the state being requested. True is returned here since the module will be in the state
			-- expected by the code that follows the Enable() call. This makes more sense than returning false to indicate
			-- no action was necessary. False indicates failure to be in requested/expected state.
			return true
		end
	
		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0
		self.moveVector = ZERO_VECTOR3
		self.jumpRequested = false
		self:UpdateJump()
	
		if enable then
			self:BindContextActions()
			self:ConnectFocusEventListeners()
		else
			self:UnbindContextActions()
			self:DisconnectFocusEventListeners()
		end
	
		self.enabled = enable
		return true
	end
	
	function Keyboard:UpdateMovement(inputState)
		if inputState == Enum.UserInputState.Cancel then
			self.moveVector = ZERO_VECTOR3
		else
			self.moveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
		end
	end
	
	function Keyboard:UpdateJump()
		self.isJumping = self.jumpRequested
	end
	
	function Keyboard:BindContextActions()
	
		-- Note: In the previous version of this code, the movement values were not zeroed-out on UserInputState. Cancel, now they are,
		-- which fixes them from getting stuck on.
		-- We return ContextActionResult.Pass here for legacy reasons.
		-- Many games rely on gameProcessedEvent being false on UserInputService.InputBegan for these control actions.
		local handleMoveForward = function(actionName, inputState, inputObject)
			self.forwardValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
			self:UpdateMovement(inputState)
			return Enum.ContextActionResult.Pass
		end
	
		local handleMoveBackward = function(actionName, inputState, inputObject)
			self.backwardValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
			self:UpdateMovement(inputState)
			return Enum.ContextActionResult.Pass
		end
	
		local handleMoveLeft = function(actionName, inputState, inputObject)
			self.leftValue = (inputState == Enum.UserInputState.Begin) and -1 or 0
			self:UpdateMovement(inputState)
			return Enum.ContextActionResult.Pass
		end
	
		local handleMoveRight = function(actionName, inputState, inputObject)
			self.rightValue = (inputState == Enum.UserInputState.Begin) and 1 or 0
			self:UpdateMovement(inputState)
			return Enum.ContextActionResult.Pass
		end
	
		local handleJumpAction = function(actionName, inputState, inputObject)
			self.jumpRequested = self.jumpEnabled and (inputState == Enum.UserInputState.Begin)
			self:UpdateJump()
			return Enum.ContextActionResult.Pass
		end
	
		-- TODO: Revert to KeyCode bindings so that in the future the abstraction layer from actual keys to
		-- movement direction is done in Lua
		ContextActionService:BindActionAtPriority("moveForwardAction", handleMoveForward, false,
			self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterForward)
		ContextActionService:BindActionAtPriority("moveBackwardAction", handleMoveBackward, false,
			self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterBackward)
		ContextActionService:BindActionAtPriority("moveLeftAction", handleMoveLeft, false,
			self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterLeft)
		ContextActionService:BindActionAtPriority("moveRightAction", handleMoveRight, false,
			self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterRight)
		ContextActionService:BindActionAtPriority("jumpAction", handleJumpAction, false,
			self.CONTROL_ACTION_PRIORITY, Enum.PlayerActions.CharacterJump)
	end
	
	function Keyboard:UnbindContextActions()
		ContextActionService:UnbindAction("moveForwardAction")
		ContextActionService:UnbindAction("moveBackwardAction")
		ContextActionService:UnbindAction("moveLeftAction")
		ContextActionService:UnbindAction("moveRightAction")
		ContextActionService:UnbindAction("jumpAction")
	end
	
	function Keyboard:ConnectFocusEventListeners()
		local function onFocusReleased()
			self.moveVector = ZERO_VECTOR3
			self.forwardValue  = 0
			self.backwardValue = 0
			self.leftValue = 0
			self.rightValue = 0
			self.jumpRequested = false
			self:UpdateJump()
		end
	
		local function onTextFocusGained(textboxFocused)
			self.jumpRequested = false
			self:UpdateJump()
		end
	
		self.textFocusReleasedConn = UserInputService.TextBoxFocusReleased:Connect(onFocusReleased)
		self.textFocusGainedConn = UserInputService.TextBoxFocused:Connect(onTextFocusGained)
		self.windowFocusReleasedConn = UserInputService.WindowFocused:Connect(onFocusReleased)
	end
	
	function Keyboard:DisconnectFocusEventListeners()
		if self.textFocusReleasedCon then
			self.textFocusReleasedCon:Disconnect()
			self.textFocusReleasedCon = nil
		end
		if self.textFocusGainedConn then
			self.textFocusGainedConn:Disconnect()
			self.textFocusGainedConn = nil
		end
		if self.windowFocusReleasedConn then
			self.windowFocusReleasedConn:Disconnect()
			self.windowFocusReleasedConn = nil
		end
	end
	
	return Keyboard
end

function _ControlModule()
	local ControlModule = {}
	ControlModule.__index = ControlModule
	
	--[[ Roblox Services ]]--
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Workspace = game:GetService("Workspace")
	local UserGameSettings = UserSettings():GetService("UserGameSettings")
	
	-- Roblox User Input Control Modules - each returns a new() constructor function used to create controllers as needed
	local Keyboard = _Keyboard()
	local Gamepad = _Gamepad()
	local DynamicThumbstick = _DynamicThumbstick()
	
	local FFlagUserMakeThumbstickDynamic do
		local success, value = pcall(function()
			return UserSettings():IsUserFeatureEnabled("UserMakeThumbstickDynamic")
		end)
		FFlagUserMakeThumbstickDynamic = success and value
	end
	
	local TouchThumbstick = FFlagUserMakeThumbstickDynamic and DynamicThumbstick or _TouchThumbstick()
	
	-- These controllers handle only walk/run movement, jumping is handled by the
	-- TouchJump controller if any of these are active
	local ClickToMove = _ClickToMoveController()
	local TouchJump = _TouchJump()
	
	local VehicleController = _VehicleController()
	
	local CONTROL_ACTION_PRIORITY = Enum.ContextActionPriority.Default.Value
	
	-- Mapping from movement mode and lastInputType enum values to control modules to avoid huge if elseif switching
	local movementEnumToModuleMap = {
		[Enum.TouchMovementMode.DPad] = DynamicThumbstick,
		[Enum.DevTouchMovementMode.DPad] = DynamicThumbstick,
		[Enum.TouchMovementMode.Thumbpad] = DynamicThumbstick,
		[Enum.DevTouchMovementMode.Thumbpad] = DynamicThumbstick,
		[Enum.TouchMovementMode.Thumbstick] = TouchThumbstick,
		[Enum.DevTouchMovementMode.Thumbstick] = TouchThumbstick,
		[Enum.TouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
		[Enum.DevTouchMovementMode.DynamicThumbstick] = DynamicThumbstick,
		[Enum.TouchMovementMode.ClickToMove] = ClickToMove,
		[Enum.DevTouchMovementMode.ClickToMove] = ClickToMove,
	
		-- Current default
		[Enum.TouchMovementMode.Default] = DynamicThumbstick,
	
		[Enum.ComputerMovementMode.Default] = Keyboard,
		[Enum.ComputerMovementMode.KeyboardMouse] = Keyboard,
		[Enum.DevComputerMovementMode.KeyboardMouse] = Keyboard,
		[Enum.DevComputerMovementMode.Scriptable] = nil,
		[Enum.ComputerMovementMode.ClickToMove] = ClickToMove,
		[Enum.DevComputerMovementMode.ClickToMove] = ClickToMove,
	}
	
	-- Keyboard controller is really keyboard and mouse controller
	local computerInputTypeToModuleMap = {
		[Enum.UserInputType.Keyboard] = Keyboard,
		[Enum.UserInputType.MouseButton1] = Keyboard,
		[Enum.UserInputType.MouseButton2] = Keyboard,
		[Enum.UserInputType.MouseButton3] = Keyboard,
		[Enum.UserInputType.MouseWheel] = Keyboard,
		[Enum.UserInputType.MouseMovement] = Keyboard,
		[Enum.UserInputType.Gamepad1] = Gamepad,
		[Enum.UserInputType.Gamepad2] = Gamepad,
		[Enum.UserInputType.Gamepad3] = Gamepad,
		[Enum.UserInputType.Gamepad4] = Gamepad,
	}
	
	local lastInputType
	
	function ControlModule.new()
		local self = setmetatable({},ControlModule)
	
		-- The Modules above are used to construct controller instances as-needed, and this
		-- table is a map from Module to the instance created from it
		self.controllers = {}
	
		self.activeControlModule = nil	-- Used to prevent unnecessarily expensive checks on each input event
		self.activeController = nil
		self.touchJumpController = nil
		self.moveFunction = Players.LocalPlayer.Move
		self.humanoid = nil
		self.lastInputType = Enum.UserInputType.None
	
		-- For Roblox self.vehicleController
		self.humanoidSeatedConn = nil
		self.vehicleController = nil
	
		self.touchControlFrame = nil
	
		self.vehicleController = VehicleController.new(CONTROL_ACTION_PRIORITY)
	
		Players.LocalPlayer.CharacterAdded:Connect(function(char) self:OnCharacterAdded(char) end)
		Players.LocalPlayer.CharacterRemoving:Connect(function(char) self:OnCharacterRemoving(char) end)
		if Players.LocalPlayer.Character then
			self:OnCharacterAdded(Players.LocalPlayer.Character)
		end
	
		RunService:BindToRenderStep("ControlScriptRenderstep", Enum.RenderPriority.Input.Value, function(dt)
			self:OnRenderStepped(dt)
		end)
	
		UserInputService.LastInputTypeChanged:Connect(function(newLastInputType)
			self:OnLastInputTypeChanged(newLastInputType)
		end)
	
	
		UserGameSettings:GetPropertyChangedSignal("TouchMovementMode"):Connect(function()
			self:OnTouchMovementModeChange()
		end)
		Players.LocalPlayer:GetPropertyChangedSignal("DevTouchMovementMode"):Connect(function()
			self:OnTouchMovementModeChange()
		end)
	
		UserGameSettings:GetPropertyChangedSignal("ComputerMovementMode"):Connect(function()
			self:OnComputerMovementModeChange()
		end)
		Players.LocalPlayer:GetPropertyChangedSignal("DevComputerMovementMode"):Connect(function()
			self:OnComputerMovementModeChange()
		end)
	
		--[[ Touch Device UI ]]--
		self.playerGui = nil
		self.touchGui = nil
		self.playerGuiAddedConn = nil
	
		if UserInputService.TouchEnabled then
			self.playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			if self.playerGui then
				self:CreateTouchGuiContainer()
				self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
			else
				self.playerGuiAddedConn = Players.LocalPlayer.ChildAdded:Connect(function(child)
					if child:IsA("PlayerGui") then
						self.playerGui = child
						self:CreateTouchGuiContainer()
						self.playerGuiAddedConn:Disconnect()
						self.playerGuiAddedConn = nil
						self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
					end
				end)
			end
		else
			self:OnLastInputTypeChanged(UserInputService:GetLastInputType())
		end
	
		return self
	end
	
	-- Convenience function so that calling code does not have to first get the activeController
	-- and then call GetMoveVector on it. When there is no active controller, this function returns
	-- nil so that this case can be distinguished from no current movement (which returns zero vector).
	function ControlModule:GetMoveVector()
		if self.activeController then
			return self.activeController:GetMoveVector()
		end
		return Vector3.new(0,0,0)
	end
	
	function ControlModule:GetActiveController()
		return self.activeController
	end
	
	function ControlModule:EnableActiveControlModule()
		if self.activeControlModule == ClickToMove then
			-- For ClickToMove, when it is the player's choice, we also enable the full keyboard controls.
			-- When the developer is forcing click to move, the most keyboard controls (WASD) are not available, only jump.
			self.activeController:Enable(
				true,
				Players.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice,
				self.touchJumpController
			)
		elseif self.touchControlFrame then
			self.activeController:Enable(true, self.touchControlFrame)
		else
			self.activeController:Enable(true)
		end
	end
	
	function ControlModule:Enable(enable)
		if not self.activeController then
			return
		end
	
		if enable == nil then
			enable = true
		end
		if enable then
			self:EnableActiveControlModule()
		else
			self:Disable()
		end
	end
	
	-- For those who prefer distinct functions
	function ControlModule:Disable()
		if self.activeController then
			self.activeController:Enable(false)
	
			if self.moveFunction then
				self.moveFunction(Players.LocalPlayer, Vector3.new(0,0,0), true)
			end
		end
	end
	
	
	-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
	function ControlModule:SelectComputerMovementModule()
		if not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled) then
			return nil, false
		end
	
		local computerModule
		local DevMovementMode = Players.LocalPlayer.DevComputerMovementMode
	
		if DevMovementMode == Enum.DevComputerMovementMode.UserChoice then
			computerModule = computerInputTypeToModuleMap[lastInputType]
			if UserGameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove and computerModule == Keyboard then
				-- User has ClickToMove set in Settings, prefer ClickToMove controller for keyboard and mouse lastInputTypes
				computerModule = ClickToMove
			end
		else
			-- Developer has selected a mode that must be used.
			computerModule = movementEnumToModuleMap[DevMovementMode]
	
			-- computerModule is expected to be nil here only when developer has selected Scriptable
			if (not computerModule) and DevMovementMode ~= Enum.DevComputerMovementMode.Scriptable then
				warn("No character control module is associated with DevComputerMovementMode ", DevMovementMode)
			end
		end
	
		if computerModule then
			return computerModule, true
		elseif DevMovementMode == Enum.DevComputerMovementMode.Scriptable then
			-- Special case where nil is returned and we actually want to set self.activeController to nil for Scriptable
			return nil, true
		else
			-- This case is for when computerModule is nil because of an error and no suitable control module could
			-- be found.
			return nil, false
		end
	end
	
	-- Choose current Touch control module based on settings (user, dev)
	-- Returns module (possibly nil) and success code to differentiate returning nil due to error vs Scriptable
	function ControlModule:SelectTouchModule()
		if not UserInputService.TouchEnabled then
			return nil, false
		end
		local touchModule
		local DevMovementMode = Players.LocalPlayer.DevTouchMovementMode
		if DevMovementMode == Enum.DevTouchMovementMode.UserChoice then
			touchModule = movementEnumToModuleMap[UserGameSettings.TouchMovementMode]
		elseif DevMovementMode == Enum.DevTouchMovementMode.Scriptable then
			return nil, true
		else
			touchModule = movementEnumToModuleMap[DevMovementMode]
		end
		return touchModule, true
	end
	
	local function calculateRawMoveVector(humanoid, cameraRelativeMoveVector)
		local camera = Workspace.CurrentCamera
		if not camera then
			return cameraRelativeMoveVector
		end
	
		if humanoid:GetState() == Enum.HumanoidStateType.Swimming then
			return camera.CFrame:VectorToWorldSpace(cameraRelativeMoveVector)
		end
	
		local c, s
		local _, _, _, R00, R01, R02, _, _, R12, _, _, R22 = camera.CFrame:GetComponents()
		if R12 < 1 and R12 > -1 then
			-- X and Z components from back vector.
			c = R22
			s = R02
		else
			-- In this case the camera is looking straight up or straight down.
			-- Use X components from right and up vectors.
			c = R00
			s = -R01*math.sign(R12)
		end
		local norm = math.sqrt(c*c + s*s)
		return Vector3.new(
			(c*cameraRelativeMoveVector.x + s*cameraRelativeMoveVector.z)/norm,
			0,
			(c*cameraRelativeMoveVector.z - s*cameraRelativeMoveVector.x)/norm
		)
	end
	
	function ControlModule:OnRenderStepped(dt)
		if self.activeController and self.activeController.enabled and self.humanoid then
			-- Give the controller a chance to adjust its state
			self.activeController:OnRenderStepped(dt)
	
			-- Now retrieve info from the controller
			local moveVector = self.activeController:GetMoveVector()
			local cameraRelative = self.activeController:IsMoveVectorCameraRelative()
	
			local clickToMoveController = self:GetClickToMoveController()
			if self.activeController ~= clickToMoveController then
				if moveVector.magnitude > 0 then
					-- Clean up any developer started MoveTo path
					clickToMoveController:CleanupPath()
				else
					-- Get move vector for developer started MoveTo
					clickToMoveController:OnRenderStepped(dt)
					moveVector = clickToMoveController:GetMoveVector()
					cameraRelative = clickToMoveController:IsMoveVectorCameraRelative()
				end
			end
	
			-- Are we driving a vehicle ?
			local vehicleConsumedInput = false
			if self.vehicleController then
				moveVector, vehicleConsumedInput = self.vehicleController:Update(moveVector, cameraRelative, self.activeControlModule==Gamepad)
			end
	
			-- If not, move the player
			-- Verification of vehicleConsumedInput is commented out to preserve legacy behavior,
			-- in case some game relies on Humanoid.MoveDirection still being set while in a VehicleSeat
			--if not vehicleConsumedInput then
				if cameraRelative then
					moveVector = calculateRawMoveVector(self.humanoid, moveVector)
				end
				self.moveFunction(Players.LocalPlayer, moveVector, false)
			--end
	
			-- And make them jump if needed
			self.humanoid.Jump = self.activeController:GetIsJumping() or (self.touchJumpController and self.touchJumpController:GetIsJumping())
		end
	end
	
	function ControlModule:OnHumanoidSeated(active, currentSeatPart)
		if active then
			if currentSeatPart and currentSeatPart:IsA("VehicleSeat") then
				if not self.vehicleController then
					self.vehicleController = self.vehicleController.new(CONTROL_ACTION_PRIORITY)
				end
				self.vehicleController:Enable(true, currentSeatPart)
			end
		else
			if self.vehicleController then
				self.vehicleController:Enable(false, currentSeatPart)
			end
		end
	end
	
	function ControlModule:OnCharacterAdded(char)
		self.humanoid = char:FindFirstChildOfClass("Humanoid")
		while not self.humanoid do
			char.ChildAdded:wait()
			self.humanoid = char:FindFirstChildOfClass("Humanoid")
		end
	
		if self.touchGui then
			self.touchGui.Enabled = true
		end
	
		if self.humanoidSeatedConn then
			self.humanoidSeatedConn:Disconnect()
			self.humanoidSeatedConn = nil
		end
		self.humanoidSeatedConn = self.humanoid.Seated:Connect(function(active, currentSeatPart)
			self:OnHumanoidSeated(active, currentSeatPart)
		end)
	end
	
	function ControlModule:OnCharacterRemoving(char)
		self.humanoid = nil
	
		if self.touchGui then
			self.touchGui.Enabled = false
		end
	end
	
	-- Helper function to lazily instantiate a controller if it does not yet exist,
	-- disable the active controller if it is different from the on being switched to,
	-- and then enable the requested controller. The argument to this function must be
	-- a reference to one of the control modules, i.e. Keyboard, Gamepad, etc.
	function ControlModule:SwitchToController(controlModule)
		if not controlModule then
			if self.activeController then
				self.activeController:Enable(false)
			end
			self.activeController = nil
			self.activeControlModule = nil
		else
			if not self.controllers[controlModule] then
				self.controllers[controlModule] = controlModule.new(CONTROL_ACTION_PRIORITY)
			end
	
			if self.activeController ~= self.controllers[controlModule] then
				if self.activeController then
					self.activeController:Enable(false)
				end
				self.activeController = self.controllers[controlModule]
				self.activeControlModule = controlModule -- Only used to check if controller switch is necessary
	
				if self.touchControlFrame and (self.activeControlModule == ClickToMove
							or self.activeControlModule == TouchThumbstick
							or self.activeControlModule == DynamicThumbstick) then
					if not self.controllers[TouchJump] then
						self.controllers[TouchJump] = TouchJump.new()
					end
					self.touchJumpController = self.controllers[TouchJump]
					self.touchJumpController:Enable(true, self.touchControlFrame)
				else
					if self.touchJumpController then
						self.touchJumpController:Enable(false)
					end
				end
	
				self:EnableActiveControlModule()
			end
		end
	end
	
	function ControlModule:OnLastInputTypeChanged(newLastInputType)
		if lastInputType == newLastInputType then
			warn("LastInputType Change listener called with current type.")
		end
		lastInputType = newLastInputType
	
		if lastInputType == Enum.UserInputType.Touch then
			-- TODO: Check if touch module already active
			local touchModule, success = self:SelectTouchModule()
			if success then
				while not self.touchControlFrame do
					wait()
				end
				self:SwitchToController(touchModule)
			end
		elseif computerInputTypeToModuleMap[lastInputType] ~= nil then
			local computerModule = self:SelectComputerMovementModule()
			if computerModule then
				self:SwitchToController(computerModule)
			end
		end
	end
	
	-- Called when any relevant values of GameSettings or LocalPlayer change, forcing re-evalulation of
	-- current control scheme
	function ControlModule:OnComputerMovementModeChange()
		local controlModule, success =  self:SelectComputerMovementModule()
		if success then
			self:SwitchToController(controlModule)
		end
	end
	
	function ControlModule:OnTouchMovementModeChange()
		local touchModule, success = self:SelectTouchModule()
		if success then
			while not self.touchControlFrame do
				wait()
			end
			self:SwitchToController(touchModule)
		end
	end
	
	function ControlModule:CreateTouchGuiContainer()
		if self.touchGui then self.touchGui:Destroy() end
	
		-- Container for all touch device guis
		self.touchGui = Instance.new("ScreenGui")
		self.touchGui.Name = "TouchGui"
		self.touchGui.ResetOnSpawn = false
		self.touchGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		self.touchGui.Enabled = self.humanoid ~= nil
	
		self.touchControlFrame = Instance.new("Frame")
		self.touchControlFrame.Name = "TouchControlFrame"
		self.touchControlFrame.Size = UDim2.new(1, 0, 1, 0)
		self.touchControlFrame.BackgroundTransparency = 1
		self.touchControlFrame.Parent = self.touchGui
	
		self.touchGui.Parent = self.playerGui
	end
	
	function ControlModule:GetClickToMoveController()
		if not self.controllers[ClickToMove] then
			self.controllers[ClickToMove] = ClickToMove.new(CONTROL_ACTION_PRIORITY)
		end
		return self.controllers[ClickToMove]
	end
	
	function ControlModule:IsJumping()
		if self.activeController then
			return self.activeController:GetIsJumping() or (self.touchJumpController and self.touchJumpController:GetIsJumping())
		end
		return false
	end
	
	return ControlModule.new()
end

function _PlayerModule()
	local PlayerModule = {}
	PlayerModule.__index = PlayerModule
	function PlayerModule.new()
		local self = setmetatable({},PlayerModule)
		self.cameras = _CameraModule()
		self.controls = _ControlModule()
		return self
	end
	function PlayerModule:GetCameras()
		return self.cameras
	end
	function PlayerModule:GetControls()
		return self.controls
	end
	function PlayerModule:GetClickToMoveController()
		return self.controls:GetClickToMoveController()
	end
	return PlayerModule.new()
end

function _sounds()
	
	local SetState = Instance.new("BindableEvent",script)
	
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	
	local SOUND_DATA = {
		Climbing = {
			SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3",
			Looped = true,
		},
		Died = {
			SoundId = "rbxasset://sounds/uuhhh.mp3",
		},
		FreeFalling = {
			SoundId = "rbxasset://sounds/action_falling.mp3",
			Looped = true,
		},
		GettingUp = {
			SoundId = "rbxasset://sounds/action_get_up.mp3",
		},
		Jumping = {
			SoundId = "rbxasset://sounds/action_jump.mp3",
		},
		Landing = {
			SoundId = "rbxasset://sounds/action_jump_land.mp3",
		},
		Running = {
			SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3",
			Looped = true,
			Pitch = 1.85,
		},
		Splash = {
			SoundId = "rbxasset://sounds/impact_water.mp3",
		},
		Swimming = {
			SoundId = "rbxasset://sounds/action_swim.mp3",
			Looped = true,
			Pitch = 1.6,
		},
	}
	
	 -- wait for the first of the passed signals to fire
	local function waitForFirst(...)
		local shunt = Instance.new("BindableEvent")
		local slots = {...}
	
		local function fire(...)
			for i = 1, #slots do
				slots[i]:Disconnect()
			end
	
			return shunt:Fire(...)
		end
	
		for i = 1, #slots do
			slots[i] = slots[i]:Connect(fire)
		end
	
		return shunt.Event:Wait()
	end
	
	-- map a value from one range to another
	local function map(x, inMin, inMax, outMin, outMax)
		return (x - inMin)*(outMax - outMin)/(inMax - inMin) + outMin
	end
	
	local function playSound(sound)
		sound.TimePosition = 0
		sound.Playing = true
	end
	
	local function stopSound(sound)
		sound.Playing = false
		sound.TimePosition = 0
	end
	
	local function shallowCopy(t)
		local out = {}
		for k, v in pairs(t) do
			out[k] = v
		end
		return out
	end
	
	local function initializeSoundSystem(player, humanoid, rootPart)
		local sounds = {}
	
		-- initialize sounds
		for name, props in pairs(SOUND_DATA) do
			local sound = Instance.new("Sound")
			sound.Name = name
	
			-- set default values
			sound.Archivable = false
			sound.EmitterSize = 5
			sound.MaxDistance = 150
			sound.Volume = 0.65
	
			for propName, propValue in pairs(props) do
				sound[propName] = propValue
			end
	
			sound.Parent = rootPart
			sounds[name] = sound
		end
	
		local playingLoopedSounds = {}
	
		local function stopPlayingLoopedSounds(except)
			for sound in pairs(shallowCopy(playingLoopedSounds)) do
				if sound ~= except then
					sound.Playing = false
					playingLoopedSounds[sound] = nil
				end
			end
		end
	
		-- state transition callbacks
		local stateTransitions = {
			[Enum.HumanoidStateType.FallingDown] = function()
				stopPlayingLoopedSounds()
			end,
	
			[Enum.HumanoidStateType.GettingUp] = function()
				stopPlayingLoopedSounds()
				playSound(sounds.GettingUp)
			end,
	
			[Enum.HumanoidStateType.Jumping] = function()
				stopPlayingLoopedSounds()
				playSound(sounds.Jumping)
			end,
	
			[Enum.HumanoidStateType.Swimming] = function()
				local verticalSpeed = math.abs(rootPart.Velocity.Y)
				if verticalSpeed > 0.1 then
					sounds.Splash.Volume = math.clamp(map(verticalSpeed, 100, 350, 0.28, 1), 0, 1)
					playSound(sounds.Splash)
				end
				stopPlayingLoopedSounds(sounds.Swimming)
				sounds.Swimming.Playing = true
				playingLoopedSounds[sounds.Swimming] = true
			end,
	
			[Enum.HumanoidStateType.Freefall] = function()
				sounds.FreeFalling.Volume = 0
				stopPlayingLoopedSounds(sounds.FreeFalling)
				playingLoopedSounds[sounds.FreeFalling] = true
			end,
	
			[Enum.HumanoidStateType.Landed] = function()
				stopPlayingLoopedSounds()
				local verticalSpeed = math.abs(rootPart.Velocity.Y)
				if verticalSpeed > 75 then
					sounds.Landing.Volume = math.clamp(map(verticalSpeed, 50, 100, 0, 1), 0, 1)
					playSound(sounds.Landing)
				end
			end,
	
			[Enum.HumanoidStateType.Running] = function()
				stopPlayingLoopedSounds(sounds.Running)
				sounds.Running.Playing = true
				playingLoopedSounds[sounds.Running] = true
			end,
	
			[Enum.HumanoidStateType.Climbing] = function()
				local sound = sounds.Climbing
				if math.abs(rootPart.Velocity.Y) > 0.1 then
					sound.Playing = true
					stopPlayingLoopedSounds(sound)
				else
					stopPlayingLoopedSounds()
				end
				playingLoopedSounds[sound] = true
			end,
	
			[Enum.HumanoidStateType.Seated] = function()
				stopPlayingLoopedSounds()
			end,
	
			[Enum.HumanoidStateType.Dead] = function()
				stopPlayingLoopedSounds()
				playSound(sounds.Died)
			end,
		}
	
		-- updaters for looped sounds
		local loopedSoundUpdaters = {
			[sounds.Climbing] = function(dt, sound, vel)
				sound.Playing = vel.Magnitude > 0.1
			end,
	
			[sounds.FreeFalling] = function(dt, sound, vel)
				if vel.Magnitude > 75 then
					sound.Volume = math.clamp(sound.Volume + 0.9*dt, 0, 1)
				else
					sound.Volume = 0
				end
			end,
	
			[sounds.Running] = function(dt, sound, vel)
				sound.Playing = vel.Magnitude > 0.5 and humanoid.MoveDirection.Magnitude > 0.5
			end,
		}
	
		-- state substitutions to avoid duplicating entries in the state table
		local stateRemap = {
			[Enum.HumanoidStateType.RunningNoPhysics] = Enum.HumanoidStateType.Running,
		}
	
		local activeState = stateRemap[humanoid:GetState()] or humanoid:GetState()
		local activeConnections = {}
	
		local stateChangedConn = humanoid.StateChanged:Connect(function(_, state)
			state = stateRemap[state] or state
	
			if state ~= activeState then
				local transitionFunc = stateTransitions[state]
	
				if transitionFunc then
					transitionFunc()
				end
	
				activeState = state
			end
		end)
		
		local customStateChangedConn = SetState.Event:Connect(function(state)
			state = stateRemap[state] or state
	
			if state ~= activeState then
				local transitionFunc = stateTransitions[state]
	
				if transitionFunc then
					transitionFunc()
				end
	
				activeState = state
			end
		end)
	
		local steppedConn = RunService.Stepped:Connect(function(_, worldDt)
			-- update looped sounds on stepped
			for sound in pairs(playingLoopedSounds) do
				local updater = loopedSoundUpdaters[sound]
	
				if updater then
					updater(worldDt, sound, rootPart.Velocity)
				end
			end
		end)
	
		local humanoidAncestryChangedConn
		local rootPartAncestryChangedConn
		local characterAddedConn
	
		local function terminate()
			stateChangedConn:Disconnect()
			customStateChangedConn:Disconnect()
			steppedConn:Disconnect()
			humanoidAncestryChangedConn:Disconnect()
			rootPartAncestryChangedConn:Disconnect()
			characterAddedConn:Disconnect()
		end
	
		humanoidAncestryChangedConn = humanoid.AncestryChanged:Connect(function(_, parent)
			if not parent then
				terminate()
			end
		end)
	
		rootPartAncestryChangedConn = rootPart.AncestryChanged:Connect(function(_, parent)
			if not parent then
				terminate()
			end
		end)
	
		characterAddedConn = player.CharacterAdded:Connect(terminate)
	end
	
	local function playerAdded(player)
		local function characterAdded(character)
			-- Avoiding memory leaks in the face of Character/Humanoid/RootPart lifetime has a few complications:
			-- * character deparenting is a Remove instead of a Destroy, so signals are not cleaned up automatically.
			-- ** must use a waitForFirst on everything and listen for hierarchy changes.
			-- * the character might not be in the dm by the time CharacterAdded fires
			-- ** constantly check consistency with player.Character and abort if CharacterAdded is fired again
			-- * Humanoid may not exist immediately, and by the time it's inserted the character might be deparented.
			-- * RootPart probably won't exist immediately.
			-- ** by the time RootPart is inserted and Humanoid.RootPart is set, the character or the humanoid might be deparented.
	
			if not character.Parent then
				waitForFirst(character.AncestryChanged, player.CharacterAdded)
			end
	
			if player.Character ~= character or not character.Parent then
				return
			end
	
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			while character:IsDescendantOf(game) and not humanoid do
				waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
				humanoid = character:FindFirstChildOfClass("Humanoid")
			end
	
			if player.Character ~= character or not character:IsDescendantOf(game) then
				return
			end
	
			-- must rely on HumanoidRootPart naming because Humanoid.RootPart does not fire changed signals
			local rootPart = character:FindFirstChild("HumanoidRootPart")
			while character:IsDescendantOf(game) and not rootPart do
				waitForFirst(character.ChildAdded, character.AncestryChanged, humanoid.AncestryChanged, player.CharacterAdded)
				rootPart = character:FindFirstChild("HumanoidRootPart")
			end
	
			if rootPart and humanoid:IsDescendantOf(game) and character:IsDescendantOf(game) and player.Character == character then
				initializeSoundSystem(player, humanoid, rootPart)
			end
		end
	
		if player.Character then
			characterAdded(player.Character)
		end
		player.CharacterAdded:Connect(characterAdded)
	end
	
	Players.PlayerAdded:Connect(playerAdded)
	for _, player in ipairs(Players:GetPlayers()) do
		playerAdded(player)
	end
	return SetState
end

function _StateTracker()
	local EPSILON = 0.1
	
	local SPEED = {
		["onRunning"] = true,
		["onClimbing"] = true 
	}
	
	local INAIR = {
		["onFreeFall"] = true,
		["onJumping"] = true
	}
	
	local STATEMAP = {
		["onRunning"] = Enum.HumanoidStateType.Running,
		["onJumping"] = Enum.HumanoidStateType.Jumping,
		["onFreeFall"] = Enum.HumanoidStateType.Freefall
	}
	
	local StateTracker = {}
	StateTracker.__index = StateTracker
	
	function StateTracker.new(humanoid, soundState)
		local self = setmetatable({}, StateTracker)
		
		self.Humanoid = humanoid
		self.HRP = humanoid.RootPart
		
		self.Speed = 0
		self.State = "onRunning"
		self.Jumped = false
		self.JumpTick = tick()
		
		self.SoundState = soundState
		
		self._ChangedEvent = Instance.new("BindableEvent")
		self.Changed = self._ChangedEvent.Event
		
		return self
	end
	
	function StateTracker:Destroy()
		self._ChangedEvent:Destroy()
	end
	
	function StateTracker:RequestedJump()
		self.Jumped = true
		self.JumpTick = tick()
	end
	
	function StateTracker:OnStep(gravityUp, grounded, isMoving)
		local cVelocity = self.HRP.Velocity
		local gVelocity = cVelocity:Dot(gravityUp)
		
		local oldState, oldSpeed = self.State, self.Speed
		
		local newState
		local newSpeed = cVelocity.Magnitude
	
		if (not grounded) then
			if (gVelocity > 0) then
				if (self.Jumped) then
					newState = "onJumping"
				else
					newState = "onFreeFall"
				end
			else
				if (self.Jumped) then
					self.Jumped = false
				end
				newState = "onFreeFall"
			end
		else
			if (self.Jumped and tick() - self.JumpTick > 0.1) then
				self.Jumped = false
			end
			newSpeed = (cVelocity - gVelocity*gravityUp).Magnitude
			newState = "onRunning"
		end
		
		newSpeed = isMoving and newSpeed or 0
		
		if (oldState ~= newState or (SPEED[newState] and math.abs(oldSpeed - newSpeed) > EPSILON)) then
			self.State = newState
			self.Speed = newSpeed
			self.SoundState:Fire(STATEMAP[newState])
			self._ChangedEvent:Fire(self.State, self.Speed)
		end
	end
	
	return StateTracker
end
function _InitObjects()
	local model = workspace:FindFirstChild("objects") or game:GetObjects("rbxassetid://5045408489")[1]
	local SPHERE = model:WaitForChild("Sphere")
	local FLOOR = model:WaitForChild("Floor")
	local VFORCE = model:WaitForChild("VectorForce")
	local BGYRO = model:WaitForChild("BodyGyro")
	local function initObjects(self)
		local hrp = self.HRP
		local humanoid = self.Humanoid
		local sphere = SPHERE:Clone()
		sphere.Parent = self.Character
		local floor = FLOOR:Clone()
		floor.Parent = self.Character
		local isR15 = (humanoid.RigType == Enum.HumanoidRigType.R15)
		local height = isR15 and (humanoid.HipHeight + 0.05) or 2
		local weld = Instance.new("Weld")
		weld.C0 = CFrame.new(0, -height, 0.1)
		weld.Part0 = hrp
		weld.Part1 = sphere
		weld.Parent = sphere
		local weld2 = Instance.new("Weld")
		weld2.C0 = CFrame.new(0, -(height + 1.5), 0)
		weld2.Part0 = hrp
		weld2.Part1 = floor
		weld2.Parent = floor
		local gyro = BGYRO:Clone()
		gyro.CFrame = hrp.CFrame
		gyro.Parent = hrp
		local vForce = VFORCE:Clone()
		vForce.Attachment0 = isR15 and hrp:WaitForChild("RootRigAttachment") or hrp:WaitForChild("RootAttachment")
		vForce.Parent = hrp
		return sphere, gyro, vForce, floor
	end
	return initObjects
end
local plr = game.Players.LocalPlayer
local ms = plr:GetMouse()
local char
plr.CharacterAdded:Connect(function(c)
	char = c
end)
function _R6()
	function r6()
	local Figure = char
	local Torso = Figure:WaitForChild("Torso")
	local RightShoulder = Torso:WaitForChild("Right Shoulder")
	local LeftShoulder = Torso:WaitForChild("Left Shoulder")
	local RightHip = Torso:WaitForChild("Right Hip")
	local LeftHip = Torso:WaitForChild("Left Hip")
	local Neck = Torso:WaitForChild("Neck")
	local Humanoid = Figure:WaitForChild("Humanoid")
	local pose = "Standing"
	local currentAnim = ""
	local currentAnimInstance = nil
	local currentAnimTrack = nil
	local currentAnimKeyframeHandler = nil
	local currentAnimSpeed = 1.0
	local animTable = {}
	local animNames = { 
		idle = 	{	
					{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
					{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
				},
		walk = 	{ 	
					{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 } 
				}, 
		run = 	{
					{ id = "run.xml", weight = 10 } 
				}, 
		jump = 	{
					{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 } 
				}, 
		fall = 	{
					{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 } 
				}, 
		climb = {
					{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 } 
				}, 
		sit = 	{
					{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
				},	
		toolnone = {
					{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
				},
		toolslash = {
					{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
	--				{ id = "slash.xml", weight = 10 } 
				},
		toollunge = {
					{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
				},
		wave = {
					{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
				},
		point = {
					{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
				},
		dance1 = {
					{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
				},
		dance2 = {
					{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
				},
		dance3 = {
					{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
				},
		laugh = {
					{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
				},
		cheer = {
					{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
				},
	}
	local dances = {"dance1", "dance2", "dance3"}
	-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
	local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}
	function configureAnimationSet(name, fileList)
		if (animTable[name] ~= nil) then
			for _, connection in pairs(animTable[name].connections) do
				connection:disconnect()
			end
		end
		animTable[name] = {}
		animTable[name].count = 0
		animTable[name].totalWeight = 0	
		animTable[name].connections = {}
		-- check for config values
		local config = script:FindFirstChild(name)
		if (config ~= nil) then
	--		print("Loading anims " .. name)
			table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
			table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
			local idx = 1
			for _, childPart in pairs(config:GetChildren()) do
				if (childPart:IsA("Animation")) then
					table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
					animTable[name][idx] = {}
					animTable[name][idx].anim = childPart
					local weightObject = childPart:FindFirstChild("Weight")
					if (weightObject == nil) then
						animTable[name][idx].weight = 1
					else
						animTable[name][idx].weight = weightObject.Value
					end
					animTable[name].count = animTable[name].count + 1
					animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
		--			print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
					idx = idx + 1
				end
			end
		end
		-- fallback to defaults
		if (animTable[name].count <= 0) then
			for idx, anim in pairs(fileList) do
				animTable[name][idx] = {}
				animTable[name][idx].anim = Instance.new("Animation")
				animTable[name][idx].anim.Name = name
				animTable[name][idx].anim.AnimationId = anim.id
				animTable[name][idx].weight = anim.weight
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
	--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
			end
		end
	end
	-- Setup animation objects
	function scriptChildModified(child)
		local fileList = animNames[child.Name]
		if (fileList ~= nil) then
			configureAnimationSet(child.Name, fileList)
		end	
	end
	
	script.ChildAdded:connect(scriptChildModified)
	script.ChildRemoved:connect(scriptChildModified)
	
	
	for name, fileList in pairs(animNames) do 
		configureAnimationSet(name, fileList)
	end	
	
	-- ANIMATION
	
	-- declarations
	local toolAnim = "None"
	local toolAnimTime = 0
	
	local jumpAnimTime = 0
	local jumpAnimDuration = 0.3
	
	local toolTransitionTime = 0.1
	local fallTransitionTime = 0.3
	local jumpMaxLimbVelocity = 0.75
	
	-- functions
	
	function stopAllAnimations()
		local oldAnim = currentAnim
	
		-- return to idle if finishing an emote
		if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
			oldAnim = "idle"
		end
	
		currentAnim = ""
		currentAnimInstance = nil
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
	
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop()
			currentAnimTrack:Destroy()
			currentAnimTrack = nil
		end
		return oldAnim
	end
	
	function setAnimationSpeed(speed)
		if speed ~= currentAnimSpeed then
			currentAnimSpeed = speed
			currentAnimTrack:AdjustSpeed(currentAnimSpeed)
		end
	end
	
	function keyFrameReachedFunc(frameName)
		if (frameName == "End") then
	
			local repeatAnim = currentAnim
			-- return to idle if finishing an emote
			if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
				repeatAnim = "idle"
			end
			
			local animSpeed = currentAnimSpeed
			playAnimation(repeatAnim, 0.0, Humanoid)
			setAnimationSpeed(animSpeed)
		end
	end
	
	-- Preload animations
	function playAnimation(animName, transitionTime, humanoid) 
			
		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
	--		print(animName .. " " .. idx .. " [" .. origRoll .. "]")
		local anim = animTable[animName][idx].anim
	
		-- switch animation		
		if (anim ~= currentAnimInstance) then
			
			if (currentAnimTrack ~= nil) then
				currentAnimTrack:Stop(transitionTime)
				currentAnimTrack:Destroy()
			end
	
			currentAnimSpeed = 1.0
		
			-- load it to the humanoid; get AnimationTrack
			currentAnimTrack = humanoid:LoadAnimation(anim)
			currentAnimTrack.Priority = Enum.AnimationPriority.Core
			 
			-- play the animation
			currentAnimTrack:Play(transitionTime)
			currentAnim = animName
			currentAnimInstance = anim
	
			-- set up keyframe name triggers
			if (currentAnimKeyframeHandler ~= nil) then
				currentAnimKeyframeHandler:disconnect()
			end
			currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
			
		end
	
	end
	
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	
	local toolAnimName = ""
	local toolAnimTrack = nil
	local toolAnimInstance = nil
	local currentToolAnimKeyframeHandler = nil
	
	function toolKeyFrameReachedFunc(frameName)
		if (frameName == "End") then
	--		print("Keyframe : ".. frameName)	
			playToolAnimation(toolAnimName, 0.0, Humanoid)
		end
	end
	
	
	function playToolAnimation(animName, transitionTime, humanoid, priority)	 
			
			local roll = math.random(1, animTable[animName].totalWeight) 
			local origRoll = roll
			local idx = 1
			while (roll > animTable[animName][idx].weight) do
				roll = roll - animTable[animName][idx].weight
				idx = idx + 1
			end
	--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
			local anim = animTable[animName][idx].anim
	
			if (toolAnimInstance ~= anim) then
				
				if (toolAnimTrack ~= nil) then
					toolAnimTrack:Stop()
					toolAnimTrack:Destroy()
					transitionTime = 0
				end
						
				-- load it to the humanoid; get AnimationTrack
				toolAnimTrack = humanoid:LoadAnimation(anim)
				if priority then
					toolAnimTrack.Priority = priority
				end
				 
				-- play the animation
				toolAnimTrack:Play(transitionTime)
				toolAnimName = animName
				toolAnimInstance = anim
	
				currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
			end
	end
	
	function stopToolAnimations()
		local oldAnim = toolAnimName
	
		if (currentToolAnimKeyframeHandler ~= nil) then
			currentToolAnimKeyframeHandler:disconnect()
		end
	
		toolAnimName = ""
		toolAnimInstance = nil
		if (toolAnimTrack ~= nil) then
			toolAnimTrack:Stop()
			toolAnimTrack:Destroy()
			toolAnimTrack = nil
		end
	
	
		return oldAnim
	end
	
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	
	
	function onRunning(speed)
		if speed > 0.01 then
			playAnimation("walk", 0.1, Humanoid)
			if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
				setAnimationSpeed(speed / 14.5)
			end
			pose = "Running"
		else
			if emoteNames[currentAnim] == nil then
				playAnimation("idle", 0.1, Humanoid)
				pose = "Standing"
			end
		end
	end
	
	function onDied()
		pose = "Dead"
	end
	
	function onJumping()
		playAnimation("jump", 0.1, Humanoid)
		jumpAnimTime = jumpAnimDuration
		pose = "Jumping"
	end
	
	function onClimbing(speed)
		playAnimation("climb", 0.1, Humanoid)
		setAnimationSpeed(speed / 12.0)
		pose = "Climbing"
	end
	
	function onGettingUp()
		pose = "GettingUp"
	end
	
	function onFreeFall()
		if (jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		end
		pose = "FreeFall"
	end
	
	function onFallingDown()
		pose = "FallingDown"
	end
	
	function onSeated()
		pose = "Seated"
	end
	
	function onPlatformStanding()
		pose = "PlatformStanding"
	end
	
	function onSwimming(speed)
		if speed > 0 then
			pose = "Running"
		else
			pose = "Standing"
		end
	end
	
	function getTool()	
		for _, kid in ipairs(Figure:GetChildren()) do
			if kid.className == "Tool" then return kid end
		end
		return nil
	end
	
	function getToolAnim(tool)
		for _, c in ipairs(tool:GetChildren()) do
			if c.Name == "toolanim" and c.className == "StringValue" then
				return c
			end
		end
		return nil
	end
	
	function animateTool()
		
		if (toolAnim == "None") then
			playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
			return
		end
	
		if (toolAnim == "Slash") then
			playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end
	
		if (toolAnim == "Lunge") then
			playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end
	end
	
	function moveSit()
		RightShoulder.MaxVelocity = 0.15
		LeftShoulder.MaxVelocity = 0.15
		RightShoulder:SetDesiredAngle(3.14 /2)
		LeftShoulder:SetDesiredAngle(-3.14 /2)
		RightHip:SetDesiredAngle(3.14 /2)
		LeftHip:SetDesiredAngle(-3.14 /2)
	end
	
	local lastTick = 0
	
	function move(time)
		local amplitude = 1
		local frequency = 1
	  	local deltaTime = time - lastTick
	  	lastTick = time
	
		local climbFudge = 0
		local setAngles = false
	
	  	if (jumpAnimTime > 0) then
	  		jumpAnimTime = jumpAnimTime - deltaTime
	  	end
	
		if (pose == "FreeFall" and jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		elseif (pose == "Seated") then
			playAnimation("sit", 0.5, Humanoid)
			return
		elseif (pose == "Running") then
			playAnimation("walk", 0.1, Humanoid)
		elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
	--		print("Wha " .. pose)
			stopAllAnimations()
			amplitude = 0.1
			frequency = 1
			setAngles = true
		end
	
		if (setAngles) then
			local desiredAngle = amplitude * math.sin(time * frequency)
	
			RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
			LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
			RightHip:SetDesiredAngle(-desiredAngle)
			LeftHip:SetDesiredAngle(-desiredAngle)
		end
	
		-- Tool Animation handling
		local tool = getTool()
		if tool and tool:FindFirstChild("Handle") then
		
			local animStringValueObject = getToolAnim(tool)
	
			if animStringValueObject then
				toolAnim = animStringValueObject.Value
				-- message recieved, delete StringValue
				animStringValueObject.Parent = nil
				toolAnimTime = time + .3
			end
	
			if time > toolAnimTime then
				toolAnimTime = 0
				toolAnim = "None"
			end
	
			animateTool()		
		else
			stopToolAnimations()
			toolAnim = "None"
			toolAnimInstance = nil
			toolAnimTime = 0
		end
	end
	
	
	local events = {}
	local eventHum = Humanoid
	
	local function onUnhook()
		for i = 1, #events do
			events[i]:Disconnect()
		end
		events = {}
	end
	
	local function onHook()
		onUnhook()
		
		pose = eventHum.Sit and "Seated" or "Standing"
		
		events = {
			eventHum.Died:connect(onDied),
			eventHum.Running:connect(onRunning),
			eventHum.Jumping:connect(onJumping),
			eventHum.Climbing:connect(onClimbing),
			eventHum.GettingUp:connect(onGettingUp),
			eventHum.FreeFalling:connect(onFreeFall),
			eventHum.FallingDown:connect(onFallingDown),
			eventHum.Seated:connect(onSeated),
			eventHum.PlatformStanding:connect(onPlatformStanding),
			eventHum.Swimming:connect(onSwimming)
		}
	end
	
	
	onHook()
	
	-- setup emote chat hook
	game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
		local emote = ""
		if msg == "/e dance" then
			emote = dances[math.random(1, #dances)]
		elseif (string.sub(msg, 1, 3) == "/e ") then
			emote = string.sub(msg, 4)
		elseif (string.sub(msg, 1, 7) == "/emote ") then
			emote = string.sub(msg, 8)
		end
		
		if (pose == "Standing" and emoteNames[emote] ~= nil) then
			playAnimation(emote, 0.1, Humanoid)
		end
	
	end)
	
	
	-- main program
	
	-- initialize to idle
	playAnimation("idle", 0.1, Humanoid)
	pose = "Standing"
	
	spawn(function()
		while Figure.Parent ~= nil do
			local _, time = wait(0.1)
			move(time)
		end
	end)
	
	return {
		onRunning = onRunning, 
		onDied = onDied, 
		onJumping = onJumping, 
		onClimbing = onClimbing, 
		onGettingUp = onGettingUp, 
		onFreeFall = onFreeFall, 
		onFallingDown = onFallingDown, 
		onSeated = onSeated, 
		onPlatformStanding = onPlatformStanding,
		onHook = onHook,
		onUnhook = onUnhook
	}
	
	end
	return r6()
end

function _R15()
	local function r15()
		
	local Character = char
	local Humanoid = Character:WaitForChild("Humanoid")
	local pose = "Standing"
	
	local userNoUpdateOnLoopSuccess, userNoUpdateOnLoopValue = pcall(function() return UserSettings():IsUserFeatureEnabled("UserNoUpdateOnLoop") end)
	local userNoUpdateOnLoop = userNoUpdateOnLoopSuccess and userNoUpdateOnLoopValue
	local userAnimationSpeedDampeningSuccess, userAnimationSpeedDampeningValue = pcall(function() return UserSettings():IsUserFeatureEnabled("UserAnimationSpeedDampening") end)
	local userAnimationSpeedDampening = userAnimationSpeedDampeningSuccess and userAnimationSpeedDampeningValue
	
	local animateScriptEmoteHookFlagExists, animateScriptEmoteHookFlagEnabled = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserAnimateScriptEmoteHook")
	end)
	local FFlagAnimateScriptEmoteHook = animateScriptEmoteHookFlagExists and animateScriptEmoteHookFlagEnabled
	
	local AnimationSpeedDampeningObject = script:FindFirstChild("ScaleDampeningPercent")
	local HumanoidHipHeight = 2
	
	local EMOTE_TRANSITION_TIME = 0.1
	
	local currentAnim = ""
	local currentAnimInstance = nil
	local currentAnimTrack = nil
	local currentAnimKeyframeHandler = nil
	local currentAnimSpeed = 1.0
	
	local runAnimTrack = nil
	local runAnimKeyframeHandler = nil
	
	local animTable = {}
	local animNames = { 
		idle = 	{	
					{ id = "http://www.roblox.com/asset/?id=507766666", weight = 1 },
					{ id = "http://www.roblox.com/asset/?id=507766951", weight = 1 },
					{ id = "http://www.roblox.com/asset/?id=507766388", weight = 9 }
				},
		walk = 	{ 	
					{ id = "http://www.roblox.com/asset/?id=507777826", weight = 10 } 
				}, 
		run = 	{
					{ id = "http://www.roblox.com/asset/?id=507767714", weight = 10 } 
				}, 
		swim = 	{
					{ id = "http://www.roblox.com/asset/?id=507784897", weight = 10 } 
				}, 
		swimidle = 	{
					{ id = "http://www.roblox.com/asset/?id=507785072", weight = 10 } 
				}, 
		jump = 	{
					{ id = "http://www.roblox.com/asset/?id=507765000", weight = 10 } 
				}, 
		fall = 	{
					{ id = "http://www.roblox.com/asset/?id=507767968", weight = 10 } 
				}, 
		climb = {
					{ id = "http://www.roblox.com/asset/?id=507765644", weight = 10 } 
				}, 
		sit = 	{
					{ id = "http://www.roblox.com/asset/?id=2506281703", weight = 10 } 
				},	
		toolnone = {
					{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 } 
				},
		toolslash = {
					{ id = "http://www.roblox.com/asset/?id=522635514", weight = 10 } 
				},
		toollunge = {
					{ id = "http://www.roblox.com/asset/?id=522638767", weight = 10 } 
				},
		wave = {
					{ id = "http://www.roblox.com/asset/?id=507770239", weight = 10 } 
				},
		point = {
					{ id = "http://www.roblox.com/asset/?id=507770453", weight = 10 } 
				},
		dance = {
					{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507771955", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507772104", weight = 10 } 
				},
		dance2 = {
					{ id = "http://www.roblox.com/asset/?id=507776043", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507776720", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507776879", weight = 10 } 
				},
		dance3 = {
					{ id = "http://www.roblox.com/asset/?id=507777268", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507777451", weight = 10 }, 
					{ id = "http://www.roblox.com/asset/?id=507777623", weight = 10 } 
				},
		laugh = {
					{ id = "http://www.roblox.com/asset/?id=507770818", weight = 10 } 
				},
		cheer = {
					{ id = "http://www.roblox.com/asset/?id=507770677", weight = 10 } 
				},
	}
	
	-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
	local emoteNames = { wave = false, point = false, dance = true, dance2 = true, dance3 = true, laugh = false, cheer = false}
	
	local PreloadAnimsUserFlag = false
	local PreloadedAnims = {}
	local successPreloadAnim, msgPreloadAnim = pcall(function()
		PreloadAnimsUserFlag = UserSettings():IsUserFeatureEnabled("UserPreloadAnimations")
	end)
	if not successPreloadAnim then
		PreloadAnimsUserFlag = false
	end
	
	math.randomseed(tick())
	
	function findExistingAnimationInSet(set, anim)
		if set == nil or anim == nil then
			return 0
		end
		
		for idx = 1, set.count, 1 do 
			if set[idx].anim.AnimationId == anim.AnimationId then
				return idx
			end
		end
		
		return 0
	end
	
	function configureAnimationSet(name, fileList)
		if (animTable[name] ~= nil) then
			for _, connection in pairs(animTable[name].connections) do
				connection:disconnect()
			end
		end
		animTable[name] = {}
		animTable[name].count = 0
		animTable[name].totalWeight = 0	
		animTable[name].connections = {}
	
		local allowCustomAnimations = true
	
		local success, msg = pcall(function() allowCustomAnimations = game:GetService("StarterPlayer").AllowCustomAnimations end)
		if not success then
			allowCustomAnimations = true
		end
	
		-- check for config values
		local config = script:FindFirstChild(name)
		if (allowCustomAnimations and config ~= nil) then
			table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
			table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
			
			local idx = 0
			for _, childPart in pairs(config:GetChildren()) do
				if (childPart:IsA("Animation")) then
					local newWeight = 1
					local weightObject = childPart:FindFirstChild("Weight")
					if (weightObject ~= nil) then
						newWeight = weightObject.Value
					end
					animTable[name].count = animTable[name].count + 1
					idx = animTable[name].count
					animTable[name][idx] = {}
					animTable[name][idx].anim = childPart
					animTable[name][idx].weight = newWeight
					animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
					table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
					table.insert(animTable[name].connections, childPart.ChildAdded:connect(function(property) configureAnimationSet(name, fileList) end))
					table.insert(animTable[name].connections, childPart.ChildRemoved:connect(function(property) configureAnimationSet(name, fileList) end))
				end
			end
		end
		
		-- fallback to defaults
		if (animTable[name].count <= 0) then
			for idx, anim in pairs(fileList) do
				animTable[name][idx] = {}
				animTable[name][idx].anim = Instance.new("Animation")
				animTable[name][idx].anim.Name = name
				animTable[name][idx].anim.AnimationId = anim.id
				animTable[name][idx].weight = anim.weight
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
			end
		end
		
		-- preload anims
		if PreloadAnimsUserFlag then
			for i, animType in pairs(animTable) do
				for idx = 1, animType.count, 1 do
					if PreloadedAnims[animType[idx].anim.AnimationId] == nil then
						Humanoid:LoadAnimation(animType[idx].anim)
						PreloadedAnims[animType[idx].anim.AnimationId] = true
					end				
				end
			end
		end
	end
	
	------------------------------------------------------------------------------------------------------------
	
	function configureAnimationSetOld(name, fileList)
		if (animTable[name] ~= nil) then
			for _, connection in pairs(animTable[name].connections) do
				connection:disconnect()
			end
		end
		animTable[name] = {}
		animTable[name].count = 0
		animTable[name].totalWeight = 0	
		animTable[name].connections = {}
	
		local allowCustomAnimations = true
	
		local success, msg = pcall(function() allowCustomAnimations = game:GetService("StarterPlayer").AllowCustomAnimations end)
		if not success then
			allowCustomAnimations = true
		end
	
		-- check for config values
		local config = script:FindFirstChild(name)
		if (allowCustomAnimations and config ~= nil) then
			table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
			table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
			local idx = 1
			for _, childPart in pairs(config:GetChildren()) do
				if (childPart:IsA("Animation")) then
					table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
					animTable[name][idx] = {}
					animTable[name][idx].anim = childPart
					local weightObject = childPart:FindFirstChild("Weight")
					if (weightObject == nil) then
						animTable[name][idx].weight = 1
					else
						animTable[name][idx].weight = weightObject.Value
					end
					animTable[name].count = animTable[name].count + 1
					animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
					idx = idx + 1
				end
			end
		end
	
		-- fallback to defaults
		if (animTable[name].count <= 0) then
			for idx, anim in pairs(fileList) do
				animTable[name][idx] = {}
				animTable[name][idx].anim = Instance.new("Animation")
				animTable[name][idx].anim.Name = name
				animTable[name][idx].anim.AnimationId = anim.id
				animTable[name][idx].weight = anim.weight
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
				-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
			end
		end
		
		-- preload anims
		if PreloadAnimsUserFlag then
			for i, animType in pairs(animTable) do
				for idx = 1, animType.count, 1 do 
					Humanoid:LoadAnimation(animType[idx].anim)
				end
			end
		end
	end
	
	-- Setup animation objects
	function scriptChildModified(child)
		local fileList = animNames[child.Name]
		if (fileList ~= nil) then
			configureAnimationSet(child.Name, fileList)
		end	
	end
	
	script.ChildAdded:connect(scriptChildModified)
	script.ChildRemoved:connect(scriptChildModified)
	
	
	for name, fileList in pairs(animNames) do 
		configureAnimationSet(name, fileList)
	end	
	
	-- ANIMATION
	
	-- declarations
	local toolAnim = "None"
	local toolAnimTime = 0
	
	local jumpAnimTime = 0
	local jumpAnimDuration = 0.31
	
	local toolTransitionTime = 0.1
	local fallTransitionTime = 0.2
	
	local currentlyPlayingEmote = false
	
	-- functions
	
	function stopAllAnimations()
		local oldAnim = currentAnim
	
		-- return to idle if finishing an emote
		if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
			oldAnim = "idle"
		end
		
		if FFlagAnimateScriptEmoteHook and currentlyPlayingEmote then
			oldAnim = "idle"
			currentlyPlayingEmote = false
		end
	
		currentAnim = ""
		currentAnimInstance = nil
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
	
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop()
			currentAnimTrack:Destroy()
			currentAnimTrack = nil
		end
	
		-- clean up walk if there is one
		if (runAnimKeyframeHandler ~= nil) then
			runAnimKeyframeHandler:disconnect()
		end
		
		if (runAnimTrack ~= nil) then
			runAnimTrack:Stop()
			runAnimTrack:Destroy()
			runAnimTrack = nil
		end
		
		return oldAnim
	end
	
	function getHeightScale()
		if Humanoid then
			if not Humanoid.AutomaticScalingEnabled then
				return 1
			end
			
			local scale = Humanoid.HipHeight / HumanoidHipHeight
			if userAnimationSpeedDampening then
				if AnimationSpeedDampeningObject == nil then
					AnimationSpeedDampeningObject = script:FindFirstChild("ScaleDampeningPercent")
				end
				if AnimationSpeedDampeningObject ~= nil then
					scale = 1 + (Humanoid.HipHeight - HumanoidHipHeight) * AnimationSpeedDampeningObject.Value / HumanoidHipHeight
				end
			end
			return scale
		end	
		return 1
	end
	
	local smallButNotZero = 0.0001
	function setRunSpeed(speed)
		local speedScaled = speed * 1.25
		local heightScale = getHeightScale()
		local runSpeed = speedScaled / heightScale
	
		if runSpeed ~= currentAnimSpeed then
			if runSpeed < 0.33 then
				currentAnimTrack:AdjustWeight(1.0)		
				runAnimTrack:AdjustWeight(smallButNotZero)
			elseif runSpeed < 0.66 then
				local weight = ((runSpeed - 0.33) / 0.33)
				currentAnimTrack:AdjustWeight(1.0 - weight + smallButNotZero)
				runAnimTrack:AdjustWeight(weight + smallButNotZero)
			else
				currentAnimTrack:AdjustWeight(smallButNotZero)
				runAnimTrack:AdjustWeight(1.0)
			end
			currentAnimSpeed = runSpeed
			runAnimTrack:AdjustSpeed(runSpeed)
			currentAnimTrack:AdjustSpeed(runSpeed)
		end	
	end
	
	function setAnimationSpeed(speed)
		if currentAnim == "walk" then
				setRunSpeed(speed)
		else
			if speed ~= currentAnimSpeed then
				currentAnimSpeed = speed
				currentAnimTrack:AdjustSpeed(currentAnimSpeed)
			end
		end
	end
	
	function keyFrameReachedFunc(frameName)
		if (frameName == "End") then
			if currentAnim == "walk" then
				if userNoUpdateOnLoop == true then
					if runAnimTrack.Looped ~= true then
						runAnimTrack.TimePosition = 0.0
					end
					if currentAnimTrack.Looped ~= true then
						currentAnimTrack.TimePosition = 0.0
					end
				else
					runAnimTrack.TimePosition = 0.0
					currentAnimTrack.TimePosition = 0.0
				end
			else
				local repeatAnim = currentAnim
				-- return to idle if finishing an emote
				if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
					repeatAnim = "idle"
				end
				
				if FFlagAnimateScriptEmoteHook and currentlyPlayingEmote then
					if currentAnimTrack.Looped then
						-- Allow the emote to loop
						return
					end
					
					repeatAnim = "idle"
					currentlyPlayingEmote = false
				end
				
				local animSpeed = currentAnimSpeed
				playAnimation(repeatAnim, 0.15, Humanoid)
				setAnimationSpeed(animSpeed)
			end
		end
	end
	
	function rollAnimation(animName)
		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
		return idx
	end
	
	local function switchToAnim(anim, animName, transitionTime, humanoid)
		-- switch animation		
		if (anim ~= currentAnimInstance) then
			
			if (currentAnimTrack ~= nil) then
				currentAnimTrack:Stop(transitionTime)
				currentAnimTrack:Destroy()
			end
	
			if (runAnimTrack ~= nil) then
				runAnimTrack:Stop(transitionTime)
				runAnimTrack:Destroy()
				if userNoUpdateOnLoop == true then
					runAnimTrack = nil
				end
			end
	
			currentAnimSpeed = 1.0
		
			-- load it to the humanoid; get AnimationTrack
			currentAnimTrack = humanoid:LoadAnimation(anim)
			currentAnimTrack.Priority = Enum.AnimationPriority.Core
			 
			-- play the animation
			currentAnimTrack:Play(transitionTime)
			currentAnim = animName
			currentAnimInstance = anim
	
			-- set up keyframe name triggers
			if (currentAnimKeyframeHandler ~= nil) then
				currentAnimKeyframeHandler:disconnect()
			end
			currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
			
			-- check to see if we need to blend a walk/run animation
			if animName == "walk" then
				local runAnimName = "run"
				local runIdx = rollAnimation(runAnimName)
	
				runAnimTrack = humanoid:LoadAnimation(animTable[runAnimName][runIdx].anim)
				runAnimTrack.Priority = Enum.AnimationPriority.Core
				runAnimTrack:Play(transitionTime)		
				
				if (runAnimKeyframeHandler ~= nil) then
					runAnimKeyframeHandler:disconnect()
				end
				runAnimKeyframeHandler = runAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)	
			end
		end
	end
	
	function playAnimation(animName, transitionTime, humanoid) 	
		local idx = rollAnimation(animName)
		local anim = animTable[animName][idx].anim
	
		switchToAnim(anim, animName, transitionTime, humanoid)
		currentlyPlayingEmote = false
	end
	
	function playEmote(emoteAnim, transitionTime, humanoid)
		switchToAnim(emoteAnim, emoteAnim.Name, transitionTime, humanoid)
		currentlyPlayingEmote = true
	end
	
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	
	local toolAnimName = ""
	local toolAnimTrack = nil
	local toolAnimInstance = nil
	local currentToolAnimKeyframeHandler = nil
	
	function toolKeyFrameReachedFunc(frameName)
		if (frameName == "End") then
			playToolAnimation(toolAnimName, 0.0, Humanoid)
		end
	end
	
	
	function playToolAnimation(animName, transitionTime, humanoid, priority)	 		
			local idx = rollAnimation(animName)
			local anim = animTable[animName][idx].anim
	
			if (toolAnimInstance ~= anim) then
				
				if (toolAnimTrack ~= nil) then
					toolAnimTrack:Stop()
					toolAnimTrack:Destroy()
					transitionTime = 0
				end
						
				-- load it to the humanoid; get AnimationTrack
				toolAnimTrack = humanoid:LoadAnimation(anim)
				if priority then
					toolAnimTrack.Priority = priority
				end
				 
				-- play the animation
				toolAnimTrack:Play(transitionTime)
				toolAnimName = animName
				toolAnimInstance = anim
	
				currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
			end
	end
	
	function stopToolAnimations()
		local oldAnim = toolAnimName
	
		if (currentToolAnimKeyframeHandler ~= nil) then
			currentToolAnimKeyframeHandler:disconnect()
		end
	
		toolAnimName = ""
		toolAnimInstance = nil
		if (toolAnimTrack ~= nil) then
			toolAnimTrack:Stop()
			toolAnimTrack:Destroy()
			toolAnimTrack = nil
		end
	
		return oldAnim
	end
	
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	-- STATE CHANGE HANDLERS
	
	function onRunning(speed)
		if speed > 0.75 then
			local scale = 16.0
			playAnimation("walk", 0.2, Humanoid)
			setAnimationSpeed(speed / scale)
			pose = "Running"
		else
			if emoteNames[currentAnim] == nil and not currentlyPlayingEmote then
				playAnimation("idle", 0.2, Humanoid)
				pose = "Standing"
			end
		end
	end
	
	function onDied()
		pose = "Dead"
	end
	
	function onJumping()
		playAnimation("jump", 0.1, Humanoid)
		jumpAnimTime = jumpAnimDuration
		pose = "Jumping"
	end
	
	function onClimbing(speed)
		local scale = 5.0
		playAnimation("climb", 0.1, Humanoid)
		setAnimationSpeed(speed / scale)
		pose = "Climbing"
	end
	
	function onGettingUp()
		pose = "GettingUp"
	end
	
	function onFreeFall()
		if (jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		end
		pose = "FreeFall"
	end
	
	function onFallingDown()
		pose = "FallingDown"
	end
	
	function onSeated()
		pose = "Seated"
	end
	
	function onPlatformStanding()
		pose = "PlatformStanding"
	end
	
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	
	function onSwimming(speed)
		if speed > 1.00 then
			local scale = 10.0
			playAnimation("swim", 0.4, Humanoid)
			setAnimationSpeed(speed / scale)
			pose = "Swimming"
		else
			playAnimation("swimidle", 0.4, Humanoid)
			pose = "Standing"
		end
	end
	
	function animateTool()
		if (toolAnim == "None") then
			playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
			return
		end
	
		if (toolAnim == "Slash") then
			playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end
	
		if (toolAnim == "Lunge") then
			playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end
	end
	
	function getToolAnim(tool)
		for _, c in ipairs(tool:GetChildren()) do
			if c.Name == "toolanim" and c.className == "StringValue" then
				return c
			end
		end
		return nil
	end
	
	local lastTick = 0
	
	function stepAnimate(currentTime)
		local amplitude = 1
		local frequency = 1
	  	local deltaTime = currentTime - lastTick
	  	lastTick = currentTime
	
		local climbFudge = 0
		local setAngles = false
	
	  	if (jumpAnimTime > 0) then
	  		jumpAnimTime = jumpAnimTime - deltaTime
	  	end
	
		if (pose == "FreeFall" and jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		elseif (pose == "Seated") then
			playAnimation("sit", 0.5, Humanoid)
			return
		elseif (pose == "Running") then
			playAnimation("walk", 0.2, Humanoid)
		elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
			stopAllAnimations()
			amplitude = 0.1
			frequency = 1
			setAngles = true
		end
	
		-- Tool Animation handling
		local tool = Character:FindFirstChildOfClass("Tool")
		if tool and tool:FindFirstChild("Handle") then
			local animStringValueObject = getToolAnim(tool)
	
			if animStringValueObject then
				toolAnim = animStringValueObject.Value
				-- message recieved, delete StringValue
				animStringValueObject.Parent = nil
				toolAnimTime = currentTime + .3
			end
	
			if currentTime > toolAnimTime then
				toolAnimTime = 0
				toolAnim = "None"
			end
	
			animateTool()		
		else
			stopToolAnimations()
			toolAnim = "None"
			toolAnimInstance = nil
			toolAnimTime = 0
		end
	end
	
	-- connect events
	
	local events = {}
	local eventHum = Humanoid
	
	local function onUnhook()
		for i = 1, #events do
			events[i]:Disconnect()
		end
		events = {}
	end
	
	local function onHook()
		onUnhook()
		
		pose = eventHum.Sit and "Seated" or "Standing"
		
		events = {
			eventHum.Died:connect(onDied),
			eventHum.Running:connect(onRunning),
			eventHum.Jumping:connect(onJumping),
			eventHum.Climbing:connect(onClimbing),
			eventHum.GettingUp:connect(onGettingUp),
			eventHum.FreeFalling:connect(onFreeFall),
			eventHum.FallingDown:connect(onFallingDown),
			eventHum.Seated:connect(onSeated),
			eventHum.PlatformStanding:connect(onPlatformStanding),
			eventHum.Swimming:connect(onSwimming)
		}
	end
	
	
	onHook()
	
	-- setup emote chat hook
	game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
		local emote = ""
		if (string.sub(msg, 1, 3) == "/e ") then
			emote = string.sub(msg, 4)
		elseif (string.sub(msg, 1, 7) == "/emote ") then
			emote = string.sub(msg, 8)
		end
		
		if (pose == "Standing" and emoteNames[emote] ~= nil) then
			playAnimation(emote, EMOTE_TRANSITION_TIME, Humanoid)
		end
	end)
	
	--[[ emote bindable hook
	if FFlagAnimateScriptEmoteHook then
		script:WaitForChild("PlayEmote").OnInvoke = function(emote)
			-- Only play emotes when idling
			if pose ~= "Standing" then
				return
			end
			if emoteNames[emote] ~= nil then
				-- Default emotes
				playAnimation(emote, EMOTE_TRANSITION_TIME, Humanoid)
				return true
			elseif typeof(emote) == "Instance" and emote:IsA("Animation") then
				-- Non-default emotes
				playEmote(emote, EMOTE_TRANSITION_TIME, Humanoid)
				return true
			end
			-- Return false to indicate that the emote could not be played
			return false
		end
	end
	]]
	-- initialize to idle
	playAnimation("idle", 0.1, Humanoid)
	pose = "Standing"
	-- loop to handle timed state transitions and tool animations
	spawn(function()
		while Character.Parent ~= nil do
			local _, currentGameTime = wait(0.1)
			stepAnimate(currentGameTime)
		end
	end)
	return {
		onRunning = onRunning, 
		onDied = onDied, 
		onJumping = onJumping, 
		onClimbing = onClimbing, 
		onGettingUp = onGettingUp, 
		onFreeFall = onFreeFall, 
		onFallingDown = onFallingDown, 
		onSeated = onSeated, 
		onPlatformStanding = onPlatformStanding,
		onHook = onHook,
		onUnhook = onUnhook
	}
	end
	return r15()
end
while true do
	wait(.1)
	if plr.Character ~= nil then
		char = plr.Character
		break
	end
end
function _Controller()
	local humanoid = char:WaitForChild("Humanoid")
	local animFuncs = {}
	if (humanoid.RigType == Enum.HumanoidRigType.R6) then
		animFuncs = _R6()
	else
		animFuncs = _R15()
	end
	print("Animation succes")
	return animFuncs
end
function _AnimationHandler()
local AnimationHandler = {}
AnimationHandler.__index = AnimationHandler

function AnimationHandler.new(humanoid, animate)
	local self = setmetatable({}, AnimationHandler)
	
	self._AnimFuncs = _Controller()
	self.Humanoid = humanoid
	
	return self
end

function AnimationHandler:EnableDefault(bool)
	if (bool) then
		self._AnimFuncs.onHook()
	else
		self._AnimFuncs.onUnhook()
	end
end

function AnimationHandler:Run(name, ...)
	self._AnimFuncs[name](...)
end

return AnimationHandler
end

function _GravityController()

local ZERO = Vector3.new(0, 0, 0)
local UNIT_X = Vector3.new(1, 0, 0)
local UNIT_Y = Vector3.new(0, 1, 0)
local UNIT_Z = Vector3.new(0, 0, 1)
local VEC_XY = Vector3.new(1, 0, 1)

local IDENTITYCF = CFrame.new()

local JUMPMODIFIER = 1.2
local TRANSITION = 0.15
local WALKF = 200 / 3

local UIS = game:GetService("UserInputService")
local RUNSERVICE = game:GetService("RunService")

local InitObjects = _InitObjects()
local AnimationHandler = _AnimationHandler()
local StateTracker = _StateTracker()

-- Class

local GravityController = {}
GravityController.__index = GravityController

-- Private Functions

local function getRotationBetween(u, v, axis)
	local dot, uxv = u:Dot(v), u:Cross(v)
	if (dot < -0.99999) then return CFrame.fromAxisAngle(axis, math.pi) end
	return CFrame.new(0, 0, 0, uxv.x, uxv.y, uxv.z, 1 + dot)
end

local function lookAt(pos, forward, up)
	local r = forward:Cross(up)
	local u = r:Cross(forward)
	return CFrame.fromMatrix(pos, r.Unit, u.Unit)
end

local function getMass(array)
	local mass = 0
	for _, part in next, array do
		if (part:IsA("BasePart")) then
			mass = mass + part:GetMass()
		end
	end
	return mass
end

-- Public Constructor
local ExecutedPlayerModule = _PlayerModule()
local ExecutedSounds = _sounds()
function GravityController.new(player)
	local self = setmetatable({}, GravityController)

	--[[ Camera
	local loaded = player.PlayerScripts:WaitForChild("PlayerScriptsLoader"):WaitForChild("Loaded")
	if (not loaded.Value) then
		--loaded.Changed:Wait()
	end
	]]
	local playerModule = ExecutedPlayerModule
	self.Controls = playerModule:GetControls()
	self.Camera = playerModule:GetCameras()
	
	-- Player and character
	self.Player = player
	self.Character = player.Character
	self.Humanoid = player.Character:WaitForChild("Humanoid")
	self.HRP = player.Character:WaitForChild("HumanoidRootPart")
	
	-- Animation
	self.AnimationHandler = AnimationHandler.new(self.Humanoid, self.Character:WaitForChild("Animate"))
	self.AnimationHandler:EnableDefault(false)
	local ssss = game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("SetState") or Instance.new("BindableEvent",game:GetService("Players").LocalPlayer.PlayerScripts)
	local soundState = ExecutedSounds
	ssss.Name = "SetState"
	
	self.StateTracker = StateTracker.new(self.Humanoid, soundState)
	self.StateTracker.Changed:Connect(function(name, speed)
		self.AnimationHandler:Run(name, speed)
	end)
	
	-- Collider and forces
	local collider, gyro, vForce, floor = InitObjects(self)
	
	floor.Touched:Connect(function() end)
	collider.Touched:Connect(function() end)
	
	self.Collider = collider
	self.VForce = vForce
	self.Gyro = gyro
	self.Floor = floor
	
	-- Attachment to parts
	self.LastPart = workspace.Terrain
	self.LastPartCFrame = IDENTITYCF
	
	-- Gravity properties
	self.GravityUp = UNIT_Y
	self.Ignores = {self.Character}
	
	function self.Camera.GetUpVector(this, oldUpVector)
		return self.GravityUp
	end
	
	-- Events etc
	self.Humanoid.PlatformStand = true
	
	self.CharacterMass = getMass(self.Character:GetDescendants())
	self.Character.AncestryChanged:Connect(function() self.CharacterMass = getMass(self.Character:GetDescendants()) end)
	
	self.JumpCon = RUNSERVICE.RenderStepped:Connect(function(dt) 
		if (self.Controls:IsJumping()) then
			self:OnJumpRequest()
		end
	end)
	
	self.DeathCon = self.Humanoid.Died:Connect(function() self:Destroy() end)
	self.SeatCon = self.Humanoid.Seated:Connect(function(active) if (active) then self:Destroy() end end)
	self.HeartCon = RUNSERVICE.Heartbeat:Connect(function(dt) self:OnHeartbeatStep(dt) end)
	RUNSERVICE:BindToRenderStep("GravityStep", Enum.RenderPriority.Input.Value + 1, function(dt) self:OnGravityStep(dt) end)
	
	
	return self
end

-- Public Methods

function GravityController:Destroy()
	self.JumpCon:Disconnect()
	self.DeathCon:Disconnect()
	self.SeatCon:Disconnect()
	self.HeartCon:Disconnect()
	
	RUNSERVICE:UnbindFromRenderStep("GravityStep")
	
	self.Collider:Destroy()
	self.VForce:Destroy()
	self.Gyro:Destroy()
	self.StateTracker:Destroy()
	
	self.Humanoid.PlatformStand = false
	self.AnimationHandler:EnableDefault(true)
	
	self.GravityUp = UNIT_Y
end

function GravityController:GetGravityUp(oldGravity)
	return oldGravity
end

function GravityController:IsGrounded(isJumpCheck)
	if (not isJumpCheck) then
		local parts = self.Floor:GetTouchingParts()
		for _, part in next, parts do
			if (not part:IsDescendantOf(self.Character)) then
				return true
			end
		end
	else
		if (self.StateTracker.Jumped) then
			return false
		end
	
		-- 1. check we are touching something with the collider
		local valid = {}
		local parts = self.Collider:GetTouchingParts()
		for _, part in next, parts do
			if (not part:IsDescendantOf(self.Character)) then
				table.insert(valid, part)
			end
		end
		
		if (#valid > 0) then
			-- 2. do a decently long downwards raycast
			local max = math.cos(self.Humanoid.MaxSlopeAngle)
			local ray = Ray.new(self.Collider.Position, -10 * self.GravityUp)
			local hit, pos, normal = workspace:FindPartOnRayWithWhitelist(ray, valid, true)
			
			-- 3. use slope to decide on jump
			if (hit and max <= self.GravityUp:Dot(normal)) then
				return true
			end
		end
	end
	return false
end

function GravityController:OnJumpRequest()
	if (not self.StateTracker.Jumped and self:IsGrounded(true)) then
		local hrpVel = self.HRP.Velocity
		self.HRP.Velocity = hrpVel + self.GravityUp*self.Humanoid.JumpPower*JUMPMODIFIER
		self.StateTracker:RequestedJump()
	end
end

function GravityController:GetMoveVector()
	return self.Controls:GetMoveVector()
end

function GravityController:OnHeartbeatStep(dt)
	local ray = Ray.new(self.Collider.Position, -1.1*self.GravityUp)
	local hit, pos, normal = workspace:FindPartOnRayWithIgnoreList(ray, self.Ignores)
	local lastPart = self.LastPart
	
	if (hit and lastPart and lastPart == hit) then
		local offset = self.LastPartCFrame:ToObjectSpace(self.HRP.CFrame)
		self.HRP.CFrame = hit.CFrame:ToWorldSpace(offset)
	end
	
	self.LastPart = hit
	self.LastPartCFrame = hit and hit.CFrame
end

function GravityController:OnGravityStep(dt)
	-- update gravity up vector
	local oldGravity = self.GravityUp
	local newGravity = self:GetGravityUp(oldGravity)
	
	local rotation = getRotationBetween(oldGravity, newGravity, workspace.CurrentCamera.CFrame.RightVector)
	rotation = IDENTITYCF:Lerp(rotation, TRANSITION)
	
	self.GravityUp = rotation * oldGravity
	
	-- get world move vector
	local camCF = workspace.CurrentCamera.CFrame
	local fDot = camCF.LookVector:Dot(newGravity)
	local cForward = math.abs(fDot) > 0.5 and -math.sign(fDot)*camCF.UpVector or camCF.LookVector
	
	local left = cForward:Cross(-newGravity).Unit
	local forward = -left:Cross(newGravity).Unit
	
	local move = self:GetMoveVector()
	local worldMove = forward*move.z - left*move.x
	worldMove = worldMove:Dot(worldMove) > 1 and worldMove.Unit or worldMove
	
	local isInputMoving = worldMove:Dot(worldMove) > 0
	
	-- get the desired character cframe
	local hrpCFLook = self.HRP.CFrame.LookVector
	local charF = hrpCFLook:Dot(forward)*forward + hrpCFLook:Dot(left)*left
	local charR = charF:Cross(newGravity).Unit
	local newCharCF = CFrame.fromMatrix(ZERO, charR, newGravity, -charF)
	
	local newCharRotation = IDENTITYCF
	if (isInputMoving) then
		newCharRotation = IDENTITYCF:Lerp(getRotationBetween(charF, worldMove, newGravity), 0.7)	
	end
	
	-- calculate forces
	local g = workspace.Gravity
	local gForce = g * self.CharacterMass * (UNIT_Y - newGravity)
	
	local cVelocity = self.HRP.Velocity
	local tVelocity = self.Humanoid.WalkSpeed * worldMove
	local gVelocity = cVelocity:Dot(newGravity)*newGravity
	local hVelocity = cVelocity - gVelocity
	
	if (hVelocity:Dot(hVelocity) < 1) then
		hVelocity = ZERO
	end
	
	local dVelocity = tVelocity - hVelocity
	local walkForceM = math.min(10000, WALKF * self.CharacterMass * dVelocity.Magnitude / (dt*60))
	local walkForce = walkForceM > 0 and dVelocity.Unit*walkForceM or ZERO
	
	-- mouse lock
	local charRotation = newCharRotation * newCharCF
	
	if (self.Camera:IsCamRelative()) then
		local lv = workspace.CurrentCamera.CFrame.LookVector
		local hlv = lv - charRotation.UpVector:Dot(lv)*charRotation.UpVector
		charRotation = lookAt(ZERO, hlv, charRotation.UpVector)
	end
	
	-- get state
	self.StateTracker:OnStep(self.GravityUp, self:IsGrounded(), isInputMoving)

	-- update values
	self.VForce.Force = walkForce + gForce
	self.Gyro.CFrame = charRotation
end
return GravityController
end
function _Draw3D()
	local module = {}
	
	-- Style Guide
	
	module.StyleGuide = {
		Point = {
			Thickness = 0.5;
			Color = Color3.new(0, 1, 0);
		},
		
		Line = {
			Thickness = 0.1;
			Color = Color3.new(1, 1, 0);
		},
		
		Ray = {
			Thickness = 0.1;
			Color = Color3.new(1, 0, 1);
		},
		
		Triangle = {
			Thickness = 0.05;
		};
		
		CFrame = {
			Thickness = 0.1;
			RightColor3 = Color3.new(1, 0, 0);
			UpColor3 = Color3.new(0, 1, 0);
			BackColor3 = Color3.new(0, 0, 1);
			PartProperties = {
				Material = Enum.Material.SmoothPlastic;
			};
		}
	}
	
	-- CONSTANTS
	
	local WEDGE = Instance.new("WedgePart")
	WEDGE.Material = Enum.Material.SmoothPlastic
	WEDGE.Anchored = true
	WEDGE.CanCollide = false
	
	local PART = Instance.new("Part")
	PART.Size = Vector3.new(0.1, 0.1, 0.1)
	PART.Anchored = true
	PART.CanCollide = false
	PART.TopSurface = Enum.SurfaceType.Smooth
	PART.BottomSurface = Enum.SurfaceType.Smooth
	PART.Material = Enum.Material.SmoothPlastic
	
	-- Functions
	
	local function draw(properties, style)
		local part = PART:Clone()
		for k, v in next, properties do
			part[k] = v
		end
		if (style) then
			for k, v in next, style do
				if (k ~= "Thickness") then
					part[k] = v
				end
			end
		end
		return part
	end
	
	function module.Draw(parent, properties)
		properties.Parent = parent
		return draw(properties, nil)
	end
	
	function module.Point(parent, cf_v3)
		local thickness = module.StyleGuide.Point.Thickness
		return draw({
			Size = Vector3.new(thickness, thickness, thickness);
			CFrame = (typeof(cf_v3) == "CFrame" and cf_v3 or CFrame.new(cf_v3));
			Parent = parent;
		}, module.StyleGuide.Point)
	end
	
	function module.Line(parent, a, b)
		local thickness = module.StyleGuide.Line.Thickness
		return draw({
			CFrame = CFrame.new((a + b)/2, b);
			Size = Vector3.new(thickness, thickness, (b - a).Magnitude);
			Parent = parent;
		}, module.StyleGuide.Line)
	end
	
	function module.Ray(parent, origin, direction)
		local thickness = module.StyleGuide.Ray.Thickness
		return draw({
			CFrame = CFrame.new(origin + direction/2, origin + direction);
			Size = Vector3.new(thickness, thickness, direction.Magnitude);
			Parent = parent;
		}, module.StyleGuide.Ray)
	end
	
	function module.Triangle(parent, a, b, c)
		local ab, ac, bc = b - a, c - a, c - b
		local abd, acd, bcd = ab:Dot(ab), ac:Dot(ac), bc:Dot(bc)
		
		if (abd > acd and abd > bcd) then
			c, a = a, c
		elseif (acd > bcd and acd > abd) then
			a, b = b, a
		end
		
		ab, ac, bc = b - a, c - a, c - b
		
		local right = ac:Cross(ab).Unit
		local up = bc:Cross(right).Unit
		local back = bc.Unit
		
		local height = math.abs(ab:Dot(up))
		local width1 = math.abs(ab:Dot(back))
		local width2 = math.abs(ac:Dot(back))
		
		local thickness = module.StyleGuide.Triangle.Thickness
		
		local w1 = WEDGE:Clone()
		w1.Size = Vector3.new(thickness, height, width1)
		w1.CFrame = CFrame.fromMatrix((a + b)/2, right, up, back)
		w1.Parent = parent
		
		local w2 = WEDGE:Clone()
		w2.Size = Vector3.new(thickness, height, width2)
		w2.CFrame = CFrame.fromMatrix((a + c)/2, -right, up, -back)
		w2.Parent = parent
		
		for k, v in next, module.StyleGuide.Triangle do
			if (k ~= "Thickness") then
				w1[k] = v
				w2[k] = v
			end
		end
		
		return w1, w2
	end
	
	function module.CFrame(parent, cf)
		local origin = cf.Position
		local r = cf.RightVector
		local u = cf.UpVector
		local b = -cf.LookVector
		
		local thickness = module.StyleGuide.CFrame.Thickness
		
		local right = draw({
			CFrame = CFrame.new(origin + r/2, origin + r);
			Size = Vector3.new(thickness, thickness, r.Magnitude);
			Color = module.StyleGuide.CFrame.RightColor3;
			Parent = parent;
		}, module.StyleGuide.CFrame.PartProperties)
		
		local up = draw({
			CFrame = CFrame.new(origin + u/2, origin + u);
			Size = Vector3.new(thickness, thickness, r.Magnitude);
			Color = module.StyleGuide.CFrame.UpColor3;
			Parent = parent;
		}, module.StyleGuide.CFrame.PartProperties)
		
		local back = draw({
			CFrame = CFrame.new(origin + b/2, origin + b);
			Size = Vector3.new(thickness, thickness, u.Magnitude);
			Color = module.StyleGuide.CFrame.BackColor3;
			Parent = parent;
		}, module.StyleGuide.CFrame.PartProperties)
		
		return right, up, back
	end
	
	-- Return
	
	return module
end
function _Draw2D()
	local module = {}
	
	-- Style Guide
	
	module.StyleGuide = {
		Point = {
			BorderSizePixel = 0;
			Size = UDim2.new(0, 4, 0, 4);
			BorderColor3 = Color3.new(0, 0, 0);
			BackgroundColor3 = Color3.new(0, 1, 0);
		},
		
		Line = {
			Thickness = 1;
			BorderSizePixel = 0;
			BorderColor3 = Color3.new(0, 0, 0);
			BackgroundColor3 = Color3.new(0, 1, 0);
		},
		
		Ray = {
			Thickness = 1;
			BorderSizePixel = 0;
			BorderColor3 = Color3.new(0, 0, 0);
			BackgroundColor3 = Color3.new(0, 1, 0);
		},
		
		Triangle = {
			ImageTransparency = 0;
			ImageColor3 = Color3.new(0, 1, 0);
		}
	}
	
	-- CONSTANTS
	
	local HALF = Vector2.new(0.5, 0.5)
	
	local RIGHT = "rbxassetid://2798177521"
	local LEFT = "rbxassetid://2798177955"
	
	local IMG = Instance.new("ImageLabel")
	IMG.BackgroundTransparency = 1
	IMG.AnchorPoint = HALF
	IMG.BorderSizePixel = 0
	
	local FRAME = Instance.new("Frame")
	FRAME.BorderSizePixel = 0
	FRAME.Size = UDim2.new(0, 0, 0, 0)
	FRAME.BackgroundColor3 = Color3.new(1, 1, 1)
	
	-- Functions
	
	function draw(properties, style)
		local frame = FRAME:Clone()
		for k, v in next, properties do
			frame[k] = v
		end
		if (style) then
			for k, v in next, style do
				if (k ~= "Thickness") then
					frame[k] = v
				end
			end
		end
		return frame
	end
	
	function module.Draw(parent, properties)
		properties.Parent = parent
		return draw(properties, nil)
	end
	
	function module.Point(parent, v2)
		return draw({
			AnchorPoint = HALF;
			Position = UDim2.new(0, v2.x, 0, v2.y);
			Parent = parent;
		}, module.StyleGuide.Point)
	end
	
	function module.Line(parent, a, b)
		local v = (b - a)
		local m = (a + b)/2
		
		return draw({
			AnchorPoint = HALF;
			Position = UDim2.new(0, m.x, 0, m.y);
			Size = UDim2.new(0, module.StyleGuide.Line.Thickness, 0, v.magnitude);
			Rotation = math.deg(math.atan2(v.y, v.x)) - 90;
			BackgroundColor3 = Color3.new(1, 1, 0);
			Parent = parent;
		}, module.StyleGuide.Line)
	end
	
	function module.Ray(parent, origin, direction)
		local a, b = origin, origin + direction
		local v = (b - a)
		local m = (a + b)/2
		
		return draw({
			AnchorPoint = HALF;
			Position = UDim2.new(0, m.x, 0, m.y);
			Size = UDim2.new(0, module.StyleGuide.Ray.Thickness, 0, v.magnitude);
			Rotation = math.deg(math.atan2(v.y, v.x)) - 90;
			Parent = parent;
		}, module.StyleGuide.Ray)
	end
	
	function module.Triangle(parent, a, b, c)
		local ab, ac, bc = b - a, c - a, c - b
		local abd, acd, bcd = ab:Dot(ab), ac:Dot(ac), bc:Dot(bc)
		
		if (abd > acd and abd > bcd) then
			c, a = a, c
		elseif (acd > bcd and acd > abd) then
			a, b = b, a
		end
		
		ab, ac, bc = b - a, c - a, c - b
		
		local unit = bc.unit
		local height = unit:Cross(ab)
		local flip = (height >= 0)
		local theta = math.deg(math.atan2(unit.y, unit.x)) + (flip and 0 or 180)
		
		local m1 = (a + b)/2
		local m2 = (a + c)/2
		
		local w1 = IMG:Clone()
		w1.Image = flip and RIGHT or LEFT
		w1.AnchorPoint = HALF
		w1.Size = UDim2.new(0, math.abs(unit:Dot(ab)), 0, height)
		w1.Position = UDim2.new(0, m1.x, 0, m1.y)
		w1.Rotation = theta
		w1.Parent = parent
		
		local w2 = IMG:Clone()
		w2.Image = flip and LEFT or RIGHT
		w2.AnchorPoint = HALF
		w2.Size = UDim2.new(0, math.abs(unit:Dot(ac)), 0, height)
		w2.Position = UDim2.new(0, m2.x, 0, m2.y)
		w2.Rotation = theta
		w2.Parent = parent
		
		for k, v in next, module.StyleGuide.Triangle do
			w1[k] = v
			w2[k] = v
		end
		
		return w1, w2
	end
	
	-- Return
	
	return module
end
function _DrawClass()
	local Draw2DModule = _Draw2D()
	local Draw3DModule = _Draw3D()
	
	--
	
	local DrawClass = {}
	local DrawClassStorage = setmetatable({}, {__mode = "k"})
	DrawClass.__index = DrawClass
	
	function DrawClass.new(parent)
		local self = setmetatable({}, DrawClass)
		
		self.Parent = parent
		DrawClassStorage[self] = {}
		
		self.Draw3D = {}
		for key, func in next, Draw3DModule do
			self.Draw3D[key] = function(...)
				local returns = {func(self.Parent, ...)}
				for i = 1, #returns do
					table.insert(DrawClassStorage[self], returns[i])
				end
				return unpack(returns)
			end
		end
		
		self.Draw2D = {}
		for key, func in next, Draw2DModule do
			self.Draw2D[key] = function(...)
				local returns = {func(self.Parent, ...)}
				for i = 1, #returns do
					table.insert(DrawClassStorage[self], returns[i])
				end
				return unpack(returns)
			end
		end
		
		return self
	end
	
	--
	
	function DrawClass:Clear()
		local t = DrawClassStorage[self]
		while (#t > 0) do
			local part = table.remove(t)
			if (part) then
				part:Destroy()
			end
		end
		DrawClassStorage[self] = {}
	end
	
	--
	
	return DrawClass
end


--END TEST

local PLAYERS = game:GetService("Players")

local GravityController = _GravityController()
local Controller = GravityController.new(PLAYERS.LocalPlayer)

local DrawClass = _DrawClass()

local PI2 = math.pi*2
local ZERO = Vector3.new(0, 0, 0)

local LOWER_RADIUS_OFFSET = 3 
local NUM_DOWN_RAYS = 24
local ODD_DOWN_RAY_START_RADIUS = 3	
local EVEN_DOWN_RAY_START_RADIUS = 2
local ODD_DOWN_RAY_END_RADIUS = 1.66666
local EVEN_DOWN_RAY_END_RADIUS = 1

local NUM_FEELER_RAYS = 9
local FEELER_LENGTH = 2
local FEELER_START_OFFSET = 2
local FEELER_RADIUS = 3.5
local FEELER_APEX_OFFSET = 1
local FEELER_WEIGHTING = 8

function GetGravityUp(self, oldGravityUp)
	local ignoreList = {}
	for i, player in next, PLAYERS:GetPlayers() do
		ignoreList[i] = player.Character
	end
	
	-- get the normal
	
	local hrpCF = self.HRP.CFrame
	local isR15 = (self.Humanoid.RigType == Enum.HumanoidRigType.R15)
	
	local origin = isR15 and hrpCF.p or hrpCF.p + 0.35*oldGravityUp
	local radialVector = math.abs(hrpCF.LookVector:Dot(oldGravityUp)) < 0.999 and hrpCF.LookVector:Cross(oldGravityUp) or hrpCF.RightVector:Cross(oldGravityUp)
	
	local centerRayLength = 25
	local centerRay = Ray.new(origin, -centerRayLength * oldGravityUp)
	local centerHit, centerHitPoint, centerHitNormal = workspace:FindPartOnRayWithIgnoreList(centerRay, ignoreList)
	
	--[[disable
	DrawClass:Clear()
	DrawClass.Draw3D.Ray(centerRay.Origin, centerRay.Direction)
	]]
	local downHitCount = 0
	local totalHitCount = 0
	local centerRayHitCount = 0
	local evenRayHitCount = 0
	local oddRayHitCount = 0
	
	local mainDownNormal = ZERO
	if (centerHit) then
		mainDownNormal = centerHitNormal
		centerRayHitCount = 0
	end
	
	local downRaySum = ZERO
	for i = 1, NUM_DOWN_RAYS do
		local dtheta = PI2 * ((i-1)/NUM_DOWN_RAYS)
		
		local angleWeight = 0.25 + 0.75 * math.abs(math.cos(dtheta))
		local isEvenRay = (i%2 == 0)
		local startRadius = isEvenRay and EVEN_DOWN_RAY_START_RADIUS or ODD_DOWN_RAY_START_RADIUS	
		local endRadius = isEvenRay and EVEN_DOWN_RAY_END_RADIUS or ODD_DOWN_RAY_END_RADIUS
		local downRayLength = centerRayLength
		
		local offset = CFrame.fromAxisAngle(oldGravityUp, dtheta) * radialVector
		local dir = (LOWER_RADIUS_OFFSET * -oldGravityUp + (endRadius - startRadius) * offset)
		local ray = Ray.new(origin + startRadius * offset, downRayLength * dir.unit)
		local hit, hitPoint, hitNormal = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
		--[[disable
		DrawClass.Draw3D.Ray(ray.Origin, ray.Direction)
		]]
		if (hit) then
			downRaySum = downRaySum + angleWeight * hitNormal
			downHitCount = downHitCount + 1
			if isEvenRay then
				evenRayHitCount = evenRayHitCount + 1					
			else
				oddRayHitCount = oddRayHitCount + 1
			end
		end
	end
	
	local feelerHitCount = 0	
	local feelerNormalSum = ZERO
	
	for i = 1, NUM_FEELER_RAYS do
		local dtheta = 2 * math.pi * ((i-1)/NUM_FEELER_RAYS)
		local angleWeight =  0.25 + 0.75 * math.abs(math.cos(dtheta))	
		local offset = CFrame.fromAxisAngle(oldGravityUp, dtheta) * radialVector
		local dir = (FEELER_RADIUS * offset + LOWER_RADIUS_OFFSET * -oldGravityUp).unit
		local feelerOrigin = origin - FEELER_APEX_OFFSET * -oldGravityUp + FEELER_START_OFFSET * dir
		local ray = Ray.new(feelerOrigin, FEELER_LENGTH * dir)
		local hit, hitPoint, hitNormal = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
		--[[disable
		DrawClass.Draw3D.Ray(ray.Origin, ray.Direction)
		]]
		if (hit) then
			feelerNormalSum = feelerNormalSum + FEELER_WEIGHTING * angleWeight * hitNormal --* hitDistSqInv
			feelerHitCount = feelerHitCount + 1
		end
	end
	
	if (centerRayHitCount + downHitCount + feelerHitCount > 0) then
		local normalSum = mainDownNormal + downRaySum + feelerNormalSum
		if (normalSum ~= ZERO) then
			return normalSum.unit
		end
	end
	
	return oldGravityUp
end

Controller.GetGravityUp = GetGravityUp

-- E is toggle
game:GetService("ContextActionService"):BindAction("Toggle", function(action, state, input)
	if not (state == Enum.UserInputState.Begin) then
		return
	end
	
	if (Controller) then
		Controller:Destroy()
		Controller = nil
	else
		Controller = GravityController.new(PLAYERS.LocalPlayer)
		Controller.GetGravityUp = GetGravityUp
	end
end, false, Enum.KeyCode.Z)
print("end")