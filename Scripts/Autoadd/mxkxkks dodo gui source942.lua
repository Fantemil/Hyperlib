local BasketballSimulator = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local _2ndUI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AutoGreen = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local UnlimitedSpins = Instance.new("TextButton")
local UnlimitedSpins_2 = Instance.new("TextLabel")
local Description_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local AllCodes = Instance.new("TextButton")
local UnlimitedSpins_3 = Instance.new("TextLabel")
local Description_3 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Credits = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Credits_2 = Instance.new("TextLabel")
local Description_4 = Instance.new("TextLabel")
local AutoGreenPopup = Instance.new("TextLabel")
local RedeemPopUp = Instance.new("TextLabel")
local DailySpinPopUp = Instance.new("TextLabel")

--Properties:

BasketballSimulator.Name = "Basketball Simulator"
BasketballSimulator.Parent = game.CoreGui
BasketballSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "UI"
UI.Parent = BasketballSimulator
UI.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
UI.Position = UDim2.new(0.327379405, 0, 0.233333334, 0)
UI.Size = UDim2.new(0, 662, 0, 431)
UI.Active = true
UI.Draggable = true

UICorner.Parent = UI

_2ndUI.Name = "2ndUI"
_2ndUI.Parent = UI
_2ndUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2ndUI.BackgroundTransparency = 99.000
_2ndUI.Position = UDim2.new(0.0649546832, 0, 0.0858468711, 0)
_2ndUI.Size = UDim2.new(0, 575, 0, 358)

Title.Name = "Title"
Title.Parent = _2ndUI
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 99.000
Title.Position = UDim2.new(0, 0, 0.00837988872, 0)
Title.Size = UDim2.new(0, 611, 0, 64)
Title.Font = Enum.Font.Unknown
Title.Text = "Home"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

AutoGreen.Name = "AutoGreen"
AutoGreen.Parent = _2ndUI
AutoGreen.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
AutoGreen.Position = UDim2.new(0, 0, 0.268156439, 0)
AutoGreen.Size = UDim2.new(0, 572, 0, 75)
AutoGreen.Font = Enum.Font.SourceSansLight
AutoGreen.Text = ""
AutoGreen.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoGreen.TextScaled = true
AutoGreen.TextSize = 14.000
AutoGreen.TextWrapped = true
AutoGreen.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = AutoGreen

Title_2.Name = "Title"
Title_2.Parent = AutoGreen
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 99.000
Title_2.Position = UDim2.new(0.0139860138, 0, 0, 0)
Title_2.Size = UDim2.new(0, 200, 0, 42)
Title_2.Font = Enum.Font.Unknown
Title_2.Text = "Auto Green"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Description.Name = "Description"
Description.Parent = Title_2
Description.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
Description.BackgroundTransparency = 99.000
Description.Position = UDim2.new(0, 0, 1, 0)
Description.Size = UDim2.new(0, 171, 0, 21)
Description.Font = Enum.Font.Unknown
Description.Text = "Greens all shots."
Description.TextColor3 = Color3.fromRGB(190, 190, 190)
Description.TextScaled = true
Description.TextSize = 14.000
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left

UnlimitedSpins.Name = "UnlimitedSpins"
UnlimitedSpins.Parent = _2ndUI
UnlimitedSpins.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
UnlimitedSpins.Position = UDim2.new(0, 0, 0.539106131, 0)
UnlimitedSpins.Size = UDim2.new(0, 200, 0, 168)
UnlimitedSpins.Font = Enum.Font.SourceSansSemibold
UnlimitedSpins.Text = ""
UnlimitedSpins.TextColor3 = Color3.fromRGB(190, 190, 190)
UnlimitedSpins.TextSize = 14.000
UnlimitedSpins.TextXAlignment = Enum.TextXAlignment.Left

UnlimitedSpins_2.Name = "UnlimitedSpins"
UnlimitedSpins_2.Parent = UnlimitedSpins
UnlimitedSpins_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnlimitedSpins_2.BackgroundTransparency = 99.000
UnlimitedSpins_2.Position = UDim2.new(0.0700000003, 0, 0.0952380896, 0)
UnlimitedSpins_2.Size = UDim2.new(0, 171, 0, 50)
UnlimitedSpins_2.Font = Enum.Font.Unknown
UnlimitedSpins_2.Text = "Unlimited Spins"
UnlimitedSpins_2.TextColor3 = Color3.fromRGB(255, 255, 255)
UnlimitedSpins_2.TextScaled = true
UnlimitedSpins_2.TextSize = 14.000
UnlimitedSpins_2.TextWrapped = true
UnlimitedSpins_2.TextXAlignment = Enum.TextXAlignment.Left

