-- Compiled with roblox-ts v2.3.0
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
if _G.bladeball then
	error("This program is already running!")
end
_G.bladeball = true
--[[
	***********************************************************
	 * CONFIGURATIONS
	 * Description: User-defined settings and configurations
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
local RADIUS = 15
local COMPENSATION = 150 / 1000
--[[
	***********************************************************
	 * VARIABLES
	 * Description: Variables referenced globally in the script
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
local LocalPlayer = Players.LocalPlayer
--[[
	***********************************************************
	 * UTILITIES
	 * Description: Helper functions and classes
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
local Bin
do
	Bin = setmetatable({}, {
		__tostring = function()
			return "Bin"
		end,
	})
	Bin.__index = Bin
	function Bin.new(...)
		local self = setmetatable({}, Bin)
		return self:constructor(...) or self
	end
	function Bin:constructor()
	end
	function Bin:add(item)
		local node = {
			item = item,
		}
		if self.head == nil then
			self.head = node
		end
		if self.tail then
			self.tail.next = node
		end
		self.tail = node
		return item
	end
	function Bin:batch(...)
		local args = { ... }
		for _, item in args do
			local node = {
				item = item,
			}
			if self.head == nil then
				self.head = node
			end
			if self.tail then
				self.tail.next = node
			end
			self.tail = node
		end
		return args
	end
	function Bin:destroy()
		while self.head do
			local item = self.head.item
			if type(item) == "function" then
				item()
			elseif typeof(item) == "RBXScriptConnection" then
				item:Disconnect()
			elseif type(item) == "thread" then
				task.cancel(item)
			elseif item.destroy ~= nil then
				item:destroy()
			elseif item.Destroy ~= nil then
				item:Destroy()
			end
			self.head = self.head.next
		end
	end
	function Bin:isEmpty()
		return self.head == nil
	end
end
local function evaluateIntercept(x, y, z, vx, vy, vz, R)
	local a = vx ^ 2 + vy ^ 2 + vz ^ 2
	local b = 2 * (vx * x + vy * y + vz * z)
	local c = x ^ 2 + y ^ 2 + z ^ 2 - R ^ 2
	local discriminant = b ^ 2 - 4 * a * c
	if discriminant < 0 then
		return nil
	end
	local sqrtDiscriminant = math.sqrt(discriminant)
	local denominator = 2 * a
	local t0 = (-b - sqrtDiscriminant) / denominator
	if t0 > 0 then
		return t0
	end
	local t1 = (-b + sqrtDiscriminant) / denominator
	if t1 > 0 then
		return t1
	end
	return nil
end
--[[
	***********************************************************
	 * COMPONENTS
	 * Description: Classes for specific entities/objects
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
local BaseComponent
do
	BaseComponent = setmetatable({}, {
		__tostring = function()
			return "BaseComponent"
		end,
	})
	BaseComponent.__index = BaseComponent
	function BaseComponent.new(...)
		local self = setmetatable({}, BaseComponent)
		return self:constructor(...) or self
	end
	function BaseComponent:constructor(instance)
		self.instance = instance
		self.bin = Bin.new()
	end
	function BaseComponent:destroy()
		self.bin:destroy()
	end
end
local BallComponent
do
	local super = BaseComponent
	BallComponent = setmetatable({}, {
		__tostring = function()
			return "BallComponent"
		end,
		__index = super,
	})
	BallComponent.__index = BallComponent
	function BallComponent.new(...)
		local self = setmetatable({}, BallComponent)
		return self:constructor(...) or self
	end
	function BallComponent:constructor(instance)
		super.constructor(self, instance)
		self.active = false
		self.target = ""
		self.isHit = false
		self.delay = false
		self:updateActive()
		self:updateTarget()
		local bin = self.bin
		bin:batch(instance:GetAttributeChangedSignal("realBall"):Connect(function()
			return self:updateActive()
		end), instance:GetAttributeChangedSignal("target"):Connect(function()
			return self:updateTarget()
		end))
		bin:batch(function()
			local _active = BallComponent.active
			local _instance = instance
			-- Ã¢âÂ¼ Map.delete Ã¢âÂ¼
			local _valueExisted = _active[_instance] ~= nil
			_active[_instance] = nil
			-- Ã¢âÂ² Map.delete Ã¢âÂ²
			return _valueExisted
		end, instance.Destroying:Connect(function()
			return self:destroy()
		end))
		local _active = BallComponent.active
		local _instance = instance
		local _self = self
		_active[_instance] = _self
	end
	function BallComponent:updateTarget()
		self.isHit = false
		self.delay = false
		self.target = self.instance:GetAttribute("target")
	end
	function BallComponent:updateActive()
		self.isHit = false
		self.delay = false
		self.active = self.instance:GetAttribute("realBall") == true
	end
	function BallComponent:debounce()
		self.isHit = true
		self.delay = true
		task.delay(0.05 + COMPENSATION / 2, function()
			if not self.delay then
				return nil
			end
			self.delay = false
			self.isHit = false
		end)
	end
	function BallComponent:canParry()
		return not self.isHit
	end
	function BallComponent:getTarget()
		return self.target
	end
	function BallComponent:isActive()
		return self.active
	end
	BallComponent.active = {}
end
local RigComponent
do
	local super = BaseComponent
	RigComponent = setmetatable({}, {
		__tostring = function()
			return "RigComponent"
		end,
		__index = super,
	})
	RigComponent.__index = RigComponent
	function RigComponent.new(...)
		local self = setmetatable({}, RigComponent)
		return self:constructor(...) or self
	end
	function RigComponent:constructor(instance)
		super.constructor(self, instance)
		local root = instance:WaitForChild("HumanoidRootPart")
		if root == nil then
			error("Root part not found")
		end
		local humanoid = instance:WaitForChild("Humanoid")
		if humanoid == nil then
			error("Humanoid not found")
		end
		self.root = root
		self.humanoid = humanoid
		local bin = self.bin
		bin:batch(humanoid.Died:Connect(function()
			return self:destroy()
		end), instance.Destroying:Connect(function()
			return self:destroy()
		end))
	end
end
local CharacterComponent
do
	local super = RigComponent
	CharacterComponent = setmetatable({}, {
		__tostring = function()
			return "CharacterComponent"
		end,
		__index = super,
	})
	CharacterComponent.__index = CharacterComponent
	function CharacterComponent.new(...)
		local self = setmetatable({}, CharacterComponent)
		return self:constructor(...) or self
	end
	function CharacterComponent:constructor(instance)
		super.constructor(self, instance)
	end
	CharacterComponent.active = {}
end
local PlayerComponent
do
	local super = BaseComponent
	PlayerComponent = setmetatable({}, {
		__tostring = function()
			return "PlayerComponent"
		end,
		__index = super,
	})
	PlayerComponent.__index = PlayerComponent
	function PlayerComponent.new(...)
		local self = setmetatable({}, PlayerComponent)
		return self:constructor(...) or self
	end
	function PlayerComponent:constructor(instance)
		super.constructor(self, instance)
		self.name = self.instance.Name
		local character = instance.Character
		if character then
			task.spawn(function()
				return self:onCharacterAdded(character)
			end)
		end
		local bin = self.bin
		bin:batch(instance.CharacterAdded:Connect(function(character)
			return self:onCharacterAdded(character)
		end), instance.CharacterRemoving:Connect(function()
			return self:onCharacterRemoving()
		end))
		bin:add(function()
			local _active = PlayerComponent.active
			local _instance = instance
			-- Ã¢âÂ¼ Map.delete Ã¢âÂ¼
			local _valueExisted = _active[_instance] ~= nil
			_active[_instance] = nil
			-- Ã¢âÂ² Map.delete Ã¢âÂ²
			return _valueExisted
		end)
		local _active = PlayerComponent.active
		local _instance = instance
		local _self = self
		_active[_instance] = _self
	end
	function PlayerComponent:onCharacterAdded(character)
		local _result = self.character
		if _result ~= nil then
			_result:destroy()
		end
		self.character = CharacterComponent.new(character)
	end
	function PlayerComponent:onCharacterRemoving()
		local _result = self.character
		if _result ~= nil then
			_result:destroy()
		end
		self.character = nil
	end
	function PlayerComponent:getName()
		return self.name
	end
	function PlayerComponent:getCharacter()
		return self.character
	end
	PlayerComponent.active = {}
end
--[[
	***********************************************************
	 * CONTROLLERS
	 * Description: Singletons that are used once
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
local ComponentController = {}
do
	local _container = ComponentController
	local BallFolder = Workspace:WaitForChild("Balls", 10)
	local onBallAdded = function(instance)
		if instance:IsA("Part") then
			BallComponent.new(instance)
		end
	end
	local onPlayerAdded = function(instance)
		PlayerComponent.new(instance)
	end
	--* @hidden 
	local function __init()
		local _exp = BallFolder:GetChildren()
		-- Ã¢âÂ¼ ReadonlyArray.forEach Ã¢âÂ¼
		local _callback = function(instance)
			return task.spawn(onBallAdded, instance)
		end
		for _k, _v in _exp do
			_callback(_v, _k - 1, _exp)
		end
		-- Ã¢âÂ² ReadonlyArray.forEach Ã¢âÂ²
		BallFolder.ChildAdded:Connect(onBallAdded)
		local _exp_1 = Players:GetPlayers()
		-- Ã¢âÂ¼ ReadonlyArray.forEach Ã¢âÂ¼
		local _callback_1 = function(instance)
			return task.spawn(onPlayerAdded, instance)
		end
		for _k, _v in _exp_1 do
			_callback_1(_v, _k - 1, _exp_1)
		end
		-- Ã¢âÂ² ReadonlyArray.forEach Ã¢âÂ²
		Players.PlayerAdded:Connect(onPlayerAdded)
		Players.PlayerRemoving:Connect(function(instance)
			local _active = PlayerComponent.active
			local _instance = instance
			local _result = _active[_instance]
			if _result ~= nil then
				_result = _result:destroy()
			end
			return _result
		end)
	end
	_container.__init = __init
end
local ParryController = {}
do
	local _container = ParryController
	local Vector2D = Vector3.new(1, 0, 1)
	local useParry = function(ball)
		keypress(0x46)
		keyrelease(0x46)
		ball:debounce()
	end
	--* @hidden 
	local function __init()
		local player = PlayerComponent.active[LocalPlayer]
		RunService.Heartbeat:Connect(function()
			local character = player:getCharacter()
			if not character then
				return nil
			end
			local name = player:getName()
			local root = character.root
			local origin = root.Position
			local motion = root.AssemblyLinearVelocity * Vector2D
			local _exp = BallComponent.active
			-- Ã¢âÂ¼ ReadonlyMap.forEach Ã¢âÂ¼
			local _callback = function(ball, instance)
				if not ball:canParry() then
					return nil
				end
				if ball:getTarget() ~= name then
					return nil
				end
				local position = instance.Position - origin
				if position.Magnitude < RADIUS then
					return useParry(ball)
				end
				local velocity = instance.AssemblyLinearVelocity - motion
				local intercept = evaluateIntercept(position.X, position.Y, position.Z, velocity.X, velocity.Y, velocity.Z, RADIUS)
				if intercept == nil then
					return nil
				end
				if intercept > COMPENSATION then
					return nil
				end
				return useParry(ball)
			end
			for _k, _v in _exp do
				_callback(_v, _k, _exp)
			end
			-- Ã¢âÂ² ReadonlyMap.forEach Ã¢âÂ²
		end)
	end
	_container.__init = __init
end
--[[
	***********************************************************
	 * INITIALIZATION
	 * Description: Initializes and starts the runtime
	 * Last updated: Feb. 14, 2024
	 ***********************************************************
]]
ComponentController.__init()
ParryController.__init()
return "Initialized Successfully"