local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local carstrademod = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local inf = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local SimpleSpy = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local mm2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local reviz = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local UICorner_9 = Instance.new("UICorner")
local close = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local open = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(0.312871277, 0, 0.273851603, 0)
Frame.Size = UDim2.new(0, 500, 0, 339)
Frame.Active = true
Frame.Draggable = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Frame_2.Position = UDim2.new(0.0300000012, 0, 0.0530973449, 0)
Frame_2.Size = UDim2.new(0, 469, 0, 303)
Frame.Active = true

UICorner.Parent = Frame_2

carstrademod.Name = "carstrademod"
carstrademod.Parent = Frame_2
carstrademod.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
carstrademod.Position = UDim2.new(0.0341151394, 0, 0.227722779, 0)
carstrademod.Size = UDim2.new(0, 200, 0, 50)
carstrademod.Font = Enum.Font.SourceSans
carstrademod.Text = "Cars Trading Mod"
carstrademod.TextColor3 = Color3.fromRGB(255, 255, 255)
carstrademod.TextScaled = true
carstrademod.TextSize = 14.000
carstrademod.TextWrapped = true
carstrademod.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/vhNFzwzE'))()
end)

UICorner_2.Parent = carstrademod

title.Name = "title"
title.Parent = Frame_2
title.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
title.Size = UDim2.new(0, 469, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Johnthehack44's Cheat V2"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

UICorner_3.Parent = title

inf.Name = "inf"
inf.Parent = Frame_2
inf.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
inf.Position = UDim2.new(0.518123627, 0, 0.227722779, 0)
inf.Size = UDim2.new(0, 200, 0, 50)
inf.Font = Enum.Font.SourceSans
inf.Text = "Infinite Yield"
inf.TextColor3 = Color3.fromRGB(255, 255, 255)
inf.TextScaled = true
inf.TextSize = 14.000
inf.TextWrapped = true
inf.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UICorner_4.Parent = inf

SimpleSpy.Name = "SimpleSpy"
SimpleSpy.Parent = Frame_2
SimpleSpy.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
SimpleSpy.Position = UDim2.new(0.518123686, 0, 0.462046176, 0)
SimpleSpy.Size = UDim2.new(0, 200, 0, 50)
SimpleSpy.Font = Enum.Font.SourceSans
SimpleSpy.Text = "Simple Spy"
SimpleSpy.TextColor3 = Color3.fromRGB(255, 255, 255)
SimpleSpy.TextScaled = true
SimpleSpy.TextSize = 14.000
SimpleSpy.TextWrapped = true
SimpleSpy.MouseButton1Click:Connect(function()
	--[[
    SimpleSpy v2.2 SOURCE

    SimpleSpy is a lightweight penetration testing tool that logs remote calls.

    Credits:
        exx - basically everything
        Frosty - GUI to Lua
]]

	-- shuts down the previous instance of SimpleSpy
	if _G.SimpleSpyExecuted and type(_G.SimpleSpyShutdown) == "function" then
		print(pcall(_G.SimpleSpyShutdown))
	end

	local Players = game:GetService("Players")
	local CoreGui = game:GetService("CoreGui")
	local Highlight =
		loadstring(
			game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/highlight.lua")
		)()

	---- GENERATED (kinda sorta mostly) BY GUI to LUA ----

	-- Instances:

	local SimpleSpy2 = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local LeftPanel = Instance.new("Frame")
	local LogList = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local RemoteTemplate = Instance.new("Frame")
	local ColorBar = Instance.new("Frame")
	local Text = Instance.new("TextLabel")
	local Button = Instance.new("TextButton")
	local RightPanel = Instance.new("Frame")
	local CodeBox = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local FunctionTemplate = Instance.new("Frame")
	local ColorBar_2 = Instance.new("Frame")
	local Text_2 = Instance.new("TextLabel")
	local Button_2 = Instance.new("TextButton")
	local TopBar = Instance.new("Frame")
	local Simple = Instance.new("TextButton")
	local CloseButton = Instance.new("TextButton")
	local ImageLabel = Instance.new("ImageLabel")
	local MaximizeButton = Instance.new("TextButton")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local MinimizeButton = Instance.new("TextButton")
	local ImageLabel_3 = Instance.new("ImageLabel")
	local ToolTip = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	SimpleSpy2.Name = "SimpleSpy2"
	SimpleSpy2.ResetOnSpawn = false

	Background.Name = "Background"
	Background.Parent = SimpleSpy2
	Background.BackgroundColor3 = Color3.new(1, 1, 1)
	Background.BackgroundTransparency = 1
	Background.Position = UDim2.new(0, 500, 0, 200)
	Background.Size = UDim2.new(0, 450, 0, 268)

	LeftPanel.Name = "LeftPanel"
	LeftPanel.Parent = Background
	LeftPanel.BackgroundColor3 = Color3.fromRGB(53, 52, 55)
	LeftPanel.BorderSizePixel = 0
	LeftPanel.Position = UDim2.new(0, 0, 0, 19)
	LeftPanel.Size = UDim2.new(0, 131, 0, 249)

	LogList.Name = "LogList"
	LogList.Parent = LeftPanel
	LogList.Active = true
	LogList.BackgroundColor3 = Color3.new(1, 1, 1)
	LogList.BackgroundTransparency = 1
	LogList.BorderSizePixel = 0
	LogList.Position = UDim2.new(0, 0, 0, 9)
	LogList.Size = UDim2.new(0, 131, 0, 232)
	LogList.CanvasSize = UDim2.new(0, 0, 0, 0)
	LogList.ScrollBarThickness = 4

	UIListLayout.Parent = LogList
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	RemoteTemplate.Name = "RemoteTemplate"
	RemoteTemplate.Parent = LogList
	RemoteTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
	RemoteTemplate.BackgroundTransparency = 1
	RemoteTemplate.Size = UDim2.new(0, 117, 0, 27)

	ColorBar.Name = "ColorBar"
	ColorBar.Parent = RemoteTemplate
	ColorBar.BackgroundColor3 = Color3.fromRGB(255, 242, 0)
	ColorBar.BorderSizePixel = 0
	ColorBar.Position = UDim2.new(0, 0, 0, 1)
	ColorBar.Size = UDim2.new(0, 7, 0, 18)
	ColorBar.ZIndex = 2

	Text.Name = "Text"
	Text.Parent = RemoteTemplate
	Text.BackgroundColor3 = Color3.new(1, 1, 1)
	Text.BackgroundTransparency = 1
	Text.Position = UDim2.new(0, 12, 0, 1)
	Text.Size = UDim2.new(0, 105, 0, 18)
	Text.ZIndex = 2
	Text.Font = Enum.Font.SourceSans
	Text.Text = "TEXT"
	Text.TextColor3 = Color3.new(1, 1, 1)
	Text.TextSize = 14
	Text.TextXAlignment = Enum.TextXAlignment.Left
	Text.TextWrapped = true

	Button.Name = "Button"
	Button.Parent = RemoteTemplate
	Button.BackgroundColor3 = Color3.new(0, 0, 0)
	Button.BackgroundTransparency = 0.75
	Button.BorderColor3 = Color3.new(1, 1, 1)
	Button.Position = UDim2.new(0, 0, 0, 1)
	Button.Size = UDim2.new(0, 117, 0, 18)
	Button.AutoButtonColor = false
	Button.Font = Enum.Font.SourceSans
	Button.Text = ""
	Button.TextColor3 = Color3.new(0, 0, 0)
	Button.TextSize = 14

	RightPanel.Name = "RightPanel"
	RightPanel.Parent = Background
	RightPanel.BackgroundColor3 = Color3.fromRGB(37, 36, 38)
	RightPanel.BorderSizePixel = 0
	RightPanel.Position = UDim2.new(0, 131, 0, 19)
	RightPanel.Size = UDim2.new(0, 319, 0, 249)

	CodeBox.Name = "CodeBox"
	CodeBox.Parent = RightPanel
	CodeBox.BackgroundColor3 = Color3.new(0.0823529, 0.0745098, 0.0784314)
	CodeBox.BorderSizePixel = 0
	CodeBox.Size = UDim2.new(0, 319, 0, 119)

	ScrollingFrame.Parent = RightPanel
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	ScrollingFrame.BackgroundTransparency = 1
	ScrollingFrame.Position = UDim2.new(0, 0, 0.5, 0)
	ScrollingFrame.Size = UDim2.new(1, 0, 0.5, -9)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 4

	UIGridLayout.Parent = ScrollingFrame
	UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
	UIGridLayout.CellSize = UDim2.new(0, 94, 0, 27)

	FunctionTemplate.Name = "FunctionTemplate"
	FunctionTemplate.Parent = ScrollingFrame
	FunctionTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
	FunctionTemplate.BackgroundTransparency = 1
	FunctionTemplate.Size = UDim2.new(0, 117, 0, 23)

	ColorBar_2.Name = "ColorBar"
	ColorBar_2.Parent = FunctionTemplate
	ColorBar_2.BackgroundColor3 = Color3.new(1, 1, 1)
	ColorBar_2.BorderSizePixel = 0
	ColorBar_2.Position = UDim2.new(0, 7, 0, 10)
	ColorBar_2.Size = UDim2.new(0, 7, 0, 18)
	ColorBar_2.ZIndex = 3

	Text_2.Name = "Text"
	Text_2.Parent = FunctionTemplate
	Text_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Text_2.BackgroundTransparency = 1
	Text_2.Position = UDim2.new(0, 19, 0, 10)
	Text_2.Size = UDim2.new(0, 69, 0, 18)
	Text_2.ZIndex = 2
	Text_2.Font = Enum.Font.SourceSans
	Text_2.Text = "TEXT"
	Text_2.TextColor3 = Color3.new(1, 1, 1)
	Text_2.TextSize = 14
	Text_2.TextStrokeColor3 = Color3.new(0.145098, 0.141176, 0.14902)
	Text_2.TextXAlignment = Enum.TextXAlignment.Left
	Text_2.TextWrapped = true

	Button_2.Name = "Button"
	Button_2.Parent = FunctionTemplate
	Button_2.BackgroundColor3 = Color3.new(0, 0, 0)
	Button_2.BackgroundTransparency = 0.69999998807907
	Button_2.BorderColor3 = Color3.new(1, 1, 1)
	Button_2.Position = UDim2.new(0, 7, 0, 10)
	Button_2.Size = UDim2.new(0, 80, 0, 18)
	Button_2.AutoButtonColor = false
	Button_2.Font = Enum.Font.SourceSans
	Button_2.Text = ""
	Button_2.TextColor3 = Color3.new(0, 0, 0)
	Button_2.TextSize = 14

	TopBar.Name = "TopBar"
	TopBar.Parent = Background
	TopBar.BackgroundColor3 = Color3.fromRGB(37, 35, 38)
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(0, 450, 0, 19)

	Simple.Name = "Simple"
	Simple.Parent = TopBar
	Simple.BackgroundColor3 = Color3.new(1, 1, 1)
	Simple.AutoButtonColor = false
	Simple.BackgroundTransparency = 1
	Simple.Position = UDim2.new(0, 5, 0, 0)
	Simple.Size = UDim2.new(0, 57, 0, 18)
	Simple.Font = Enum.Font.SourceSansBold
	Simple.Text = "SimpleSpy"
	Simple.TextColor3 = Color3.new(1, 1, 1)
	Simple.TextSize = 14
	Simple.TextXAlignment = Enum.TextXAlignment.Left

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = TopBar
	CloseButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(1, -19, 0, 0)
	CloseButton.Size = UDim2.new(0, 19, 0, 19)
	CloseButton.Font = Enum.Font.SourceSans
	CloseButton.Text = ""
	CloseButton.TextColor3 = Color3.new(0, 0, 0)
	CloseButton.TextSize = 14

	ImageLabel.Parent = CloseButton
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(0, 5, 0, 5)
	ImageLabel.Size = UDim2.new(0, 9, 0, 9)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=5597086202"

	MaximizeButton.Name = "MaximizeButton"
	MaximizeButton.Parent = TopBar
	MaximizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
	MaximizeButton.BorderSizePixel = 0
	MaximizeButton.Position = UDim2.new(1, -38, 0, 0)
	MaximizeButton.Size = UDim2.new(0, 19, 0, 19)
	MaximizeButton.Font = Enum.Font.SourceSans
	MaximizeButton.Text = ""
	MaximizeButton.TextColor3 = Color3.new(0, 0, 0)
	MaximizeButton.TextSize = 14

	ImageLabel_2.Parent = MaximizeButton
	ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
	ImageLabel_2.Size = UDim2.new(0, 9, 0, 9)
	ImageLabel_2.Image = "http://www.roblox.com/asset/?id=5597108117"

	MinimizeButton.Name = "MinimizeButton"
	MinimizeButton.Parent = TopBar
	MinimizeButton.BackgroundColor3 = Color3.new(0.145098, 0.141176, 0.14902)
	MinimizeButton.BorderSizePixel = 0
	MinimizeButton.Position = UDim2.new(1, -57, 0, 0)
	MinimizeButton.Size = UDim2.new(0, 19, 0, 19)
	MinimizeButton.Font = Enum.Font.SourceSans
	MinimizeButton.Text = ""
	MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
	MinimizeButton.TextSize = 14

	ImageLabel_3.Parent = MinimizeButton
	ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel_3.BackgroundTransparency = 1
	ImageLabel_3.Position = UDim2.new(0, 5, 0, 5)
	ImageLabel_3.Size = UDim2.new(0, 9, 0, 9)
	ImageLabel_3.Image = "http://www.roblox.com/asset/?id=5597105827"

	ToolTip.Name = "ToolTip"
	ToolTip.Parent = SimpleSpy2
	ToolTip.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	ToolTip.BackgroundTransparency = 0.1
	ToolTip.BorderColor3 = Color3.new(1, 1, 1)
	ToolTip.Size = UDim2.new(0, 200, 0, 50)
	ToolTip.ZIndex = 3
	ToolTip.Visible = false

	TextLabel.Parent = ToolTip
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 2, 0, 2)
	TextLabel.Size = UDim2.new(0, 196, 0, 46)
	TextLabel.ZIndex = 3
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "This is some slightly longer text."
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top

	-------------------------------------------------------------------------------
	-- init
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local ContentProvider = game:GetService("ContentProvider")
	local TextService = game:GetService("TextService")
	local Mouse

	local selectedColor = Color3.new(0.321569, 0.333333, 1)
	local deselectedColor = Color3.new(0.8, 0.8, 0.8)
	--- So things are descending
	local layoutOrderNum = 999999999
	--- Whether or not the gui is closing
	local mainClosing = false
	--- Whether or not the gui is closed (defaults to false)
	local closed = false
	--- Whether or not the sidebar is closing
	local sideClosing = false
	--- Whether or not the sidebar is closed (defaults to true but opens automatically on remote selection)
	local sideClosed = false
	--- Whether or not the code box is maximized (defaults to false)
	local maximized = false
	--- The event logs to be read from
	local logs = {}
	--- The event currently selected.Log (defaults to nil)
	local selected = nil
	--- The blacklist (can be a string name or the Remote Instance)
	local blacklist = {}
	--- The block list (can be a string name or the Remote Instance)
	local blocklist = {}
	--- Whether or not to add getNil function
	local getNil = false
	--- Array of remotes (and original functions) connected to
	local connectedRemotes = {}
	--- True = hookfunction, false = namecall
	local toggle = false
	local gm
	local original
	--- used to prevent recursives
	local prevTables = {}
	--- holds logs (for deletion)
	local remoteLogs = {}
	--- used for hookfunction
	local remoteEvent = Instance.new("RemoteEvent")
	--- used for hookfunction
	local remoteFunction = Instance.new("RemoteFunction")
	local originalEvent = remoteEvent.FireServer
	local originalFunction = remoteFunction.InvokeServer
	--- the maximum amount of remotes allowed in logs
	_G.SIMPLESPYCONFIG_MaxRemotes = 500
	--- how many spaces to indent
	local indent = 4
	--- used for task scheduler
	local scheduled = {}
	--- RBXScriptConnect of the task scheduler
	local schedulerconnect
	local SimpleSpy = {}
	local topstr = ""
	local bottomstr = ""
	local remotesFadeIn
	local rightFadeIn
	local codebox
	local p
	local getnilrequired = false

	-- autoblock variables
	local autoblock = false
	local history = {}
	local excluding = {}

	-- function info variables
	local funcEnabled = true

	-- remote hooking/connecting api variables
	local remoteSignals = {}
	local remoteHooks = {}

	-- original mouse icon
	local oldIcon

	-- if mouse inside gui
	local mouseInGui = false

	-- handy array of RBXScriptConnections to disconnect on shutdown
	local connections = {}

	-- whether or not SimpleSpy uses 'getcallingscript()' to get the script (default is false because detection)
	local useGetCallingScript = false

	--- used to enable/disable SimpleSpy's keyToString for remotes
	local keyToString = false

	-- determines whether return values are recorded
	local recordReturnValues = false

	-- functions

	--- Converts arguments to a string and generates code that calls the specified method with them, recommended to be used in conjunction with ValueToString (method must be a string, e.g. `game:GetService("ReplicatedStorage").Remote.remote:FireServer`)
	--- @param method string
	--- @param args any[]
	--- @return string
	function SimpleSpy:ArgsToString(method, args)
		assert(typeof(method) == "string", "string expected, got " .. typeof(method))
		assert(typeof(args) == "table", "table expected, got " .. typeof(args))
		return v2v({ args = args }) .. "\n\n" .. method .. "(unpack(args))"
	end

	--- Converts a value to variables with the specified index as the variable name (if nil/invalid then the name will be assigned automatically)
	--- @param t any[]
	--- @return string
	function SimpleSpy:TableToVars(t)
		assert(typeof(t) == "table", "table expected, got " .. typeof(t))
		return v2v(t)
	end

	--- Converts a value to a variable with the specified `variablename` (if nil/invalid then the name will be assigned automatically)
	--- @param value any
	--- @return string
	function SimpleSpy:ValueToVar(value, variablename)
		assert(variablename == nil or typeof(variablename) == "string", "string expected, got " .. typeof(variablename))
		if not variablename then
			variablename = 1
		end
		return v2v({ [variablename] = value })
	end

	--- Converts any value to a string, cannot preserve function contents
	--- @param value any
	--- @return string
	function SimpleSpy:ValueToString(value)
		return v2s(value)
	end

	--- Generates the simplespy function info
	--- @param func function
	--- @return string
	function SimpleSpy:GetFunctionInfo(func)
		assert(typeof(func) == "function", "Instance expected, got " .. typeof(func))
		warn("Function info currently unavailable due to crashing in Synapse X")
		return v2v({ functionInfo = {
			info = debug.getinfo(func),
			constants = debug.getconstants(func),
		} })
	end

	--- Gets the ScriptSignal for a specified remote being fired
	--- @param remote Instance
	function SimpleSpy:GetRemoteFiredSignal(remote)
		assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
		if not remoteSignals[remote] then
			remoteSignals[remote] = newSignal()
		end
		return remoteSignals[remote]
	end

	--- Allows for direct hooking of remotes **THIS CAN BE VERY DANGEROUS**
	--- @param remote Instance
	--- @param f function
	function SimpleSpy:HookRemote(remote, f)
		assert(typeof(remote) == "Instance", "Instance expected, got " .. typeof(remote))
		assert(typeof(f) == "function", "function expected, got " .. typeof(f))
		remoteHooks[remote] = f
	end

	--- Blocks the specified remote instance/string
	--- @param remote any
	function SimpleSpy:BlockRemote(remote)
		assert(
			typeof(remote) == "Instance" or typeof(remote) == "string",
			"Instance | string expected, got " .. typeof(remote)
		)
		blocklist[remote] = true
	end

	--- Excludes the specified remote from logs (instance/string)
	--- @param remote any
	function SimpleSpy:ExcludeRemote(remote)
		assert(
			typeof(remote) == "Instance" or typeof(remote) == "string",
			"Instance | string expected, got " .. typeof(remote)
		)
		blacklist[remote] = true
	end

	--- Creates a new ScriptSignal that can be connected to and fired
	--- @return table
	function newSignal()
		local connected = {}
		return {
			Connect = function(self, f)
				assert(connected, "Signal is closed")
				connected[tostring(f)] = f
				return {
					Connected = true,
					Disconnect = function(self)
						if not connected then
							warn("Signal is already closed")
						end
						self.Connected = false
						connected[tostring(f)] = nil
					end,
				}
			end,
			Wait = function(self)
				local thread = coroutine.running()
				local connection
				connection = self:Connect(function()
					connection:Disconnect()
					if coroutine.status(thread) == "suspended" then
						coroutine.resume(thread)
					end
				end)
				coroutine.yield()
			end,
			Fire = function(self, ...)
				for _, f in pairs(connected) do
					coroutine.wrap(f)(...)
				end
			end,
		}
	end

	--- Prevents remote spam from causing lag (clears logs after `_G.SIMPLESPYCONFIG_MaxRemotes` or 500 remotes)
	function clean()
		local max = _G.SIMPLESPYCONFIG_MaxRemotes
		if not typeof(max) == "number" and math.floor(max) ~= max then
			max = 500
		end
		if #remoteLogs > max then
			for i = 100, #remoteLogs do
				local v = remoteLogs[i]
				if typeof(v[1]) == "RBXScriptConnection" then
					v[1]:Disconnect()
				end
				if typeof(v[2]) == "Instance" then
					v[2]:Destroy()
				end
			end
			local newLogs = {}
			for i = 1, 100 do
				table.insert(newLogs, remoteLogs[i])
			end
			remoteLogs = newLogs
		end
	end

	--- Scales the ToolTip to fit containing text
	function scaleToolTip()
		local size = TextService:GetTextSize(
			TextLabel.Text,
			TextLabel.TextSize,
			TextLabel.Font,
			Vector2.new(196, math.huge)
		)
		TextLabel.Size = UDim2.new(0, size.X, 0, size.Y)
		ToolTip.Size = UDim2.new(0, size.X + 4, 0, size.Y + 4)
	end

	--- Executed when the toggle button (the SimpleSpy logo) is hovered over
	function onToggleButtonHover()
		if not toggle then
			TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
		else
			TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
		end
	end

	--- Executed when the toggle button is unhovered over
	function onToggleButtonUnhover()
		TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
	end

	--- Executed when the X button is hovered over
	function onXButtonHover()
		TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(255, 60, 60) }):Play()
	end

	--- Executed when the X button is unhovered over
	function onXButtonUnhover()
		TweenService:Create(CloseButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(37, 36, 38) }):Play()
	end

	--- Toggles the remote spy method (when button clicked)
	function onToggleButtonClick()
		if toggle then
			TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(252, 51, 51) }):Play()
		else
			TweenService:Create(Simple, TweenInfo.new(0.5), { TextColor3 = Color3.fromRGB(68, 206, 91) }):Play()
		end
		toggleSpyMethod()
	end

	--- Reconnects bringBackOnResize if the current viewport changes and also connects it initially
	function connectResize()
		local lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
		workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			lastCam:Disconnect()
			if workspace.CurrentCamera then
				lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
			end
		end)
	end

	--- Brings gui back if it gets lost offscreen (connected to the camera viewport changing)
	function bringBackOnResize()
		validateSize()
		if sideClosed then
			minimizeSize()
		else
			maximizeSize()
		end
		local currentX = Background.AbsolutePosition.X
		local currentY = Background.AbsolutePosition.Y
		local viewportSize = workspace.CurrentCamera.ViewportSize
		if (currentX < 0) or (currentX > (viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X))) then
			if currentX < 0 then
				currentX = 0
			else
				currentX = viewportSize.X - (sideClosed and 131 or Background.AbsoluteSize.X)
			end
		end
		if (currentY < 0) or (currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)) then
			if currentY < 0 then
				currentY = 0
			else
				currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
			end
		end
		TweenService.Create(
			TweenService,
			Background,
			TweenInfo.new(0.1),
			{ Position = UDim2.new(0, currentX, 0, currentY) }
		):Play()
	end

	--- Drags gui (so long as mouse is held down)
	--- @param input InputObject
	function onBarInput(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			local lastPos = UserInputService.GetMouseLocation(UserInputService)
			local mainPos = Background.AbsolutePosition
			local offset = mainPos - lastPos
			local currentPos = offset + lastPos
			RunService.BindToRenderStep(RunService, "drag", 1, function()
				local newPos = UserInputService.GetMouseLocation(UserInputService)
				if newPos ~= lastPos then
					local currentX = (offset + newPos).X
					local currentY = (offset + newPos).Y
					local viewportSize = workspace.CurrentCamera.ViewportSize
					if
						(currentX < 0 and currentX < currentPos.X)
						or (
							currentX > (viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X))
								and currentX > currentPos.X
						)
					then
						if currentX < 0 then
							currentX = 0
						else
							currentX = viewportSize.X - (sideClosed and 131 or TopBar.AbsoluteSize.X)
						end
					end
					if
						(currentY < 0 and currentY < currentPos.Y)
						or (
							currentY > (viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36)
								and currentY > currentPos.Y
						)
					then
						if currentY < 0 then
							currentY = 0
						else
							currentY = viewportSize.Y - (closed and 19 or Background.AbsoluteSize.Y) - 36
						end
					end
					currentPos = Vector2.new(currentX, currentY)
					lastPos = newPos
					TweenService.Create(
						TweenService,
						Background,
						TweenInfo.new(0.1),
						{ Position = UDim2.new(0, currentPos.X, 0, currentPos.Y) }
					):Play()
				end
				-- if input.UserInputState ~= Enum.UserInputState.Begin then
				--     RunService.UnbindFromRenderStep(RunService, "drag")
				-- end
			end)
			table.insert(
				connections,
				UserInputService.InputEnded:Connect(function(inputE)
					if input == inputE then
						RunService:UnbindFromRenderStep("drag")
					end
				end)
			)
		end
	end

	--- Fades out the table of elements (and makes them invisible), returns a function to make them visible again
	function fadeOut(elements)
		local data = {}
		for _, v in pairs(elements) do
			if typeof(v) == "Instance" and v:IsA("GuiObject") and v.Visible then
				coroutine.wrap(function()
					data[v] = {
						BackgroundTransparency = v.BackgroundTransparency,
					}
					TweenService:Create(v, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
					if v:IsA("TextBox") or v:IsA("TextButton") or v:IsA("TextLabel") then
						data[v].TextTransparency = v.TextTransparency
						TweenService:Create(v, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
					elseif v:IsA("ImageButton") or v:IsA("ImageLabel") then
						data[v].ImageTransparency = v.ImageTransparency
						TweenService:Create(v, TweenInfo.new(0.5), { ImageTransparency = 1 }):Play()
					end
					wait(0.5)
					v.Visible = false
					for i, x in pairs(data[v]) do
						v[i] = x
					end
					data[v] = true
				end)()
			end
		end
		return function()
			for i, _ in pairs(data) do
				coroutine.wrap(function()
					local properties = {
						BackgroundTransparency = i.BackgroundTransparency,
					}
					i.BackgroundTransparency = 1
					TweenService
					:Create(i, TweenInfo.new(0.5), { BackgroundTransparency = properties.BackgroundTransparency })
					:Play()
					if i:IsA("TextBox") or i:IsA("TextButton") or i:IsA("TextLabel") then
						properties.TextTransparency = i.TextTransparency
						i.TextTransparency = 1
						TweenService
						:Create(i, TweenInfo.new(0.5), { TextTransparency = properties.TextTransparency })
						:Play()
					elseif i:IsA("ImageButton") or i:IsA("ImageLabel") then
						properties.ImageTransparency = i.ImageTransparency
						i.ImageTransparency = 1
						TweenService
						:Create(i, TweenInfo.new(0.5), { ImageTransparency = properties.ImageTransparency })
						:Play()
					end
					i.Visible = true
				end)()
			end
		end
	end

	--- Expands and minimizes the gui (closed is the toggle boolean)
	function toggleMinimize(override)
		if mainClosing and not override or maximized then
			return
		end
		mainClosing = true
		closed = not closed
		if closed then
			if not sideClosed then
				toggleSideTray(true)
			end
			LeftPanel.Visible = true
			TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 0) }):Play()
			wait(0.5)
			remotesFadeIn = fadeOut(LeftPanel:GetDescendants())
			wait(0.5)
		else
			TweenService:Create(LeftPanel, TweenInfo.new(0.5), { Size = UDim2.new(0, 131, 0, 249) }):Play()
			wait(0.5)
			if remotesFadeIn then
				remotesFadeIn()
				remotesFadeIn = nil
			end
			bringBackOnResize()
		end
		mainClosing = false
	end

	--- Expands and minimizes the sidebar (sideClosed is the toggle boolean)
	function toggleSideTray(override)
		if sideClosing and not override or maximized then
			return
		end
		sideClosing = true
		sideClosed = not sideClosed
		if sideClosed then
			rightFadeIn = fadeOut(RightPanel:GetDescendants())
			wait(0.5)
			minimizeSize(0.5)
			wait(0.5)
			RightPanel.Visible = false
		else
			if closed then
				toggleMinimize(true)
			end
			RightPanel.Visible = true
			maximizeSize(0.5)
			wait(0.5)
			if rightFadeIn then
				rightFadeIn()
			end
			bringBackOnResize()
		end
		sideClosing = false
	end

	--- Expands code box to fit screen for more convenient viewing
	function toggleMaximize()
		if not sideClosed and not maximized then
			maximized = true
			local disable = Instance.new("TextButton")
			local prevSize = UDim2.new(0, CodeBox.AbsoluteSize.X, 0, CodeBox.AbsoluteSize.Y)
			local prevPos = UDim2.new(0, CodeBox.AbsolutePosition.X, 0, CodeBox.AbsolutePosition.Y)
			disable.Size = UDim2.new(1, 0, 1, 0)
			disable.BackgroundColor3 = Color3.new()
			disable.BorderSizePixel = 0
			disable.Text = 0
			disable.ZIndex = 3
			disable.BackgroundTransparency = 1
			disable.AutoButtonColor = false
			CodeBox.ZIndex = 4
			CodeBox.Position = prevPos
			CodeBox.Size = prevSize
			TweenService
			:Create(
				CodeBox,
				TweenInfo.new(0.5),
				{ Size = UDim2.new(0.5, 0, 0.5, 0), Position = UDim2.new(0.25, 0, 0.25, 0) }
			)
			:Play()
			TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 0.5 }):Play()
			disable.MouseButton1Click:Connect(function()
				if
					UserInputService:GetMouseLocation().Y + 36 >= CodeBox.AbsolutePosition.Y
					and UserInputService:GetMouseLocation().Y + 36 <= CodeBox.AbsolutePosition.Y + CodeBox.AbsoluteSize.Y
					and UserInputService:GetMouseLocation().X >= CodeBox.AbsolutePosition.X
					and UserInputService:GetMouseLocation().X <= CodeBox.AbsolutePosition.X + CodeBox.AbsoluteSize.X
				then
					return
				end
				TweenService:Create(CodeBox, TweenInfo.new(0.5), { Size = prevSize, Position = prevPos }):Play()
				TweenService:Create(disable, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
				maximized = false
				wait(0.5)
				disable:Destroy()
				CodeBox.Size = UDim2.new(1, 0, 0.5, 0)
				CodeBox.Position = UDim2.new(0, 0, 0, 0)
				CodeBox.ZIndex = 0
			end)
		end
	end

	--- Checks if cursor is within resize range
	--- @param p Vector2
	function isInResizeRange(p)
		local relativeP = p - Background.AbsolutePosition
		local range = 5
		if
			relativeP.X >= TopBar.AbsoluteSize.X - range
			and relativeP.Y >= Background.AbsoluteSize.Y - range
			and relativeP.X <= TopBar.AbsoluteSize.X
			and relativeP.Y <= Background.AbsoluteSize.Y
		then
			return true, "B"
		elseif relativeP.X >= TopBar.AbsoluteSize.X - range and relativeP.X <= Background.AbsoluteSize.X then
			return true, "X"
		elseif relativeP.Y >= Background.AbsoluteSize.Y - range and relativeP.Y <= Background.AbsoluteSize.Y then
			return true, "Y"
		end
		return false
	end

	--- Checks if cursor is within dragging range
	--- @param p Vector2
	function isInDragRange(p)
		local relativeP = p - Background.AbsolutePosition
		if
			relativeP.X <= TopBar.AbsoluteSize.X - CloseButton.AbsoluteSize.X * 3
			and relativeP.X >= 0
			and relativeP.Y <= TopBar.AbsoluteSize.Y
			and relativeP.Y >= 0
		then
			return true
		end
		return false
	end

	--- Called when mouse enters SimpleSpy
	function mouseEntered()
		local existingCursor = SimpleSpy2:FindFirstChild("Cursor")
		while existingCursor do
			existingCursor:Destroy()
			existingCursor = SimpleSpy2:FindFirstChild("Cursor")
		end
		local customCursor = Instance.new("ImageLabel")
		customCursor.Name = "Cursor"
		customCursor.Size = UDim2.fromOffset(200, 200)
		customCursor.ZIndex = 1e5
		customCursor.BackgroundTransparency = 1
		customCursor.Image = ""
		customCursor.Parent = SimpleSpy2
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		RunService:BindToRenderStep("SIMPLESPY_CURSOR", 1, function()
			if mouseInGui and _G.SimpleSpyExecuted then
				local mouseLocation = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
				customCursor.Position = UDim2.fromOffset(
					mouseLocation.X - customCursor.AbsoluteSize.X / 2,
					mouseLocation.Y - customCursor.AbsoluteSize.Y / 2
				)
				local inRange, type = isInResizeRange(mouseLocation)
				if inRange and not sideClosed and not closed then
					customCursor.Image = type == "B" and "rbxassetid://6065821980"
						or type == "X" and "rbxassetid://6065821086"
						or type == "Y" and "rbxassetid://6065821596"
				elseif inRange and not closed and type == "Y" or type == "B" then
					customCursor.Image = "rbxassetid://6065821596"
				elseif customCursor.Image ~= "rbxassetid://6065775281" then
					customCursor.Image = "rbxassetid://6065775281"
				end
			else
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
				customCursor:Destroy()
				RunService:UnbindFromRenderStep("SIMPLESPY_CURSOR")
			end
		end)
	end

	--- Called when mouse moves
	function mouseMoved()
		local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
		if
			not closed
			and mousePos.X >= TopBar.AbsolutePosition.X
			and mousePos.X <= TopBar.AbsolutePosition.X + TopBar.AbsoluteSize.X
			and mousePos.Y >= Background.AbsolutePosition.Y
			and mousePos.Y <= Background.AbsolutePosition.Y + Background.AbsoluteSize.Y
		then
			if not mouseInGui then
				mouseInGui = true
				mouseEntered()
			end
		else
			mouseInGui = false
		end
	end

	--- Adjusts the ui elements to the 'Maximized' size
	function maximizeSize(speed)
		if not speed then
			speed = 0.05
		end
		TweenService
		:Create(
			LeftPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(RightPanel, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(
				Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
				Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y
			),
		})
		:Play()
		TweenService
		:Create(
			TopBar,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(Background.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(ScrollingFrame, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X, 110),
			Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
		})
		:Play()
		TweenService
		:Create(CodeBox, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(
				Background.AbsoluteSize.X - LeftPanel.AbsoluteSize.X,
				Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y
			),
		})
		:Play()
		TweenService
		:Create(
			LogList,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
		)
		:Play()
	end

	--- Adjusts the ui elements to close the side
	function minimizeSize(speed)
		if not speed then
			speed = 0.05
		end
		TweenService
		:Create(
			LeftPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(
			RightPanel,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(
			TopBar,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(ScrollingFrame, TweenInfo.new(speed), {
			Size = UDim2.fromOffset(0, 119),
			Position = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y),
		})
		:Play()
		TweenService
		:Create(
			CodeBox,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y) }
		)
		:Play()
		TweenService
		:Create(
			LogList,
			TweenInfo.new(speed),
			{ Size = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }
		)
		:Play()
	end

	--- Ensures size is within screensize limitations
	function validateSize()
		local x, y = Background.AbsoluteSize.X, Background.AbsoluteSize.Y
		local screenSize = workspace.CurrentCamera.ViewportSize
		if x + Background.AbsolutePosition.X > screenSize.X then
			if screenSize.X - Background.AbsolutePosition.X >= 450 then
				x = screenSize.X - Background.AbsolutePosition.X
			else
				x = 450
			end
		elseif y + Background.AbsolutePosition.Y > screenSize.Y then
			if screenSize.X - Background.AbsolutePosition.Y >= 268 then
				y = screenSize.Y - Background.AbsolutePosition.Y
			else
				y = 268
			end
		end
		Background.Size = UDim2.fromOffset(x, y)
	end

	--- Called on user input while mouse in 'Background' frame
	--- @param input InputObject
	function backgroundUserInput(input)
		local mousePos = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
		local inResizeRange, type = isInResizeRange(mousePos)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and inResizeRange then
			local lastPos = UserInputService:GetMouseLocation()
			local offset = Background.AbsoluteSize - lastPos
			local currentPos = lastPos + offset
			RunService:BindToRenderStep("SIMPLESPY_RESIZE", 1, function()
				local newPos = UserInputService:GetMouseLocation()
				if newPos ~= lastPos then
					local currentX = (newPos + offset).X
					local currentY = (newPos + offset).Y
					if currentX < 450 then
						currentX = 450
					end
					if currentY < 268 then
						currentY = 268
					end
					currentPos = Vector2.new(currentX, currentY)
					Background.Size = UDim2.fromOffset(
						(not sideClosed and not closed and (type == "X" or type == "B")) and currentPos.X
							or Background.AbsoluteSize.X,
						(--[[(not sideClosed or currentPos.X <= LeftPanel.AbsolutePosition.X + LeftPanel.AbsoluteSize.X) and]]not closed and (type == "Y" or type == "B"))
							and currentPos.Y
							or Background.AbsoluteSize.Y
					)
					validateSize()
					if sideClosed then
						minimizeSize()
					else
						maximizeSize()
					end
					lastPos = newPos
				end
			end)
			table.insert(
				connections,
				UserInputService.InputEnded:Connect(function(inputE)
					if input == inputE then
						RunService:UnbindFromRenderStep("SIMPLESPY_RESIZE")
					end
				end)
			)
		elseif isInDragRange(mousePos) then
			onBarInput(input)
		end
	end

	--- Gets the player an instance is descended from
	function getPlayerFromInstance(instance)
		for _, v in pairs(Players:GetPlayers()) do
			if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
				return v
			end
		end
	end

	--- Runs on MouseButton1Click of an event frame
	function eventSelect(frame)
		if selected and selected.Log and selected.Log.Button then
			TweenService
			:Create(selected.Log.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(0, 0, 0) })
			:Play()
			selected = nil
		end
		for _, v in pairs(logs) do
			if frame == v.Log then
				selected = v
			end
		end
		if selected and selected.Log then
			TweenService
			:Create(frame.Button, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(92, 126, 229) })
			:Play()
			codebox:setRaw(selected.GenScript)
		end
		if sideClosed then
			toggleSideTray()
		end
	end

	--- Updates the canvas size to fit the current amount of function buttons
	function updateFunctionCanvas()
		ScrollingFrame.CanvasSize = UDim2.fromOffset(UIGridLayout.AbsoluteContentSize.X, UIGridLayout.AbsoluteContentSize.Y)
	end

	--- Updates the canvas size to fit the amount of current remotes
	function updateRemoteCanvas()
		LogList.CanvasSize = UDim2.fromOffset(UIListLayout.AbsoluteContentSize.X, UIListLayout.AbsoluteContentSize.Y)
	end

	--- Allows for toggling of the tooltip and easy setting of le description
	--- @param enable boolean
	--- @param text string
	function makeToolTip(enable, text)
		if enable then
			if ToolTip.Visible then
				ToolTip.Visible = false
				RunService:UnbindFromRenderStep("ToolTip")
			end
			local first = true
			RunService:BindToRenderStep("ToolTip", 1, function()
				local topLeft = Vector2.new(Mouse.X + 20, Mouse.Y + 20)
				local bottomRight = topLeft + ToolTip.AbsoluteSize
				if topLeft.X < 0 then
					topLeft = Vector2.new(0, topLeft.Y)
				elseif bottomRight.X > workspace.CurrentCamera.ViewportSize.X then
					topLeft = Vector2.new(workspace.CurrentCamera.ViewportSize.X - ToolTip.AbsoluteSize.X, topLeft.Y)
				end
				if topLeft.Y < 0 then
					topLeft = Vector2.new(topLeft.X, 0)
				elseif bottomRight.Y > workspace.CurrentCamera.ViewportSize.Y - 35 then
					topLeft = Vector2.new(topLeft.X, workspace.CurrentCamera.ViewportSize.Y - ToolTip.AbsoluteSize.Y - 35)
				end
				if topLeft.X <= Mouse.X and topLeft.Y <= Mouse.Y then
					topLeft = Vector2.new(Mouse.X - ToolTip.AbsoluteSize.X - 2, Mouse.Y - ToolTip.AbsoluteSize.Y - 2)
				end
				if first then
					ToolTip.Position = UDim2.fromOffset(topLeft.X, topLeft.Y)
					first = false
				else
					ToolTip:TweenPosition(UDim2.fromOffset(topLeft.X, topLeft.Y), "Out", "Linear", 0.1)
				end
			end)
			TextLabel.Text = text
			ToolTip.Visible = true
		else
			if ToolTip.Visible then
				ToolTip.Visible = false
				RunService:UnbindFromRenderStep("ToolTip")
			end
		end
	end

	--- Creates new function button (below codebox)
	--- @param name string
	---@param description function
	---@param onClick function
	function newButton(name, description, onClick)
		local button = FunctionTemplate:Clone()
		button.Text.Text = name
		button.Button.MouseEnter:Connect(function()
			makeToolTip(true, description())
		end)
		button.Button.MouseLeave:Connect(function()
			makeToolTip(false)
		end)
		button.AncestryChanged:Connect(function()
			makeToolTip(false)
		end)
		button.Button.MouseButton1Click:Connect(function(...)
			onClick(button, ...)
		end)
		button.Parent = ScrollingFrame
		updateFunctionCanvas()
	end

	--- Adds new Remote to logs
	--- @param name string The name of the remote being logged
	--- @param type string The type of the remote being logged (either 'function' or 'event')
	--- @param args any
	--- @param remote any
	--- @param function_info string
	--- @param blocked any
	function newRemote(type, name, args, remote, function_info, blocked, src, returnValue)
		local remoteFrame = RemoteTemplate:Clone()
		remoteFrame.Text.Text = string.sub(name, 1, 50)
		remoteFrame.ColorBar.BackgroundColor3 = type == "event" and Color3.new(255, 242, 0) or Color3.fromRGB(99, 86, 245)
		local id = Instance.new("IntValue")
		id.Name = "ID"
		id.Value = #logs + 1
		id.Parent = remoteFrame
		local weakRemoteTable = setmetatable({ remote = remote }, { __mode = "v" })
		local log = {
			Name = name,
			Function = function_info,
			Remote = weakRemoteTable,
			Log = remoteFrame,
			Blocked = blocked,
			Source = src,
			GenScript = "-- Generating, please wait... (click to reload)\n-- (If this message persists, the remote args are likely extremely long)",
			ReturnValue = returnValue,
		}
		logs[#logs + 1] = log
		schedule(function()
			log.GenScript = genScript(remote, args)
			if blocked then
				logs[#logs].GenScript = "-- THIS REMOTE WAS PREVENTED FROM FIRING THE SERVER BY SIMPLESPY\n\n"
					.. logs[#logs].GenScript
			end
		end)
		local connect = remoteFrame.Button.MouseButton1Click:Connect(function()
			eventSelect(remoteFrame)
		end)
		if layoutOrderNum < 1 then
			layoutOrderNum = 999999999
		end
		remoteFrame.LayoutOrder = layoutOrderNum
		layoutOrderNum = layoutOrderNum - 1
		remoteFrame.Parent = LogList
		table.insert(remoteLogs, 1, { connect, remoteFrame })
		clean()
		updateRemoteCanvas()
	end

	--- Generates a script from the provided arguments (first has to be remote path)
	function genScript(remote, args)
		prevTables = {}
		local gen = ""
		if #args > 0 then
			if not pcall(function()
					gen = v2v({ args = args }) .. "\n"
				end) then
				gen = gen
					.. "-- TableToString failure! Reverting to legacy functionality (results may vary)\nlocal args = {"
				if
					not pcall(function()
						for i, v in pairs(args) do
							if type(i) ~= "Instance" and type(i) ~= "userdata" then
								gen = gen .. "\n    [object] = "
							elseif type(i) == "string" then
								gen = gen .. '\n    ["' .. i .. '"] = '
							elseif type(i) == "userdata" and typeof(i) ~= "Instance" then
								gen = gen .. "\n    [" .. string.format("nil --[[%s]]", typeof(v)) .. ")] = "
							elseif type(i) == "userdata" then
								gen = gen .. "\n    [game." .. i:GetFullName() .. ")] = "
							end
							if type(v) ~= "Instance" and type(v) ~= "userdata" then
								gen = gen .. "object"
							elseif type(v) == "string" then
								gen = gen .. '"' .. v .. '"'
							elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
								gen = gen .. string.format("nil --[[%s]]", typeof(v))
							elseif type(v) == "userdata" then
								gen = gen .. "game." .. v:GetFullName()
							end
						end
						gen = gen .. "\n}\n\n"
					end)
				then
					gen = gen .. "}\n-- Legacy tableToString failure! Unable to decompile."
				end
			end
			if not remote:IsDescendantOf(game) and not getnilrequired then
				gen = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n\n"
					.. gen
			end
			if remote:IsA("RemoteEvent") then
				gen = gen .. v2s(remote) .. ":FireServer(unpack(args))"
			elseif remote:IsA("RemoteFunction") then
				gen = gen .. v2s(remote) .. ":InvokeServer(unpack(args))"
			end
		else
			if remote:IsA("RemoteEvent") then
				gen = gen .. v2s(remote) .. ":FireServer()"
			elseif remote:IsA("RemoteFunction") then
				gen = gen .. v2s(remote) .. ":InvokeServer()"
			end
		end
		gen = "-- Script generated by SimpleSpy - credits to exx#9394\n\n" .. gen
		prevTables = {}
		return gen
	end

	--- value-to-string: value, string (out), level (indentation), parent table, var name, is from tovar
	function v2s(v, l, p, n, vtv, i, pt, path, tables, tI)
		if not tI then
			tI = { 0 }
		else
			tI[1] += 1
		end
		if typeof(v) == "number" then
			if v == math.huge then
				return "math.huge"
			elseif tostring(v):match("nan") then
				return "0/0 --[[NaN]]"
			end
			return tostring(v)
		elseif typeof(v) == "boolean" then
			return tostring(v)
		elseif typeof(v) == "string" then
			return formatstr(v, l)
		elseif typeof(v) == "function" then
			return f2s(v)
		elseif typeof(v) == "table" then
			return t2s(v, l, p, n, vtv, i, pt, path, tables, tI)
		elseif typeof(v) == "Instance" then
			return i2p(v)
		elseif typeof(v) == "userdata" then
			return "newproxy(true)"
		elseif type(v) == "userdata" then
			return u2s(v)
		elseif type(v) == "vector" then
			return string.format("Vector3.new(%s, %s, %s)", v2s(v.X), v2s(v.Y), v2s(v.Z))
		else
			return "nil --[[" .. typeof(v) .. "]]"
		end
	end

	--- value-to-variable
	--- @param t any
	function v2v(t)
		topstr = ""
		bottomstr = ""
		getnilrequired = false
		local ret = ""
		local count = 1
		for i, v in pairs(t) do
			if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
				ret = ret .. "local " .. i .. " = " .. v2s(v, nil, nil, i, true) .. "\n"
			elseif tostring(i):match("^[%a_]+[%w_]*$") then
				ret = ret
					.. "local "
					.. tostring(i):lower()
					.. "_"
					.. tostring(count)
					.. " = "
					.. v2s(v, nil, nil, tostring(i):lower() .. "_" .. tostring(count), true)
					.. "\n"
			else
				ret = ret
					.. "local "
					.. type(v)
					.. "_"
					.. tostring(count)
					.. " = "
					.. v2s(v, nil, nil, type(v) .. "_" .. tostring(count), true)
					.. "\n"
			end
			count = count + 1
		end
		if getnilrequired then
			topstr = "function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end\n"
				.. topstr
		end
		if #topstr > 0 then
			ret = topstr .. "\n" .. ret
		end
		if #bottomstr > 0 then
			ret = ret .. bottomstr
		end
		return ret
	end

	--- table-to-string
	--- @param t table
	--- @param l number
	--- @param p table
	--- @param n string
	--- @param vtv boolean
	--- @param i any
	--- @param pt table
	--- @param path string
	--- @param tables table
	--- @param tI table
	function t2s(t, l, p, n, vtv, i, pt, path, tables, tI)
		local globalIndex = table.find(getgenv(), t) -- checks if table is a global
		if type(globalIndex) == "string" then
			return globalIndex
		end
		if not tI then
			tI = { 0 }
		end
		if not path then -- sets path to empty string (so it doesn't have to manually provided every time)
			path = ""
		end
		if not l then -- sets the level to 0 (for indentation) and tables for logging tables it already serialized
			l = 0
			tables = {}
		end
		if not p then -- p is the previous table but doesn't really matter if it's the first
			p = t
		end
		for _, v in pairs(tables) do -- checks if the current table has been serialized before
			if n and rawequal(v, t) then
				bottomstr = bottomstr
					.. "\n"
					.. tostring(n)
					.. tostring(path)
					.. " = "
					.. tostring(n)
					.. tostring(({ v2p(v, p) })[2])
				return "{} --[[DUPLICATE]]"
			end
		end
		table.insert(tables, t) -- logs table to past tables
		local s = "{" -- start of serialization
		local size = 0
		l = l + indent -- set indentation level
		for k, v in pairs(t) do -- iterates over table
			size = size + 1 -- changes size for max limit
			if size > (_G.SimpleSpyMaxTableSize or 1000) then
				s = s
					.. "\n"
					.. string.rep(" ", l)
					.. "-- MAXIMUM TABLE SIZE REACHED, CHANGE '_G.SimpleSpyMaxTableSize' TO ADJUST MAXIMUM SIZE "
				break
			end
			if rawequal(k, t) then -- checks if the table being iterated over is being used as an index within itself (yay, lua)
				bottomstr = bottomstr
					.. "\n"
					.. tostring(n)
					.. tostring(path)
					.. "["
					.. tostring(n)
					.. tostring(path)
					.. "]"
					.. " = "
					.. (
						rawequal(v, k) and tostring(n) .. tostring(path)
						or v2s(v, l, p, n, vtv, k, t, path .. "[" .. tostring(n) .. tostring(path) .. "]", tables)
					)
				size -= 1
				continue
			end
			local currentPath = "" -- initializes the path of 'v' within 't'
			if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then -- cleanly handles table path generation (for the first half)
				currentPath = "." .. k
			else
				currentPath = "[" .. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI) .. "]"
			end
			if size % 100 == 0 then
				scheduleWait()
			end
			-- actually serializes the member of the table
			s = s
				.. "\n"
				.. string.rep(" ", l)
				.. "["
				.. k2s(k, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
				.. "] = "
				.. v2s(v, l, p, n, vtv, k, t, path .. currentPath, tables, tI)
				.. ","
		end
		if #s > 1 then -- removes the last comma because it looks nicer (no way to tell if it's done 'till it's done so...)
			s = s:sub(1, #s - 1)
		end
		if size > 0 then -- cleanly indents the last curly bracket
			s = s .. "\n" .. string.rep(" ", l - indent)
		end
		return s .. "}"
	end

	--- key-to-string
	function k2s(v, ...)
		if keyToString then
			if typeof(v) == "userdata" and getrawmetatable(v) then
				return string.format(
					'"<void> (%s)" --[[Potentially hidden data (tostring in SimpleSpy:HookRemote/GetRemoteFiredSignal at your own risk)]]',
					safetostring(v)
				)
			elseif typeof(v) == "userdata" then
				return string.format('"<void> (%s)"', safetostring(v))
			elseif type(v) == "userdata" and typeof(v) ~= "Instance" then
				return string.format('"<%s> (%s)"', typeof(v), tostring(v))
			elseif type(v) == "function" then
				return string.format('"<Function> (%s)"', tostring(v))
			end
		end
		return v2s(v, ...)
	end

	--- function-to-string
	function f2s(f)
		for k, x in pairs(getgenv()) do
			local isgucci, gpath
			if rawequal(x, f) then
				isgucci, gpath = true, ""
			elseif type(x) == "table" then
				isgucci, gpath = v2p(f, x)
			end
			if isgucci and type(k) ~= "function" then
				if type(k) == "string" and k:match("^[%a_]+[%w_]*$") then
					return k .. gpath
				else
					return "getgenv()[" .. v2s(k) .. "]" .. gpath
				end
			end
		end
		if funcEnabled and debug.getinfo(f).name:match("^[%a_]+[%w_]*$") then
			return "function()end --[[" .. debug.getinfo(f).name .. "]]"
		end
		return "function()end --[[" .. tostring(f) .. "]]"
	end

	--- instance-to-path
	--- @param i userdata
	function i2p(i)
		local player = getplayer(i)
		local parent = i
		local out = ""
		if parent == nil then
			return "nil"
		elseif player then
			while true do
				if parent and parent == player.Character then
					if player == Players.LocalPlayer then
						return 'game:GetService("Players").LocalPlayer.Character' .. out
					else
						return i2p(player) .. ".Character" .. out
					end
				else
					if parent.Name:match("[%a_]+[%w+]*") ~= parent.Name then
						out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
					else
						out = "." .. parent.Name .. out
					end
				end
				parent = parent.Parent
			end
		elseif parent ~= game then
			while true do
				if parent and parent.Parent == game then
					local service = game:FindService(parent.ClassName)
					if service then
						if parent.ClassName == "Workspace" then
							return "workspace" .. out
						else
							return 'game:GetService("' .. service.ClassName .. '")' .. out
						end
					else
						if parent.Name:match("[%a_]+[%w_]*") then
							return "game." .. parent.Name .. out
						else
							return "game:FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
						end
					end
				elseif parent.Parent == nil then
					getnilrequired = true
					return "getNil(" .. formatstr(parent.Name) .. ', "' .. parent.ClassName .. '")' .. out
				elseif parent == Players.LocalPlayer then
					out = ".LocalPlayer" .. out
				else
					if parent.Name:match("[%a_]+[%w_]*") ~= parent.Name then
						out = ":FindFirstChild(" .. formatstr(parent.Name) .. ")" .. out
					else
						out = "." .. parent.Name .. out
					end
				end
				parent = parent.Parent
			end
		else
			return "game"
		end
	end

	--- userdata-to-string: userdata
	--- @param u userdata
	function u2s(u)
		if typeof(u) == "TweenInfo" then
			-- TweenInfo
			return "TweenInfo.new("
				.. tostring(u.Time)
				.. ", Enum.EasingStyle."
				.. tostring(u.EasingStyle)
				.. ", Enum.EasingDirection."
				.. tostring(u.EasingDirection)
				.. ", "
				.. tostring(u.RepeatCount)
				.. ", "
				.. tostring(u.Reverses)
				.. ", "
				.. tostring(u.DelayTime)
				.. ")"
		elseif typeof(u) == "Ray" then
			-- Ray
			return "Ray.new(" .. u2s(u.Origin) .. ", " .. u2s(u.Direction) .. ")"
		elseif typeof(u) == "NumberSequence" then
			-- NumberSequence
			local ret = "NumberSequence.new("
			for i, v in pairs(u.KeyPoints) do
				ret = ret .. tostring(v)
				if i < #u.Keypoints then
					ret = ret .. ", "
				end
			end
			return ret .. ")"
		elseif typeof(u) == "DockWidgetPluginGuiInfo" then
			-- DockWidgetPluginGuiInfo
			return "DockWidgetPluginGuiInfo.new(Enum.InitialDockState" .. tostring(u) .. ")"
		elseif typeof(u) == "ColorSequence" then
			-- ColorSequence
			local ret = "ColorSequence.new("
			for i, v in pairs(u.KeyPoints) do
				ret = ret .. "Color3.new(" .. tostring(v) .. ")"
				if i < #u.Keypoints then
					ret = ret .. ", "
				end
			end
			return ret .. ")"
		elseif typeof(u) == "BrickColor" then
			-- BrickColor
			return "BrickColor.new(" .. tostring(u.Number) .. ")"
		elseif typeof(u) == "NumberRange" then
			-- NumberRange
			return "NumberRange.new(" .. tostring(u.Min) .. ", " .. tostring(u.Max) .. ")"
		elseif typeof(u) == "Region3" then
			-- Region3
			local center = u.CFrame.Position
			local size = u.CFrame.Size
			local vector1 = center - size / 2
			local vector2 = center + size / 2
			return "Region3.new(" .. u2s(vector1) .. ", " .. u2s(vector2) .. ")"
		elseif typeof(u) == "Faces" then
			-- Faces
			local faces = {}
			if u.Top then
				table.insert(faces, "Enum.NormalId.Top")
			end
			if u.Bottom then
				table.insert(faces, "Enum.NormalId.Bottom")
			end
			if u.Left then
				table.insert(faces, "Enum.NormalId.Left")
			end
			if u.Right then
				table.insert(faces, "Enum.NormalId.Right")
			end
			if u.Back then
				table.insert(faces, "Enum.NormalId.Back")
			end
			if u.Front then
				table.insert(faces, "Enum.NormalId.Front")
			end
			return "Faces.new(" .. table.concat(faces, ", ") .. ")"
		elseif typeof(u) == "EnumItem" then
			return tostring(u)
		elseif typeof(u) == "Enums" then
			return "Enum"
		elseif typeof(u) == "Enum" then
			return "Enum." .. tostring(u)
		elseif typeof(u) == "RBXScriptSignal" then
			return "nil --[[RBXScriptSignal]]"
		elseif typeof(u) == "Vector3" then
			return string.format("Vector3.new(%s, %s, %s)", v2s(u.X), v2s(u.Y), v2s(u.Z))
		elseif typeof(u) == "CFrame" then
			local xAngle, yAngle, zAngle = u:ToEulerAnglesXYZ()
			return string.format(
				"CFrame.new(%s, %s, %s) * CFrame.Angles(%s, %s, %s)",
				v2s(u.X),
				v2s(u.Y),
				v2s(u.Z),
				v2s(xAngle),
				v2s(yAngle),
				v2s(zAngle)
			)
		elseif typeof(u) == "DockWidgetPluginGuiInfo" then
			return string.format(
				"DockWidgetPluginGuiInfo(%s, %s, %s, %s, %s, %s, %s)",
				"Enum.InitialDockState.Right",
				v2s(u.InitialEnabled),
				v2s(u.InitialEnabledShouldOverrideRestore),
				v2s(u.FloatingXSize),
				v2s(u.FloatingYSize),
				v2s(u.MinWidth),
				v2s(u.MinHeight)
			)
		elseif typeof(u) == "PathWaypoint" then
			return string.format("PathWaypoint.new(%s, %s)", v2s(u.Position), v2s(u.Action))
		elseif typeof(u) == "UDim" then
			return string.format("UDim.new(%s, %s)", v2s(u.Scale), v2s(u.Offset))
		elseif typeof(u) == "UDim2" then
			return string.format(
				"UDim2.new(%s, %s, %s, %s)",
				v2s(u.X.Scale),
				v2s(u.X.Offset),
				v2s(u.Y.Scale),
				v2s(u.Y.Offset)
			)
		elseif typeof(u) == "Rect" then
			return string.format("Rect.new(%s, %s)", v2s(u.Min), v2s(u.Max))
		else
			return string.format("nil --[[%s]]", typeof(u))
		end
	end

	--- Gets the player an instance is descended from
	function getplayer(instance)
		for _, v in pairs(Players:GetPlayers()) do
			if v.Character and (instance:IsDescendantOf(v.Character) or instance == v.Character) then
				return v
			end
		end
	end

	--- value-to-path (in table)
	function v2p(x, t, path, prev)
		if not path then
			path = ""
		end
		if not prev then
			prev = {}
		end
		if rawequal(x, t) then
			return true, ""
		end
		for i, v in pairs(t) do
			if rawequal(v, x) then
				if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
					return true, (path .. "." .. i)
				else
					return true, (path .. "[" .. v2s(i) .. "]")
				end
			end
			if type(v) == "table" then
				local duplicate = false
				for _, y in pairs(prev) do
					if rawequal(y, v) then
						duplicate = true
					end
				end
				if not duplicate then
					table.insert(prev, t)
					local found
					found, p = v2p(x, v, path, prev)
					if found then
						if type(i) == "string" and i:match("^[%a_]+[%w_]*$") then
							return true, "." .. i .. p
						else
							return true, "[" .. v2s(i) .. "]" .. p
						end
					end
				end
			end
		end
		return false, ""
	end

	--- format s: string, byte encrypt (for weird symbols)
	function formatstr(s, indentation)
		if not indentation then
			indentation = 0
		end
		local handled, reachedMax = handlespecials(s, indentation)
		return '"'
			.. handled
			.. '"'
			.. (
				reachedMax
				and " --[[ MAXIMUM STRING SIZE REACHED, CHANGE '_G.SimpleSpyMaxStringSize' TO ADJUST MAXIMUM SIZE ]]"
				or ""
			)
	end

	--- Adds \'s to the text as a replacement to whitespace chars and other things because string.format can't yayeet
	function handlespecials(value, indentation)
		local buildStr = {}
		local i = 1
		local char = string.sub(value, i, i)
		local indentStr
		while char ~= "" do
			if char == '"' then
				buildStr[i] = '\\"'
			elseif char == "\\" then
				buildStr[i] = "\\\\"
			elseif char == "\n" then
				buildStr[i] = "\\n"
			elseif char == "\t" then
				buildStr[i] = "\\t"
			elseif string.byte(char) > 126 or string.byte(char) < 32 then
				buildStr[i] = string.format("\\%d", string.byte(char))
			else
				buildStr[i] = char
			end
			i = i + 1
			char = string.sub(value, i, i)
			if i % 200 == 0 then
				indentStr = indentStr or string.rep(" ", indentation + indent)
				table.move({ '"\n', indentStr, '... "' }, 1, 3, i, buildStr)
				i += 3
			end
		end
		return table.concat(buildStr)
	end

	-- safe (ish) tostring
	function safetostring(v: any)
		if typeof(v) == "userdata" or type(v) == "table" then
			local mt = getrawmetatable(v)
			local badtostring = mt and rawget(mt, "__tostring")
			if mt and badtostring then
				rawset(mt, "__tostring", nil)
				local out = tostring(v)
				rawset(mt, "__tostring", badtostring)
				return out
			end
		end
		return tostring(v)
	end

	--- finds script from 'src' from getinfo, returns nil if not found
	--- @param src string
	function getScriptFromSrc(src)
		local realPath
		local runningTest
		--- @type number
		local s, e
		local match = false
		if src:sub(1, 1) == "=" then
			realPath = game
			s = 2
		else
			runningTest = src:sub(2, e and e - 1 or -1)
			for _, v in pairs(getnilinstances()) do
				if v.Name == runningTest then
					realPath = v
					break
				end
			end
			s = #runningTest + 1
		end
		if realPath then
			e = src:sub(s, -1):find("%.")
			local i = 0
			repeat
				i += 1
				if not e then
					runningTest = src:sub(s, -1)
					local test = realPath.FindFirstChild(realPath, runningTest)
					if test then
						realPath = test
					end
					match = true
				else
					runningTest = src:sub(s, e)
					local test = realPath.FindFirstChild(realPath, runningTest)
					local yeOld = e
					if test then
						realPath = test
						s = e + 2
						e = src:sub(e + 2, -1):find("%.")
						e = e and e + yeOld or e
					else
						e = src:sub(e + 2, -1):find("%.")
						e = e and e + yeOld or e
					end
				end
			until match or i >= 50
		end
		return realPath
	end

	--- schedules the provided function (and calls it with any args after)
	function schedule(f, ...)
		table.insert(scheduled, { f, ... })
	end

	--- yields the current thread until the scheduler gives the ok
	function scheduleWait()
		local thread = coroutine.running()
		schedule(function()
			coroutine.resume(thread)
		end)
		coroutine.yield()
	end

	--- the big (well tbh small now) boi task scheduler himself, handles p much anything as quicc as possible
	function taskscheduler()
		if not toggle then
			scheduled = {}
			return
		end
		if #scheduled > 1000 then
			table.remove(scheduled, #scheduled)
		end
		if #scheduled > 0 then
			local currentf = scheduled[1]
			table.remove(scheduled, 1)
			if type(currentf) == "table" and type(currentf[1]) == "function" then
				pcall(unpack(currentf))
			end
		end
	end

	--- Handles remote logs
	function remoteHandler(hookfunction, methodName, remote, args, funcInfo, calling, returnValue)
		local validInstance, validClass = pcall(function()
			return remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction")
		end)
		if validInstance and validClass then
			local func = funcInfo.func
			if not calling then
				_, calling = pcall(getScriptFromSrc, funcInfo.source)
			end
			coroutine.wrap(function()
				if remoteSignals[remote] then
					remoteSignals[remote]:Fire(args)
				end
			end)()
			if autoblock then
				if excluding[remote] then
					return
				end
				if not history[remote] then
					history[remote] = { badOccurances = 0, lastCall = tick() }
				end
				if tick() - history[remote].lastCall < 1 then
					history[remote].badOccurances += 1
					return
				else
					history[remote].badOccurances = 0
				end
				if history[remote].badOccurances > 3 then
					excluding[remote] = true
					return
				end
				history[remote].lastCall = tick()
			end
			local functionInfoStr
			local src
			if func and islclosure(func) then
				local functionInfo = {}
				functionInfo.info = funcInfo
				pcall(function()
					functionInfo.constants = debug.getconstants(func)
				end)
				pcall(function()
					functionInfoStr = v2v({ functionInfo = functionInfo })
				end)
				pcall(function()
					if type(calling) == "userdata" then
						src = calling
					end
				end)
			end
			if methodName:lower() == "fireserver" then
				newRemote(
					"event",
					remote.Name,
					args,
					remote,
					functionInfoStr,
					(blocklist[remote] or blocklist[remote.Name]),
					src
				)
			elseif methodName:lower() == "invokeserver" then
				newRemote(
					"function",
					remote.Name,
					args,
					remote,
					functionInfoStr,
					(blocklist[remote] or blocklist[remote.Name]),
					src,
					returnValue
				)
			end
		end
	end

	--- Used for hookfunction
	function hookRemote(remoteType, remote, ...)
		if typeof(remote) == "Instance" then
			local args = { ... }
			local validInstance, remoteName = pcall(function()
				return remote.Name
			end)
			if validInstance and not (blacklist[remote] or blacklist[remoteName]) then
				local funcInfo = {}
				local calling
				if funcEnabled then
					funcInfo = debug.getinfo(4) or funcInfo
					calling = useGetCallingScript and getcallingscript() or nil
				end
				if recordReturnValues and remoteType == "RemoteFunction" then
					local thread = coroutine.running()
					local args = { ... }
					task.defer(function()
						local returnValue
						if remoteHooks[remote] then
							args = { remoteHooks[remote](unpack(args)) }
							returnValue = originalFunction(remote, unpack(args))
						else
							returnValue = originalFunction(remote, unpack(args))
						end
						schedule(
							remoteHandler,
							true,
							remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
							remote,
							args,
							funcInfo,
							calling,
							returnValue
						)
						if blocklist[remote] or blocklist[remoteName] then
							coroutine.resume(thread)
						else
							coroutine.resume(thread, unpack(returnValue))
						end
					end)
				else
					schedule(
						remoteHandler,
						true,
						remoteType == "RemoteEvent" and "fireserver" or "invokeserver",
						remote,
						args,
						funcInfo,
						calling
					)
					if blocklist[remote] or blocklist[remoteName] then
						return
					end
				end
			end
		end
		if recordReturnValues and remoteType == "RemoteFunction" then
			return coroutine.yield()
		elseif remoteType == "RemoteEvent" then
			if remoteHooks[remote] then
				return originalEvent(remote, remoteHooks[remote](...))
			end
			return originalEvent(remote, ...)
		else
			if remoteHooks[remote] then
				return originalFunction(remote, remoteHooks[remote](...))
			end
			return originalFunction(remote, ...)
		end
	end

	local newnamecall = newcclosure(function(remote, ...)
		if typeof(remote) == "Instance" then
			local args = { ... }
			local methodName = getnamecallmethod()
			local validInstance, remoteName = pcall(function()
				return remote.Name
			end)
			if
				validInstance
				and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
				and not (blacklist[remote] or blacklist[remoteName])
			then
				local funcInfo = {}
				local calling
				if funcEnabled then
					funcInfo = debug.getinfo(3) or funcInfo
					calling = useGetCallingScript and getcallingscript() or nil
				end
				if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
					local namecallThread = coroutine.running()
					local args = { ... }
					task.defer(function()
						local returnValue
						setnamecallmethod(methodName)
						if remoteHooks[remote] then
							args = { remoteHooks[remote](unpack(args)) }
							returnValue = { original(remote, unpack(args)) }
						else
							returnValue = { original(remote, unpack(args)) }
						end
						coroutine.resume(namecallThread, unpack(returnValue))
						coroutine.wrap(function()
							schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling, returnValue)
						end)()
					end)
				else
					coroutine.wrap(function()
						schedule(remoteHandler, false, methodName, remote, args, funcInfo, calling)
					end)()
				end
			end
			if recordReturnValues and (methodName == "InvokeServer" or methodName == "invokeServer") then
				return coroutine.yield()
			elseif
				validInstance
				and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
				and (blocklist[remote] or blocklist[remoteName])
			then
				return nil
			elseif
				(not recordReturnValues or methodName ~= "InvokeServer" or methodName ~= "invokeServer")
				and validInstance
				and (methodName == "FireServer" or methodName == "fireServer" or methodName == "InvokeServer" or methodName == "invokeServer")
				and remoteHooks[remote]
			then
				return original(remote, remoteHooks[remote](...))
			else
				return original(remote, ...)
			end
		end
		return original(remote, ...)
	end, original)

	local newFireServer = newcclosure(function(...)
		return hookRemote("RemoteEvent", ...)
	end, originalEvent)

	local newInvokeServer = newcclosure(function(...)
		return hookRemote("RemoteFunction", ...)
	end, originalFunction)

	--- Toggles on and off the remote spy
	function toggleSpy()
		if not toggle then
			if hookmetamethod then
				local oldNamecall = hookmetamethod(game, "__namecall", newnamecall)
				original = original or function(...)
					return oldNamecall(...)
				end
				_G.OriginalNamecall = original
			else
				gm = gm or getrawmetatable(game)
				original = original or function(...)
					return gm.__namecall(...)
				end
				setreadonly(gm, false)
				if not original then
					warn("SimpleSpy: namecall method not found!")
					onToggleButtonClick()
					return
				end
				gm.__namecall = newnamecall
				setreadonly(gm, true)
			end
			originalEvent = hookfunction(remoteEvent.FireServer, newFireServer)
			originalFunction = hookfunction(remoteFunction.InvokeServer, newInvokeServer)
		else
			if hookmetamethod then
				if original then
					hookmetamethod(game, "__namecall", original)
				end
			else
				gm = gm or getrawmetatable(game)
				setreadonly(gm, false)
				gm.__namecall = original
				setreadonly(gm, true)
			end
			hookfunction(remoteEvent.FireServer, originalEvent)
			hookfunction(remoteFunction.InvokeServer, originalFunction)
		end
	end

	--- Toggles between the two remotespy methods (hookfunction currently = disabled)
	function toggleSpyMethod()
		toggleSpy()
		toggle = not toggle
	end

	--- Shuts down the remote spy
	function shutdown()
		if schedulerconnect then
			schedulerconnect:Disconnect()
		end
		for _, connection in pairs(connections) do
			coroutine.wrap(function()
				connection:Disconnect()
			end)()
		end
		SimpleSpy2:Destroy()
		hookfunction(remoteEvent.FireServer, originalEvent)
		hookfunction(remoteFunction.InvokeServer, originalFunction)
		if hookmetamethod then
			if original then
				hookmetamethod(game, "__namecall", original)
			end
		else
			gm = gm or getrawmetatable(game)
			setreadonly(gm, false)
			gm.__namecall = original
			setreadonly(gm, true)
		end
		_G.SimpleSpyExecuted = false
	end

	-- main
	if not _G.SimpleSpyExecuted then
		local succeeded, err = pcall(function()
			if not RunService:IsClient() then
				error("SimpleSpy cannot run on the server!")
			end
			if
				not hookfunction
				or not getrawmetatable
				or getrawmetatable and not getrawmetatable(game).__namecall
				or not setreadonly
			then
				local missing = {}
				if not hookfunction then
					table.insert(missing, "hookfunction")
				end
				if not getrawmetatable then
					table.insert(missing, "getrawmetatable")
				end
				if getrawmetatable and not getrawmetatable(game).__namecall then
					table.insert(missing, "getrawmetatable(game).__namecall")
				end
				if not setreadonly then
					table.insert(missing, "setreadonly")
				end
				shutdown()
				error(
					"This environment does not support method hooks!\n(Your exploit is not capable of running SimpleSpy)\nMissing: "
						.. table.concat(missing, ", ")
				)
			end
			_G.SimpleSpyShutdown = shutdown
			ContentProvider:PreloadAsync({
				"rbxassetid://6065821980",
				"rbxassetid://6065774948",
				"rbxassetid://6065821086",
				"rbxassetid://6065821596",
				ImageLabel,
				ImageLabel_2,
				ImageLabel_3,
			})
			-- if gethui then funcEnabled = false end
			onToggleButtonClick()
			RemoteTemplate.Parent = nil
			FunctionTemplate.Parent = nil
			codebox = Highlight.new(CodeBox)
			codebox:setRaw("")
			getgenv().SimpleSpy = SimpleSpy
			getgenv().getNil = function(name, class)
				for _, v in pairs(getnilinstances()) do
					if v.ClassName == class and v.Name == name then
						return v
					end
				end
			end
			TextLabel:GetPropertyChangedSignal("Text"):Connect(scaleToolTip)
			-- TopBar.InputBegan:Connect(onBarInput)
			MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
			MaximizeButton.MouseButton1Click:Connect(toggleSideTray)
			Simple.MouseButton1Click:Connect(onToggleButtonClick)
			CloseButton.MouseEnter:Connect(onXButtonHover)
			CloseButton.MouseLeave:Connect(onXButtonUnhover)
			Simple.MouseEnter:Connect(onToggleButtonHover)
			Simple.MouseLeave:Connect(onToggleButtonUnhover)
			CloseButton.MouseButton1Click:Connect(shutdown)
			table.insert(connections, UserInputService.InputBegan:Connect(backgroundUserInput))
			connectResize()
			SimpleSpy2.Enabled = true
			coroutine.wrap(function()
				wait(1)
				onToggleButtonUnhover()
			end)()
			schedulerconnect = RunService.Heartbeat:Connect(taskscheduler)
			if syn and syn.protect_gui then
				pcall(syn.protect_gui, SimpleSpy2)
			end
			bringBackOnResize()
			SimpleSpy2.Parent = --[[gethui and gethui() or]]
				CoreGui
			_G.SimpleSpyExecuted = true
			if not Players.LocalPlayer then
				Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			end
			Mouse = Players.LocalPlayer:GetMouse()
			oldIcon = Mouse.Icon
			table.insert(connections, Mouse.Move:Connect(mouseMoved))
		end)
		if not succeeded then
			warn(
				"A fatal error has occured, SimpleSpy was unable to launch properly.\nPlease DM this error message to @exx#9394:\n\n"
					.. tostring(err)
			)
			SimpleSpy2:Destroy()
			hookfunction(remoteEvent.FireServer, originalEvent)
			hookfunction(remoteFunction.InvokeServer, originalFunction)
			if hookmetamethod then
				if original then
					hookmetamethod(game, "__namecall", original)
				end
			else
				setreadonly(gm, false)
				gm.__namecall = original
				setreadonly(gm, true)
			end
			return
		end
	else
		SimpleSpy2:Destroy()
		return
	end

	----- ADD ONS ----- (easily add or remove additonal functionality to the RemoteSpy!)
--[[
    Some helpful things:
        - add your function in here, and create buttons for them through the 'newButton' function
        - the first argument provided is the TextButton the player clicks to run the function
        - generated scripts are generated when the namecall is initially fired and saved in remoteFrame objects
        - blacklisted remotes will be ignored directly in namecall (less lag)
        - the properties of a 'remoteFrame' object:
            {
                Name: (string) The name of the Remote
                GenScript: (string) The generated script that appears in the codebox (generated when namecall fired)
                Source: (Instance (LocalScript)) The script that fired/invoked the remote
                Remote: (Instance (RemoteEvent) | Instance (RemoteFunction)) The remote that was fired/invoked
                Log: (Instance (TextButton)) The button being used for the remote (same as 'selected.Log')
            }
        - globals list: (contact @exx#9394 for more information or if you have suggestions for more to be added)
            - closed: (boolean) whether or not the GUI is currently minimized
            - logs: (table[remoteFrame]) full of remoteFrame objects (properties listed above)
            - selected: (remoteFrame) the currently selected remoteFrame (properties listed above)
            - blacklist: (string[] | Instance[] (RemoteEvent) | Instance[] (RemoteFunction)) an array of blacklisted names and remotes
            - codebox: (Instance (TextBox)) the textbox that holds all the code- cleared often
]]
	-- Copies the contents of the codebox
	newButton("Copy Code", function()
		return "Click to copy code"
	end, function()
		setclipboard(codebox:getString())
		TextLabel.Text = "Copied successfully!"
	end)

	--- Copies the source script (that fired the remote)
	newButton("Copy Remote", function()
		return "Click to copy the path of the remote"
	end, function()
		if selected then
			setclipboard(v2s(selected.Remote.remote))
			TextLabel.Text = "Copied!"
		end
	end)

	-- Executes the contents of the codebox through loadstring
	newButton("Run Code", function()
		return "Click to execute code"
	end, function()
		local orText = "Click to execute code"
		TextLabel.Text = "Executing..."
		local succeeded = pcall(function()
			return loadstring(codebox:getString())()
		end)
		if succeeded then
			TextLabel.Text = "Executed successfully!"
		else
			TextLabel.Text = "Execution error!"
		end
	end)

	--- Gets the calling script (not super reliable but w/e)
	newButton("Get Script", function()
		return "Click to copy calling script to clipboard\nWARNING: Not super reliable, nil == could not find"
	end, function()
		if selected then
			setclipboard(SimpleSpy:ValueToString(selected.Source))
			TextLabel.Text = "Done!"
		end
	end)

	--- Decompiles the script that fired the remote and puts it in the code box
	newButton("Function Info", function()
		return "Click to view calling function information"
	end, function()
		if selected then
			if selected.Function then
				codebox:setRaw(
					"-- Calling function info\n-- Generated by the SimpleSpy serializer\n\n" .. tostring(selected.Function)
				)
			end
			TextLabel.Text = "Done! Function info generated by the SimpleSpy Serializer."
		end
	end)

	--- Clears the Remote logs
	newButton("Clr Logs", function()
		return "Click to clear logs"
	end, function()
		TextLabel.Text = "Clearing..."
		logs = {}
		for _, v in pairs(LogList:GetChildren()) do
			if not v:IsA("UIListLayout") then
				v:Destroy()
			end
		end
		codebox:setRaw("")
		selected = nil
		TextLabel.Text = "Logs cleared!"
	end)

	--- Excludes the selected.Log Remote from the RemoteSpy
	newButton("Exclude (i)", function()
		return "Click to exclude this Remote.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
	end, function()
		if selected then
			blacklist[selected.Remote.remote] = true
			TextLabel.Text = "Excluded!"
		end
	end)

	--- Excludes all Remotes that share the same name as the selected.Log remote from the RemoteSpy
	newButton("Exclude (n)", function()
		return "Click to exclude all remotes with this name.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
	end, function()
		if selected then
			blacklist[selected.Name] = true
			TextLabel.Text = "Excluded!"
		end
	end)

	--- clears blacklist
	newButton("Clr Blacklist", function()
		return "Click to clear the blacklist.\nExcluding a remote makes SimpleSpy ignore it, but it will continue to be usable."
	end, function()
		blacklist = {}
		TextLabel.Text = "Blacklist cleared!"
	end)

	--- Prevents the selected.Log Remote from firing the server (still logged)
	newButton("Block (i)", function()
		return "Click to stop this remote from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
	end, function()
		if selected then
			if selected.Remote.remote then
				blocklist[selected.Remote.remote] = true
				TextLabel.Text = "Excluded!"
			else
				TextLabel.Text = "Error! Instance may no longer exist, try using Block (n)."
			end
		end
	end)

	--- Prevents all remotes from firing that share the same name as the selected.Log remote from the RemoteSpy (still logged)
	newButton("Block (n)", function()
		return "Click to stop remotes with this name from firing.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
	end, function()
		if selected then
			blocklist[selected.Name] = true
			TextLabel.Text = "Excluded!"
		end
	end)

	--- clears blacklist
	newButton("Clr Blocklist", function()
		return "Click to stop blocking remotes.\nBlocking a remote won't remove it from SimpleSpy logs, but it will not continue to fire the server."
	end, function()
		blocklist = {}
		TextLabel.Text = "Blocklist cleared!"
	end)

	--- Attempts to decompile the source script
	newButton("Decompile", function()
		return "Attempts to decompile source script\nWARNING: Not super reliable, nil == could not find"
	end, function()
		if selected then
			if selected.Source then
				codebox:setRaw(decompile(selected.Source))
				TextLabel.Text = "Done!"
			else
				TextLabel.Text = "Source not found!"
			end
		end
	end)

	newButton("Disable Info", function()
		return string.format(
			"[%s] Toggle function info (because it can cause lag in some games)",
			funcEnabled and "ENABLED" or "DISABLED"
		)
	end, function()
		funcEnabled = not funcEnabled
		TextLabel.Text = string.format(
			"[%s] Toggle function info (because it can cause lag in some games)",
			funcEnabled and "ENABLED" or "DISABLED"
		)
	end)

	newButton("Autoblock", function()
		return string.format(
			"[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
			autoblock and "ENABLED" or "DISABLED"
		)
	end, function()
		autoblock = not autoblock
		TextLabel.Text = string.format(
			"[%s] [BETA] Intelligently detects and excludes spammy remote calls from logs",
			autoblock and "ENABLED" or "DISABLED"
		)
		history = {}
		excluding = {}
	end)

	newButton("CallingScript", function()
		return string.format(
			"[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
			useGetCallingScript and "ENABLED" or "DISABLED"
		)
	end, function()
		useGetCallingScript = not useGetCallingScript
		TextLabel.Text = string.format(
			"[%s] [UNSAFE] Uses 'getcallingscript' to get calling script for Decompile and GetScript. Much more reliable, but opens up SimpleSpy to detection and/or instability.",
			useGetCallingScript and "ENABLED" or "DISABLED"
		)
	end)

	newButton("KeyToString", function()
		return string.format(
			"[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
			keyToString and "ENABLED" or "DISABLED"
		)
	end, function()
		keyToString = not keyToString
		TextLabel.Text = string.format(
			"[%s] [BETA] Uses an experimental new function to replicate Roblox's behavior when a non-primitive type is used as a key in a table. Still in development and may not properly reflect tostringed (empty) userdata.",
			keyToString and "ENABLED" or "DISABLED"
		)
	end)

	newButton("ToggleReturnValues", function()
		return string.format(
			"[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
			recordReturnValues and "ENABLED" or "DISABLED"
		)
	end, function()
		recordReturnValues = not recordReturnValues
		TextLabel.Text = string.format(
			"[%s] [EXPERIMENTAL] Enables recording of return values for 'GetReturnValue'\n\nUse this method at your own risk, as it could be detectable.",
			recordReturnValues and "ENABLED" or "DISABLED"
		)
	end)

	newButton("GetReturnValue", function()
		return "[Experimental] If 'ReturnValues' is enabled, this will show the recorded return value for the RemoteFunction (if available)."
	end, function()
		if selected then
			codebox:setRaw(SimpleSpy:ValueToVar(selected.ReturnValue, "returnValue"))
		end
	end)
end)

UICorner_5.Parent = SimpleSpy

mm2.Name = "mm2"
mm2.Parent = Frame_2
mm2.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
mm2.Position = UDim2.new(0.0341151357, 0, 0.719471931, 0)
mm2.Size = UDim2.new(0, 200, 0, 50)
mm2.Font = Enum.Font.SourceSans
mm2.Text = "Murder Mystery 2 Eclipse Hub"
mm2.TextColor3 = Color3.fromRGB(255, 255, 255)
mm2.TextScaled = true
mm2.TextSize = 14.000
mm2.TextWrapped = true
mm2.MouseButton1Click:Connect(function()
	local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)

UICorner_6.Parent = mm2

reviz.Name = "reviz"
reviz.Parent = Frame_2
reviz.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
reviz.Position = UDim2.new(0.0341151357, 0, 0.462046176, 0)
reviz.Size = UDim2.new(0, 200, 0, 50)
reviz.Font = Enum.Font.SourceSans
reviz.Text = "Reviz Admin"
reviz.TextColor3 = Color3.fromRGB(255, 255, 255)
reviz.TextScaled = true
reviz.TextSize = 14.000
reviz.TextWrapped = true
reviz.MouseButton1Click:Connect(function()
	-- Creator: illremember#3799

	-- Credits to infinite yield, harkinian, dex creators

	prefix = ";"
	wait(0.3)
	Commands = {
		'[-] cmdbar is shown when ; is pressed.',
		'[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player',
		'[2] bring [plr] -- You need a tool! Will bring player to you',
		'[3] spin [plr] -- You need a tool! Makes you and the player spin crazy',
		'[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting',
		'[5] attach [plr] -- You need a tool! Attaches you to player',
		'[6] unattach [plr] -- Attempts to unattach you from a player',
		'[7] follow [plr] -- Makes you follow behind the player',
		'[8] unfollow',
		'[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air',
		'[10] trail [plr] -- The opposite of follow, you stay infront of player',
		'[11] untrail',
		'[12] orbit [plr] -- Makes you orbit the player',
		'[13] unorbit',
		'[14] fling [plr] -- Makes you fling the player',
		'[15] unfling',
		'[16] fecheck -- Checks if the game is FE or not',
		'[17] void [plr] -- Teleports player to the void',
		'[18] noclip -- Gives you noclip to walk through walls',
		'[19] clip -- Removes noclip',
		'[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default',
		'[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default',
		'[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default',
		'[23] default -- Changes your speed, jumppower and hipheight to default values',
		'[24] annoy [plr] -- Loop teleports you to the player',
		'[25] unannoy',
		'[26] headwalk [plr] -- Loop teleports you to the player head',
		'[27] unheadwalk',
		'[28] nolimbs -- Removes your arms and legs',
		'[29] god -- Gives you FE Godmode',
		'[30] drophats -- Drops your accessories',
		'[31] droptool -- Drops any tool you have equipped',
		'[32] loopdhats -- Loop drops your accessories',
		'[33] unloopdhats',
		'[34] loopdtool -- Loop drops any tools you have equipped',
		'[35] unloopdtool',
		'[36] invisible -- Gives you invisibility CREDIT TO TIMELESS',
		'[37] view [plr] -- Changes your camera to the player character',
		'[38] unview',
		'[39] goto [plr] -- Teleports you to player',
		'[40] fly -- Allows you to fly, credit to Infinite Yield',
		'[41] unfly',
		'[42] chat [msg] -- Makes you chat a message',
		'[43] spam [msg] -- Spams a message',
		'[44] unspam',
		'[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second',
		'[46] pmspam [plr] -- Spams a player in private message',
		'[47] unpmspam',
		'[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you',
		'[49] uncfreeze [plr]',
		'[50] unlockws -- Unlocks the workspace',
		'[51] lockws -- Locks the workspace',
		'[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you',
		'[53] pstand -- Enables platform stand',
		'[54] unpstand -- Disables platform stand',
		'[55] blockhead -- Removes your head mesh',
		'[56] sit',
		'[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name',
		'[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided',
		'[59] hypertotal -- Loads in my FE GUI Hypertotal',
		'[60] cmds -- Prints all commands',
		'[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats',
		'[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool',
		'[63] spinner -- Makes you spin',
		'[64] nospinner',
		'[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom',
		'[66] noreach -- Removes reach, must have tool equipped',
		'[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying',
		'[68] tp me [plr] -- Alternative to goto',
		'[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player',
		'[70] uncbring',
		'[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players',
		'[72] givetool [plr] -- Gives the tool you have equipped to the player',
		'[73] glitch [plr] -- Glitches you and the player, looks very cool',
		'[74] unglitch -- Unglitches you',
		'[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode',
		'[76] explorer -- Loads up DEX',
		'[77] reset -- Resets your character.',
		'[78] anim [id] -- Applies an animation on you, must be created by ROBLOX',
		'[79] animgui -- Loads up Energize animations GUI',
		'[80] savepos -- Saves your current position',
		'[81] loadpos -- Teleports you to your saved position',
		'[82] bang [plr] -- 18+ will not work if you have FE Godmode on',
		'[83] unbang',
		'[84] delcmdbar -- Removes the command bar completely',
		'[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model',
		'[86] shutdown -- Uses harkinians script to shutdown server',
		'[87] respawn -- If grespawn doesnt work you can use respawn',
		'[88] delobj [obj] -- Deletes a certain brick in workspace, client sided',
		'[89] getplrs -- Prints all players in game',
		'[90] deldecal -- Deletes all decals client sided',
		'[91] opfinality -- Loads in my FE GUI Opfinality',
		'[92] remotes -- Prints all remotes in the game in the console when added',
		'[93] noremotes -- Stops printing remotes',
		'[94] tpdefault -- Stops all loop teleports to a player',
		'[95] stopsit -- Will not allow you to sit',
		'[96] gosit -- Allows you to sit',
		'[97] clicktp -- Enables click tp',
		'[98] noclicktp -- Disables click tp',
		'[99] toolson -- If any tools are dropped in the workspace you will automatically get them',
		'[100] toolsoff -- Stops ;toolson',
		'[101] version -- Gets the admin version',
		'[102] state [num] -- Changes your humanoid state, ;unstate to stop.',
		'[103] gravity [num] -- Changes workspace gravity default is 196.2',
		'[104] pgs -- Checks if the game has PGSPhysicsSolverEnabled enabled',
		'[105] clickdel -- Delete any block you press q on, client sided',
		'[106] noclickdel -- Stops clickdel',
		'[107] looprhats -- Loop removes mesh of your hats/loop block hats',
		'[108] unlooprhats -- Stops loop removing mesh',
		'[109] looprtool -- Loop removes mesh of your tool/loop block tools',
		'[110] unlooprtool -- Stops loop removing mesh',
		'[111] givealltools [plr] -- Gives all the tools you have in your backpack to the player',
		'[112] age [plr] -- Makes you chat the account age of the player',
		'[113] id [plr] -- Makes you chat the account ID of the player',
		'[114] .age [plr] -- Privately shows you the account age of the player',
		'[115] .id [plr] -- Privately shows you the account ID of the player',
		'[116] gameid -- Shows the game ID',
		'[117] removeinvis -- Removes all invisible walls/parts, client sided',
		'[118] removefog -- Removes fog, client sided',
		'[119] disable -- Disables your character by removing humanoid',
		'[120] enable -- Enables your character by adding humanoid',
		'[121] prefix [key] -- Changes the prefix used, default is ;',
		'[122] ;resetprefix -- Resets the prefix to ; incase you change it to an unusable prefix. Say exactly ";resetprefix" to do this command, no matter what your prefix is set to.',
		'[123] flyspeed [num] -- Change your fly speed, default is 1',
		'[124] carpet [plr] -- Makes you a carpet for a player, will not work if FE Godmode is on',
		'[125] uncarpet -- Stops carpet player',
		'[126] stare [plr] -- Turns your character to stare at another player',
		'[127] unstare -- Stops stare player',
		'[128] logchat -- Logs all chat (including /e and whispers) of all players',
		'[129] unlogchat -- Disables logchat',
		'[130] fixcam -- Fixes/resets your camera',
		'[131] unstate -- Stops changing state',
	}
	speedget = 1

	lplayer = game:GetService("Players").LocalPlayer

	lplayer.CharacterAdded:Connect(function(character)
		spin = false
		flying = false
		staring = false
		banpl = false
	end)

	function change()
		prefix = prefix
		speedfly = speedfly
	end

	function GetPlayer(String) -- Credit to Timeless/xFunnieuss
		local Found = {}
		local strl = String:lower()
		if strl == "all" then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				table.insert(Found,v)
			end
		elseif strl == "others" then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= lplayer.Name then
					table.insert(Found,v)
				end
			end   
		elseif strl == "me" then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name == lplayer.Name then
					table.insert(Found,v)
				end
			end  
		else
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name:lower():sub(1, #String) == String:lower() then
					table.insert(Found,v)
				end
			end    
		end
		return Found    
	end

	local Mouse = lplayer:GetMouse()

	spin = false
	followed = false
	traill = false
	noclip = false
	annoying = false
	hwalk = false
	droppinghats = false
	droppingtools = false
	flying = false
	spamdelay = 1
	spamming = false
	spammingpm = false
	cbringing = false
	remotes = true
	added = true
	binds = false
	stopsitting = false
	clickgoto = false
	gettingtools = false
	removingmeshhats = false
	removingmeshtool = false
	clickdel = false
	staring = false
	chatlogs = false
	banpl = false
	changingstate = false
	statechosen = 0

	adminversion = "Reviz Admin by illremember, Version 2.0"

	flying = false
	speedfly = 1

	function plrchat(plr, chat)
		print(plr.Name..": "..tick().."\n"..chat)
	end

	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		v.Chatted:connect(function(chat)
			if chatlogs then
				plrchat(v, chat)
			end
		end)
	end
	game:GetService("Players").PlayerAdded:connect(function(plr)
		plr.Chatted:connect(function(chat)
			if chatlogs then
				plrchat(plr, chat)
			end
		end)
	end)


	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local CMDBAR = Instance.new("TextBox")
	ScreenGui.Parent = game:GetService("CoreGui")
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.new(0.3, 0.1, 0.1)
	Frame.BackgroundTransparency = 0.3
	Frame.Position = UDim2.new(0.5, 0, 0, 10)
	Frame.Size = UDim2.new(0, 200, 0, 40)
	Frame.Active = true
	Frame.Draggable = true
	CMDBAR.Name = "CMDBAR"
	CMDBAR.Parent = Frame
	CMDBAR.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	CMDBAR.BackgroundTransparency = 0.20000000298023
	CMDBAR.Size = UDim2.new(0, 180, 0, 20)
	CMDBAR.Position = UDim2.new(0.05, 0, 0.25, 0)
	CMDBAR.Font = Enum.Font.SourceSansLight
	CMDBAR.FontSize = Enum.FontSize.Size14
	CMDBAR.TextColor3 = Color3.new(0.945098, 0.945098, 0.945098)
	CMDBAR.TextScaled = true
	CMDBAR.TextSize = 14
	CMDBAR.TextWrapped = true
	CMDBAR.Text = "Press ; to type, Enter to execute"

	local CMDS = Instance.new("ScreenGui")
	local CMDSFRAME = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local TextLabel = Instance.new("TextLabel")
	local closegui = Instance.new("TextButton")
	CMDS.Name = "CMDS"
	CMDS.Parent = game:GetService("CoreGui")
	CMDSFRAME.Name = "CMDSFRAME"
	CMDSFRAME.Parent = CMDS
	CMDSFRAME.Active = true
	CMDSFRAME.BackgroundColor3 = Color3.new(0.223529, 0.231373, 0.309804)
	CMDSFRAME.BorderSizePixel = 0
	CMDSFRAME.Draggable = true
	CMDSFRAME.Position = UDim2.new(0, 315, 0, 100)
	CMDSFRAME.Size = UDim2.new(0, 275, 0, 275)
	CMDSFRAME.Visible = false
	ScrollingFrame.Parent = CMDSFRAME
	ScrollingFrame.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.203922)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 0, 0.0729999989, 0)
	ScrollingFrame.Size = UDim2.new(1.04999995, 0, 0.92900002, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
	TextLabel.Parent = ScrollingFrame
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(0.930000007, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.FontSize = Enum.FontSize.Size18
	TextLabel.Text = "[-] cmdbar is shown when ; is pressed.,\n[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player,\n[2] bring [plr] -- You need a tool! Will bring player to you,\n[3] spin [plr] -- You need a tool! Makes you and the player spin crazy,\n[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting,\n[5] attach [plr] -- You need a tool! Attaches you to player,\n[6] unattach [plr] -- Attempts to unattach you from a player,\n[7] follow [plr] -- Makes you follow behind the player,\n[8] unfollow,\n[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air,\n[10] trail [plr] -- The opposite of follow, you stay infront of player,\n[11] untrail,\n[12] orbit [plr] -- Makes you orbit the player,\n[13] unorbit,\n[14] fling [plr] -- Makes you fling the player,\n[15] unfling,\n[16] fecheck -- Checks if the game is FE or not,\n[17] void [plr] -- Teleports player to the void,\n[18] noclip -- Gives you noclip to walk through walls,\n[19] clip -- Removes noclip,\n[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default,\n[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default,\n[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default,\n[23] default -- Changes your speed, jumppower and hipheight to default values,\n[24] annoy [plr] -- Loop teleports you to the player,\n[25] unannoy,\n[26] headwalk [plr] -- Loop teleports you to the player head,\n[27] unheadwalk,\n[28] nolimbs -- Removes your arms and legs,\n[29] god -- Gives you FE Godmode,\n[30] drophats -- Drops your accessories,\n[31] droptool -- Drops any tool you have equipped,\n[32] loopdhats -- Loop drops your accessories,\n[33] unloopdhats,\n[34] loopdtool -- Loop drops any tools you have equipped,\n[35] unloopdtool,\n[36] invisible -- Gives you invisibility CREDIT TO TIMELESS,\n[37] view [plr] -- Changes your camera to the player character,\n[38] unview,\n[39] goto [plr] -- Teleports you to player,\n[40] fly -- Allows you to fly,\n[41] unfly,\n[42] chat [msg] -- Makes you chat a message,\n[43] spam [msg] -- Spams a message,\n[44] unspam,\n[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second,\n[46] pmspam [plr] -- Spams a player in private message,\n[47] unpmspam,\n[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you,\n[49] uncfreeze [plr],\n[50] unlockws -- Unlocks the workspace,\n[51] lockws -- Locks the workspace,\n[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you,\n[53] pstand -- Enables platform stand,\n[54] unpstand -- Disables platform stand,\n[55] blockhead -- Removes your head mesh,\n[56] sit,\n[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name,\n[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided,\n[59] hypertotal -- Loads in my FE GUI Hypertotal,\n[60] cmds -- Prints all commands,\n[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats,\n[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool,\n[63] spinner -- Makes you spin,\n[64] nospinner,\n[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom,\n[66] noreach -- Removes reach, must have tool equipped,\n[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying,\n[68] tp me [plr] -- Alternative to goto,\n[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player,\n[70] uncbring,\n[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players,\n[72] givetool [plr] -- Gives the tool you have equipped to the player,\n[73] glitch [plr] -- Glitches you and the player, looks very cool,\n[74] unglitch -- Unglitches you,\n[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode,\n[76] explorer -- Loads up DEX,\n[77] reset -- Resets your character.,\n[78] anim [id] -- Applies an animation on you, must be created by ROBLOX,\n[79] animgui -- Loads up Energize animations GUI,\n[80] savepos -- Saves your current position,\n[81] loadpos -- Teleports you to your saved position,\n[82] bang [plr] -- 18+,\n[83] unbang,\n[84] delcmdbar -- Removes the command bar completely,\n[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model,\n[86] shutdown -- Uses harkinians script to shutdown server,\n[87] respawn -- If grespawn doesnt work you can use respawn,\n[88] delobj [obj] -- Deletes a certain brick in workspace, client sided,\n[89] getplrs -- Prints all players in game,\n[90] deldecal -- Deletes all decals client sided,\n[91] opfinality -- Loads in my FE GUI Opfinality,\n[92] remotes -- Prints all remotes in the game in the console when added,\n[93] noremotes -- Stops printing remotes,\n[94] tpdefault -- Stops all loop teleports to a player,\n[95] stopsit -- Will not allow you to sit,\n[96] gosit -- Allows you to sit,\n[97] clicktp -- Enables click tp,\n[98] noclicktp -- Disables click tp,\n[99] toolson -- If any tools are dropped in the workspace you will automatically get them,\n[100] toolsoff -- Stops ;toolson,\n[101] version -- Gets the admin version, \n This list of commands is NOT showing everything, go to my thread in the pastebin link to see ALL commands."
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 15
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	closegui.Name = "closegui"
	closegui.Parent = CMDSFRAME
	closegui.BackgroundColor3 = Color3.new(0.890196, 0.223529, 0.0588235)
	closegui.BorderSizePixel = 0
	closegui.Position = UDim2.new(0.995000005, 0, 0, 0)
	closegui.Size = UDim2.new(0.0545952693, 0, 0.0728644878, 0)
	closegui.Font = Enum.Font.SourceSansBold
	closegui.FontSize = Enum.FontSize.Size24
	closegui.Text = "X"
	closegui.TextColor3 = Color3.new(1, 1, 1)
	closegui.TextSize = 20

	closegui.MouseButton1Click:connect(function()
		CMDSFRAME.Visible = false
	end)

	game:GetService('RunService').Stepped:connect(function()
		if spin then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame
		end
		if followed then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * -5
		end
		if traill then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * 5
		end
		if annoying then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame
		end
		if hwalk then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
		end
		if staring then
			lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(lplayer.Character.Torso.Position, game:GetService("Players")[stareplr.Name].Character.Torso.Position)
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
		if noclip then
			if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				lplayer.Character.Head.CanCollide = false
				lplayer.Character.Torso.CanCollide = false
				lplayer.Character["Left Leg"].CanCollide = false
				lplayer.Character["Right Leg"].CanCollide = false
			else
				lplayer.Character.Humanoid:ChangeState(11)
			end
		end
		if changingstate then
			lplayer.Character.Humanoid:ChangeState(statechosen)
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
		if droppinghats then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v.Parent = workspace
				end
			end
		end
		if droppingtools then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					v.Parent = workspace
				end
			end
		end
		if removingmeshhats then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
		if removingmeshtool then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
		if banpl then
			lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
		if stopsitting then
			lplayer.Character.Humanoid.Sit = false
		end
	end)

	plr = lplayer 
	hum = plr.Character.HumanoidRootPart
	mouse = plr:GetMouse() 
	mouse.KeyDown:connect(function(key) 
		if key == "e" then 
			if mouse.Target then 
				if clickgoto then
					hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
				elseif clickdel then
					mouse.Target:Destroy()
				end
			end 
		end
	end)

	game:GetService("Workspace").ChildAdded:connect(function(part)
		if gettingtools then
			if part:IsA("Tool") then
				part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
			end
		end
	end)

	lplayer.Chatted:Connect(function(msg)
		if string.sub(msg, 1, 6) == (prefix.."kill ") then
			if string.sub(msg, 7) == "me" then
				lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
			else
				for i,v in pairs(GetPlayer(string.sub(msg, 7)))do
					local NOW = lplayer.Character.HumanoidRootPart.CFrame
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					local function tp(player,player2)
						local char1,char2=player.Character,player2.Character
						if char1 and char2 then
							char1:MoveTo(char2.Head.Position)
						end
					end
					wait(0.1)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.2)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.5)
					lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
					wait(0.7)
					tp(lplayer,game:GetService("Players")[v.Name])
					wait(0.7)
					lplayer.Character.HumanoidRootPart.CFrame = NOW
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."bring ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
				local NOW = lplayer.Character.HumanoidRootPart.CFrame
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				local function tp(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
						char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
					end
				end
				local function getout(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
						char1:MoveTo(char2.Head.Position)
					end
				end
				tp(game:GetService("Players")[v.Name], lplayer)
				wait(0.2)
				tp(game:GetService("Players")[v.Name], lplayer)
				wait(0.5)
				lplayer.Character.HumanoidRootPart.CFrame = NOW
				wait(0.5)
				getout(lplayer, game:GetService("Players")[v.Name])
				wait(0.3)
				lplayer.Character.HumanoidRootPart.CFrame = NOW
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 6) == (prefix.."spin ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				lplayer.Character.Animate.Disabled = false
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
				spinplr = v
				wait(0.5)
				spin = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."unspin") then
			spin = false
		end
		if string.sub(msg, 1, 8) == (prefix.."attach ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
				wait(0.3)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
				attplr = v
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."unattach ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
				local function getout(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
						char1:MoveTo(char2.Head.Position)
					end
				end
				getout(lplayer, game:GetService("Players")[v.Name])
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."follow ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
				followed = true
				flwplr = v
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."unfollow") then
			followed = false
		end
		if string.sub(msg, 1, 10) == (prefix.."freefall ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
				local NOW = lplayer.Character.HumanoidRootPart.CFrame
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.2)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.6)
				lplayer.Character.HumanoidRootPart.CFrame = NOW
				wait(0.6)
				lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."trail ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
				traill = true
				trlplr = v
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."untrail") then
			traill = false
		end
		if string.sub(msg, 1, 7) == (prefix.."orbit ") then
			if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
				lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
			else
				for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
					local o = Instance.new("RocketPropulsion")
					o.Parent = lplayer.Character.HumanoidRootPart
					o.Name = "Orbit"
					o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
					o:Fire()
					noclip = true
				end
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."unorbit") then
			lplayer.Character.HumanoidRootPart.Orbit:Destroy()
			noclip = false
		end
		if string.sub(msg, 1, 7) == (prefix.."fling ") then
			if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
				lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
			else
				for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
					local y = Instance.new("RocketPropulsion")
					y.Parent = lplayer.Character.HumanoidRootPart
					y.CartoonFactor = 1
					y.MaxThrust = 800000
					y.MaxSpeed = 1000
					y.ThrustP = 200000
					y.Name = "Fling"
					game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
					y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
					y:Fire()
					noclip = true
				end
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."unfling") then
			noclip = false
			lplayer.Character.HumanoidRootPart.Fling:Destroy()
			game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
			wait(0.4)
			lplayer.Character.HumanoidRootPart.Fling:Destroy()
		end
		if string.sub(msg, 1, 8) == (prefix.."fecheck") then
			if game:GetService("Workspace").FilteringEnabled == true then
				warn("FE is Enabled (Filtering Enabled)")
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "FE is Enabled";
					Text = "Filtering Enabled. Enjoy using Reviz Admin!";
				})
			else
				warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "FE is Disabled";
					Text = "Filtering Disabled. Consider using a different admin script.";
				})
			end
		end
		if string.sub(msg, 1, 6) == (prefix.."void ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.2)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.6)
				lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."noclip") then
			noclip = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Noclip enabled";
				Text = "Type ;clip to disable";
			})
		end
		if string.sub(msg, 1, 5) == (prefix.."clip") then
			noclip = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Noclip disabled";
				Text = "Type ;noclip to enable";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."speed ") then
			lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 8))
		end
		if string.sub(msg, 1, 4) == (prefix.."ws ") then
			lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 5))
		end
		if string.sub(msg, 1, 11) == (prefix.."hipheight ") then
			lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 12))
		end
		if string.sub(msg, 1, 4) == (prefix.."hh ") then
			lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 5))
		end
		if string.sub(msg, 1, 11) == (prefix.."jumppower ") then
			lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 12))
		end
		if string.sub(msg, 1, 4) == (prefix.."jp ") then
			lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 5))
		end
		if string.sub(msg, 1, 8) == (prefix.."default") then
			lplayer.Character.Humanoid.JumpPower = 50
			lplayer.Character.Humanoid.WalkSpeed = 16
			lplayer.Character.Humanoid.HipHeight = 0
		end
		if string.sub(msg, 1, 7) == (prefix.."annoy ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
				annoying = true
				annplr = v
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."unannoy") then
			annoying = false
		end
		if string.sub(msg, 1, 10) == (prefix.."headwalk ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
				hwalk = true
				hdwplr = v
			end
		end
		if string.sub(msg, 1, 11) == (prefix.."unheadwalk") then
			hwalk = false
		end
		if string.sub(msg, 1, 8) == (prefix.."nolimbs") then
			lplayer.Character["Left Leg"]:Destroy()
			lplayer.Character["Left Arm"]:Destroy()
			lplayer.Character["Right Leg"]:Destroy()
			lplayer.Character["Right Arm"]:Destroy()
		end
		if string.sub(msg, 1, 4) == (prefix.."god") then
			lplayer.Character.Humanoid.Name = 1
			local l = lplayer.Character["1"]:Clone()
			l.Parent = lplayer.Character
			l.Name = "Humanoid"
			wait(0.1)
			lplayer.Character["1"]:Destroy()
			game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
			lplayer.Character.Animate.Disabled = true
			wait(0.1)
			lplayer.Character.Animate.Disabled = false
			lplayer.Character.Humanoid.DisplayDistanceType = "None"
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "FE Godmode enabled";
				Text = "Use ;grespawn or ;respawn to remove";
			})
		end
		if string.sub(msg, 1, 9) == (prefix.."drophats") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v.Parent = workspace
				end
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."droptool") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					v.Parent = workspace
				end
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."loopdhats") then
			droppinghats = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Loop Drop Enabled";
				Text = "Type ;unloopdhats to disable";
			})
		end
		if string.sub(msg, 1, 12) == (prefix.."unloopdhats") then
			droppinghats = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Loop Drop Disabled";
				Text = "Type ;loopdhats to enable.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."loopdtool") then
			droppingtools = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Loop Drop Enabled";
				Text = "Type ;unloopdtool to disable";
			})
		end
		if string.sub(msg, 1, 12) == (prefix.."unloopdtool") then
			droppingtools = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Loop Drop Disabled";
				Text = "Type ;loopdtool to enable.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."invisible") then -- Credit to Timeless
			Local = game:GetService('Players').LocalPlayer
			Char  = Local.Character
			touched,tpdback = false, false
			box = Instance.new('Part',workspace)
			box.Anchored = true
			box.CanCollide = true
			box.Size = Vector3.new(10,1,10)
			box.Position = Vector3.new(0,10000,0)
			box.Touched:connect(function(part)
				if (part.Parent.Name == Local.Name) then
					if touched == false then
						touched = true
						function apply()
							if script.Disabled ~= true then
								no = Char.HumanoidRootPart:Clone()
								wait(.25)
								Char.HumanoidRootPart:Destroy()
								no.Parent = Char
								Char:MoveTo(loc)
								touched = false
							end end
						if Char then
							apply()
						end
					end
				end
			end)
			repeat wait() until Char
			loc = Char.HumanoidRootPart.Position
			Char:MoveTo(box.Position + Vector3.new(0,.5,0))
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Invisibility enabled!";
				Text = "Reset or use ;respawn to remove.";
			})
		end
		if string.sub(msg, 1, 6) == (prefix.."view ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				if game:GetService("Players")[v.Name].Character.Humanoid then
					game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
				else
					game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
				end
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."unview") then
			if lplayer.Character.Humanoid then
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
			else
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
			end
		end
		if string.sub(msg, 1, 6) == (prefix.."goto ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
			end
		end
		if string.sub(msg, 1, 4) == (prefix.."fly") then
			repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
			repeat wait() until Mouse

			local T = lplayer.Character.HumanoidRootPart
			local CONTROL = {F = 0, B = 0, L = 0, R = 0}
			local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			local SPEED = speedget

			local function fly()
				flying = true
				local BG = Instance.new('BodyGyro', T)
				local BV = Instance.new('BodyVelocity', T)
				BG.P = 9e4
				BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				BG.cframe = T.CFrame
				BV.velocity = Vector3.new(0, 0.1, 0)
				BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
				spawn(function()
					repeat wait()
						lplayer.Character.Humanoid.PlatformStand = true
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.velocity = Vector3.new(0, 0.1, 0)
						end
						BG.cframe = workspace.CurrentCamera.CoordinateFrame
					until not flying
					CONTROL = {F = 0, B = 0, L = 0, R = 0}
					lCONTROL = {F = 0, B = 0, L = 0, R = 0}
					SPEED = 0
					BG:destroy()
					BV:destroy()
					lplayer.Character.Humanoid.PlatformStand = false
				end)
			end
			Mouse.KeyDown:connect(function(KEY)
				if KEY:lower() == 'w' then
					CONTROL.F = speedfly
				elseif KEY:lower() == 's' then
					CONTROL.B = -speedfly
				elseif KEY:lower() == 'a' then
					CONTROL.L = -speedfly 
				elseif KEY:lower() == 'd' then 
					CONTROL.R = speedfly
				end
			end)
			Mouse.KeyUp:connect(function(KEY)
				if KEY:lower() == 'w' then
					CONTROL.F = 0
				elseif KEY:lower() == 's' then
					CONTROL.B = 0
				elseif KEY:lower() == 'a' then
					CONTROL.L = 0
				elseif KEY:lower() == 'd' then
					CONTROL.R = 0
				end
			end)
			fly()
		end
		if string.sub(msg, 1, 6) == (prefix.."unfly") then
			flying = false
			lplayer.Character.Humanoid.PlatformStand = false
		end
		if string.sub(msg, 1, 6) == (prefix.."chat ") then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(msg, 7)), "All")
		end
		if string.sub(msg, 1, 6) == (prefix.."spam ") then
			spamtext = (string.sub(msg, 7))
			spamming = true
		end
		if string.sub(msg, 1, 7) == (prefix.."unspam") then
			spamming = false
		end
		if string.sub(msg, 1, 10) == (prefix.."spamwait ") then
			spamdelay = (string.sub(msg, 11))
		end
		if string.sub(msg, 1, 8) == (prefix.."pmspam ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
				pmspammed = v.Name
				spammingpm = true
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."unpmspam") then
			spammingpm = false
		end
		if string.sub(msg, 1, 9) == (prefix.."cfreeze ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 10))) do
				v.Character["Left Leg"].Anchored = true
				v.Character["Left Arm"].Anchored = true
				v.Character["Right Leg"].Anchored = true
				v.Character["Right Arm"].Anchored = true
				v.Character.Torso.Anchored = true
				v.Character.Head.Anchored = true
			end
		end
		if string.sub(msg, 1, 11) == (prefix.."uncfreeze ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 12))) do
				v.Character["Left Leg"].Anchored = false
				v.Character["Left Arm"].Anchored = false
				v.Character["Right Leg"].Anchored = false
				v.Character["Right Arm"].Anchored = false
				v.Character.Torso.Anchored = false
				v.Character.Head.Anchored = false
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."unlockws") then
			local a = game:GetService("Workspace"):getChildren()
			for i = 1, #a do
				if a[i].className == "Part" then
					a[i].Locked = false
				elseif a[i].className == "Model" then
					local r = a[i]:getChildren()
					for i = 1, #r do
						if r[i].className == "Part" then
							r[i].Locked = false
						end
					end
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Success!";
				Text = "Workspace unlocked. Use ;lockws to lock.";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."lockws") then
			local a = game:GetService("Workspace"):getChildren()
			for i = 1, #a do
				if a[i].className == "Part" then
					a[i].Locked = true
				elseif a[i].className == "Model" then
					local r = a[i]:getChildren()
					for i = 1, #r do
						if r[i].className == "Part" then
							r[i].Locked = true
						end
					end
				end
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."btools") then
			local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
			Clone_T.BinType = "Clone"
			local Destruct = Instance.new("HopperBin",lplayer.Backpack)
			Destruct.BinType = "Hammer"
			local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
			Hold_T.BinType = "Grab"
		end
		if string.sub(msg, 1, 7) == (prefix.."pstand") then
			lplayer.Character.Humanoid.PlatformStand = true
		end
		if string.sub(msg, 1, 9) == (prefix.."unpstand") then
			lplayer.Character.Humanoid.PlatformStand = false
		end
		if string.sub(msg, 1, 10) == (prefix.."blockhead") then
			lplayer.Character.Head.Mesh:Destroy()
		end
		if string.sub(msg, 1, 4) == (prefix.."sit") then
			lplayer.Character.Humanoid.Sit = true
		end
		if string.sub(msg, 1, 10) == (prefix.."bringobj ") then
			local function bringobjw()
				for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
					if obj.Name == (string.sub(msg, 11)) then
						obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
						obj.CanCollide = false
						obj.Transparency = 0.7
						wait()
						obj.CFrame = lplayer.Character["Left Leg"].CFrame
						wait()
						obj.CFrame = lplayer.Character["Right Leg"].CFrame
						wait()
						obj.CFrame = lplayer.Character["Head"].CFrame
					end
				end
			end
			while wait() do
				bringobjw()
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "BringObj";
				Text = "BringObj enabled.";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."wsvis ") then
			vis = (string.sub(msg, 8))
			local a = game:GetService("Workspace"):GetDescendants()
			for i = 1, #a do
				if a[i].className == "Part" then
					a[i].Transparency = vis
				elseif a[i].className == "Model" then
					local r = a[i]:getChildren()
					for i = 1, #r do
						if r[i].className == "Part" then
							r[i].Transparency = vis
						end
					end
				end
			end
		end
		if string.sub(msg, 1, 11) == (prefix.."hypertotal") then
			loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Success!";
				Text = "HyperTotal GUI Loaded!";
			})
		end
		if string.sub(msg, 1, 5) == (prefix.."cmds") then
			CMDSFRAME.Visible = true
		end
		if string.sub(msg, 1, 10) == (prefix.."rmeshhats") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."blockhats") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."rmeshtool") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."blocktool") then
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					v.Handle.Mesh:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."spinner") then
			local p = Instance.new("RocketPropulsion")
			p.Parent = lplayer.Character.HumanoidRootPart
			p.Name = "Spinner"
			p.Target = lplayer.Character["Left Arm"]
			p:Fire()
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Spinner enabled";
				Text = "Type ;nospinner to disable.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."nospinner") then
			lplayer.Character.HumanoidRootPart.Spinner:Destroy()
		end
		if string.sub(msg, 1, 7) == (prefix.."reachd") then
			for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
				if v:isA("Tool") then
					local a = Instance.new("SelectionBox",v.Handle)
					a.Adornee = v.Handle
					v.Handle.Size = Vector3.new(0.5,0.5,60)
					v.GripPos = Vector3.new(0,0,0)
					lplayer.Character.Humanoid:UnequipTools()
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Reach applied!";
				Text = "Applied to equipped sword. Use ;noreach to disable.";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."reach ") then
			for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
				if v:isA("Tool") then
					handleSize = v.Handle.Size
					wait()
					local a = Instance.new("SelectionBox",v.Handle)
					a.Name = "a"
					a.Adornee = v.Handle
					v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(msg, 8)))
					v.GripPos = Vector3.new(0,0,0)
					lplayer.Character.Humanoid:UnequipTools()
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Reach applied!";
				Text = "Applied to equipped sword. Use ;noreach to disable.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."noreach") then
			for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
				if v:isA("Tool") then
					v.Handle.a:Destroy()
					v.Handle.Size = handleSize
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Reach removed!";
				Text = "Removed reach from equipped sword.";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."rkill ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				wait(0.1)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.2)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.5)
				lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."tp me ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."cbring ") then
			if (string.sub(msg, 9)) == "all" or (string.sub(msg, 9)) == "All" or (string.sub(msg, 9)) == "ALL" then
				cbringall = true
			else
				for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
					brplr = v.Name
				end
			end
			cbring = true
		end
		if string.sub(msg, 1, 9) == (prefix.."uncbring") then
			cbring = false
			cbringall = false
		end
		if string.sub(msg, 1, 6) == (prefix.."swap ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				local NOW = lplayer.Character.HumanoidRootPart.CFrame
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				local function tp(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
						char1:MoveTo(char2.Head.Position)
					end
				end
				wait(0.1)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.2)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				wait(0.5)
				lplayer.Character.HumanoidRootPart.CFrame = NOW
				wait(0.6)
				tp(lplayer, game:GetService("Players")[v.Name])
				wait(0.4)
				lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."glitch ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
					lplayer.Character.Humanoid:EquipTool(v)
				end
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
				wait(0.3)
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
				wait(0.4)
				b = Instance.new("BodyForce")
				b.Parent = lplayer.Character.HumanoidRootPart
				b.Name = "Glitch"
				b.Force = Vector3.new(100000000,5000,0)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools needed!";
					Text = "You need a tool in your backpack for this command!";
				})
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."unglitch") then
			lplayer.Character.HumanoidRootPart.Glitch:Destroy()
			lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
			b = Instance.new("BodyForce")
			b.Parent = lplayer.Character.HumanoidRootPart
			b.Name = "unGlitch"
			b.Force = Vector3.new(0,-5000000,0)
			wait(2)
			lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
		end
		if string.sub(msg, 1, 9) == (prefix.."grespawn") then
			lplayer.Character.Humanoid.Health = 0
			wait(1)
			lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
			lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
		end
		if string.sub(msg, 1, 9) == (prefix.."explorer") then
			loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Success!";
				Text = "DEX Explorer has loaded.";
			})
		end
		if string.sub(msg, 1, 6) == (prefix.."anim ") then
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://"..(string.sub(msg, 7))
			local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
			track:Play(.1, 1, 1)
		end
		if string.sub(msg, 1, 8) == (prefix.."animgui") then
			loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Success!";
				Text = "Energize Animations GUI has loaded.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."savepos") then
			saved = lplayer.Character.HumanoidRootPart.CFrame
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Position Saved";
				Text = "Use ;loadpos to return to saved position.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."loadpos") then
			lplayer.Character.HumanoidRootPart.CFrame = saved
		end
		if string.sub(msg, 1, 6) == (prefix.."bang ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
				local Anim2 = Instance.new("Animation")
				Anim2.AnimationId = "rbxassetid://148840371"
				local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
				track2:Play(.1, 1, 1)
				bplrr = v.Name
				banpl = true
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."unbang") then
			banpl = false
		end
		if string.sub(msg, 1, 10) == (prefix.."bringmod ") then
			local function bringmodw()
				for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
					if obj.Name == (string.sub(msg, 11)) then
						for i,ch in pairs(obj:GetDescendants()) do
							if (ch:IsA("BasePart")) then
								ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
								ch.CanCollide = false
								ch.Transparency = 0.7
								wait()
								ch.CFrame = lplayer.Character["Left Leg"].CFrame
								wait()
								ch.CFrame = lplayer.Character["Right Leg"].CFrame
								wait()
								ch.CFrame = lplayer.Character["Head"].CFrame
							end
						end
					end
				end
			end
			while wait() do
				bringmodw()
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "BringMod";
				Text = "BringMod enabled.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."respawn") then
			local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
			local hum = Instance.new('Humanoid', mod)
			local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
			lplayer.Character = mod
		end
		if string.sub(msg, 1, 9) == (prefix.."shutdown") then
			game:GetService'RunService'.Stepped:Connect(function()
				pcall(function()
					for i,v in pairs(game:GetService'Players':GetPlayers()) do
						if v.Character ~= nil and v.Character:FindFirstChild'Head' then
							for _,x in pairs(v.Character.Head:GetChildren()) do
								if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
							end
						end
					end
				end)
			end)
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Attempting Shutdown";
				Text = "Shutdown Attempt has begun.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."delobj ") then
			objtodel = (string.sub(msg, 9))
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name == objtodel then
					v:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."getplrs") then
			for i,v in pairs(game:GetService("Players"):GetPlayers())do
				print(v)
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Printed";
				Text = "Players have been printed to console. (F9)";
			})
		end
		if string.sub(msg, 1, 9) == (prefix.."deldecal") then
			for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
				if (v:IsA("Decal")) then
					v:Destroy()
				end
			end
		end
		if string.sub(msg, 1, 11) == (prefix.."opfinality") then
			loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Success!";
				Text = "OpFinality GUI has loaded.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."remotes") then
			remotes = true
			added = true
			game.DescendantAdded:connect(function(rmt)
				if added == true then
					if remotes == true then 
						if rmt:IsA("RemoteEvent") then
							print("A RemoteEvent was added!")
							print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
							print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
						end end end
			end)
			game.DescendantAdded:connect(function(rmtfnctn)
				if added == true then
					if remotes == true then 
						if rmtfnctn:IsA("RemoteFunction") then
							warn("A RemoteFunction was added!")
							warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
							print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
						end end end
			end)

			game.DescendantAdded:connect(function(bndfnctn)
				if added == true then
					if binds == true then 
						if bndfnctn:IsA("BindableFunction") then
							print("A BindableFunction was added!")
							print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
							print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
						end end end
			end)

			game.DescendantAdded:connect(function(bnd)
				if added == true then
					if binds == true then 
						if bnd:IsA("BindableEvent") then
							warn("A BindableEvent was added!")
							warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
							print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
						end end end
			end)


			if binds == true then
				for i,v in pairs(game:GetDescendants()) do
					if v:IsA("BindableFunction") then
						print(" game." .. v:GetFullName() .. " | BindableFunction")
						print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
					end end
				for i,v in pairs(game:GetDescendants()) do
					if v:IsA("BindableEvent") then
						warn(" game." .. v:GetFullName() .. " | BindableEvent")
						print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
					end end
			else
				print("Off")
			end
			if remotes == true then
				for i,v in pairs(game:GetDescendants()) do
					if v:IsA("RemoteFunction") then
						warn(" game." .. v:GetFullName() .. " | RemoteFunction")
						print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
					end end
				wait()
				for i,v in pairs(game:GetDescendants()) do
					if v:IsA("RemoteEvent") then
						print(" game." .. v:GetFullName() .. " | RemoteEvent")
						print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
					end end
			else
				print("Off")
			end
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Printing Remotes";
				Text = "Type ;noremotes to disable.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."noremotes") then
			remotes = false
			added = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Printing Remotes Disabled";
				Text = "Type ;remotes to enable.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."tpdefault") then
			spin = false
			followed = false
			traill = false
			noclip = false
			annoying = false
			hwalk = false
			cbringing = false
		end
		if string.sub(msg, 1, 8) == (prefix.."stopsit") then
			stopsitting = true
		end
		if string.sub(msg, 1, 6) == (prefix.."gosit") then
			stopsitting = false
		end
		if string.sub(msg, 1, 8) == (prefix.."version") then
			print(adminversion)
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Version";
				Text = adminversion;
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."clicktp") then
			clickgoto = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Click TP";
				Text = "Press E to teleport to mouse position, ;noclicktp to stop";
			})
		end
		if string.sub(msg, 1, 9) == (prefix.."clickdel") then
			clickdel = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Click Delete";
				Text = "Press E to delete part at mouse, ;noclickdel to stop";
			})
		end
		if string.sub(msg, 1, 11) == (prefix.."noclickdel") then
			clickdel = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Click Delete";
				Text = "Click delete has been disabled.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."noclicktp") then
			clickgoto = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Click TP";
				Text = "Click TP has been disabled.";
			})
		end
		if string.sub(msg, 1, 8) == (prefix.."toolson") then
			gettingtools = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Tools Enabled";
				Text = "Automatically colleting tools dropped.";
			})
		end
		if string.sub(msg, 1, 9) == (prefix.."toolsoff") then
			gettingtools = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Tools Disabled";
				Text = "Click TP has been disabled.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."delcmdbar") then
			ScreenGui:Destroy()
		end
		if string.sub(msg, 1, 6) == (prefix.."reset") then
			lplayer.Character.Head:Destroy()
		end
		if string.sub(msg, 1, 7) == (prefix.."state ") then
			statechosen = string.sub(msg, 8)
			changingstate = true
		end
		if string.sub(msg, 1, 9) == (prefix.."gravity ") then
			game:GetService("Workspace").Gravity = string.sub(msg, 10)
		end
		if string.sub(msg, 1, 10) == (prefix.."looprhats") then
			removingmeshhats = true
		end
		if string.sub(msg, 1, 12) == (prefix.."unlooprhats") then
			removingmeshhats = false
		end
		if string.sub(msg, 1, 10) == (prefix.."looprtool") then
			removingmeshtool = true
		end
		if string.sub(msg, 1, 12) == (prefix.."unlooprtool") then
			removingmeshtool = false
		end
		if string.sub(msg, 1, 10) == (prefix.."givetool ") then
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
				if v:IsA("Tool") then
					for i,player in pairs(GetPlayer(string.sub(msg, 11))) do
						v.Parent = player.Character
					end
				end
			end
		end
		if string.sub(msg, 1, 14) == (prefix.."givealltools ") then
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
				if v:IsA("Tool") then
					v.Parent = lplayer.Character
					wait()
					for i,player in pairs(GetPlayer(string.sub(msg, 15))) do
						v.Parent = player.Character
					end
				end
			end
		end
		if string.sub(msg, 1, 5) == (prefix.."age ") then
			for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
			end
		end
		if string.sub(msg, 1, 4) == (prefix.."id ") then
			for i,player in pairs(GetPlayer(string.sub(msg, 5))) do
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
			end
		end
		if string.sub(msg, 1, 6) == (prefix..".age ") then
			for i,player in pairs(GetPlayer(string.sub(msg, 7))) do
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = player.AccountAge.." Days";
					Text = "Account age of "..player.Name;
				})
			end
		end
		if string.sub(msg, 1, 5) == (prefix..".id ") then
			for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = player.UserId.." ID";
					Text = "Account ID of "..player.Name;
				})
			end
		end
		if string.sub(msg, 1, 7) == (prefix.."gameid") then
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Game ID";
				Text = "Game ID: ".. game.GameId;
			})
		end
		if string.sub(msg, 1, 4) == (prefix.."pgs") then
			local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
			if pgscheck == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "PGSPhysicsSolverEnabled";
					Text = "PGS is Enabled!";
				})
			else
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "PGSPhysicsSolverEnabled";
					Text = "PGS is Disabled!";
				})
			end
		end
		if string.sub(msg, 1, 12) == (prefix.."removeinvis") then
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v:IsA("Part") then
					if v.Transparency == 1 then
						if v.Name ~= "HumanoidRootPart" then
							v:Destroy()
						end
					end
				end
			end
		end
		if string.sub(msg, 1, 10) == (prefix.."removefog") then
			game:GetService("Lighting").FogStart = 0
			game:GetService("Lighting").FogEnd = 9999999999999
		end
		if string.sub(msg, 1, 8) == (prefix.."disable") then
			lplayer.Character.Humanoid.Parent = lplayer
		end
		if string.sub(msg, 1, 7) == (prefix.."enable") then
			lplayer.Humanoid.Parent = lplayer.Character
		end
		if string.sub(msg, 1, 8) == (prefix.."prefix ") then
			prefix = (string.sub(msg, 9, 9))
			wait(0.1)
			change()
			wait(0.1)
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Prefix changed!";
				Text = "Prefix is now "..prefix..". Use ;resetprefix to reset to ;";
			})
		end
		if string.sub(msg, 1, 12) == (";resetprefix") then
			prefix = ";"
			wait(0.1)
			change()
			wait(0.1)
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Prefix changed!";
				Text = "Prefix is now "..prefix..". Make sure it's one key!";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."flyspeed ") then
			speedfly = string.sub(msg, 11)
			wait()
			change()
		end
		if string.sub(msg, 1, 8) == (prefix.."carpet ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
				local Anim3 = Instance.new("Animation")
				Anim3.AnimationId = "rbxassetid://282574440"
				local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
				track3:Play(.1, 1, 1)
				bplrr = v.Name
				banpl = true
			end
		end
		if string.sub(msg, 1, 9) == (prefix.."uncarpet") then
			banpl = false
		end
		if string.sub(msg, 1, 7) == (prefix.."stare ") then
			for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
				staring = true
				stareplr = v
			end
		end
		if string.sub(msg, 1, 8) == (prefix.."unstare") then
			staring = false
		end
		if string.sub(msg, 1, 8) == (prefix.."logchat") then
			chatlogs = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "LogChat enabled";
				Text = "Now logging all player chat.";
			})
		end
		if string.sub(msg, 1, 10) == (prefix.."unlogchat") then
			chatlogs = false
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "LogChat disabled";
				Text = "Stopped logging all player chat.";
			})
		end
		if string.sub(msg, 1, 7) == (prefix.."fixcam") then
			game:GetService("Workspace").CurrentCamera:Destroy()
			wait(0.1)
			game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
			game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
			lplayer.CameraMinZoomDistance = 0.5
			lplayer.CameraMaxZoomDistance = 400
			lplayer.CameraMode = "Classic"
		end
		if string.sub(msg, 1, 8) == (prefix.."unstate") then
			changingstate = false
		end
	end)

	local function tp()
		for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				if player.Name == brplr then
					player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 2
				end
			end
		end
	end
	local function tpall()
		for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 3
			end
		end
	end
	spawn(function()
		while wait(spamdelay) do
			if spamming == true then
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
			end
		end
	end)
	spawn(function()
		while wait(spamdelay) do
			if spammingpm == true then
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", "All")
			end
		end
	end)
	spawn(function()
		while wait() do
			if cbring == true then
				tp()
			end
		end
	end)
	spawn(function()
		while wait() do
			if cbringall == true then
				tpall()
			end
		end
	end)

	Mouse.KeyDown:connect(function(Key)
		if Key == prefix then
			CMDBAR:CaptureFocus()
		end
	end)

	CMDBAR.FocusLost:connect(function(enterPressed)
		if enterPressed then
			if string.sub(CMDBAR.Text, 1, 5) == ("kill ") then
				if string.sub(CMDBAR.Text, 6) == "me" then
					lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
				else
					for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6)))do
						local NOW = lplayer.Character.HumanoidRootPart.CFrame
						lplayer.Character.Humanoid.Name = 1
						local l = lplayer.Character["1"]:Clone()
						l.Parent = lplayer.Character
						l.Name = "Humanoid"
						wait(0.1)
						lplayer.Character["1"]:Destroy()
						game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
						lplayer.Character.Animate.Disabled = true
						wait(0.1)
						lplayer.Character.Animate.Disabled = false
						lplayer.Character.Humanoid.DisplayDistanceType = "None"
						for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
							lplayer.Character.Humanoid:EquipTool(v)
						end
						local function tp(player,player2)
							local char1,char2=player.Character,player2.Character
							if char1 and char2 then
								char1:MoveTo(char2.Head.Position)
							end
						end
						wait(0.1)
						lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
						wait(0.2)
						lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
						wait(0.5)
						lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
						wait(0.7)
						tp(lplayer,game:GetService("Players")[v.Name])
						wait(0.7)
						lplayer.Character.HumanoidRootPart.CFrame = NOW
						game:GetService("StarterGui"):SetCore("SendNotification", {
							Title = "Tools needed!";
							Text = "You need a tool in your backpack for this command!";
						})
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("bring ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
					local NOW = lplayer.Character.HumanoidRootPart.CFrame
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					local function tp(player,player2)
						local char1,char2=player.Character,player2.Character
						if char1 and char2 then
							char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
						end
					end
					local function getout(player,player2)
						local char1,char2=player.Character,player2.Character
						if char1 and char2 then
							char1:MoveTo(char2.Head.Position)
						end
					end
					tp(game:GetService("Players")[v.Name], lplayer)
					wait(0.2)
					tp(game:GetService("Players")[v.Name], lplayer)
					wait(0.5)
					lplayer.Character.HumanoidRootPart.CFrame = NOW
					wait(0.5)
					getout(lplayer, game:GetService("Players")[v.Name])
					wait(0.3)
					lplayer.Character.HumanoidRootPart.CFrame = NOW
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("spin ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
					spinplr = v
					wait(0.5)
					spin = true
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("unspin") then
				spin = false
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("attach ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
					wait(0.3)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
					attplr = v
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("unattach ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
					local function getout(player,player2)
						local char1,char2=player.Character,player2.Character
						if char1 and char2 then
							char1:MoveTo(char2.Head.Position)
						end
					end
					getout(lplayer, game:GetService("Players")[v.Name])
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("follow ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
					followed = true
					flwplr = v
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("unfollow") then
				followed = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("freefall ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
					local NOW = lplayer.Character.HumanoidRootPart.CFrame
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.2)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.6)
					lplayer.Character.HumanoidRootPart.CFrame = NOW
					wait(0.6)
					lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("trail ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
					traill = true
					trlplr = v
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("untrail") then
				traill = false
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("orbit ") then
				if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
					lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
				else
					for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
						local o = Instance.new("RocketPropulsion")
						o.Parent = lplayer.Character.HumanoidRootPart
						o.Name = "Orbit"
						o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
						o:Fire()
						noclip = true
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("unorbit") then
				lplayer.Character.HumanoidRootPart.Orbit:Destroy()
				noclip = false
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("fling ") then
				if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
					lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
				else
					for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
						local y = Instance.new("RocketPropulsion")
						y.Parent = lplayer.Character.HumanoidRootPart
						y.CartoonFactor = 1
						y.MaxThrust = 800000
						y.MaxSpeed = 1000
						y.ThrustP = 200000
						y.Name = "Fling"
						game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
						y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
						y:Fire()
						noclip = true
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("unfling") then
				noclip = false
				lplayer.Character.HumanoidRootPart.Fling:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
				wait(0.4)
				lplayer.Character.HumanoidRootPart.Fling:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("fecheck") then
				if game:GetService("Workspace").FilteringEnabled == true then
					warn("FE is Enabled (Filtering Enabled)")
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "FE is Enabled";
						Text = "Filtering Enabled. Enjoy using Reviz Admin!";
					})
				else
					warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "FE is Disabled";
						Text = "Filtering Disabled. Consider using a different admin script.";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("void ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.2)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.6)
					lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("noclip") then
				noclip = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Noclip enabled";
					Text = "Type ;clip to disable";
				})
			end
			if string.sub(CMDBAR.Text, 1, 4) == ("clip") then
				noclip = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Noclip disabled";
					Text = "Type ;noclip to enable";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("speed ") then
				lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 7))
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("ws ") then
				lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 4))
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("hipheight ") then
				lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 11))
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("hh ") then
				lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 4))
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("jumppower ") then
				lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 11))
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("jp ") then
				lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 4))
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("default") then
				lplayer.Character.Humanoid.JumpPower = 50
				lplayer.Character.Humanoid.WalkSpeed = 16
				lplayer.Character.Humanoid.HipHeight = 0
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("annoy ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
					annoying = true
					annplr = v
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("unannoy") then
				annoying = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("headwalk ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
					hwalk = true
					hdwplr = v
				end
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("unheadwalk") then
				hwalk = false
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("nolimbs") then
				lplayer.Character["Left Leg"]:Destroy()
				lplayer.Character["Left Arm"]:Destroy()
				lplayer.Character["Right Leg"]:Destroy()
				lplayer.Character["Right Arm"]:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("god") then
				lplayer.Character.Humanoid.Name = 1
				local l = lplayer.Character["1"]:Clone()
				l.Parent = lplayer.Character
				l.Name = "Humanoid"
				wait(0.1)
				lplayer.Character["1"]:Destroy()
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
				lplayer.Character.Animate.Disabled = true
				wait(0.1)
				lplayer.Character.Animate.Disabled = false
				lplayer.Character.Humanoid.DisplayDistanceType = "None"
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "FE Godmode enabled";
					Text = "Use ;grespawn or ;respawn to remove.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("drophats") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Accessory")) or (v:IsA("Hat")) then
						v.Parent = workspace
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("droptool") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Tool")) then
						v.Parent = workspace
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("loopdhats") then
				droppinghats = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Loop Drop Enabled";
					Text = "Type ;unloopdhats to disable";
				})
			end
			if string.sub(CMDBAR.Text, 1, 11) == ("unloopdhats") then
				droppinghats = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Loop Drop Disabled";
					Text = "Type ;loopdhats to enable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("loopdtool") then
				droppingtools = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Loop Drop Enabled";
					Text = "Type ;unloopdtool to disable";
				})
			end
			if string.sub(CMDBAR.Text, 1, 11) == ("unloopdtool") then
				droppingtools = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Loop Drop Disabled";
					Text = "Type ;loopdtool to enable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("invisible") then -- Credit to Timeless
				Local = game:GetService('Players').LocalPlayer
				Char  = Local.Character
				touched,tpdback = false, false
				box = Instance.new('Part',workspace)
				box.Anchored = true
				box.CanCollide = true
				box.Size = Vector3.new(10,1,10)
				box.Position = Vector3.new(0,10000,0)
				box.Touched:connect(function(part)
					if (part.Parent.Name == Local.Name) then
						if touched == false then
							touched = true
							function apply()
								if script.Disabled ~= true then
									no = Char.HumanoidRootPart:Clone()
									wait(.25)
									Char.HumanoidRootPart:Destroy()
									no.Parent = Char
									Char:MoveTo(loc)
									touched = false
								end end
							if Char then
								apply()
							end
						end
					end
				end)
				repeat wait() until Char
				loc = Char.HumanoidRootPart.Position
				Char:MoveTo(box.Position + Vector3.new(0,.5,0))
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Invisibility enabled!";
					Text = "Reset or use ;respawn to remove.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("view ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					if game:GetService("Players")[v.Name].Character.Humanoid then
						game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
					else
						game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("unview") then
				if lplayer.Character.Humanoid then
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
				else
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
				end
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("goto ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				end
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("fly") then
				repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
				repeat wait() until Mouse

				local T = lplayer.Character.HumanoidRootPart
				local CONTROL = {F = 0, B = 0, L = 0, R = 0}
				local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				local SPEED = speedget

				local function fly()
					flying = true
					local BG = Instance.new('BodyGyro', T)
					local BV = Instance.new('BodyVelocity', T)
					BG.P = 9e4
					BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
					BG.cframe = T.CFrame
					BV.velocity = Vector3.new(0, 0.1, 0)
					BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
					spawn(function()
						repeat wait()
							lplayer.Character.Humanoid.PlatformStand = true
							if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
								SPEED = 50
							elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
								SPEED = 0
							end
							if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
								BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
								lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
							elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
								BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							else
								BV.velocity = Vector3.new(0, 0.1, 0)
							end
							BG.cframe = workspace.CurrentCamera.CoordinateFrame
						until not flying
						CONTROL = {F = 0, B = 0, L = 0, R = 0}
						lCONTROL = {F = 0, B = 0, L = 0, R = 0}
						SPEED = 0
						BG:destroy()
						BV:destroy()
						lplayer.Character.Humanoid.PlatformStand = false
					end)
				end
				Mouse.KeyDown:connect(function(KEY)
					if KEY:lower() == 'w' then
						CONTROL.F = speedfly
					elseif KEY:lower() == 's' then
						CONTROL.B = -speedfly
					elseif KEY:lower() == 'a' then
						CONTROL.L = -speedfly 
					elseif KEY:lower() == 'd' then 
						CONTROL.R = speedfly
					end
				end)
				Mouse.KeyUp:connect(function(KEY)
					if KEY:lower() == 'w' then
						CONTROL.F = 0
					elseif KEY:lower() == 's' then
						CONTROL.B = 0
					elseif KEY:lower() == 'a' then
						CONTROL.L = 0
					elseif KEY:lower() == 'd' then
						CONTROL.R = 0
					end
				end)
				fly()
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("unfly") then
				flying = false
				lplayer.Character.Humanoid.PlatformStand = false
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("chat ") then
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(CMDBAR.Text, 6)), "All")
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("spam ") then
				spamtext = (string.sub(CMDBAR.Text, 6))
				spamming = true
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("unspam") then
				spamming = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("spamwait ") then
				spamdelay = (string.sub(CMDBAR.Text, 10))
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("pmspam ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
					pmspammed = v.Name
					spammingpm = true
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("unpmspam") then
				spammingpm = false
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("cfreeze ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 9))) do
					v.Character["Left Leg"].Anchored = true
					v.Character["Left Arm"].Anchored = true
					v.Character["Right Leg"].Anchored = true
					v.Character["Right Arm"].Anchored = true
					v.Character.Torso.Anchored = true
					v.Character.Head.Anchored = true
				end
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("uncfreeze ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 11))) do
					v.Character["Left Leg"].Anchored = false
					v.Character["Left Arm"].Anchored = false
					v.Character["Right Leg"].Anchored = false
					v.Character["Right Arm"].Anchored = false
					v.Character.Torso.Anchored = false
					v.Character.Head.Anchored = false
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("unlockws") then
				local a = game:GetService("Workspace"):getChildren()
				for i = 1, #a do
					if a[i].className == "Part" then
						a[i].Locked = false
					elseif a[i].className == "Model" then
						local r = a[i]:getChildren()
						for i = 1, #r do
							if r[i].className == "Part" then
								r[i].Locked = false
							end
						end
					end
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Success!";
					Text = "Workspace unlocked. Use ;lockws to lock.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("lockws") then
				local a = game:GetService("Workspace"):getChildren()
				for i = 1, #a do
					if a[i].className == "Part" then
						a[i].Locked = true
					elseif a[i].className == "Model" then
						local r = a[i]:getChildren()
						for i = 1, #r do
							if r[i].className == "Part" then
								r[i].Locked = true
							end
						end
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("btools") then
				local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
				Clone_T.BinType = "Clone"
				local Destruct = Instance.new("HopperBin",lplayer.Backpack)
				Destruct.BinType = "Hammer"
				local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
				Hold_T.BinType = "Grab"
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("pstand") then
				lplayer.Character.Humanoid.PlatformStand = true
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("unpstand") then
				lplayer.Character.Humanoid.PlatformStand = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("blockhead") then
				lplayer.Character.Head.Mesh:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("sit") then
				lplayer.Character.Humanoid.Sit = true
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("bringobj ") then
				local function bringobjw()
					for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
						if obj.Name == (string.sub(CMDBAR.Text, 10)) then
							obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
							obj.CanCollide = false
							obj.Transparency = 0.7
							wait()
							obj.CFrame = lplayer.Character["Left Leg"].CFrame
							wait()
							obj.CFrame = lplayer.Character["Right Leg"].CFrame
							wait()
							obj.CFrame = lplayer.Character["Head"].CFrame
						end
					end
				end
				while wait() do
					bringobjw()
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "BringObj";
					Text = "BringObj enabled.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("wsvis ") then
				vis = (string.sub(CMDBAR.Text, 7))
				local a = game:GetService("Workspace"):GetDescendants()
				for i = 1, #a do
					if a[i].className == "Part" then
						a[i].Transparency = vis
					elseif a[i].className == "Model" then
						local r = a[i]:getChildren()
						for i = 1, #r do
							if r[i].className == "Part" then
								r[i].Transparency = vis
							end
						end
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("hypertotal") then
				loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Success!";
					Text = "HyperTotal GUI Loaded!";
				})
			end
			if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
				CMDSFRAME.Visible = true
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("rmeshhats") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Accessory")) or (v:IsA("Hat")) then
						v.Handle.Mesh:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("blockhats") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Accessory")) or (v:IsA("Hat")) then
						v.Handle.Mesh:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("rmeshtool") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Tool")) then
						v.Handle.Mesh:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("blocktool") then
				for i,v in pairs(lplayer.Character:GetChildren()) do
					if (v:IsA("Tool")) then
						v.Handle.Mesh:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("spinner") then
				local p = Instance.new("RocketPropulsion")
				p.Parent = lplayer.Character.HumanoidRootPart
				p.Name = "Spinner"
				p.Target = lplayer.Character["Left Arm"]
				p:Fire()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Spinner enabled";
					Text = "Type ;nospinner to disable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("nospinner") then
				lplayer.Character.HumanoidRootPart.Spinner:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("reachd") then
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
					if v:isA("Tool") then
						local a = Instance.new("SelectionBox",v.Handle)
						a.Adornee = v.Handle
						v.Handle.Size = Vector3.new(0.5,0.5,60)
						v.GripPos = Vector3.new(0,0,0)
						lplayer.Character.Humanoid:UnequipTools()
					end
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Reach applied!";
					Text = "Applied to equipped sword. Use ;noreach to disable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("reach ") then
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
					if v:isA("Tool") then
						local a = Instance.new("SelectionBox",v.Handle)
						a.Name = "Reach"
						a.Adornee = v.Handle
						v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(CMDBAR.Text, 7)))
						v.GripPos = Vector3.new(0,0,0)
						lplayer.Character.Humanoid:UnequipTools()
					end
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Reach applied!";
					Text = "Applied to equipped sword. Use ;noreach to disable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("noreach") then
				for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
					if v:isA("Tool") then
						v.Handle.Reach:Destroy()
					end
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Reach removed!";
					Text = "Removed reach from equipped sword.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("rkill ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					wait(0.1)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.2)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.5)
					lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("tp me ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("cbring ") then
				if (string.sub(CMDBAR.Text, 8)) == "all" or (string.sub(CMDBAR.Text, 8)) == "All" or (string.sub(CMDBAR.Text, 8)) == "ALL" then
					cbringall = true
				else
					for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
						brplr = v.Name
					end
				end
				cbring = true
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("uncbring") then
				cbring = false
				cbringall = false
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("swap ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					local NOW = lplayer.Character.HumanoidRootPart.CFrame
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					local function tp(player,player2)
						local char1,char2=player.Character,player2.Character
						if char1 and char2 then
							char1:MoveTo(char2.Head.Position)
						end
					end
					wait(0.1)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.2)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
					wait(0.5)
					lplayer.Character.HumanoidRootPart.CFrame = NOW
					wait(0.6)
					tp(lplayer, game:GetService("Players")[v.Name])
					wait(0.4)
					lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("glitch ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
					lplayer.Character.Humanoid.Name = 1
					local l = lplayer.Character["1"]:Clone()
					l.Parent = lplayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					lplayer.Character["1"]:Destroy()
					game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
					lplayer.Character.Animate.Disabled = true
					wait(0.1)
					lplayer.Character.Animate.Disabled = false
					lplayer.Character.Humanoid.DisplayDistanceType = "None"
					for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
						lplayer.Character.Humanoid:EquipTool(v)
					end
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
					wait(0.3)
					lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
					wait(0.4)
					b = Instance.new("BodyForce")
					b.Parent = lplayer.Character.HumanoidRootPart
					b.Name = "Glitch"
					b.Force = Vector3.new(100000000,5000,0)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Tools needed!";
						Text = "You need a tool in your backpack for this command!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("unglitch") then
				lplayer.Character.HumanoidRootPart.Glitch:Destroy()
				lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
				b = Instance.new("BodyForce")
				b.Parent = lplayer.Character.HumanoidRootPart
				b.Name = "unGlitch"
				b.Force = Vector3.new(0,-5000000,0)
				wait(2)
				lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("grespawn") then
				lplayer.Character.Humanoid.Health = 0
				wait(1)
				lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
				lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("explorer") then
				loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Success!";
					Text = "DEX Explorer has loaded.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("anim ") then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://"..(string.sub(CMDBAR.Text, 6))
				local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
				track:Play(.1, 1, 1)
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("animgui") then
				loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Success!";
					Text = "Energize Animations GUI has loaded.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("savepos") then
				saved = lplayer.Character.HumanoidRootPart.CFrame
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Position Saved";
					Text = "Use ;loadpos to return to saved position.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("loadpos") then
				lplayer.Character.HumanoidRootPart.CFrame = saved
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("bang ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					local Anim2 = Instance.new("Animation")
					Anim2.AnimationId = "rbxassetid://148840371"
					local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
					track2:Play(.1, 1, 1)
					bplrr = v.Name
					banpl = true
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("unbang") then
				banpl = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("bringmod ") then
				local function bringmodw()
					for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
						if obj.Name == (string.sub(CMDBAR.Text, 10)) then
							for i,ch in pairs(obj:GetDescendants()) do
								if (ch:IsA("BasePart")) then
									ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
									ch.CanCollide = false
									ch.Transparency = 0.7
									wait()
									ch.CFrame = lplayer.Character["Left Leg"].CFrame
									wait()
									ch.CFrame = lplayer.Character["Right Leg"].CFrame
									wait()
									ch.CFrame = lplayer.Character["Head"].CFrame
								end
							end
						end
					end
				end
				while wait() do
					bringmodw()
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "BringMod";
					Text = "BringMod enabled.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("respawn") then
				local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
				local hum = Instance.new('Humanoid', mod)
				local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
				lplayer.Character = mod
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("shutdown") then
				game:GetService'RunService'.Stepped:Connect(function()
					pcall(function()
						for i,v in pairs(game:GetService'Players':GetPlayers()) do
							if v.Character ~= nil and v.Character:FindFirstChild'Head' then
								for _,x in pairs(v.Character.Head:GetChildren()) do
									if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
								end
							end
						end
					end)
				end)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Attempting Shutdown";
					Text = "Shutdown Attempt has begun.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("delobj ") then
				objtodel = (string.sub(CMDBAR.Text, 8))
				for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v.Name == objtodel then
						v:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("getplrs") then
				for i,v in pairs(game:GetService("Players"):GetPlayers())do
					print(v)
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Printed";
					Text = "Players have been printed to console. (F9)";
				})
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("deldecal") then
				for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
					if (v:IsA("Decal")) then
						v:Destroy()
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 10) == ("opfinality") then
				loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Success!";
					Text = "OpFinality GUI has loaded.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("remotes") then
				remotes = true
				added = true
				game.DescendantAdded:connect(function(rmt)
					if added == true then
						if remotes == true then 
							if rmt:IsA("RemoteEvent") then
								print("A RemoteEvent was added!")
								print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
								print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
							end end end
				end)
				game.DescendantAdded:connect(function(rmtfnctn)
					if added == true then
						if remotes == true then 
							if rmtfnctn:IsA("RemoteFunction") then
								warn("A RemoteFunction was added!")
								warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
								print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
							end end end
				end)

				game.DescendantAdded:connect(function(bndfnctn)
					if added == true then
						if binds == true then 
							if bndfnctn:IsA("BindableFunction") then
								print("A BindableFunction was added!")
								print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
								print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
							end end end
				end)

				game.DescendantAdded:connect(function(bnd)
					if added == true then
						if binds == true then 
							if bnd:IsA("BindableEvent") then
								warn("A BindableEvent was added!")
								warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
								print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
							end end end
				end)


				if binds == true then
					for i,v in pairs(game:GetDescendants()) do
						if v:IsA("BindableFunction") then
							print(" game." .. v:GetFullName() .. " | BindableFunction")
							print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
						end end
					for i,v in pairs(game:GetDescendants()) do
						if v:IsA("BindableEvent") then
							warn(" game." .. v:GetFullName() .. " | BindableEvent")
							print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
						end end
				else
					print("Off")
				end
				if remotes == true then
					for i,v in pairs(game:GetDescendants()) do
						if v:IsA("RemoteFunction") then
							warn(" game." .. v:GetFullName() .. " | RemoteFunction")
							print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
						end end
					wait()
					for i,v in pairs(game:GetDescendants()) do
						if v:IsA("RemoteEvent") then
							print(" game." .. v:GetFullName() .. " | RemoteEvent")
							print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
						end end
				else
					print("Off")
				end
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Printing Remotes";
					Text = "Type ;noremotes to disable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("noremotes") then
				remotes = false
				added = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Printing Remotes Disabled";
					Text = "Type ;remotes to enable.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("tpdefault") then
				spin = false
				followed = false
				traill = false
				noclip = false
				annoying = false
				hwalk = false
				cbringing = false
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("stopsit") then
				stopsitting = true
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("gosit") then
				stopsitting = false
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("version") then
				print(adminversion)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Version";
					Text = adminversion;
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("clicktp") then
				clickgoto = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Click TP";
					Text = "Press E to teleport to mouse position";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("noclicktp") then
				clickgoto = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Click TP";
					Text = "Click TP has been disabled.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("toolson") then
				gettingtools = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools Enabled";
					Text = "Automatically colleting tools dropped.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("toolsoff") then
				gettingtools = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Tools Disabled";
					Text = "Click TP has been disabled.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("delcmdbar") then
				ScreenGui:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 5) == ("reset") then
				lplayer.Character.Head:Destroy()
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("state ") then
				statechosen = string.sub(CMDBAR.Text, 7)
				changingstate = true
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("gravity ") then
				game:GetService("Workspace").Gravity = string.sub(CMDBAR.Text, 9)
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("looprhats") then
				removingmeshhats = true
			end
			if string.sub(CMDBAR.Text, 1, 11) == ("unlooprhats") then
				removingmeshhats = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("looprtool") then
				removingmeshtool = true
			end
			if string.sub(CMDBAR.Text, 1, 11) == ("unlooprtool") then
				removingmeshtool = false
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("givetool ") then
				for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v:IsA("Tool") then
						for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
							v.Parent = player.Character
						end
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 4) == ("age ") then
				for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
				end
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("id ") then
				for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 4))) do
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
				end
			end
			if string.sub(CMDBAR.Text, 1, 5) == (".age ") then
				for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = player.AccountAge.." Days";
						Text = "Account age of "..player.Name;
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 4) == (".id ") then
				for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = player.UserId.." ID";
						Text = "Account ID of "..player.Name;
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("gameid") then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Game ID";
					Text = "Game ID: ".. game.GameId;
				})
			end
			if string.sub(CMDBAR.Text, 1, 3) == ("pgs") then
				local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
				if pgscheck == true then
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "PGSPhysicsSolverEnabled";
						Text = "PGS is Enabled!";
					})
				else
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "PGSPhysicsSolverEnabled";
						Text = "PGS is Disabled!";
					})
				end
			end
			if string.sub(CMDBAR.Text, 1, 11) == ("removeinvis") then
				for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v:IsA("Part") then
						if v.Transparency == 1 then
							if v.Name ~= "HumanoidRootPart" then
								v:Destroy()
							end
						end
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("removefog") then
				game:GetService("Lighting").FogStart = 0
				game:GetService("Lighting").FogEnd = 9999999999999
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("disable") then
				lplayer.Character.Humanoid.Parent = lplayer
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("enable") then
				lplayer.Humanoid.Parent = lplayer.Character
			end
			if string.sub(CMDBAR.Text, 1, 13) == ("givealltools ") then
				for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
					if v:IsA("Tool") then
						v.Parent = lplayer.Character
						wait()
						for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 14))) do
							v.Parent = player.Character
						end
					end
				end
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("flyspeed ") then
				speedfly = string.sub(CMDBAR.Text, 10)
				wait()
				change()
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("carpet ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
					local Anim3 = Instance.new("Animation")
					Anim3.AnimationId = "rbxassetid://282574440"
					local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
					track3:Play(.1, 1, 1)
					bplrr = v.Name
					banpl = true
				end
			end
			if string.sub(CMDBAR.Text, 1, 8) == ("uncarpet") then
				banpl = false
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("stare ") then
				for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
					staring = true
					stareplr = v
				end
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("unstare") then
				staring = false
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("logchat") then
				chatlogs = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "LogChat enabled";
					Text = "Now logging all player chat.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 9) == ("unlogchat") then
				chatlogs = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "LogChat disabled";
					Text = "Stopped logging all player chat.";
				})
			end
			if string.sub(CMDBAR.Text, 1, 6) == ("fixcam") then
				game:GetService("Workspace").CurrentCamera:Destroy()
				wait(0.1)
				game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
				game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
				lplayer.CameraMinZoomDistance = 0.5
				lplayer.CameraMaxZoomDistance = 400
				lplayer.CameraMode = "Classic"
			end
			if string.sub(CMDBAR.Text, 1, 7) == ("unstate") then
				changingstate = false
			end
			CMDBAR.Text = ""
		end
	end)

	wait(0.3)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Loaded successfully!";
		Text = "Reviz Admin V2 by illremember";
	})
	wait(0.1)
	print("Reviz Admin V2 loaded!")
	if game:GetService("Workspace").FilteringEnabled == true then
		warn("FE is Enabled (Filtering Enabled)")
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "FE is Enabled";
			Text = "Filtering Enabled. Enjoy using Reviz Admin!";
		})
	else
		warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "FE is Disabled";
			Text = "Filtering Disabled. Consider using a different admin script.";
		})
	end

	local intro = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	intro.Parent = game:GetService("CoreGui")
	Frame.Parent = intro
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.BackgroundTransparency = 1
	Frame.Size = UDim2.new(1, 0, 0, 300)
	Frame.Position = UDim2.new(0, 0, -0.4, 0)
	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(0, 0, 0, 0)
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=1542162618"
	Frame:TweenPosition(UDim2.new(0, 0, 0.2, 0), "Out", "Elastic", 3)
	wait(3.01)
	Frame:TweenPosition(UDim2.new(0, 0, 1.5, 0), "Out", "Elastic", 5)
	wait(5.01)
	intro:Destroy()
end)

UICorner_7.Parent = reviz

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel.Position = UDim2.new(0.626865685, 0, 0.702970326, 0)
TextLabel.Size = UDim2.new(0, 98, 0, 55)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made By Johnthehack44 With Love <3"
TextLabel.TextColor3 = Color3.fromRGB(72, 72, 72)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_8.Parent = TextLabel

UICorner_9.Parent = Frame

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
close.Position = UDim2.new(0.930000007, 0, 3.7252903e-09, 0)
close.Size = UDim2.new(0, 35, 0, 25)
close.Font = Enum.Font.SourceSans
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
	local script = Instance.new('LocalScript', close)

	local Frame = script.Parent.Parent

	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = false
	end)
end)

UICorner_10.Parent = close

open.Name = "open"
open.Parent = ScreenGui
open.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
open.BackgroundTransparency = 0.500
open.Position = UDim2.new(-0.0188118815, 0, 0.5, 0)
open.Size = UDim2.new(0, 128, 0, 30)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true
open.MouseButton1Click:Connect(function()
	local script = Instance.new('LocalScript', open)

	local Frame = script.Parent.Parent.Frame

	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = true
	end)
end)

UICorner_11.Parent = open