Description_2.Name = "Description"
Description_2.Parent = UnlimitedSpins_2
Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_2.BackgroundTransparency = 99.000
Description_2.Position = UDim2.new(0, 0, 1, 0)
Description_2.Size = UDim2.new(0, 165, 0, 81)
Description_2.Font = Enum.Font.Unknown
Description_2.Text = "Unlimited Daily spins"
Description_2.TextColor3 = Color3.fromRGB(190, 190, 190)
Description_2.TextScaled = true
Description_2.TextSize = 14.000
Description_2.TextWrapped = true

UICorner_3.Parent = UnlimitedSpins

AllCodes.Name = "AllCodes"
AllCodes.Parent = _2ndUI
AllCodes.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
AllCodes.Position = UDim2.new(0.379130423, 0, 0.539106131, 0)
AllCodes.Size = UDim2.new(0, 348, 0, 75)
AllCodes.Font = Enum.Font.SourceSansSemibold
AllCodes.Text = ""
AllCodes.TextColor3 = Color3.fromRGB(190, 190, 190)
AllCodes.TextSize = 14.000
AllCodes.TextXAlignment = Enum.TextXAlignment.Left

UnlimitedSpins_3.Name = "UnlimitedSpins"
UnlimitedSpins_3.Parent = AllCodes
UnlimitedSpins_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnlimitedSpins_3.BackgroundTransparency = 99.000
UnlimitedSpins_3.Position = UDim2.new(0.0240229815, 0, -0.0114285797, 0)
UnlimitedSpins_3.Size = UDim2.new(0, 171, 0, 50)
UnlimitedSpins_3.Font = Enum.Font.Unknown
UnlimitedSpins_3.Text = "Redeem All Codes!"
UnlimitedSpins_3.TextColor3 = Color3.fromRGB(255, 255, 255)
UnlimitedSpins_3.TextScaled = true
UnlimitedSpins_3.TextSize = 14.000
UnlimitedSpins_3.TextWrapped = true
UnlimitedSpins_3.TextXAlignment = Enum.TextXAlignment.Left

Description_3.Name = "Description"
Description_3.Parent = UnlimitedSpins_3
Description_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_3.BackgroundTransparency = 99.000
Description_3.Position = UDim2.new(-0.023391813, 0, 0.840000033, 0)
Description_3.Size = UDim2.new(0, 165, 0, 33)
Description_3.Font = Enum.Font.Unknown
Description_3.Text = "Redeems all recent codes."
Description_3.TextColor3 = Color3.fromRGB(190, 190, 190)
Description_3.TextScaled = true
Description_3.TextSize = 14.000
Description_3.TextWrapped = true

UICorner_4.Parent = AllCodes

Credits.Name = "Credits"
Credits.Parent = _2ndUI
Credits.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
Credits.Position = UDim2.new(0.379130423, 0, 0.784916222, 0)
Credits.Size = UDim2.new(0, 347, 0, 80)
Credits.Font = Enum.Font.SourceSans
Credits.Text = ""
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextSize = 14.000

UICorner_5.Parent = Credits

Credits_2.Name = "Credits"
Credits_2.Parent = Credits
Credits_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits_2.BackgroundTransparency = 99.000
Credits_2.Position = UDim2.new(0.0230547544, 0, 0.112499997, 0)
Credits_2.Size = UDim2.new(0, 200, 0, 41)
Credits_2.Font = Enum.Font.Unknown
Credits_2.Text = "Credits"
Credits_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits_2.TextScaled = true
Credits_2.TextSize = 14.000
Credits_2.TextWrapped = true
Credits_2.TextXAlignment = Enum.TextXAlignment.Left

Description_4.Name = "Description"
Description_4.Parent = Credits_2
Description_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_4.BackgroundTransparency = 99.000
Description_4.Position = UDim2.new(0, 0, 1, 0)
Description_4.Size = UDim2.new(0, 200, 0, 21)
Description_4.Font = Enum.Font.Unknown
Description_4.Text = "mxkxkks try using a real obfuscator or just dont obfuscate this dodo script - Xangalix"
Description_4.TextColor3 = Color3.fromRGB(190, 190, 190)
Description_4.TextScaled = true
Description_4.TextSize = 14.000
Description_4.TextWrapped = true
Description_4.TextXAlignment = Enum.TextXAlignment.Left

AutoGreenPopup.Name = "AutoGreenPopup"
AutoGreenPopup.Parent = _2ndUI
AutoGreenPopup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoGreenPopup.BackgroundTransparency = 99.000
AutoGreenPopup.Position = UDim2.new(-0.0747826099, 0, -0.329608947, 0)
AutoGreenPopup.Size = UDim2.new(0, 653, 0, 50)
AutoGreenPopup.Visible = false
AutoGreenPopup.Font = Enum.Font.Unknown
AutoGreenPopup.Text = "Auto Green Enabled"
AutoGreenPopup.TextColor3 = Color3.fromRGB(0, 255, 0)
AutoGreenPopup.TextScaled = true
AutoGreenPopup.TextSize = 14.000
AutoGreenPopup.TextWrapped = true

