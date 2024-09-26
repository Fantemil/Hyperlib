--[[
    New and simple gui library + script for lvl 2 executors that doesn't have hpttget function
    Everything until the main code part is a gui library, so you can use it if you want


    Made by Mana
]]

-- Settings
local guiKeybind = Enum.KeyCode.N

local clickTPmode = "tool" -- click, tool
local clickTPkey = Enum.KeyCode.V
local gravity = 196.19999694824
local speedValue = 100
local jumpPowerValue = 100
local mouseIcon = 7767269282 -- old roblox mouse icon
local fov = 70
local gameTime = 5 -- hour of day (night - 0, 1, 2 | day - 12, 14 and etc..)

local plr = game.Players.LocalPlayer
local plrgui = plr.PlayerGui
local plrpack = plr.Backpack
local character = plr.Character
local animate = character:WaitForChild("Animate")
local hmd = character.Humanoid
local camera = workspace.CurrentCamera
local mouse = plr:GetMouse()
local oldSpeed = hmd.WalkSpeed
local oldJumpPower = hmd.JumpPower
local oldMouseIcon = mouse.Icon
local lighting = game:GetService("Lighting")
local input = game:GetService("UserInputService")
local starterGui = game:GetService("StarterGui")
local oldGameTime = lighting.TimeOfDay
local bindable = Instance.new("BindableFunction")
local mouseConnection
local longJumpChange

-- anti multiple load

function createNotificationB(title, text, duration, buttons)
	starterGui:SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = duration,
		Callback = bindable,
		Button1 = "Yes",
		Button2 = "No",
	})
end

function createNotification(title, text, duration)
	starterGui:SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = duration,
	})
end

if plrgui:FindFirstChild("Level2ExecLib") then
	createNotification("ManaV1ForRoblox", "Already loaded, not loading again.", 15)
	return
end

-- GuiLibrary

local level2ExecLib = Instance.new("ScreenGui", plrgui)
level2ExecLib.Name = "Level2ExecLib"
level2ExecLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local tabsFrame = Instance.new("Frame", level2ExecLib)
local uiList = Instance.new("UIListLayout", tabsFrame)

tabsFrame.Name = "Tabs"
tabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabsFrame.BackgroundTransparency = 1.000
tabsFrame.BorderSizePixel = 0
tabsFrame.Position = UDim2.new(0.010, 0,0.010, 0)
tabsFrame.Size = UDim2.new(0, 207, 0, 40)
tabsFrame.AutomaticSize = "X"

uiList.FillDirection = Enum.FillDirection.Horizontal
uiList.SortOrder = Enum.SortOrder.LayoutOrder
uiList.Padding = UDim.new(0, 40)

input.InputBegan:Connect(function(keybutton)
	if keybutton.KeyCode == guiKeybind then
		tabsFrame.Visible = not tabsFrame.Visible
	end
end)

function createTab(parent, name)
	local tab = Instance.new("Frame", parent)
	local tabTitle = Instance.new("TextLabel", tab)
	local tabLayout = Instance.new("UIListLayout", tab)

	tab.Name = name
	tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tab.BackgroundTransparency = 0.900
	tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tab.BorderSizePixel = 0
	tab.Size = UDim2.new(0, 160, 0, 300)

	tabTitle.Name = name
	tabTitle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	tabTitle.BackgroundTransparency = 0.500
	tabTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tabTitle.BorderSizePixel = 0
	tabTitle.Size = UDim2.new(0, 160, 0, 25)
	tabTitle.Font = Enum.Font.Arial
	tabTitle.Text = name
	tabTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
	tabTitle.TextSize = 14.000

	tabLayout.SortOrder = Enum.SortOrder.LayoutOrder

	return tab
end

function createButton(tab, name, hover, typeee) -- Type: intab, custom
	if typeee == "intab" then
		local button = Instance.new("TextButton")
		local divider = Instance.new("Frame")

		button.Name = "Button"
		button.Parent = tab
		button.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		button.BackgroundTransparency = 0.300
		button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		button.BorderSizePixel = 0
		button.Size = UDim2.new(0, 160, 0, 30)
		button.Font = Enum.Font.Arial
		button.Text = name or "button"
		button.TextColor3 = Color3.fromRGB(0, 0, 0)
		button.TextSize = 20.000
		button.TextWrapped = true

		divider.Name = "divider"
		divider.Parent = tab
		divider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		divider.BackgroundTransparency = 0.500
		divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
		divider.BorderSizePixel = 0
		divider.Size = UDim2.new(0, 160, 0, 1)
		divider.ZIndex = 2

		return button

	else
		local button = Instance.new("TextButton")

		button.Name = "Button"
		button.Parent = tab
		button.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		button.BackgroundTransparency = 0.300
		button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		button.BorderSizePixel = 0
		button.Size = UDim2.new(0, 160, 0, 30)
		button.Font = Enum.Font.Arial
		button.Text = name or "button"
		button.TextColor3 = Color3.fromRGB(0, 0, 0)
		button.TextSize = 20.000
		button.TextWrapped = true

		return button
	end
end

