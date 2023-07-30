--[[
    Info Script
    By MyWorld
    discord.gg/qWu7VYSMJk
]]

local twait, tspawn, tdelay = task.wait, task.spawn, task.delay
local g = game
while not g:IsLoaded() do twait() end
local plrs = g:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = g:GetService("Workspace")
local cg = g:GetService("CoreGui")
local pg = lp:FindFirstChildOfClass("PlayerGui")
local rs = g:GetService("RunService")
local uis = g:GetService("UserInputService")
local stepped = rs.Stepped
local renderstepped = rs.RenderStepped
local heartbeat = rs.Heartbeat
local currentplayer = lp
local fenv = getfenv()
local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.sethiddenprop or fenv.set_hidden_prop
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local v3_101 = v3(1, 0, 1)
local cf = CFrame.new
local flycf = false
local schar, mrandom, mclamp = string.char, math.random, math.clamp
local tfind, tinsert, tremove = table.find, table.insert, table.remove
local tick = os.clock
local instancenew = Instance.new

local function gp(parent, name, className)
    if typeof(parent) == "Instance" then
		for _, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				return v
			end
		end
	end
	return nil
end

local function randomstring(len)
    len = len or mrandom(8, 15)
    local ret = ""
    for i=1, len do
        if mrandom(1, 2) == 1 then
            ret = ret .. schar(mrandom(97, 122)):lower()
        else
            ret = ret .. schar(mrandom(97, 122)):upper()
        end
    end
    return ret
end

local function instancefromtable(t)
    local instance, parent = instancenew(t.ClassName), t.Parent
    t.Parent, t.Name, t.ClassName = nil, t.Name or randomstring(), nil
    for i, v in pairs(t) do
        instance[i] = v
    end
    if not parent then
        return instance
    end
    instance.Parent = parent
    return instance
end

local guiname = tostring(g.PlaceId) .. "_info"

local function deleteguifrom(a)
    gp(a, guiname, "ScreenGui"):Destroy()
end
pcall(deleteguifrom, cg)
pcall(deleteguifrom, pg)

local gui = instancefromtable({
    ClassName = "ScreenGui",
    Name = guiname,
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    IgnoreGuiInset = true
})
gui:GetPropertyChangedSignal("Parent"):Connect(function()
	if not (gui and gui.Parent) then
		gui = nil
	end
end)
local function roundcorners(a)
    instancenew("UICorner", a)
end
local mainFrame = instancefromtable({
    ClassName = "Frame",
    Parent = gui,
    BackgroundColor3 = Color3.fromRGB(21, 21, 21),
    BackgroundTransparency = 0.75,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 0, 1, -200),
    Size = UDim2.new(1, 0, 0, 200)
})
local mf = instancefromtable({
    ClassName = "Frame",
    Parent = mainFrame,
    BackgroundColor3 = mainFrame.BackgroundColor3,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 0, 1, 0),
    Size = UDim2.new(1, 0, 1, 0)
})
local scriptName = instancefromtable({
    ClassName = "TextLabel",
    Parent = mainFrame,
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 0, 20),
    Font = Enum.Font.SourceSans,
    Text = "Info Script",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 20,
    TextWrapped = true
})
local line = instancefromtable({
    ClassName = "Frame",
    Parent = scriptName,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 0.7,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 5, 1, 0),
    Size = UDim2.new(1, -10, 0, 1)
})
local showhide = instancefromtable({
    ClassName = "TextButton",
    Parent = mainFrame,
    BackgroundColor3 = Color3.fromRGB(21, 21, 21),
    BackgroundTransparency = 0.75,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 250, 0, -25),
    Size = UDim2.new(0, 40, 0, 25),
    Font = Enum.Font.SourceSans,
    Text = "\\/",
    TextColor3 = Color3.fromRGB(235, 235, 235),
    TextSize = 20
})
local scrollingFrame = instancefromtable({
    ClassName = "ScrollingFrame",
    Parent = mainFrame,
    Active = true,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ClipsDescendants = false,
    Position = UDim2.new(0, 5, 0, 30),
    Size = UDim2.new(1, -10, 1, -35),
    CanvasSize = UDim2.new(0, 0, 0, 0),
    ScrollBarThickness = 10,
    AutomaticCanvasSize = Enum.AutomaticSize.X
})
local UIListLayout = instancefromtable({
    ClassName = "UIListLayout",
    Parent = scrollingFrame,
    FillDirection = Enum.FillDirection.Horizontal,
    SortOrder = Enum.SortOrder.LayoutOrder,
    Padding = UDim.new(0, 10)
})

local sn = scriptName.Text
local function notify(msg)
	local msg1 = sn .. " - " .. msg
	scriptName.Text = msg1
	tdelay(3, function()
		if scriptName.Text == msg1 then
			scriptName.Text = sn
		end
	end)
end

local ancprt = nil
local function weldtp(part, cfr)
	if not (part and part:IsDescendantOf(ws) and part:IsA("BasePart") and (not part:IsGrounded())) then
		return stepped:Wait()
	end
	if not (ancprt and ancprt:IsDescendantOf(ws) and ancprt:IsGrounded()) then
		for i, v in pairs(ws:GetDescendants()) do
			if v:IsA("BasePart") and v:IsGrounded() then
				ancprt = v
				break
			end
		end
	end
	if not ancprt then
		return stepped:Wait()
	end
	local weld = instancefromtable({
	    ClassName = "Weld",
    	Part0 = part,
    	C0 = cfr:Inverse(),
    	Part1 = ancprt,
    	C1 = ancprt.CFrame:Inverse(),
    	Parent = ancprt
	})
	stepped:Wait()
	pcall(function()
		weld:Destroy()
	end)
end

local function respawnRequest()
	local ccfr = ws.CurrentCamera.CFrame
	local c = lp.Character
	if c then
    	lp.Character = nil
    	lp.Character = c
    else
        c = instancenew("Model")
        lp.Character = c
        if lp.Character == c then
            lp.Character = nil
        end
	end
	local con0, con1 = nil, nil
	con0 = ws.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
	    con0:Disconnect()
	    con1:Disconnect()
	    ws.CurrentCamera.CFrame = ccfr
	end)
	con1 = renderstepped:Connect(function()
	    con0:Disconnect()
	    con1:Disconnect()
	end)
end

local function removehats(c)
    c = c or lp.Character
    if not c then return end
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("Accessory") then
            local handle = gp(v, "Handle", "BasePart")
            if handle then
                handle:Destroy()
            end
            v:Destroy()
        end
    end
end

