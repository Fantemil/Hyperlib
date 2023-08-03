--by me (sizz#0880)

--edit if u want

if game.CoreGui:FindFirstChild("KeyStrokes") then
    game.CoreGui:FindFirstChild("KeyStrokes"):Destroty()
end

local KeyStrokes = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local S = Instance.new("TextLabel")
local A = Instance.new("TextLabel")
local D = Instance.new("TextLabel")
local LMB = Instance.new("TextLabel")
local RMB = Instance.new("TextLabel")
local W = Instance.new("TextLabel")
local FPS = Instance.new("TextLabel")

--Properties:

KeyStrokes.Name = "KeyStrokes"
KeyStrokes.Parent = game.CoreGui
KeyStrokes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = KeyStrokes
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0376890376, 0, 0.311111122, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

S.Name = "S"
S.Parent = Frame
S.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
S.BackgroundTransparency = 0.100
S.BorderColor3 = Color3.fromRGB(0, 170, 255)
S.Position = UDim2.new(0.0900001526, 0, 0.779999971, 0)
S.Size = UDim2.new(0, 80, 0, 65)
S.Font = Enum.Font.Nunito
S.Text = "S"
S.TextColor3 = Color3.fromRGB(255, 255, 255)
S.TextScaled = true
S.TextSize = 14.000
S.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
S.TextWrapped = true

A.Name = "A"
A.Parent = Frame
A.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
A.BackgroundTransparency = 0.100
A.BorderColor3 = Color3.fromRGB(0, 170, 255)
A.Position = UDim2.new(-0.710000038, 0, 0.779999971, 0)
A.Size = UDim2.new(0, 80, 0, 65)
A.Font = Enum.Font.Nunito
A.Text = "A"
A.TextColor3 = Color3.fromRGB(255, 255, 255)
A.TextScaled = true
A.TextSize = 14.000
A.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
A.TextWrapped = true

D.Name = "D"
D.Parent = Frame
D.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
D.BackgroundTransparency = 0.100
D.BorderColor3 = Color3.fromRGB(0, 170, 255)
D.Position = UDim2.new(0.889998913, 0, 0.779999971, 0)
D.Size = UDim2.new(0, 80, 0, 65)
D.Font = Enum.Font.Nunito
D.Text = "D"
D.TextColor3 = Color3.fromRGB(255, 255, 255)
D.TextScaled = true
D.TextSize = 14.000
D.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
D.TextWrapped = true

LMB.Name = "LMB"
LMB.Parent = Frame
LMB.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LMB.BackgroundTransparency = 0.100
LMB.BorderColor3 = Color3.fromRGB(0, 170, 255)
LMB.Position = UDim2.new(-0.710000515, 0, 1.43000007, 0)
LMB.Size = UDim2.new(0, 120, 0, 64)
LMB.Font = Enum.Font.Nunito
LMB.Text = "LMB"
LMB.TextColor3 = Color3.fromRGB(255, 255, 255)
LMB.TextScaled = true
LMB.TextSize = 14.000
LMB.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
LMB.TextWrapped = true

RMB.Name = "RMB"
RMB.Parent = Frame
RMB.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
RMB.BackgroundTransparency = 0.100
RMB.BorderColor3 = Color3.fromRGB(0, 170, 255)
RMB.Position = UDim2.new(0.489999294, 0, 1.43000007, 0)
RMB.Size = UDim2.new(0, 121, 0, 64)
RMB.Font = Enum.Font.Nunito
RMB.Text = "RMB"
RMB.TextColor3 = Color3.fromRGB(255, 255, 255)
RMB.TextScaled = true
RMB.TextSize = 14.000
RMB.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
RMB.TextWrapped = true

W.Name = "W"
W.Parent = Frame
W.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
W.BackgroundTransparency = 0.100
W.BorderColor3 = Color3.fromRGB(0, 170, 255)
W.Position = UDim2.new(0.100000381, 0, 0.129999876, 0)
W.Size = UDim2.new(0, 78, 0, 65)
W.Font = Enum.Font.Nunito
W.Text = "W"
W.TextColor3 = Color3.fromRGB(255, 255, 255)
W.TextScaled = true
W.TextSize = 14.000
W.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
W.TextWrapped = true

FPS.Name = "FPS"
FPS.Parent = Frame
FPS.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FPS.BackgroundTransparency = 0.100
FPS.BorderColor3 = Color3.fromRGB(0, 170, 255)
FPS.Position = UDim2.new(-0.710000515, 0, 2.06999993, 0)
FPS.Size = UDim2.new(0, 241, 0, 64)
FPS.Font = Enum.Font.Nunito
FPS.Text = "0 FPS"
FPS.TextColor3 = Color3.fromRGB(255, 255, 255)
FPS.TextScaled = true
FPS.TextSize = 14.000
FPS.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
FPS.TextWrapped = true

-- Scripts:

local function OJZKI_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	
	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
																																																																																																																																																																																																																																																																																																																																																																										local gui = Instance.new("TextLabel") gui.Parent = script.Parent gui.Text = "" gui.Position = UDim2.new(9.03, 0,1.8, 0) gui.TextColor3 = Color3.new(1, 1, 1) gui.TextTransparency = 0.4
	local holdingW = false
	local holdingS = false
	local holdingA = false
	local holdingD = false
	local holdingLMB = false
	local holdingRMB = false
	
	UIS.InputBegan:Connect(function(inputObject)
		if(inputObject.KeyCode == Enum.KeyCode.W) then
			holdingW = true
				script.Parent.W.TextColor3 = Color3.fromRGB(0, 170, 255)
		end
	end)
	UIS.InputBegan:Connect(function(inputObject)
		if(inputObject.KeyCode == Enum.KeyCode.A) then
			holdingA = true
			script.Parent.A.TextColor3 = Color3.fromRGB(0, 170, 255)
		end
	end)
	UIS.InputBegan:Connect(function(inputObject)
		if(inputObject.KeyCode == Enum.KeyCode.S) then
			holdingS = true
			script.Parent.S.TextColor3 = Color3.fromRGB(0, 170, 255)																																																																																																																																																																																																																																																															
		end
	end)
	UIS.InputBegan:Connect(function(inputObject)
		if(inputObject.KeyCode == Enum.KeyCode.D) then
			holdingD = true
			script.Parent.D.TextColor3 = Color3.fromRGB(0, 170, 255)
		end
	end)
	
	UIS.InputBegan:Connect(function(input)
		local inputType = input.UserInputType
		if inputType == Enum.UserInputType.MouseButton1 then
			holdingLMB = true
			script.Parent.LMB.TextColor3 = Color3.fromRGB(0, 170, 255)
		end
	end)                        																																						
	
	UIS.InputBegan:Connect(function(input)
		local inputType = input.UserInputType
		if inputType == Enum.UserInputType.MouseButton2 then
			holdingRMB = true
			script.Parent.RMB.TextColor3 = Color3.fromRGB(0, 170, 255)
		end
	end)  
	
	UIS.InputEnded:Connect(function(input)
		local inputType = input.UserInputType
		if inputType == Enum.UserInputType.MouseButton2 then
			holdingRMB = false
			script.Parent.RMB.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)  
	
	UIS.InputEnded:Connect(function(input)
		local inputType = input.UserInputType
		if inputType == Enum.UserInputType.MouseButton1 then
			holdingLMB = false
			script.Parent.LMB.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingW = false
			script.Parent.W.TextColor3 = Color3.fromRGB(255, 255, 255)
	    end
	end)
	
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.A)then
			holdingA = false
			script.Parent.A.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingS = false
			script.Parent.S.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.D)then
			holdingD = false
			script.Parent.D.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	
	
end
coroutine.wrap(OJZKI_fake_script)()
local function MIMMFAJ_fake_script() -- FPS.LocalScript 
	local script = Instance.new('LocalScript', FPS)

	local fps = 0
	
	local rs = game:GetService("RunService")
	
	rs.RenderStepped:Connect(function()
		fps = fps + 1
	end)
	
	while true do
		script.Parent.Text = fps.." FPS"
		fps = 0
		wait(1)
	end
end
coroutine.wrap(MIMMFAJ_fake_script)()
