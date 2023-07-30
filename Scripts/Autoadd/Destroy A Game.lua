
-- Gui to Lua
-- Version: 3.
-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local e1x1x1x1Message = Instance.new("TextButton")
local e1x1x1x1Music = Instance.new("TextButton")
local e1x1x1x1Laugh = Instance.new("TextButton")
local DayToNight = Instance.new("TextButton")
local e666 = Instance.new("TextButton")
local EpicSaxGuy = Instance.new("TextButton")
local Disc0 = Instance.new("TextButton")
local e2006Theme = Instance.new("TextButton")
local ForceField = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.382171214, 0, 0.328530252, 0)
Frame.Size = UDim2.new(0, 378, 0, 250)

Name.Name = "Name"
Name.Parent = Frame
Name.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Name.Size = UDim2.new(0, 378, 0, 25)
Name.Font = Enum.Font.GothamBold
Name.Text = "1x1x1x1 Gui"
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Credits.Position = UDim2.new(0, 0, 0.912, 0)
Credits.Size = UDim2.new(0, 378, 0, 22)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "By Hidden"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

e1x1x1x1Message.Name = "e1x1x1x1Message"
e1x1x1x1Message.Parent = Frame
e1x1x1x1Message.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e1x1x1x1Message.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0)
e1x1x1x1Message.Size = UDim2.new(0, 79, 0, 31)
e1x1x1x1Message.Font = Enum.Font.GothamBold
e1x1x1x1Message.Text = "1x1x1x1 Message"
e1x1x1x1Message.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Message.TextScaled = true
e1x1x1x1Message.TextSize = 14.000
e1x1x1x1Message.TextWrapped = true
e1x1x1x1Message.MouseButton1Down:connect(function()
	while true do
		wait(12)--set this to how much time between messages
		msg = Instance.new ("Hint")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: MUHAWHAWHAW! NOOBS! I HAVE RETURNED FOR MY REVENGE!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: NOW YOU WILL ALL PARISH IN MY FIRE OF DOOM!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: I WILL DESTROY YOU ALL! YOU ARE WORTHLESS!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: YOU WILL NOT LIVE THROUGH MY DEADLY ATTACKS!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: I MIGHT AS WELL CLONE YOU INTO BOTS!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: AND THEN THOSE BOTS WILL DESTROY ROBLOX! HAHAHAHAHA!"
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "1x1x1x1: YOU CAN'T STOP ME! THERES NOTHING YOU CAN DO!"
		wait(6)
		msg:remove()
	end
end)
e1x1x1x1Music.Name = "e1x1x1x1Music"
e1x1x1x1Music.Parent = Frame
e1x1x1x1Music.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e1x1x1x1Music.Position = UDim2.new(0.0714285746, 0, 0.436000019, 0)
e1x1x1x1Music.Size = UDim2.new(0, 79, 0, 31)
e1x1x1x1Music.Font = Enum.Font.GothamBold
e1x1x1x1Music.Text = "1x1x1x1 Music"
e1x1x1x1Music.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Music.TextScaled = true
e1x1x1x1Music.TextSize = 14.000
e1x1x1x1Music.TextWrapped = true
e1x1x1x1Music.MouseButton1Down:connect(function()
	--Made by Servano

	local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=27697743"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = true
	s.archivable = false

	s.Parent = game.Workspace

	wait(1)

	s:play()
end)
e1x1x1x1Laugh.Name = "e1x1x1x1Laugh"
e1x1x1x1Laugh.Parent = Frame
e1x1x1x1Laugh.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e1x1x1x1Laugh.Position = UDim2.new(0.0714285746, 0, 0.648000002, 0)
e1x1x1x1Laugh.Size = UDim2.new(0, 79, 0, 34)
e1x1x1x1Laugh.Font = Enum.Font.GothamBold
e1x1x1x1Laugh.Text = "1x1x1x1 Laugh"
e1x1x1x1Laugh.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Laugh.TextScaled = true
e1x1x1x1Laugh.TextSize = 14.000
e1x1x1x1Laugh.TextWrapped = true
e1x1x1x1Laugh.MouseButton1Down:connect(function()
	--Made by Servano

	local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=35935204"
	s.Volume = 1
	s.Pitch = 0.9
	s.Looped = true
	s.archivable = false

	s.Parent = game.Workspace

	wait(1)

	s:play()
end)
DayToNight.Name = "DayToNight"
DayToNight.Parent = Frame
DayToNight.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DayToNight.Position = UDim2.new(0.388888896, 0, 0.216000006, 0)
DayToNight.Size = UDim2.new(0, 83, 0, 31)
DayToNight.Font = Enum.Font.GothamBold
DayToNight.Text = "Night"
DayToNight.TextColor3 = Color3.fromRGB(0, 0, 0)
DayToNight.TextScaled = true
DayToNight.TextSize = 14.000
DayToNight.TextWrapped = true
DayToNight.MouseButton1Down:connect(function()
	while true do 
		print ("Loop cycle start")
		game.Lighting.TimeOfDay = "18:00:00"
		wait(0.5)
	end
end)
e666.Name = "e666"
e666.Parent = Frame
e666.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e666.Position = UDim2.new(0.388888896, 0, 0.43599999, 0)
e666.Size = UDim2.new(0, 83, 0, 31)
e666.Font = Enum.Font.GothamBold
e666.Text = "666"
e666.TextColor3 = Color3.fromRGB(0, 0, 0)
e666.TextScaled = true
e666.TextSize = 14.000
e666.TextWrapped = true
e666.MouseButton1Down:connect(function()
	for i,v in next,workspace:children''do
		if(v:IsA'BasePart')then
			me=v;
			bbg=Instance.new('BillboardGui',me);
			bbg.Name='stuf';
			bbg.Adornee=me;
			bbg.Size=UDim2.new(2.5,0,2.5,0)
			--bbg.StudsOffset=Vector3.new(0,2,0)
			tlb=Instance.new'TextLabel';
			tlb.Text='666 666 666 666 666 666';
			tlb.Font='SourceSansBold';
			tlb.FontSize='Size48';
			tlb.TextColor3=Color3.new(1,0,0);
			tlb.Size=UDim2.new(1.25,0,1.25,0);
			tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
			tlb.BackgroundTransparency=1;
			tlb.Parent=bbg;
		end;end;
	function xds(dd)
		for i,v in next,dd:children''do
			if(v:IsA'BasePart')then
				v.BrickColor=BrickColor.new'Really black';
				v.TopSurface='Smooth';
				v.BottomSurface='Smooth';
				s=Instance.new('SelectionBox',v);
				s.Adornee=v;
				s.Color=BrickColor.new'Really red';
				a=Instance.new('PointLight',v);
				a.Color=Color3.new(1,0,0);
				a.Range=15;
				a.Brightness=5;
				f=Instance.new('Fire',v);
				f.Size=19;
				f.Heat=22;
			end;
			game.Lighting.TimeOfDay=0;
			game.Lighting.Brightness=0;
			game.Lighting.ShadowColor=Color3.new(0,0,0);
			game.Lighting.Ambient=Color3.new(1,0,0);
			game.Lighting.FogEnd=200;
			game.Lighting.FogColor=Color3.new(0,0,0);
			local dec = 'http://www.roblox.com/asset/?id=19399245';
			local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
			--coroutine.wrap(function()
			--for ,_ in pairs(fac) do
			--local ddec = Instance.new("Decal", v)
			--ddec.Face = 
			--ddec.Texture = dec
			--end end)()
			if #(v:GetChildren())>0 then
				xds(v) 
			end
		end
	end
	xds(game.Workspace)
end)
EpicSaxGuy.Name = "EpicSaxGuy"
EpicSaxGuy.Parent = Frame
EpicSaxGuy.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
EpicSaxGuy.Position = UDim2.new(0.388888896, 0, 0.648000002, 0)
EpicSaxGuy.Size = UDim2.new(0, 83, 0, 34)
EpicSaxGuy.Font = Enum.Font.GothamBold
EpicSaxGuy.Text = "Epic Sax Guy"
EpicSaxGuy.TextColor3 = Color3.fromRGB(0, 0, 0)
EpicSaxGuy.TextScaled = true
EpicSaxGuy.TextSize = 14.000
EpicSaxGuy.TextWrapped = true
EpicSaxGuy.MouseButton1Down:connect(function()
	--Made by Servano

	local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=358776516"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = true
	s.archivable = false

	s.Parent = game.Workspace

	wait(1)

	s:play()
end)
Disc0.Name = "Disc0"
Disc0.Parent = Frame
Disc0.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Disc0.Position = UDim2.new(0.693121672, 0, 0.216000006, 0)
Disc0.Size = UDim2.new(0, 89, 0, 31)
Disc0.Font = Enum.Font.GothamBold
Disc0.Text = "Disco"
Disc0.TextColor3 = Color3.fromRGB(0, 0, 0)
Disc0.TextScaled = true
Disc0.TextSize = 14.000
Disc0.TextWrapped = true
Disc0.MouseButton1Down:connect(function()
	while true do

		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		wait(.25)

	end
end)
e2006Theme.Name = "e2006Theme"
e2006Theme.Parent = Frame
e2006Theme.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e2006Theme.Position = UDim2.new(0.693121672, 0, 0.43599999, 0)
e2006Theme.Size = UDim2.new(0, 89, 0, 31)
e2006Theme.Font = Enum.Font.GothamBold
e2006Theme.Text = "2006 Music"
e2006Theme.TextColor3 = Color3.fromRGB(0, 0, 0)
e2006Theme.TextScaled = true
e2006Theme.TextSize = 14.000
e2006Theme.TextWrapped = true
e2006Theme.MouseButton1Down:connect(function()
	--Made by Servano

	local s = Instance.new("Sound")

	s.Name = "Sound"
	s.SoundId = "http://www.roblox.com/asset/?id=1987072964"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = true
	s.archivable = false

	s.Parent = game.Workspace

	wait(1)

	s:play()
end)
ForceField.Name = "ForceField"
ForceField.Parent = Frame
ForceField.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ForceField.Position = UDim2.new(0.693121672, 0, 0.648000002, 0)
ForceField.Size = UDim2.new(0, 89, 0, 34)
ForceField.Font = Enum.Font.GothamBold
ForceField.Text = "FF"
ForceField.TextColor3 = Color3.fromRGB(0, 0, 0)
ForceField.TextScaled = true
ForceField.TextSize = 14.000
ForceField.TextWrapped = true
ForceField.MouseButton1Down:connect(function()
	-- Gui to Lua
	-- Version: 3.
	-- Instances:

	local ForceFieldGUI = Instance.new("ScreenGui")
	local ForceFieldGUI_2 = Instance.new("TextButton")
	local ForceFieldOFF = Instance.new("TextButton")
	local ForceFieldON = Instance.new("TextButton")

	--Properties:

	ForceFieldGUI.Name = "ForceFieldGUI"
	ForceFieldGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	ForceFieldGUI_2.Name = "ForceFieldGUI"
	ForceFieldGUI_2.Parent = ForceFieldGUI
	ForceFieldGUI_2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
	ForceFieldGUI_2.BackgroundTransparency = 0.300
	ForceFieldGUI_2.BorderColor3 = Color3.fromRGB(245, 244, 247)
	ForceFieldGUI_2.BorderSizePixel = 0
	ForceFieldGUI_2.Position = UDim2.new(0, 0, 0, 240)
	ForceFieldGUI_2.Size = UDim2.new(0, 100, 0, 20)
	ForceFieldGUI_2.Text = "ForceField"
	ForceFieldGUI_2.TextColor3 = Color3.fromRGB(17, 17, 17)
	ForceFieldGUI_2.TextTransparency = 0.300

	ForceFieldOFF.Name = "ForceFieldOFF"
	ForceFieldOFF.Parent = ForceFieldGUI
	ForceFieldOFF.BackgroundColor3 = Color3.fromRGB(253, 253, 253)
	ForceFieldOFF.BackgroundTransparency = 0.300
	ForceFieldOFF.BorderColor3 = Color3.fromRGB(245, 244, 247)
	ForceFieldOFF.BorderSizePixel = 0
	ForceFieldOFF.Position = UDim2.new(0, 0, 0, 280)
	ForceFieldOFF.Size = UDim2.new(0, 100, 0, 20)
	ForceFieldOFF.Visible = false
	ForceFieldOFF.Text = "Off"
	ForceFieldOFF.TextColor3 = Color3.fromRGB(17, 17, 17)

	ForceFieldON.Name = "ForceFieldON"
	ForceFieldON.Parent = ForceFieldGUI
	ForceFieldON.BackgroundColor3 = Color3.fromRGB(253, 253, 253)
	ForceFieldON.BackgroundTransparency = 0.300
	ForceFieldON.BorderColor3 = Color3.fromRGB(245, 244, 247)
	ForceFieldON.BorderSizePixel = 0
	ForceFieldON.Position = UDim2.new(0, 0, 0, 260)
	ForceFieldON.Size = UDim2.new(0, 100, 0, 20)
	ForceFieldON.Visible = false
	ForceFieldON.Text = "On"
	ForceFieldON.TextColor3 = Color3.fromRGB(17, 17, 17)

	-- Scripts:

	local function DVAWVL_fake_script() -- ForceFieldGUI_2.Script 
		local script = Instance.new('Script', ForceFieldGUI_2)

		function onClicked(GUI)
			h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid")
			if (h ~= nil) then
				script.Parent.Parent.ForceFieldOFF.Visible = true
				script.Parent.Parent.ForceFieldON.Visible = true
			else return end
		end
		script.Parent.MouseButton1Click:connect(onClicked)
	end
	coroutine.wrap(DVAWVL_fake_script)()
	local function HYECSMJ_fake_script() -- ForceFieldOFF.Script 
		local script = Instance.new('Script', ForceFieldOFF)

		function onClicked(GUI)
			f = script.Parent.Parent.Parent.Parent.Character:findFirstChild("ForceField")
			if (f ~= nil) then
				f:remove()
			else return end
		end
		script.Parent.MouseButton1Click:connect(onClicked)
	end
	coroutine.wrap(HYECSMJ_fake_script)()
	local function LOYRXPU_fake_script() -- ForceFieldOFF.Script 
		local script = Instance.new('Script', ForceFieldOFF)

		function onClicked(GUI)
			h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid")
			if (h ~= nil) then
				script.Parent.Parent.ForceFieldOFF.Visible = false
				script.Parent.Parent.ForceFieldON.Visible = false
			else return end
		end
		script.Parent.MouseButton1Click:connect(onClicked)
	end
	coroutine.wrap(LOYRXPU_fake_script)()
	local function PFEVNBW_fake_script() -- ForceFieldON.Script 
		local script = Instance.new('Script', ForceFieldON)

		function onClicked(GUI)
			h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid")
			if (h ~= nil) then
				FF = Instance.new("ForceField")
				FF.Parent = script.Parent.Parent.Parent.Parent.Character
			else return end
		end
		script.Parent.MouseButton1Click:connect(onClicked)
	end
	coroutine.wrap(PFEVNBW_fake_script)()
	local function FNHQ_fake_script() -- ForceFieldON.Script 
		local script = Instance.new('Script', ForceFieldON)

		function onClicked(GUI)
			h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid")
			if (h ~= nil) then
				script.Parent.Parent.ForceFieldOFF.Visible = false
				script.Parent.Parent.ForceFieldON.Visible = false
			else return end
		end
		script.Parent.MouseButton1Click:connect(onClicked)
	end
	coroutine.wrap(FNHQ_fake_script)()
end)
-- Scripts:

local function QFCS_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    

game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(QFCS_fake_script)()