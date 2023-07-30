

local ScreenGui = Instance.new("ScreenGui")
local Frame2 = Instance.new("Frame")
local TextButton3 = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextButton2 = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame2.Name = "Frame2"
Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.Position = UDim2.new(0.422948062, 0, 0.37327823, 0)
Frame2.Size = UDim2.new(0, 363, 0, 199)
Frame2.Visible = false
Frame2.Style = Enum.FrameStyle.RobloxRound

TextButton3.Name = "TextButton3"
TextButton3.Parent = Frame2
TextButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton3.Size = UDim2.new(0, 200, 0, 50)
TextButton3.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton3.Font = Enum.Font.SourceSans
TextButton3.Text = "Allow teleport in sky / void"
TextButton3.TextColor3 = Color3.fromRGB(17, 34, 136)
TextButton3.TextScaled = true
TextButton3.TextSize = 14.000
TextButton3.TextWrapped = true

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.832495809, 0, 0.508264482, 0)
Frame.Size = UDim2.new(0, 200, 0, 67)
Frame.Style = Enum.FrameStyle.RobloxRound

TextButton2.Name = "TextButton2"
TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.Position = UDim2.new(0.191600069, 0, 1.14903104, 0)
TextButton2.Size = UDim2.new(0, 113, 0, 35)
TextButton2.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "Settings"
TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(-0.0449999981, 0, 0.025828898, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "False"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function RVRTSG_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	frame = script.Parent.Parent -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
	
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	local Toggle = false
	local Toggle2 = false
	local Toggle3 = false
	print("Script Launched")
	
	script.Parent.Activated:Connect(function()
		if Toggle == true then
			Toggle = false
			script.Parent.Text = ("False")
			print("Now False")
		elseif Toggle == false then
			Toggle = true
			script.Parent.Text = ("True")
			print("Now True")
		end
	end)
	
	
	mouse.Button1Down:Connect(function()
		if Toggle == true then
		if mouse.Target ~= AV then
				player.Character.HumanoidRootPart.CFrame = mouse.Hit
			end 
		end
	end)
	
	
	spawn(function()
		script.Parent.Parent:FindFirstChild("TextButton2").Activated:Connect(function()
			script.Parent.Parent.Parent:FindFirstChild("Frame2").Visible = Toggle2
			if Toggle2 == true then
				Toggle2 = false
				print("Now False")
			elseif Toggle2 == false then
				Toggle2 = true
				print("Now True")
			end
		end)
	end)
	script.Parent.Parent.Parent:FindFirstChild("Frame2").TextButton3.Text = "Allow teleport in sky / void is false"
	script.Parent.Parent.Parent:FindFirstChild("Frame2").TextButton3.Activated:Connect(function()
		if Toggle3 == true then
			Toggle3 = false
			AV = "hi"
			script.Parent.Parent.Parent:FindFirstChild("Frame2").TextButton3.Text = "Allow teleport in sky / void is true"
			print("Now True")
		elseif Toggle3 == false then
			Toggle3 = true
			AV = nil
			script.Parent.Parent.Parent:FindFirstChild("Frame2").TextButton3.Text = "Allow teleport in sky / void is false"
			print("Now False")
		end
	end)
	
end
coroutine.wrap(RVRTSG_fake_script)()