local function makeFrame(parent, text, color)
	local frame = instancefromtable({
	    ClassName = "Frame",
    	Parent = parent,
    	BackgroundColor3 = color,
    	Size = UDim2.new(0, 300, 0, 145),
    	BorderSizePixel = 0
    })
	roundcorners(frame)
	local framelabel = instancefromtable({
	    ClassName = "TextLabel",
    	Parent = frame,
    	BackgroundTransparency = 1,
    	Size = UDim2.new(1, 0, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = text,
    	TextColor3 = Color3.fromRGB(197, 197, 197),
    	TextSize = 14
	})
	local line = instancefromtable({
	    ClassName = "Frame",
    	Parent = framelabel,
    	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    	BackgroundTransparency = 0.7,
    	BorderSizePixel = 0,
    	Position = UDim2.new(0, 5, 1, 0),
    	Size = UDim2.new(1, -10, 0, 1)
	})
	local ScrollingFrame = instancefromtable({
	    ClassName = "ScrollingFrame",
    	Parent = frame,
    	Active = true,
    	BackgroundTransparency = 1,
    	BorderSizePixel = 0,
        Position = UDim2.new(0, 5, 0, 25),
    	Size = UDim2.new(1, -5, 1, -30),
    	CanvasSize = UDim2.new(0, 0, 0, 0),
    	ScrollBarThickness = 7,
    	AutomaticCanvasSize = Enum.AutomaticSize.Y
	})
	local UIListLayout = instancefromtable({
	    ClassName = "UIListLayout",
    	Parent = ScrollingFrame,
    	SortOrder = Enum.SortOrder.LayoutOrder,
    	Padding = UDim.new(0, 5)
    })
	return frame
end

local con, hidden, Y, hidespeed = nil, false, -200, 769.69
con = renderstepped:Connect(function(deltaTime)
    if not gui then return con:Disconnect() end
    if hidden then
        Y = mclamp(Y+deltaTime*hidespeed, -200, -5)
    else
        Y = mclamp(Y-deltaTime*hidespeed, -200, -5)
    end
    mainFrame.Position = UDim2.new(0, 0, 1, Y)
end)
showhide.MouseButton1Click:Connect(function()
    hidden = not hidden
	if hidden then
		showhide.Text = "/\\" 
	else
		showhide.Text = "\\/"
	end
end)

local cbring = {}
local controllable = {}
local lastc = nil
local con = nil
con = lp.CharacterAdded:Connect(function(c)
	if not gui then
		con:Disconnect()
		return
	end
	if c and c.Parent then
	    if lastc == c then
		    return
	    end
		lastc = c
		controllable = {}
		for i, v in pairs(plrs:GetPlayers()) do
			local c = v.Character
			if c then
				tinsert(controllable, c)
			end
		end
	end
end)

local viewedPlayer = nil
local viewbutton = {Text = ""}

local playersframe = makeFrame(scrollingFrame, "Players", Color3.fromRGB(12, 59, 100))
local playercframe = makeFrame(playersframe, "playerscontrol", Color3.fromRGB(12, 59, 100))
playercframe.BorderSizePixel = 1.000
playercframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
playercframe.Position = UDim2.new(0, 10, -1, -40)
playercframe.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
playercframe.Visible = true
local playerframef = makeFrame(playercframe, "friends", Color3.fromRGB(0, 150, 0))
playerframef.Position = UDim2.new(1, 10, 0, 5)

local function addbtn(parent, plr)
	local playerbutton = instancefromtable({
	    ClassName = "TextButton",
    	Name = plr.Name,
    	Parent = parent,
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = plr.Name,
    	TextColor3 = Color3.fromRGB(0, 0, 0),
    	TextSize = 15
    })
	if plr.DisplayName ~= plr.Name then
		playerbutton.Text = playerbutton.Text .. " (" .. plr.DisplayName .. ")"
	end
	if plr == lp then
		playerbutton.BackgroundColor3 = Color3.fromRGB(100, 200, 200)
	else
		playerbutton.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
	end
	roundcorners(playerbutton)
	playerbutton.MouseButton1Click:Connect(function()
		playercframe:FindFirstChildOfClass("TextLabel").Text = "Player: " .. playerbutton.Text
		currentplayer = plr
		playercframe.Visible = true
		playerframef.Visible = false
		viewbutton.Text = ((viewedPlayer == plr) and "Unview") or "View"
	end)
end

local function unview()
	viewedPlayer = nil
	viewbutton.Text = "View"
	local c = lp.Character
	if c and c.Parent then
		local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart")
		if subject then
			ws.CurrentCamera.CameraType = Enum.CameraType.Custom
			ws.CurrentCamera.CameraSubject = subject
		else
			notify("No Part To View")
		end
	else
		notify("Character Not Found")
	end
end

local playersScroll = playersframe:FindFirstChildOfClass("ScrollingFrame")

for i, v in pairs(plrs:GetPlayers()) do
	addbtn(playersScroll, v)
end
local reset = function() end
local con = nil
con = plrs.PlayerAdded:Connect(function(plr)
	if gui then
		addbtn(playersScroll, plr)
		if playerframef.Visible then
    	    tspawn(function()
        	    if plr and plr.Parent and currentplayer:IsFriendsWith(plr.UserId) then
        			addbtn(playerframef:FindFirstChildOfClass("ScrollingFrame"), plr)
        	    end
    	    end)
    	end
	else
		con:Disconnect()
	end
end)
local con = nil
con = plrs.PlayerRemoving:Connect(function(plr)
	if gui then
		local playerbutton = gp(playersScroll, plr.Name, "TextButton")
		if playerbutton then
			playerbutton:Destroy()
		end
		if plr == currentplayer then
			playercframe.Visible = false
		end
		if plr == viewedPlayer then
			unview()
		end
	else
		con:Disconnect()
	end
end)
local hideplayerc = instancefromtable({
    ClassName = "TextButton",
    Parent = playercframe:FindFirstChildOfClass("TextLabel"),
    BackgroundColor3 = Color3.fromRGB(59, 59, 59),
    BorderSizePixel = 0,
    Position = UDim2.new(1, -17, 0, 2),
    Size = UDim2.new(0, 15, 0, 15),
    Font = Enum.Font.SourceSans,
    Text = "X",
    TextColor3 = Color3.fromRGB(206, 206, 206),
    TextSize = 14
})
roundcorners(hideplayerc)
hideplayerc.MouseButton1Click:Connect(function()
	playercframe.Visible = false
end)
local function makeplrbutton(buttontext)
	local button = instancefromtable({
	    ClassName = "TextButton",
    	Parent = playercframe:FindFirstChildOfClass("ScrollingFrame"),
    	BackgroundColor3 = Color3.fromRGB(53, 53, 53),
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = buttontext,
    	TextColor3 = Color3.fromRGB(226, 226, 226),
    	TextSize = 15
    })
	roundcorners(button)
	return button
end
makeplrbutton("GoTo").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if tp then
			local c1 = currentplayer.Character
			if c1 and c1.Parent then
				local to = gp(c1, "HumanoidRootPart", "BasePart") or gp(c1, "Head", "BasePart") or c1:FindFirstChildWhichIsA("BasePart")
				if to then
					if flycf then
						flycf = to.CFrame
					else
						weldtp(tp, to.CFrame)
					end
					if viewedPlayer == currentplayer then
					    unview()
					end
					notify("GoTo: " .. currentplayer.Name)
				else
					notify("No Target Part Found")
				end
			else
				notify("Target Character Not Found")
			end
		else
			notify("No Part Found")
		end
	else
		notify("Character Not Found")
	end
end)
viewbutton = makeplrbutton("View")
viewbutton.MouseButton1Click:Connect(function()
	if viewedPlayer == currentplayer then
		unview()
	else
		viewedPlayer = currentplayer
		viewbutton.Text = "Unview"
	end
end)

