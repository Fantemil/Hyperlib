-- Drop offs GUI by Legend HandlesYT
-- Version: 1

-- Script:

local UI = Instance.new("ScreenGui")
local UI_2 = Instance.new("Frame")
local BackGround = Instance.new("Frame")
local Container = Instance.new("Frame")
local cellbdestroy = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local Padding = Instance.new("UIPadding")
local giveextendomirror = Instance.new("TextButton")
local tpallweapons = Instance.new("TextButton")
local giveremington = Instance.new("TextButton")
local UnderLine = Instance.new("Frame")
local Window = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")

--Properties:

UI.Name = "UI"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI_2.Name = "UI"
UI_2.Parent = UI
UI_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
UI_2.BorderSizePixel = 0
UI_2.Position = UDim2.new(0, 15, 0, 15)
UI_2.Size = UDim2.new(0, 190, 0, 30)

BackGround.Name = "BackGround"
BackGround.Parent = UI_2
BackGround.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BackGround.BorderSizePixel = 0
BackGround.Position = UDim2.new(0.00244498788, 0, 1, 0)
BackGround.Size = UDim2.new(0, 189, 0, 200)

Container.Name = "Container"
Container.Parent = UI_2
Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 1, 0)
Container.Size = UDim2.new(0, 190, 0, 200)

cellbdestroy.Name = "cellbdestroy"
cellbdestroy.Parent = Container
cellbdestroy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cellbdestroy.BackgroundTransparency = 1.000
cellbdestroy.Size = UDim2.new(0, 200, 0, 50)
cellbdestroy.Font = Enum.Font.SourceSans
cellbdestroy.Text = "Bypass Script doesn't  kick for admin"
cellbdestroy.TextColor3 = Color3.fromRGB(255, 0, 4)
cellbdestroy.TextSize = 19.000
cellbdestroy.TextWrapped = true
cellbdestroy.TextXAlignment = Enum.TextXAlignment.Left

UIGridLayout.Parent = Container
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 180, 0, 40)

Padding.Name = "Padding"
Padding.Parent = Container
Padding.PaddingLeft = UDim.new(0, 5)
Padding.PaddingTop = UDim.new(0, 5)

giveextendomirror.Name = "giveextendomirror"
giveextendomirror.Parent = Container
giveextendomirror.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
giveextendomirror.BackgroundTransparency = 1.000
giveextendomirror.Size = UDim2.new(0, 200, 0, 50)
giveextendomirror.Font = Enum.Font.SourceSans
giveextendomirror.Text = "V4 Aimbot (Hold \"R\")"
giveextendomirror.TextColor3 = Color3.fromRGB(255, 0, 4)
giveextendomirror.TextSize = 25.000
giveextendomirror.TextWrapped = true
giveextendomirror.TextXAlignment = Enum.TextXAlignment.Left

tpallweapons.Name = "tpallweapons"
tpallweapons.Parent = Container
tpallweapons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tpallweapons.BackgroundTransparency = 1.000
tpallweapons.Size = UDim2.new(0, 200, 0, 50)
tpallweapons.Font = Enum.Font.SourceSans
tpallweapons.Text = "Admin (do the bypass first)"
tpallweapons.TextColor3 = Color3.fromRGB(255, 0, 4)
tpallweapons.TextSize = 20.000
tpallweapons.TextWrapped = true
tpallweapons.TextXAlignment = Enum.TextXAlignment.Left

giveremington.Name = "giveremington"
giveremington.Parent = Container
giveremington.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
giveremington.BackgroundTransparency = 1.000
giveremington.Position = UDim2.new(1.00526321, 0, -0.675000012, 0)
giveremington.Size = UDim2.new(0, 200, 0, 50)
giveremington.Font = Enum.Font.SourceSans
giveremington.Text = "Press Platform (m) on the GUI Don't go higher than the rim or it kick"
giveremington.TextColor3 = Color3.fromRGB(255, 0, 4)
giveremington.TextScaled = true
giveremington.TextSize = 19.000
giveremington.TextWrapped = true
giveremington.TextXAlignment = Enum.TextXAlignment.Left

UnderLine.Name = "UnderLine"
UnderLine.Parent = UI_2
UnderLine.BackgroundColor3 = Color3.fromRGB(255, 25, 25)
UnderLine.BorderSizePixel = 0
UnderLine.Position = UDim2.new(0, 0, 1.0333333, -1)
UnderLine.Size = UDim2.new(0.464547664, 0, -0.0333333351, 1)