RedeemPopUp.Name = "RedeemPopUp"
RedeemPopUp.Parent = _2ndUI
RedeemPopUp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RedeemPopUp.BackgroundTransparency = 99.000
RedeemPopUp.Position = UDim2.new(-0.0747826099, 0, -0.30726257, 0)
RedeemPopUp.Size = UDim2.new(0, 653, 0, 50)
RedeemPopUp.Visible = false
RedeemPopUp.Font = Enum.Font.Unknown
RedeemPopUp.Text = "All Recent Codes Redeemed!"
RedeemPopUp.TextColor3 = Color3.fromRGB(0, 255, 0)
RedeemPopUp.TextScaled = true
RedeemPopUp.TextSize = 14.000
RedeemPopUp.TextWrapped = true

DailySpinPopUp.Name = "DailySpinPopUp"
DailySpinPopUp.Parent = _2ndUI
DailySpinPopUp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DailySpinPopUp.BackgroundTransparency = 99.000
DailySpinPopUp.Position = UDim2.new(-0.0747826099, 0, -0.30726257, 0)
DailySpinPopUp.Size = UDim2.new(0, 661, 0, 50)
DailySpinPopUp.Visible = false
DailySpinPopUp.Font = Enum.Font.Unknown
DailySpinPopUp.Text = "999 Daily spins added to your inventory."
DailySpinPopUp.TextColor3 = Color3.fromRGB(0, 255, 0)
DailySpinPopUp.TextScaled = true
DailySpinPopUp.TextSize = 14.000
DailySpinPopUp.TextWrapped = true

-- Scripts:

local function NURLGF_fake_script() -- AutoGreen.Connect1 
	local script = Instance.new('LocalScript', AutoGreen)

	script.Parent.MouseButton1Click:Connect(function()
		local UIS = game:GetService("UserInputService")
	
		UIS.InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.Space then
				local A_1 = true
				local A_2 = 27.184864044189453
				local Event = game:GetService("ReplicatedStorage").Green
				Event:FireServer(A_1, A_2)
	
			end
		end)
	end)
end
coroutine.wrap(NURLGF_fake_script)()
local function ZPUXDL_fake_script() -- AutoGreen.PopUp1 
	local script = Instance.new('LocalScript', AutoGreen)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.AutoGreenPopup.Visible = true
		wait(5)
		script.Parent.Parent.AutoGreenPopup.Visible = false
	end)
end
coroutine.wrap(ZPUXDL_fake_script)()
local function YPFY_fake_script() -- UnlimitedSpins.Connect2 
	local script = Instance.new('LocalScript', UnlimitedSpins)

	script.Parent.MouseButton1Click:Connect(function ()
	local A_1 = 999
		local A_2 = 1665787501
		local Event = game:GetService("ReplicatedStorage").Remote.DailySpin.SpinEvent
		Event:FireServer(A_1, A_2)
	
	end)
end
coroutine.wrap(YPFY_fake_script)()
local function HHOY_fake_script() -- UnlimitedSpins.PopUp3 
	local script = Instance.new('LocalScript', UnlimitedSpins)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.DailySpinPopUp.Visible = true
		wait(5)
		script.Parent.Parent.DailySpinPopUp.Visible = true
	end)
end
coroutine.wrap(HHOY_fake_script)()
local function GTXWMX_fake_script() -- AllCodes.Connect3 
	local script = Instance.new('LocalScript', AllCodes)

	script.Parent.MouseButton1Click:Connect(function()
	
	
		local A_1 = "2KMISSED"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	--------------------------------------------------------------------------
		local A_1 = "10KFLIER"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
		
	--------------------------------------------------------------------------	
		local A_1 = "MOREDUNKS10K"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	--------------------------------------------------------------------------
		
		local A_1 = "LIBERTY"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	--------------------------------------------------------------------------
		local A_1 = "XBOX"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	--------------------------------------------------------------------------	
		local A_1 = "2xCash"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	--------------------------------------------------------------------------
		local A_1 = "onfire"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
		
	--------------------------------------------------------------------------
		local A_1 = "TYSMFORLIKES"
		local Event = game:GetService("ReplicatedStorage").UseCode
		Event:InvokeServer(A_1)
		
	end)
end
coroutine.wrap(GTXWMX_fake_script)()
local function QAIHCS_fake_script() -- AllCodes.PopUp2 
	local script = Instance.new('LocalScript', AllCodes)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.RedeemPopUp.Visible = true
		wait(5)
		script.Parent.Parent.RedeemPopUp.Visible = false
	end)
end
coroutine.wrap(QAIHCS_fake_script)()