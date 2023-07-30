local screen = Instance.new("ScreenGui")
screen.IgnoreGuiInset = false
screen.ResetOnSpawn = true
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen.Name = "Screen"
screen.Parent = game.CoreGui

local console = Instance.new("Frame")
console.BackgroundColor3 = Color3.new(0.0784314, 0.121569, 0.152941)
console.Position = UDim2.new(0.358184755, 0, 0.264663815, 0)
console.Size = UDim2.new(0.283630461, 0, 0.469241768, 0)
console.Visible = true
console.Name = "Console"
console.Parent = screen

local uicorner = Instance.new("UICorner")
uicorner.Parent = console

local uistroke = Instance.new("UIStroke")
uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke.Color = Color3.new(1, 1, 1)
uistroke.Thickness = 2.4000000953674316
uistroke.Parent = console

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.0862745, 0, 0.72549)), ColorSequenceKeypoint.new(1, Color3.new(0.294118, 0.380392, 0.435294))})
uigradient.Parent = uistroke

local script = Instance.new("LocalScript")
script.Name = "Script"
script.Parent = console

local console_2 = Instance.new("ScrollingFrame")
console_2.CanvasSize = UDim2.new(0, 0, 1.5, 0)
console_2.ScrollBarImageColor3 = Color3.new(0.137255, 0.211765, 0.266667)
console_2.ScrollBarThickness = 8
console_2.Active = true
console_2.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
console_2.BackgroundTransparency = 1
console_2.BorderSizePixel = 0
console_2.Position = UDim2.new(0.0167131703, 0, 0.00914634112, 0)
console_2.Size = UDim2.new(0.89142859, 0, 0.984756112, 0)
console_2.Visible = true
console_2.Name = "Console"
console_2.Parent = console

local logs = Instance.new("Folder")
logs.Name = "Logs"
logs.Parent = console_2

local example = Instance.new("Frame")
example.BackgroundColor3 = Color3.new(1, 1, 1)
example.BackgroundTransparency = 1
example.Size = UDim2.new(0.919871807, 0, 0.0526315793, 0)
example.Visible = true
example.Name = "Example"
example.Parent = logs

local line = Instance.new("TextLabel")
line.Font = Enum.Font.SourceSans
line.Text = "1 - "
line.TextColor3 = Color3.new(0.282353, 0.282353, 0.282353)
line.TextSize = 14
line.BackgroundColor3 = Color3.new(1, 1, 1)
line.BackgroundTransparency = 1
line.Position = UDim2.new(0.0514285713, 0, 0.073170729, 0)
line.Size = UDim2.new(0.0696864128, 0, 0.502032518, 0)
line.Visible = true
line.Name = "Line"
line.Parent = example

local text = Instance.new("TextLabel")
text.Font = Enum.Font.Cartoon
text.Text = "Log: Hello, World"
text.TextColor3 = Color3.new(0.423529, 0.8, 1)
text.TextSize = 14
text.TextXAlignment = Enum.TextXAlignment.Left
text.BackgroundColor3 = Color3.new(1, 1, 1)
text.BackgroundTransparency = 1
text.Position = UDim2.new(0.83341676, 0, 0.0997807458, 0)
text.Size = UDim2.new(11.3000002, 0, 1, 0)
text.Visible = true
text.Name = "txt"
text.Parent = line

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.Padding = UDim.new(0.0010000000474974513, 0)
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.Parent = logs

--//Modules

local modules = {}

--// Scripts

-- Script
task.spawn(function()
	local script = script

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end


	local plr = game.Players.LocalPlayer
	local Logs = script.Parent.Console.Logs -- Folder
	local ExampleFrame = Logs.Example -- Line: 0

	local LineCount, LogText = 0, ""


	local CreateMessage = function(...)
		LineCount += 1
		if LineCount >= 250 then
			game.CoreGui.Screen.Console.Console.Logs["Line: " .. tostring(LineCount)]:Destroy()
		end
		local NewFrame = ExampleFrame:Clone()
		NewFrame.Name = "Line: " .. tostring(LineCount) --Frame Name

		NewFrame.LayoutOrder = 1
		NewFrame.Line.Text = tostring(LineCount) .. " - "  --First Label
		NewFrame.Line.txt.Text = ...
		NewFrame.Parent = Logs

	end

	local function tableToString(tbl)
		local result = {}
		local function traverseTable(t, indent)
			for k, v in pairs(t) do
				if type(v) == "table" then
					result[#result + 1] = indent .. tostring(k) .. ": {"
					traverseTable(v, indent .. "  ")
					result[#result + 1] = indent .. "}"
				else
					result[#result + 1] = indent .. tostring(k) .. ": " .. tostring(v)
				end
			end
		end

		traverseTable(tbl, "")
		return table.concat(result, "\n")
	end

	local prt
	prt = hookfunction(print, function(...)
		local args = ...
		if type(args) == "table" then
			args = tableToString(args)
		elseif type(args) == "function" then
			args = getupvalues(args)
		end
		local message = tostring(args)
		CreateMessage(message)
		return warn(message)
	end)
end)