Window.Name = "Window"
Window.Parent = UI_2
Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Window.BackgroundTransparency = 1.000
Window.Position = UDim2.new(-0.0372538902, 0, 0, 0)
Window.Size = UDim2.new(1.03725386, 0, 1, 0)
Window.Font = Enum.Font.SourceSans
Window.Text = "Drop offs GUI by Legend Handles"
Window.TextColor3 = Color3.fromRGB(255, 0, 4)
Window.TextSize = 15.000

Toggle.Name = "Toggle"
Toggle.Parent = UI_2
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(1.03205502, -25, 0, 0)
Toggle.Size = UDim2.new(0, 25, 1, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "-"
Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
Toggle.TextSize = 17.000

-- Scripts:

local function KABQRAY_fake_script() -- cellbdestroy.Script 
	local script = Instance.new('Script', cellbdestroy)

	function Click(mouse)
	
		local ya = getrawmetatable(game)
		local mum = ya.__namecall
		setreadonly(ya, false)
		ya.__namecall = newcclosure(function(name, ...)
			local tabs = {...}
			if (getnamecallmethod() == "FireServer" or getnamecallmethod()=="Destroy")  and (tostring(name) == "Soccerball" or name==game.Players.LocalPlayer.Character) and not checkcaller() then
				return
			end
			return mum(name, unpack(tabs))end)
		setreadonly(ya, true)
	
	end
	
	
	script.Parent.MouseButton1Down:connect(Click)
	
end
coroutine.wrap(KABQRAY_fake_script)()
local function LGECGNP_fake_script() -- giveextendomirror.Script 
	local script = Instance.new('Script', giveextendomirror)

	function Click(mouse)
	
		local Camera = workspace.CurrentCamera
		Holding = false
		function findGoals()
			for i, v in pairs(workspace:GetDescendants()) do
				if v.Name == "Trig" then
					v.Parent = workspace
				end
			end
		end
		local function findClosestPart(position)
			local closestPart, closestPartMagnitude
			local tmpMagnitude
			for i, v in pairs(workspace:GetChildren()) do
				if v.Name == "Trig" then
					if closestPart then
						tmpMagnitude = (position - v.Position).magnitude
						if tmpMagnitude < closestPartMagnitude then
							closestPart = v
							closestPartMagnitude = tmpMagnitude
						end
					else
						closestPart = v
						closestPartMagnitude = (position - v.Position).magnitude
					end
				end
			end
			return closestPart
		end
		findGoals()
		local UIS = game:GetService('UserInputService')
		UIS.InputBegan:connect(function(Input, GPE)
			if not GPE and Input.KeyCode == Enum.KeyCode.R then
				local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
				Holding = true
				repeat
					wait(0.01)
					Camera.CFrame = CFrame.new(Camera.CFrame.p, lookthat.Position + Vector3.new(0, 40, 0)) 
				until Holding == false
			end
		end)
	
		UIS.InputEnded:connect(function(Input, GPE)
			if not GPE and Input.KeyCode == Enum.KeyCode.R then
				Holding = false
			end
		end)
	
	end
	
	
	script.Parent.MouseButton1Down:connect(Click)
	
end
coroutine.wrap(LGECGNP_fake_script)()
local function QCNMOGG_fake_script() -- tpallweapons.Script 
	local script = Instance.new('Script', tpallweapons)

	function Click(mouse)
	
		local AnnGUI = Instance.new("Frame")
		local background = Instance.new("Frame")
		local TextBox = Instance.new("TextLabel")
		local shadow = Instance.new("Frame")
		local PopupText = Instance.new("TextLabel")
		local Exit = Instance.new("ImageButton")
	
		screenGui = Instance.new("ScreenGui",game.CoreGui)
	
		AnnGUI.Name = 'Boomer'
		AnnGUI.Parent = screenGui
		AnnGUI.Active = true
		AnnGUI.BackgroundTransparency = 1
		AnnGUI.Position = UDim2.new(0.5, -180, 0, -400)
		AnnGUI.Size = UDim2.new(0, 360, 0, 20)
		AnnGUI.ZIndex = 4
	
		background.Name = "background"
		background.Parent = AnnGUI
		background.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
		background.BorderSizePixel = 0
		background.Position = UDim2.new(0, 0, 0, 20)
		background.Size = UDim2.new(0, 360, 0, 135)
	
		TextBox.Parent = background
		TextBox.BackgroundTransparency = 1
		TextBox.Position = UDim2.new(0.017, 0, 0.06, 0)
		TextBox.Size = UDim2.new(0, 348, 0, 120)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.TextSize = 18
		TextBox.TextWrapped = true
		TextBox.Text = 'Please use the new Infinite Yield loadstring. You can find it in the Discord.\n\ndiscord.io/infiniteyield\n\nYou will now be re-directed to the new loadstring.'
		TextBox.TextColor3 = Color3.new(1, 1, 1)
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.TextYAlignment = Enum.TextYAlignment.Top
	
		shadow.Name = "shadow"
		shadow.Parent = AnnGUI
		shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
		shadow.BorderSizePixel = 0
		shadow.Size = UDim2.new(0, 360, 0, 20)
		shadow.ZIndex = 4
	
		PopupText.Name = "PopupText"
		PopupText.Parent = shadow
		PopupText.BackgroundTransparency = 1
		PopupText.Position = UDim2.new(0, 51, 0, 0)
		PopupText.Size = UDim2.new(0.76, -16, 0.95, 0)
		PopupText.ZIndex = 4
		PopupText.Font = Enum.Font.SourceSans
		PopupText.TextSize = 14
		PopupText.Text = "Server Announcement"
		PopupText.TextColor3 = Color3.new(1, 1, 1)
		PopupText.TextWrapped = true
	
		Exit.Name = "Exit"
		Exit.Parent = shadow
		Exit.BackgroundTransparency = 1
		Exit.Size = UDim2.new(0, 20, 0, 20)
		Exit.ZIndex = 4
		Exit.Image = "rbxassetid://2132544126"
	
		wait(1)
		AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 150), "InOut", "Quart", 0.5, true, nil)
	
		Exit.MouseButton1Click:Connect(function()
			AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -400), "InOut", "Quart", 0.5, true, nil)
			wait(0.6)
			AnnGUI:Destroy()
		end)
	
		wait(5)
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	
	end
	
	
	script.Parent.MouseButton1Down:connect(Click)
	
