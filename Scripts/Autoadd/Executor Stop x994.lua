-- i didnt steal this i swear
-- Gui to Lua
-- Version: 3.2
 
-- Instances:
 
local stopst3 = Instance.new("ScreenGui")
local windowphj = Instance.new("Frame")
local labelframe = Instance.new("Frame")
local label = Instance.new("TextLabel")
local scroller = Instance.new("ScrollingFrame")
local layout = Instance.new("UIListLayout")
local stringbox = Instance.new("TextBox")
local execute = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local clear = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local inject = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
 
 
--strokes update
 
local strok1 = Instance.new("UIStroke",execute)
local strok2 = Instance.new("UIStroke",clear)
local strok3 = Instance.new("UIStroke",inject)
 
--Properties:
 
stopst3.Name = "stop.st3"
stopst3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
stopst3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
stopst3.DisplayOrder = 999999999
stopst3.ResetOnSpawn = false
 
windowphj.Name = "window.phj"
windowphj.Parent = stopst3
windowphj.BackgroundColor3 = Color3.fromRGB(179, 255, 152)
windowphj.BorderColor3 = Color3.fromRGB(0, 0, 0)
windowphj.BorderSizePixel = 0
windowphj.Position = UDim2.new(0.0568335578, 0, 0.0612648204, 0)
windowphj.Size = UDim2.new(0, 367, 0, 167)
windowphj.Active = true
windowphj.Draggable = true
 
labelframe.Name = "labelframe"
labelframe.Parent = windowphj
labelframe.BackgroundColor3 = Color3.fromRGB(96, 172, 91)
labelframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
labelframe.BorderSizePixel = 0
labelframe.Size = UDim2.new(0, 367, 0, 30)
 
label.Name = "label"
label.Parent = labelframe
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.BorderColor3 = Color3.fromRGB(0, 0, 0)
label.BorderSizePixel = 0
label.Position = UDim2.new(0.0599455051, 0, 0.100000001, 0)
label.Size = UDim2.new(0, 323, 0, 24)
label.Font = Enum.Font.PermanentMarker
label.Text = "Stop (X)"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 14.000
label.TextWrapped = true
 
scroller.Name = "scroller"
scroller.Parent = windowphj
scroller.Active = true
scroller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroller.BorderColor3 = Color3.fromRGB(0, 0, 0)
scroller.Position = UDim2.new(0.0217983648, 0, 0.19760479, 0)
scroller.Size = UDim2.new(0, 337, 0, 96)
scroller.BottomImage = "rbxassetid://7294252496"
scroller.MidImage = "rbxassetid://7294252496"
scroller.TopImage = "rbxassetid://7294252496"
 
layout.Name = "layout"
layout.Parent = scroller
layout.SortOrder = Enum.SortOrder.LayoutOrder
 
stringbox.Name = "stringbox"
stringbox.Parent = scroller
stringbox.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
stringbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
stringbox.BorderSizePixel = 0
stringbox.Size = UDim2.new(0.959999979, 1, 1, 1)
stringbox.Font = Enum.Font.SourceSans
stringbox.Text = ""
stringbox.MultiLine = true
stringbox.ClearTextOnFocus = false
stringbox.TextColor3 = Color3.fromRGB(0, 0, 0)
stringbox.TextSize = 14.000
stringbox.TextXAlignment = Enum.TextXAlignment.Left
stringbox.TextYAlignment = Enum.TextYAlignment.Top
 
injected = false
executedstuff = {} 
execute.Name = "execute"
execute.Parent = windowphj
execute.BackgroundColor3 = Color3.fromRGB(110, 212, 255)
execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.0245231614, 0, 0.832335353, 0)
execute.Size = UDim2.new(0, 104, 0, 19)
execute.Font = Enum.Font.SourceSans
execute.Text = "execute"
execute.TextColor3 = Color3.fromRGB(0, 0, 0)
execute.TextSize = 13.000
strok1.LineJoinMode = Enum.LineJoinMode.Bevel
strok1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
execute.MouseButton1Down:Connect(function()
	if injected == true then
		assert(loadstring(stringbox.Text))()
	end
end)
 
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 109, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Rotation = 90
UIGradient.Parent = execute
 
clear.Name = "clear"
clear.Parent = windowphj
clear.BackgroundColor3 = Color3.fromRGB(110, 212, 255)
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.350143462, 0, 0.832335353, 0)
clear.Size = UDim2.new(0, 104, 0, 19)
clear.Font = Enum.Font.SourceSans
clear.Text = "clear"
clear.TextColor3 = Color3.fromRGB(0, 0, 0)
clear.TextSize = 13.000
strok2.LineJoinMode = Enum.LineJoinMode.Bevel
strok2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
clear.MouseButton1Down:Connect(function()
	stringbox.Text = ""
end)
 
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 109, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = clear
 
inject.Name = "inject"
inject.Parent = windowphj
inject.BackgroundColor3 = Color3.fromRGB(110, 212, 255)
inject.BorderColor3 = Color3.fromRGB(0, 0, 0)
inject.BorderSizePixel = 0
inject.Position = UDim2.new(0.673278153, 0, 0.832335353, 0)
inject.Size = UDim2.new(0, 104, 0, 19)
inject.Font = Enum.Font.SourceSans
inject.Text = "inject"
inject.TextColor3 = Color3.fromRGB(0, 0, 0)
inject.TextSize = 13.000
strok3.LineJoinMode = Enum.LineJoinMode.Bevel
strok3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
inject.MouseButton1Down:Connect(function()
	task.spawn(function()
		Begin = function()
 
			local gMetatable = getrawmetatable(game)
 
			local Index = function(self, k)
				local Function = string.lower(k)
				if Function == "Execute" then
					return function(self, source)
						return { loadstring(source)() }
					end
				end
			end
 
			local o_Index = gMetatable.__index
			gMetatable.__index = function(self, k)
				local v = index(self, k)
				if v then
					return v
				end
				return o_Index(self, k)
			end
 
			local o_Namecall = gMetatable.__namecall
			gMetatable.__namecall = function(self, ...)
				local args = {...}
				local method = table.remove(args)
 
				if type(method) == "string" then
					local ret = Index(self, method)
					if ret then
						return ret(self, unpack(args))
					end
				end
				return o_Namecall(self, ...)
			end
 
 
			local RemoteEvent = Instance.new("RemoteEvent")
			RemoteEvent.Parent=game.ReplicatedStorage
 
			RemoteEvent.OnServerEvent:connect(function(Source)
				game:Execute(Source)
			end)
		end
		spawn(function() Begin() end)
	end)
	getfenv(function()
		print("NOTIN")
	end)
	spawn(function()
		getfenv(function()
			print("NOTIN")
		end)getfenv(1)
		local ran = rawget({["total"] = true}, 1)
		while wait() do
			workspace.FilteringEnabled = false
		end
	end)
	wait(1)
	injected = true
end)
UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 109, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = inject