function bindable.OnInvoke(response)
	if response == "no" then
		return print'no'
	else
		print'yes'
	end
end

--Code:

local function isAlive(player, headCheck)
	local Player = player or plr
	if Player and Player.Character and ((Player.Character:FindFirstChildOfClass("Humanoid")) and (Player.Character:FindFirstChild("HumanoidRootPart"))) then
		return true
	else
		return false
	end
end

local Blatant = createTab(tabsFrame, "Blatant")
local Render = createTab(tabsFrame, "Render")
local Utility = createTab(tabsFrame, "Utility")
--local Info = createTab(tabsFrame, "Info")

--Blatant tab

--[[
    To do:
    make noclip better
    optimization in button code
    add keyboard support for clickTP
]]

local clickTP = createButton(Blatant, "ClickTP")

clickTP.MouseButton1Click:Connect(function()
	if clickTP.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		clickTP.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
			if clickTPmode == "click" then
				workspace.Gravity = gravity
				mouseConnection = mouse.Button1Down:Connect(function()
					if isAlive() and mouse.Target then 
						plr.Character.HumanoidRootPart.CFrame = mouse.Hit + Vector3.new(0, 3, 0)
					end
				end)
			elseif clickTPmode == "tool" then
				local tool = Instance.new("Tool", plrpack)
				tool.RequiresHandle = false
				tool.Name = "TPTool"
				tool.Activated:Connect(function()
					if isAlive() then
						plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.X ,mouse.Hit.Y + 3, mouse.Hit.Z)
					end
				end)
			end
	elseif clickTP.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		clickTP.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		if mouseConnection then 
			mouseConnection:Disconnect()
			mouseConnection = nil
		end
	end
end)

local gravity = createButton(Blatant, "Gravity")

gravity.MouseButton1Click:Connect(function()
	if gravity.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		gravity.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		workspace.Gravity = gravity
	elseif gravity.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		gravity.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		workspace.Gravity = 196.19999694824
	end
end)

local noClip = createButton(Blatant, "NoClip")

noClip.MouseButton1Click:Connect(function()
	if noClip.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		noClip.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		plr.Character.Humanoid:ChangeState(11)
	elseif noClip.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		noClip.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		plr.Character.Humanoid:ChangeState(5) --idk if it makes humanoid normal
	end
end)

local speed = createButton(Blatant, "Speed")

speed.MouseButton1Click:Connect(function()
	if speed.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		speed.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		plr.Character.Humanoid.WalkSpeed = speedValue or 100
	elseif speed.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		speed.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		plr.Character.Humanoid.WalkSpeed = oldSpeed or 23
	end
end)

local jumpPower = createButton(Blatant, "JumpPower")

jumpPower.MouseButton1Click:Connect(function()
	if jumpPower.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		jumpPower.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		plr.Character.Humanoid.JumpPower = jumpPowerValue or 100
	elseif jumpPower.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		jumpPower.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		plr.Character.Humanoid.JumpPower = oldJumpPower or 50
	end
end)

local hightJump = createButton(Blatant, "HightJump")

hightJump.MouseButton1Click:Connect(function()
	plr.Character.Humanoid:ChangeState("Jumping")
	task.wait()
	workspace.Gravity = 1
	spawn(function()
		for i = 1, 5 do
			wait()
			plr.Character.Humanoid:ChangeState("Jumping")
		end
	end)
	spawn(function()
		for i = 1, 5 / 28 do
			task.wait(0.1)
			plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
			task.wait(0.1)
			plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)
end)

local infinityJump = createButton(Blatant, "InfinityJumps")

infinityJump.MouseButton1Click:Connect(function()
	if infinityJump.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		infinityJump.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
			input.JumpRequest:Connect(function()
				if infinityJump.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
					plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") 
				end
			end)
	elseif infinityJump.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		infinityJump.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		
	end
end)

--Render tab

local customCrossHair = createButton(Render, "CrossHair")

customCrossHair.MouseButton1Click:Connect(function()
	if customCrossHair.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		customCrossHair.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		mouse.Icon = mouseIcon or "http://www.roblox.com/asset?id=163023520"
	elseif customCrossHair.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		customCrossHair.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		mouse.Icon = "http://www.roblox.com/asset?id=163023520" or oldMouseIcon or ""
	end
end)

local fovChanger = createButton(Render, "FovChanger")

fovChanger.MouseButton1Click:Connect(function()
	if fovChanger.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		fovChanger.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		camera.FieldOfView = fov
	elseif fovChanger.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		fovChanger.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		camera.FieldOfView = 70
	end
end)

local noAnimate = createButton(Render, "DisableAnimation")

noAnimate.MouseButton1Click:Connect(function()
	if noAnimate.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
		noAnimate.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
		animate.Disabled = true     
	elseif noAnimate.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
		noAnimate.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
		animate.Disabled = false
	end
end)

--Utility tab

local fpsUnlock = createButton(Utility, "FPS Unlocker")

fpsUnlock.MouseButton1Click:Connect(function()
	if setfpscap then
		setfpscap(10000000)
	end
end)

createNotification("ManaV1ForRoblox", "Successfully loaded!", 10)