end
coroutine.wrap(QCNMOGG_fake_script)()
local function SVANC_fake_script() -- giveremington.Script 
	local script = Instance.new('Script', giveremington)

	function Click(mouse)
	
		loadstring(game:GetObjects("rbxassetid://3473939051")[1].Source)()
	
	end
	
	
	script.Parent.MouseButton1Down:connect(Click)
	
end
coroutine.wrap(SVANC_fake_script)()
local function WQGGP_fake_script() -- UI_2.LocalScript 
	local script = Instance.new('LocalScript', UI_2)

	local dragger = {}; 
	local resizer = {};
	
	do
		local mouse = game:GetService("Players").LocalPlayer:GetMouse();
		local inputService = game:GetService('UserInputService');
		local heartbeat = game:GetService("RunService").Heartbeat;
		-- // credits to Ririchi / Inori for this cute drag function :)
		function dragger.new(frame)
		    local s, event = pcall(function()
		    	return frame.MouseEnter
		    end)
	
		    if s then
		    	frame.Active = true;
	
		    	event:connect(function()
		    		local input = frame.InputBegan:connect(function(key)
		    			if key.UserInputType == Enum.UserInputType.MouseButton1 then
		    				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
		    				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
		    					frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
		    				end
		    			end
		    		end)
	
		    		local leave;
		    		leave = frame.MouseLeave:connect(function()
		    			input:disconnect();
		    			leave:disconnect();
		    		end)
		    	end)
		    end
		end
		
		function resizer.new(p, s)
			p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
				s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
			end)
		end
	end
	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(WQGGP_fake_script)()
local function HBLZG_fake_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

	local back = script.Parent.Parent.BackGround
	local con = script.Parent.Parent.Container
	
	local window = {
			count = 0;
			toggles = {},
			closed = false;
		}
		script.Parent.MouseButton1Click:connect(function()
			window.closed = not window.closed
			script.Parent.Text = (window.closed and "+" or "-")
			if script.Parent.Text == "+" then
				back:TweenSize(UDim2.new(0, 190,0, 0), "Out", "Sine", 0.5)
				con:TweenSize(UDim2.new(0, 190,0, 0), "Out", "Sine", 0.5)
				wait(0.1) do
				con.Visible = false
				end
			else
				back:TweenSize(UDim2.new(0, 190,0, 200), "Out", "Sine", 0.5)
				con:TweenSize(UDim2.new(0, 190,0, 200), "Out", "Sine", 0.5)
				wait(0.2) do
				con.Visible = true
				end
				end
			
		end)
	
end
coroutine.wrap(HBLZG_fake_script)()