local cbringb = makeplrbutton("Client Bring")

local function noanimations()
	local c = lp.Character
	if c then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			local animate = gp(c, "Animate", "LocalScript")
			if animate then
				animate.Disabled = true
			end
			for i, v in pairs(hum:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		else
			notify("Humanoid Not Found")
		end
	else
		notify("Character Not Found")
	end
end

local isConnected = nil
isConnected = function(part0, part1, tested)
	if not ((typeof(part0) == "Instance") and part0:IsA("BasePart")) then
		return false
	end
	if not ((typeof(part1) == "Instance") and part1:IsA("BasePart")) then
		return false
	end
	if not tested then
		tested = {}
	end
	local ret = false
	tinsert(tested, part0)
	for i, v in pairs(part0:GetConnectedParts()) do
		if part1 == v then
			return true
		elseif not tfind(tested, v) then
			ret = ret or isConnected(v, part1, tested)
		end
	end
	return ret
end

local function attach(c1)
	local bck = lp:FindFirstChildOfClass("Backpack")
	local c = lp.Character
	--checks for: model, humanoid, arm, torso for main character:
	if not (c and c.Parent) then
		notify("Character Not Found")
		return false
	end
	local hum = c:FindFirstChildOfClass("Humanoid")
	if not hum then
		notify("Humanoid Not Found")
		return false
	end 
	local arm = gp(c, "Right Arm", "BasePart") or gp(c, "RightHand", "BasePart")
	if not arm then
		notify("Arm Not Found")
		return false
	end
	local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
	if not torso then
		notify("Torso Not Found")
		return
	end
	if torso:IsGrounded() then
		notify("Torso Is Grounded")
		return
	end
	if not isConnected(arm, torso) then
		notify("Arm And Torso Not Connected")
		return
	end
	--checks for: tool:
	local tool, handle = nil, nil
	for i, v in pairs(c:GetChildren()) do
	    if v:IsA("Tool") then
	        handle = gp(v, "Handle", "BasePart") 
	        if handle then 
	            tool = v
	            break
	        end
	    end
	end
	if (not tool) and bck then 
        for i, v in pairs(bck:GetChildren()) do
    	    if v:IsA("Tool") then
    	        handle = gp(v, "Handle", "BasePart") 
    	        if handle then 
    	            tool = v
    	            break
    	        end
    	    end
        end
	end
	if not tool then
	    notify("No Tools With Handle Found")
	    return false
	end
	--checks for: model, humanoid, arm, torso for target character:
	if not (c1 and c1.Parent) then
		notify("Target Character Not Found")
		return false
	end
	local hum1 = c1:FindFirstChildOfClass("Humanoid")
	if not hum1 then
		notify("Target Humanoid Not Found")
		return false
	end
	local arm1 = gp(c1, "Right Arm", "BasePart") or gp(c1, "RightHand", "BasePart")
	if not arm1 then
		notify("Target Arm Not Found")
		return false
	end
	local torso1 = gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart")
	if not torso1 then
		notify("Target Torso Not Found")
		return
	end
	if torso1:IsGrounded() then
		notify("Target Torso Is Grounded")
		return
	end
	if not isConnected(arm1, torso1) then
		notify("Target Arm And Torso Not Connected")
		return
	end
	--all checks good
	if bck then
		for i, v in pairs(c:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = bck
			end
		end
	end
	removehats(c)
	local nhum = hum:Clone()
	hum:Destroy()
	hum = nhum
	hum.Parent = c
	hum:EquipTool(tool)
	for i, v in pairs(c1:GetDescendants()) do
		if v and v:IsA("BasePart") then
			v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
		end
	end
	for i, v in pairs(tool:GetDescendants()) do
	    if v ~= handle and not v:IsA("TouchTransmitter") then
	        v:Destroy()
	    end
	end
	handle.Massless = true
	local attaching = true
	tspawn(function()
		while renderstepped:Wait() and attaching do
			--checks for: model, humanoid, arm, torso for main character:
			if not (c and c.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Character Removed")
			end
			if (not hum and hum.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Humanoid Removed")
			end
			if not (arm and arm.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Arm Removed")
			end
			if not (torso and torso.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Torso Removed")
			end
			if torso:IsGrounded() then
				handle = nil
				tool.Parent = bck
				return notify("Torso Got Grounded")
			end
			if not isConnected(arm, torso) then
				handle = nil
				tool.Parent = bck
				return notify("Arm And Torso Connection Removed")
			end
			--checks for: model, humanoid, arm, torso for target character:
			if not (c1 and c1.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Target Character Removed")
			end
			if not (hum1 and hum1.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Target Humanoid Removed")
			end
			if not (arm1 and arm1.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Target arm Removed")
			end
			if not (torso1 and torso1.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("Target Torso Removed")
			end
			if torso:IsGrounded() then
				handle = nil
				tool.Parent = bck
				return notify("Target Torso Got Grounded")
			end
			if not isConnected(arm1, torso1) then
				handle = nil
				tool.Parent = bck
				return notify("Target Arm And Torso Connection Removed")
			end
			--checks for: tool
			if not (tool and tool.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("tool Removed")
			end
			if not (handle and handle.Parent) then
				handle = nil
				tool.Parent = bck
				return notify("tool handle Removed")
			end
			if (tool.Parent ~= c) and (tool.Parent ~= c1) and (tool.Parent ~= bck) then
				handle = nil
				tool.Parent = bck
				return notify("unexpected tool parent")
			end
			weldtp(arm1, handle.CFrame)
		end
	end)
	while tool do
		tool.AncestryChanged:Wait()
		attaching = false
		break
	end
	if hum1 and hum1.Parent then
		hum1.PlatformStand = true
	else
	    notify("Target Humanoid Removed After Attached")
	end
	return handle
end

makeplrbutton("Bring").MouseButton1Click:Connect(function()
	local plr = currentplayer
	local c1 = plr.Character
	if not (c1 and c1.Parent) then
		notify("Target Character Not Found")
		return
	end
	if not tfind(controllable, c1) then
		reset(true)
		twait(0.1)
	end
	if not (plr and plr.Parent) then
		notify("Target Player Left")
		return
	end
	if not (c1 and c1.Parent) then
		c1 = plr.Character
	end
	if not (c1 and c1.Parent) then
		notify("Target Character Not Found")
		return
	end
	local c = lp.Character
	if not (c and c.Parent) then
		notify("Character Not Found")
		return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
		notify("Part Not Found")
		return
	end
	local cfr = part.CFrame
	local joint = attach(plr.Character)
	if not joint then
		return
	end
	weldtp(part, cfr)
	twait(0.5)
	if c and c.Parent and part and part.Parent and joint and joint.Parent then
		weldtp(part, cfr)
		if not (joint and joint.Parent) then
			notify("Joint Removed")
			reset(false)
			return
		end
		reset(false)
		if viewedPlayer == plr then
		    unview()
		end
		notify("Brought " .. plr.Name)
	end
end)

local fekill = nil
fekill = function(c1)
	if not (c1 and c1.Parent) then
		return notify("Target Character Not Found")
	end
	local torso = gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart")
	if not torso then
		return notify("Target Torso Not Found")
	end
	local head = gp(c1, "Head", "BasePart")
	if not head then
		return notify("Target Head Not Found")
	end
	if not isConnected(torso, head) then
		return notify("Torso And Head Not Connected")
	end
	if not tfind(controllable, c1) then
		reset(true)
		twait(0.1)
	end
	if (plrs.RespawnTime < 15) and (plrs.RespawnTime > 1) then
		notify("Preparing Fast Respawn")
		respawnRequest()
		twait(plrs.RespawnTime - 1)
	end
	if not (c1 and c1.Parent) then
		return notify("Target Character Removed")
	end
	local c = lp.Character
	if not (c and c.Parent) then
		return notify("Character Not Found")
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart")
	if not part then
		return notify("Part Not Found")
	end
	local hum = c1:FindFirstChildOfClass("Humanoid")
	if not hum then
		return notify("Humanoid Not Found")
	end
	if not isConnected(torso, head) then
		return notify("Torso And Head Joint Removed")
	end
	local cfr = part.CFrame
	local part1 = gp(c1, "HumanoidRootPart", "BasePart") or gp(c1, "Torso", "BasePart") or gp(c1, "UpperTorso", "BasePart") or gp(c1, "Head", "BasePart")
	if part1 then
		weldtp(part, part1.CFrame)
	end
	if hum.Health > 0 then
		hum.BreakJointsOnDeath = false
	end
	stepped:Wait()
	local joint = attach(c1)
	if not joint then
		return weldtp(part, cfr)
	end
	stepped:Wait()
	hum:ChangeState(Enum.HumanoidStateType.Dead)
	twait(0.3)
	if joint then
		joint:BreakJoints()
	end
	weldtp(part, cfr)
	reset(false)
	local c, con = lp.Character, nil
	con = heartbeat:Connect(function()
	    if not (c and c.Parent) then return con:Disconnect() end
	    local ff = c:FindFirstChildOfClass("ForceField")
	    if ff then ff:Destroy() return con:Disconnect() end
	end)
	notify("Kill Attempt Failed")
	local t = tick() + 1
	local con = nil
	con = stepped:Connect(function()
		if tick() > t then
			return con:Disconnect()
		end
		if not isConnected(torso, head) then
			con:Disconnect()
			notify("Killed Succesfully")
		end
	end)
end

makeplrbutton("Kill").MouseButton1Click:Connect(function()
	fekill(currentplayer.Character)
end)

makeplrbutton("Attach").MouseButton1Click:Connect(function()
	return attach(currentplayer.Character) and notify("attached to " .. currentplayer.Name)
end)

makeplrbutton("View Friends").MouseButton1Click:Connect(function()
	playerframef.Visible = not playerframef.Visible
	if not playerframef.Visible then
		return
	end
	playerframef:FindFirstChildOfClass("TextLabel").Text = "Friends Of: " .. currentplayer.Name
	local scroll = playerframef:FindFirstChildOfClass("ScrollingFrame")
	for i, v in pairs(scroll:GetChildren()) do
		if v and v.Parent and v:IsA("TextButton") then
			v:Destroy()
		end
	end
	for i, v in pairs(plrs:GetPlayers()) do
		tspawn(function()
			if v and v.Parent and currentplayer:IsFriendsWith(v.UserId) then
				addbtn(playerframef:FindFirstChildOfClass("ScrollingFrame"), v)
			end
		end)
	end
end)

 
local graphicsframe = makeFrame(scrollingFrame, "Graphics", Color3.fromRGB(84, 45, 162))
local function makegraphicsbutton(buttontext)
	local button = instancefromtable({
	    ClassName = "TextButton",
    	Parent = graphicsframe:FindFirstChildOfClass("ScrollingFrame"),
    	BackgroundColor3 = Color3.fromRGB(53, 53, 53),
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = buttontext,
    	TextColor3 = Color3.fromRGB(226, 226, 226),
    	TextSize = 15
    })
	roundcorners(button)
	return button
end
local lig = g:GetService("Lighting")
makegraphicsbutton("Remove Fog").MouseButton1Click:Connect(function()
	lig.FogStart = 9e9
	lig.FogEnd = 9e9
end)
local function setupremove(button, classname)
	button.MouseButton1Click:Connect(function()
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA(classname) then
				v:Destroy()
			end
		end
	end)
end
setupremove(makegraphicsbutton("Remove Atmosphere Effects"), "Atmosphere")
setupremove(makegraphicsbutton("Remove Blur"), "BlurEffect")
setupremove(makegraphicsbutton("Remove Decals"), "Decal")
setupremove(makegraphicsbutton("Default Sky"), "Sky")
setupremove(makegraphicsbutton("Remove Sun Rays"), "SunRaysEffect")
setupremove(makegraphicsbutton("Remove Particles"), "ParticleEmitter")
setupremove(makegraphicsbutton("Remove Color Correction Effects"), "ColorCorrectionEffect")

local cfly = nil
local fhrp = nil
local flyspeed = 60

local positionsframe = makeFrame(scrollingFrame, "Positions", Color3.fromRGB(162, 108, 42))
local positionsscroll = positionsframe:FindFirstChildOfClass("ScrollingFrame")
local addpositionbutton = instancefromtable({
    ClassName = "TextButton",
    Parent = positionsframe:FindFirstChildOfClass("TextLabel"),
    BackgroundColor3 = Color3.fromRGB(59, 59, 59),
    BorderSizePixel = 0,
    Position = UDim2.new(1, -77, 0, 2),
    Size = UDim2.new(0, 75, 1, -4),
    Font = Enum.Font.SourceSans,
    Text = "+ Add Current",
    TextColor3 = Color3.fromRGB(206, 206, 206),
    TextSize = 14
})
roundcorners(addpositionbutton)
addpositionbutton.MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if hrp then
			local cfr = hrp.CFrame
			local positionframe = instancefromtable({
			    ClassName = "Frame",
    			Parent = positionsscroll,
    			BackgroundColor3 = Color3.fromRGB(106, 106, 106),
    			BorderSizePixel = 0,
    			Size = UDim2.new(1, -10, 0, 30)
			})
			roundcorners(positionframe)
			local loadposbutton = instancefromtable({
			    ClassName = "TextButton",
    			Parent = positionframe,
    			BackgroundColor3 = Color3.fromRGB(47, 47, 47),
    			BorderSizePixel = 0,
    			Position = UDim2.new(1, -70, 0, 5),
    			Size = UDim2.new(0, 40, 1, -10),
    			Font = Enum.Font.SourceSans,
    			Text = "Load",
    			TextColor3 = Color3.fromRGB(223, 223, 223),
    			TextSize = 16
			})
			roundcorners(loadposbutton)
			local removeposbutton = instancefromtable({
			    ClassName = "TextButton",
    			Parent = positionframe,
    			BackgroundColor3 = Color3.fromRGB(47, 47, 47),
    			BorderSizePixel = 0,
    			Position = UDim2.new(1, -25, 0, 5),
    			Size = UDim2.new(0, 20, 1, -10),
    			Font = Enum.Font.SourceSans,
    			Text = "X",
    			TextColor3 = Color3.fromRGB(223, 223, 223),
    			TextSize = 16
    		})
			roundcorners(removeposbutton)
			local positionName = instancefromtable({
			    ClassName = "TextBox",
    			Parent = positionframe,
    			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    			BackgroundTransparency = 1,
    			Position = UDim2.new(0, 5, 0, 5),
    			Size = UDim2.new(1, -80, 1, -10),
    			Font = Enum.Font.SourceSans,
    			Text = "Position",
    			ClearTextOnFocus = false,
    			TextColor3 = Color3.fromRGB(0, 0, 0),
    			TextSize = 25,
    			TextXAlignment = Enum.TextXAlignment.Left
			})
			loadposbutton.MouseButton1Click:Connect(function()
				c = lp.Character
				if c and c.Parent then
					hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
					if hrp then
						if flycf then
							flycf = cfr
						else
							weldtp(hrp, cfr)
						end
					else
						notify("Part Not Found")
					end
				else
					notify("Character Not Found")
				end
			end)
			removeposbutton.MouseButton1Click:Connect(function()
				positionframe:Destroy()
			end)
		end
	end
end)

local charframe = makeFrame(scrollingFrame, "Character", Color3.fromRGB(99, 15, 15))
local function makecharbutton(buttontext)
	local button = instancefromtable({
	    ClassName = "TextButton",
    	Parent = charframe:FindFirstChildOfClass("ScrollingFrame"),
    	BackgroundColor3 = Color3.fromRGB(53, 53, 53),
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = buttontext,
    	TextColor3 = Color3.fromRGB(226, 226, 226),
    	TextSize = 15
    })
	roundcorners(button)
	return button
end
local loopr = false
local fakevoidp = nil
reset = function(respawn)
	if fakevoidp then
		fakevoidp = nil
		twait(0.3)
	end
	local c = lp.Character
	local partName, cfr, ccfr = nil, nil, nil
	if not (c and c.Parent) then
		respawnRequest()
		if not loopr then
			notify("Character Not Found, Trying To Respawn")
		end
		return
	end
	local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if not part then
		respawnRequest()
		if not loopr then
			notify("No Part Found In The Character, Trying To Respawn")
		end
		return
	end
	partName, cfr, ccfr = part.Name, part.CFrame, ws.CurrentCamera.CFrame
	tspawn(function()
		local c, part = c, nil
		while c and c.Parent do
			heartbeat:Wait()
		end
		while true do
			c = lp.Character
			if c and c.Parent then 
			    break
			end
			heartbeat:Wait()
		end
		while c and c.Parent do
			part = gp(c, partName, "BasePart")
			if part then 
			    break
			end
			heartbeat:Wait()
		end
		if not part then
			if not loopr then
				notify("Failed To TP Back")
			end
			return
		end
		weldtp(part, cfr)
		ws.CurrentCamera.CFrame = ccfr
		cfr = nil
		if not loopr then
			notify("Respawned")
		end
	end)
	if respawn and (not loopr) then
		notify("Respawning...")
	end
	if respawn then
		tspawn(function()
			while c and c.Parent do
				if part and part.Parent then
					cfr = part.CFrame
				end
				ccfr = ws.CurrentCamera.CFrame
				stepped:Wait()
			end
		end)
		local function respawnifalive()
		    if c and c.Parent then
		        respawnRequest()
		    end
		end
		if plrs.RespawnTime > 0.5 then
		    for i=0, 4 do tdelay(i/10, respawnifalive) end
			twait(mclamp(plrs.RespawnTime - 0.5, 0, math.abs(plrs.RespawnTime)))
		else
		    respawnRequest()
		end
		part = nil
	end
	if c and c.Parent then
		if respawn then
		    local hum = c:FindFirstChildOfClass("Humanoid")
		    if hum then
		        hum.BreakJointsOnDeath = false
		        hum:ChangeState(Enum.HumanoidStateType.Dead)
		    end
    		tdelay(1, function()
    		    if c and c.Parent then
    		        c:BreakJoints()
    		        respawnRequest()
    		    end
    		end)
		else
		    c:BreakJoints()
		end
		while gui and cfr do
			stepped:Wait()
		end
	end
end
makecharbutton("Respawn").MouseButton1Click:Connect(function()
	if not loopr then
		reset(true)
		twait()
	end
end)
makecharbutton("Reset").MouseButton1Click:Connect(function()
	reset(false)
end)
local looprb = makecharbutton("Loop Respawn")
tspawn(function()
	while twait() and gui do
		if loopr then
			reset(true)
		end
	end
end)
looprb.MouseButton1Click:Connect(function()
	loopr = not loopr
	looprb.Text = "Loop Respawn" .. ((loopr and " (Enabled)") or "")
end)
makecharbutton("Remove Meshes").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and (v:IsA("Mesh") or v:IsA("SpecialMesh") or v:IsA("CharacterMesh")) then
				v:Destroy()
			end
		end
		notify("Removed meshes")
	else
		notify("No Character")
	end
end)
makecharbutton("Remove Accessories").MouseButton1Click:Connect(function()
    removehats()
end)
makecharbutton("Break Joints").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		c:BreakJoints()
		notify("Broken Joints")
	else
		notify("No Character")
	end
end)
local noclipb = makecharbutton("Noclip")
local noclip = false
noclipb.MouseButton1Click:Connect(function()
	noclip = not noclip
	noclipb.Text = "Noclip" .. ((noclip and " (Enabled)") or "")
end)
local fakevoidcf = cf()
local fakevoidb = makecharbutton("Fake Void")
fakevoidb.MouseButton1Click:Connect(function()
	if fakevoidp then
		fakevoidp = nil
		fakevoidb.Text = "Fake Void"
	else
	    if cfly and cfly.Parent then
	        cfly = nil
	    end
		local c = lp.Character
		if not (c and c.Parent) then
			notify("Character Not Found")
			return
		end
		local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
		if not part then
			notify("No Part Found")
			return
		end
		fakevoidp = part
		fakevoidb.Text = "Fake Void (Enabled)"
		notify("Character Teleported Under FallenPartsDestroyHeight")

		local dh = ws.FallenPartsDestroyHeight
		fakevoidcf = fakevoidp.CFrame
		local newcf = cf(0, dh - 100, 0)
		local camcf = ws.CurrentCamera.CFrame
		ws.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		ws.FallenPartsDestroyHeight = dh - 200
		while stepped:Wait() and gui and c and c.Parent and fakevoidp and fakevoidp.Parent do
			weldtp(fakevoidp, newcf)
		end
		ws.FallenPartsDestroyHeight = dh
		fakevoidb.Text = "Fake Void"
		if c and c.Parent then
			unview()
			ws.CurrentCamera.CFrame = camcf
			if part and part.Parent then
				weldtp(part, fakevoidcf)
				notify("Teleported Back")
			else
				notify("Part Removed")
			end
		else
			notify("Character Removed")
		end
	end
end)
makecharbutton("Block Tool").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		if tool then
			local found = false
			for i, v in pairs(tool:GetDescendants()) do
				if v and v.Parent and v:IsA("Mesh") or v:IsA("SpecialMesh") then
					v:Destroy()
				end
			end
			if found then
				notify("Removed Tool Meshes")
			else
				notify("No Meshes Found")
			end
		else
			notify("Tool Not Found")
		end
	else
		notify("No Character")
	end
end)
local infjumpb = makecharbutton("Infinite Jump")
local infjump = false
local con = nil
con = g:GetService("UserInputService").JumpRequest:Connect(function()
	if not gui then
		con:Disconnect()
		return
	end
	if infjump then
		local c = lp.Character
		if c and c.Parent then
			local hum = c:FindFirstChildOfClass("Humanoid")
			if hum then
				hum:ChangeState("Jumping")
			end
		end
	end
end)
infjumpb.MouseButton1Click:Connect(function()
	infjump = not infjump
	infjumpb.Text = "Infinite Jump" .. ((infjump and " (Enabled)") or "")
end)
makecharbutton("God (Remove Humanoid)").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Archivable = true
			local hum1 = hum:Clone()
			hum:Destroy()
			hum1.Parent = c
			notify("Humanoid Client Sided")
		else
			notify("Humanoid Not Found")
		end
	else
		notify("Character Not Found")
	end
end)
local loopgb = makecharbutton("Loop God Mode")
local loopg = false
tspawn(function()
	while twait() and gui do
		if loopg then
			local c = lp.Character
			if c and c.Parent then
				local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
				if part then
					local hum = c:FindFirstChildOfClass("Humanoid")
					if hum then
						local partName = part.Name
						local new = hum:Clone()
						hum:Destroy()
						new.Parent = c
						ws.CurrentCamera.CameraSubject = new
						local currentcfr = part.CFrame
						local camcfr = ws.CurrentCamera.CFrame
						while twait() and c and c.Parent and part and part.Parent do
							currentcfr = part.CFrame
							camcfr = ws.CurrentCamera.CFrame
							removehats(c)
							local ff = c:FindFirstChildOfClass("ForceField")
							if ff then
								ff:Destroy()
							end
						end
						part = nil
						while not (part and part.Parent) do
							twait()
							c = lp.Character
							part = gp(c, partName, "BasePart")
						end
						weldtp(part, currentcfr)
						ws.CurrentCamera.CFrame = camcfr
					end
				end
			end
		end
	end
end)
loopgb.MouseButton1Click:Connect(function()
	loopg = not loopg
	loopgb.Text = "Loop God Mode" .. ((loopg and " (Enabled)") or "")
end)
local flyb = makecharbutton("fly")
flyb.MouseButton1Click:Connect(function()
	if cfly and cfly.Parent then
		cfly = nil
	else
	    if fakevoidp then
	        fakevoidp = nil
	        fakevoidb.Text = "Fake Void"
	        renderstepped:Wait()
	    end
		cfly = lp.Character
		flyb.Text = "Fly (Enabled)"
	end
end)

local ctrlf = {
	["w"] = false,
	["a"] = false,
	["s"] = false,
	["d"] = false
}
local con = nil
con = mouse.KeyDown:Connect(function(key)
	if not gui then
		con:Disconnect()
		return
	end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = true
	end
end)
local con = nil
con = mouse.KeyUp:Connect(function(key)
	if not gui then
		con:Disconnect()
		return
	end
	key = key:lower()
	if ctrlf[key] ~= nil then
		ctrlf[key] = false
	end
end)
local con = nil
con = renderstepped:Connect(function(deltaTime)
	if not gui then
		con:Disconnect()
		return
	end
	if not flycf then
		return
	end
	local fb = ((ctrlf["w"] and flyspeed) or 0) + ((ctrlf["s"] and -flyspeed) or 0)
	local lr = ((ctrlf["a"] and -flyspeed) or 0) + ((ctrlf["d"] and flyspeed) or 0)
	local camcf = ws.CurrentCamera.CFrame
	flycf = cf(flycf.Position, flycf.Position + camcf.LookVector * v3_101)
	flycf += camcf.LookVector * fb * deltaTime
	flycf += camcf.RightVector * lr * deltaTime
end)
tspawn(function()
	while stepped:Wait() and gui do
		if cfly and cfly.Parent then
			fhrp = (fhrp and (fhrp.Parent == cfly) and fhrp) or gp(cfly, "HumanoidRootPart", "BasePart") or gp(cfly, "Head", "BasePart") or cfly:FindFirstChildWhichIsA("BasePart")
			if fhrp then
				flycf = flycf or fhrp.CFrame
				weldtp(fhrp, flycf)
			end
		else
			flycf = false
			fhrp = nil
			flyb.Text = "Fly"
		end
	end
end)

local hiddenfling = false
tspawn(function()
	local hrp, c, vel, movel = nil, nil, nil, 0.1
	while gui do
		heartbeat:Wait()
		if hiddenfling then
			while gui and hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
				heartbeat:Wait()
				c = lp.Character
				hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
			end
			if gui and hiddenfling then 
				vel = hrp.Velocity
				hrp.Velocity = vel * 10000 + v3(0, 10000, 0)
				renderstepped:Wait()
				if c and c.Parent and hrp and hrp.Parent then
					hrp.Velocity = vel
				end
				stepped:Wait()
				if c and c.Parent and hrp and hrp.Parent then
					hrp.Velocity = vel + v3(0, movel, 0)
					movel = movel * -1
				end
			end
		end
	end
end)

local hiddenflingB = makecharbutton("Hidden Fling")
hiddenflingB.MouseButton1Click:Connect(function()
	hiddenfling = not hiddenfling
	hiddenflingB.Text = "Hidden Fling" .. ((hiddenfling and " (Enabled)") or "")
end)

makecharbutton("Anti Respawn (Wait RespawnTime)").MouseButton1Click:Connect(respawnRequest)
makecharbutton("No Animations").MouseButton1Click:Connect(noanimations)
makecharbutton("Sit").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Sit = not hum.Sit
		else
			notify("Humanoid Not Found")
		end
	else
		notify("Character Not Found")
	end
end)
makecharbutton("Fake Sit").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum then
			hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			hum.Sit = true
			notify("humanoid.Sit Set To True")
		else
			notify("Humanoid Not Found")
		end
	else
		notify("Character Not Found")
	end
end)
makecharbutton("Remove HumanoidRoot").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c then
		local cpar = c.Parent
		if cpar then
			local hrp = gp(c, "HumanoidRootPart", "BasePart")
			if hrp then
				c.Parent = nil
				hrp:Destroy()
				c.Parent = cpar
				notify("HumanoidRootPart Removed")
			else
				notify("HumanoidRootPart Not Found")
			end
		else
			notify("Character Not Found")
		end
	else
		notify("Character Not Found")
	end
end)
makecharbutton("Set CanTouch To False").MouseButton1Click:Connect(function()
	local c = lp.Character
	if c and c.Parent then
		local tool = c:FindFirstChildOfClass("Tool")
		for i, v in pairs(c:GetDescendants()) do
			if v and v.Parent and v:IsA("BasePart") and ((not tool) or (not v:IsDescendantOf(tool))) then
				v.CanTouch = false
			end
		end
		notify("CanTouch Has Been Set To False")
	else
		notify("Character Not Found")
	end
end)
local ctrltp = false
local clicktpbutton = makecharbutton("Ctrl Click TP")
clicktpbutton.MouseButton1Click:Connect(function()
	ctrltp = not ctrltp
	clicktpbutton.Text = "Ctrl Click TP" .. ((ctrltp and " (Enabled)") or "")
end)
local con = nil
con = mouse.Button1Down:Connect(function()
	if not gui then
		con:Disconnect()
		return
	end
	if not ctrltp then
		return
	end
	if not (mouse.Target and uis:IsKeyDown(Enum.KeyCode.LeftControl)) then
		return
	end
	local to = mouse.Hit.Position + v3(0, 3, 0)
	to = cf(to, to + v3_101 * ws.CurrentCamera.CFrame.LookVector)
	if flycf then
		flycf = to
		return
	end
	if fakevoidp then
		fakevoidp = nil
		fakevoidb.Text = "Fake Void"
		fakevoidcf = to
		return
	end
	local c = lp.Character
	if not (c and c.Parent) then
		return
	end
	local hrp = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if hrp then
		weldtp(hrp, to)
	end
end)
makecharbutton("View").MouseButton1Click:Connect(unview)

local utilframe = makeFrame(scrollingFrame, "Utilities", Color3.fromRGB(0, 150, 150))
local utilscroll = utilframe:FindFirstChildOfClass("ScrollingFrame")

local function makeutilbutton(buttontext)
	local button = instancefromtable({
	    ClassName = "TextButton",
    	Parent = utilscroll,
    	BackgroundColor3 = Color3.fromRGB(53, 53, 53),
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 20),
    	Font = Enum.Font.SourceSans,
    	Text = buttontext,
    	TextColor3 = Color3.fromRGB(226, 226, 226),
    	TextSize = 15
    })
	roundcorners(button)
	return button
end

local espb = makeutilbutton("ESP")
local esp = false
espb.MouseButton1Click:Connect(function()
	esp = not esp
	espb.Text = "ESP" .. ((esp and " (Enabled)") or "")
end)
local teamcheckb = makeutilbutton("ESP Team Check")
local espTeamCheck = false
teamcheckb.MouseButton1Click:Connect(function()
	espTeamCheck = not espTeamCheck
	teamcheckb.Text = "ESP Team Check" .. ((espTeamCheck and " (Enabled)") or "")
end)

local espcolor = Color3.fromRGB(255, 0, 0)

local vpf = instancefromtable({
    ClassName = "ViewportFrame",
    Parent = gui,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ImageTransparency = 0.5,
    ImageColor3 = espcolor,
    BackgroundColor3 = espcolor,
    Size = UDim2.new(1, 0, 1, 0),
    Visible = true
})

local con = nil
con = renderstepped:Connect(function()
	if not gui then
		con:Disconnect()
		return
	end
	vpf:ClearAllChildren()
	if esp then
		vpf.CurrentCamera = ws.CurrentCamera
		for i, plr in pairs(plrs:GetPlayers()) do
			if plr ~= lp then
			    local c = plr.Character
			    if c and ((not espTeamCheck) or (plr.Team ~= lp.Team)) then
					for i, part in pairs(c:GetDescendants()) do
						if part:IsA("BasePart") then
							local part1 = instancenew("Part")
							part1.Color = espcolor
							part1.Size = part.Size
							part1.CFrame = part.CFrame
							part1.Parent = vpf
						end
					end
				end
			end
		end
	end
	if viewedPlayer then
	    if tfind(cbring, viewedPlayer.Name) then
	        return unview()
	    end
		local c = viewedPlayer.Character
		if c and c.Parent then
			local subject = c:FindFirstChildOfClass("Humanoid") or c:FindFirstChildWhichIsA("BasePart") or c
			if subject then
				ws.CurrentCamera.CameraType = Enum.CameraType.Custom
				ws.CurrentCamera.CameraSubject = subject
			end
		end
	end
end)

local antiflingb = makeutilbutton("Anti Fling")
local antifling = false
antiflingb.MouseButton1Click:Connect(function()
	antifling = not antifling
	antiflingb.Text = "Anti Fling" .. ((antifling and " (Enabled)") or "")
end)

local con0, con1 = nil, nil
local function antiflingF()
	if not gui then
		con0:Disconnect()
		con1:Disconnect()
		return
	end
	if antifling then
		for i, v in pairs(plrs:GetPlayers()) do
			if v ~= lp then
				local c = v.Character
				if c then
					for i1, v1 in pairs(c:GetDescendants()) do
						if v1:IsA("BasePart") then
							v1.CanCollide, v1.Velocity, v1.RotVelocity = false, v3_0, v3_0
						end
					end
				end
			end
		end
	end
end
con0 = heartbeat:Connect(antiflingF)
con1 = stepped:Connect(antiflingF)

local antiattb = makeutilbutton("Anti Attach")
local antiatt = false
antiattb.MouseButton1Click:Connect(function()
	antiatt = not antiatt
	antiattb.Text = "Anti Attach" .. ((antiatt and " (Enabled)") or "")
end)
local charcon = nil
local currentcon = nil
local function onchar(c)
	if not gui then
		charcon:Disconnect()
		return
	end
	if typeof(c) ~= "Instance" then
		return
	end
	if currentcon then
		currentcon:Disconnect()
	end
	currentcon = c.ChildAdded:Connect(function(t)
		if not (antiatt and gui) then
			return
		end
		if not t:IsA("Tool") then return end
		local h = gp(t, "Handle", "BasePart") or t:FindFirstChildWhichIsA("BasePart")
		if not h then return end
		for i, v in pairs(h:GetConnectedParts()) do
			if not v:IsDescendantOf(c) then
				h:BreakJoints()
				stepped:Wait()
				if t and (t.Parent == c) then
					t.Parent = lp:FindFirstChildOfClass("Backpack") or ws
				end
				return
			end
		end
	end)
end
onchar(lp.Character)
charcon = lp.CharacterAdded:Connect(onchar)

local net = false
local netb = makeutilbutton("Net Bypass")
netb.MouseButton1Click:Connect(function()
	if net then
		net = false
	elseif shp then
	    net = true
	else
	    notify("Exploit Not Supported")
	end
	netb.Text = "Net Bypass" .. ((net and " (Enabled)") or "")
end)
local con = nil
con = heartbeat:Connect(function()
    if net then
		shp(lp, "SimulationRadius", 1000)
	end
end)

makeutilbutton("Rejoin").MouseButton1Click:Connect(function()
    notify("Attempting To Rejoin")
	   renderstepped:Wait()
	g:GetService("TeleportService"):TeleportToPlaceInstance(g.PlaceId, g.JobId, lp)
end)

makeutilbutton("ServerHop").MouseButton1Click:Connect(function()
	local servers = nil
	pcall(function()
		servers = g:GetService("HttpService"):JSONDecode(g:HttpGetAsync("https://games.roblox.com/v1/games/" .. g.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
	end)
	if type(servers) ~= "table" then
		notify("Error Getting Server List")
		return
	end
	local jobIds = {}
	for i, v in pairs(servers) do
		if (type(v) == "table") and (v.maxPlayers > v.playing) and (v.id ~= g.JobId) then
			tinsert(jobIds, v.id)
		end
	end
	if #jobIds > 0 then
	    notify("Attempting To Teleport")
	    renderstepped:Wait()
		g:GetService("TeleportService"):TeleportToPlaceInstance(g.PlaceId, jobIds[mrandom(1, #jobIds)])
	else
		notify("No Free Server Found")
	end
end)

makeutilbutton("Instant Leave").MouseButton1Click:Connect(function()
	lp:Kick()
	twait()
	g:Shutdown()
end)

local cbringframe = makeFrame(scrollingFrame, "Client Bring", Color3.fromRGB(15, 100, 15))
local cbringscroll = cbringframe:FindFirstChildOfClass("ScrollingFrame")

local togglecbring = nil
local function makecbringframe(name)
	local plrcbringf = instancefromtable({
	    ClassName = "Frame",
	    Name = name,
    	BackgroundColor3 = Color3.fromRGB(106, 106, 106),
    	BorderSizePixel = 0,
    	Size = UDim2.new(1, -10, 0, 30),
    	Parent = cbringscroll
    })
	roundcorners(plrcbringf)
	local uncbringbtn = instancefromtable({
	    ClassName = "TextButton",
    	Parent = plrcbringf,
    	BackgroundColor3 = Color3.fromRGB(47, 47, 47),
    	BorderSizePixel = 0,
    	Position = UDim2.new(1, -25, 0, 5),
    	Size = UDim2.new(0, 20, 1, -10),
    	Font = Enum.Font.SourceSans,
    	Text = "X",
    	TextColor3 = Color3.fromRGB(223, 223, 223),
    	TextSize = 16
	})
	roundcorners(uncbringbtn)
	local cbringplrname = instancefromtable({
	    ClassName = "TextLabel",
    	Parent = plrcbringf,
    	BackgroundTransparency = 1,
    	Position = UDim2.new(0, 5, 0, 5),
    	Size = UDim2.new(1, -80, 1, -10),
    	Font = Enum.Font.SourceSans,
    	Text = name,
    	TextColor3 = Color3.fromRGB(0, 0, 0),
    	TextSize = 25,
    	TextXAlignment = Enum.TextXAlignment.Left
	})
	uncbringbtn.MouseButton1Click:Connect(function()
		togglecbring(name)
	end)
	return plrcbringf
end

togglecbring = function(name)
	local frame = gp(cbringscroll, name, "Frame")
	if frame then
		pcall(function()
			tremove(cbring, tfind(cbring, name))
		end)
		frame:Destroy()
		notify("Removed " .. name .. " From Client Bring")
	else
		tinsert(cbring, name)
		makecbringframe(name)
		notify("Added " .. name .. " To Client Bring")
	end
end

cbringb.MouseButton1Click:Connect(function()
	togglecbring(currentplayer.Name)
end)

local cbringallbtn = instancefromtable({
    ClassName = "TextButton",
    Parent = cbringframe:FindFirstChildOfClass("TextLabel"),
    BackgroundColor3 = Color3.fromRGB(59, 59, 59),
    BorderSizePixel = 0,
    Position = UDim2.new(1, -57, 0, 2),
    Size = UDim2.new(0, 55, 1, -4),
    Font = Enum.Font.SourceSans,
    Text = "+ Add All",
    TextColor3 = Color3.fromRGB(206, 206, 206),
    TextSize = 14
})
roundcorners(cbringallbtn)
cbringallbtn.MouseButton1Click:Connect(function()
	for i, v in pairs(plrs:GetPlayers()) do
		if (v ~= lp) and v and v.Parent and (not tfind(cbring, v.Name)) then
			togglecbring(v.Name)
		end
	end
end)

tspawn(function()
	while gui do
		local waited = false
		local lpc = lp.Character
		if (#cbring > 1) and lpc and lpc.Parent then
			local part0 = gp(lpc, "Torso", "BasePart") or gp(lpc, "HumanoidRootPart", "BasePart") or gp(lpc, "Head", "BasePart") or lpc:FindFirstChildWhichIsA("BasePart")
			if part0 then
				for i, v in pairs(plrs:GetPlayers()) do
					if v ~= lp then
						local c = v.Character
						if c and c.Parent then
							if tfind(cbring, v.Name) then
								local part1 = gp(c, part0.Name, "BasePart") or gp(c, "Torso", "BasePart") or gp(c, "HumanoidRootPart", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
								if part1 then
									local p1cf = part0.CFrame
									weldtp(part1, p1cf + p1cf.LookVector * 2)
									waited = true
								end
							end
						end
					end
				end
			end
		end
		if not waited then
			stepped:Wait()
		end
	end
end)

local con = nil
con = stepped:Connect(function()
	if not gui then
		con:Disconnect()
		return
	end
	local c = lp.Character
	if noclip and c then
		for i, v in pairs(c:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
end)

local success, _ = pcall(function()
	gui.Parent = cg
end)
if not success then
	gui.Parent = pg
	notify("Gui In PlayerGui")
end
renderstepped:Wait()
playercframe.Visible = false