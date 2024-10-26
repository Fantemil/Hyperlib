-- Gui to Lua
-- Version: 3.2

-- Instances:

local Rc7executor = Instance.new("ScreenGui")
local Rc7UI = Instance.new("ImageLabel")
local A = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local DexV2 = Instance.new("TextButton")
local Execute = Instance.new("TextButton")
local GoogleDrive = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local SaveFile = Instance.new("TextButton")
local RoExploit = Instance.new("TextButton")
local W = Instance.new("TextButton")
local input = Instance.new("TextBox")

--Properties:

Rc7executor.Name = "Rc7executor"
Rc7executor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Rc7executor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Rc7executor.ResetOnSpawn = false

Rc7UI.Name = "Rc7UI"
Rc7UI.Parent = Rc7executor
Rc7UI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rc7UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rc7UI.BorderSizePixel = 0
Rc7UI.Position = UDim2.new(0.344550639, 0, 0.169354692, 0)
Rc7UI.Size = UDim2.new(0, 364, 0, 442)
Rc7UI.Image = "http://www.roblox.com/asset/?id=17034158391"
Rc7UI.Active = true
Rc7UI.Draggable = true

A.Name = "A"
A.Parent = Rc7UI
A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
A.BackgroundTransparency = 1.000
A.BorderColor3 = Color3.fromRGB(0, 0, 0)
A.BorderSizePixel = 0
A.Position = UDim2.new(0.903581262, 0, 0.62585032, 0)
A.Size = UDim2.new(0, 29, 0, 35)
A.Font = Enum.Font.SourceSans
A.Text = ""
A.TextColor3 = Color3.fromRGB(0, 0, 0)
A.TextSize = 14.000
A.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-auto-walk-7500"))()
end)

Clear.Name = "Clear"
Clear.Parent = Rc7UI
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.581267238, 0, 0.791383207, 0)
Clear.Size = UDim2.new(0, 101, 0, 28)
Clear.Font = Enum.Font.SourceSans
Clear.Text = ""
Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear.TextSize = 14.000
Clear.MouseButton1Down:connect(function()
	input.Text = " "
end)

Close.Name = "Close"
Close.Parent = Rc7UI
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.865013778, 0, 0, 0)
Close.Size = UDim2.new(0, 49, 0, 28)
Close.Font = Enum.Font.SourceSans
Close.Text = ""
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000
Close.MouseButton1Down:connect(function()
	Rc7UI.Visible = false
end)

DexV2.Name = "DexV2"
DexV2.Parent = Rc7UI
DexV2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DexV2.BackgroundTransparency = 1.000
DexV2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DexV2.BorderSizePixel = 0
DexV2.Position = UDim2.new(0.900826454, 0, 0.920634925, 0)
DexV2.Size = UDim2.new(0, 29, 0, 35)
DexV2.Font = Enum.Font.SourceSans
DexV2.Text = ""
DexV2.TextColor3 = Color3.fromRGB(0, 0, 0)
DexV2.TextSize = 14.000
DexV2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Dex-V2-10310"))()

end)

Execute.Name = "Execute"
Execute.Parent = Rc7UI
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BackgroundTransparency = 1.000
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.292011023, 0, 0.791383207, 0)
Execute.Size = UDim2.new(0, 103, 0, 28)
Execute.Font = Enum.Font.SourceSans
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextSize = 14.000
Execute.MouseButton1Down:connect(function()
	loadstring(input.Text)()
	output.Text = "Running script.."
	wait(2)
	output.Text = " "
	if input.Text == " " then
		output.Text = "No script detected? Or you forgot to put a script!"
		wait(2)
		output.Text = " "
	end
end)

GoogleDrive.Name = "Google Drive"
GoogleDrive.Parent = Rc7UI
GoogleDrive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GoogleDrive.BackgroundTransparency = 1.000
GoogleDrive.BorderColor3 = Color3.fromRGB(0, 0, 0)
GoogleDrive.BorderSizePixel = 0
GoogleDrive.Position = UDim2.new(0.903581262, 0, 0.727891147, 0)
GoogleDrive.Size = UDim2.new(0, 29, 0, 35)
GoogleDrive.Font = Enum.Font.SourceSans
GoogleDrive.Text = ""
GoogleDrive.TextColor3 = Color3.fromRGB(0, 0, 0)
GoogleDrive.TextSize = 14.000
GoogleDrive.MouseButton1Click:Connect(function()
	print("SKIDDER ULTRA >:9")
end)

Minimize.Name = "Minimize"
Minimize.Parent = Rc7UI
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.597796142, 0, 0, 0)
Minimize.Size = UDim2.new(0, 49, 0, 28)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = ""
Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimize.TextSize = 14.000
Minimize.MouseButton1Down:connect(function()
	Rc7UI.Visible = false
	Rc7UI.Visible = true
end)

Open.Name = "Open"
Open.Parent = Rc7UI
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 1.000
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.789115667, 0)
Open.Size = UDim2.new(0, 104, 0, 32)
Open.Font = Enum.Font.SourceSans
Open.Text = ""
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextSize = 14.000
Open.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/ScriptHub"))()

end)

SaveFile.Name = "Save File"
SaveFile.Parent = Rc7UI
SaveFile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveFile.BackgroundTransparency = 1.000
SaveFile.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveFile.BorderSizePixel = 0
SaveFile.Position = UDim2.new(0.903581262, 0, 0.421768695, 0)
SaveFile.Size = UDim2.new(0, 29, 0, 35)
SaveFile.Font = Enum.Font.SourceSans
SaveFile.Text = ""
SaveFile.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveFile.TextSize = 14.000
SaveFile.MouseButton1Click:Connect(function()
	print("Cannot save file because were detected an error to your screen")
end)

RoExploit.Name = "RoExploit"
RoExploit.Parent = Rc7UI
RoExploit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RoExploit.BackgroundTransparency = 1.000
RoExploit.BorderColor3 = Color3.fromRGB(0, 0, 0)
RoExploit.BorderSizePixel = 0
RoExploit.Position = UDim2.new(0.903581262, 0, 0.820861697, 0)
RoExploit.Size = UDim2.new(0, 29, 0, 35)
RoExploit.Font = Enum.Font.SourceSans
RoExploit.Text = ""
RoExploit.TextColor3 = Color3.fromRGB(0, 0, 0)
RoExploit.TextSize = 14.000
RoExploit.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-RoXploit-by-KrystalTeam-9328"))()
end)

W.Name = "W"
W.Parent = Rc7UI
W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
W.BackgroundTransparency = 1.000
W.BorderColor3 = Color3.fromRGB(0, 0, 0)
W.BorderSizePixel = 0
W.Position = UDim2.new(0.903581262, 0, 0.523809552, 0)
W.Size = UDim2.new(0, 29, 0, 35)
W.Font = Enum.Font.SourceSans
W.Text = ""
W.TextColor3 = Color3.fromRGB(0, 0, 0)
W.TextSize = 14.000
W.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-auto-walk-7500"))()

end)

input.Name = "input"
input.Parent = Rc7UI
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundTransparency = 1.000
input.BorderColor3 = Color3.fromRGB(0, 0, 0)
input.BorderSizePixel = 0
input.Position = UDim2.new(0.0826446265, 0, 0.158730164, 0)
input.Size = UDim2.new(0, 284, 0, 276)
input.ClearTextOnFocus = false
input.Font = Enum.Font.Roboto
input.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
input.Text = ""
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.TextSize = 16.000
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top