-- Gui to Lua
-- Version: 3.2
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
Frame.Visible = true

Name.Name = "Name"
Name.Parent = Frame
Name.BackgroundColor3 = Color3.fromRGB(0, 102, 0)
Name.Size = UDim2.new(0, 378, 0, 25)
Name.Font = Enum.Font.GothamBold
Name.Text = "S33dedGui"
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(0, 102, 0)
Credits.Position = UDim2.new(0, 0, 0.912, 0)
Credits.Size = UDim2.new(0, 378, 0, 22)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "Hacked Mode OP"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

e1x1x1x1Message.Name = "e1x1x1x1Message"
e1x1x1x1Message.Parent = Frame
e1x1x1x1Message.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
e1x1x1x1Message.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0)
e1x1x1x1Message.Size = UDim2.new(0, 79, 0, 31)
e1x1x1x1Message.Font = Enum.Font.GothamBold
e1x1x1x1Message.Text = "Broken Hint"
e1x1x1x1Message.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Message.TextScaled = true
e1x1x1x1Message.TextSize = 14.000
e1x1x1x1Message.TextWrapped = true
e1x1x1x1Message.MouseButton1Down:connect(function()
	while true do
		wait(1)--set this to how much time between messages
		msg = Instance.new ("Hint")
		msg.Parent = game.Workspace
		msg.Text = "101010101010120119810101010101111010101"
		wait(0.01)
		msg:remove()
		wait(0.01)
		msg = Instance.new("Hint")
		msg.Parent = game.Workspace
		msg.Text = "6832877978182390882109889846564512"
		wait(0.01)
		msg:remove()
		wait(0.01)
		msg = Instance.new("Hint")
		msg.Parent = game.Workspace
		msg.Text = "31427984442756q2809324675321788332766424"
		wait(0.01)
		msg:remove()
		wait(0.03)
		msg = Instance.new("Hint")
		msg.Parent = game.Workspace
		msg.Text = "101010101010393764919273636282"
		wait(0.01)
		msg:remove()
		wait(0.03)
		msg = Instance.new("Hint")
		msg.Parent = game.Workspace
		msg.Text = "4561125212667821367842798848309869509056766737255621564"
		wait(0.01)
		msg:remove()
		wait(0.01)
		msg = Instance.new("Hint")
		msg.Parent = game.Workspace
		msg.Text = "8909018971778786276275643544357616879818089198827682756553"
		wait(0.01)
		msg:remove()
	end
end)
e1x1x1x1Music.Name = "e1x1x1x1Music"
e1x1x1x1Music.Parent = Frame
e1x1x1x1Music.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
e1x1x1x1Music.Position = UDim2.new(0.0714285746, 0, 0.436000019, 0)
e1x1x1x1Music.Size = UDim2.new(0, 79, 0, 31)
e1x1x1x1Music.Font = Enum.Font.GothamBold
e1x1x1x1Music.Text = "Music"
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
e1x1x1x1Laugh.Text = "S33dedGui V33"
e1x1x1x1Laugh.TextColor3 = Color3.fromRGB(0, 0, 0)
e1x1x1x1Laugh.TextScaled = true
e1x1x1x1Laugh.TextSize = 14.000
e1x1x1x1Laugh.TextWrapped = true
e1x1x1x1Laugh.MouseButton1Down:connect(function()
	loadstring(Game:HttpGet('https://raw.githubusercontent.com/S33dedL0rdz/S33dedGui-v33-OP-Edition/main/%5BPrivate%5D%3ANo%20entry%3E%3A('))()
end)
DayToNight.Name = "DayToNight"
DayToNight.Parent = Frame
DayToNight.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
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
e666.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
e666.Position = UDim2.new(0.388888896, 0, 0.43599999, 0)
e666.Size = UDim2.new(0, 83, 0, 31)
e666.Font = Enum.Font.GothamBold
e666.Text = "Break Game"
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
			tlb.Text='10101010101010101010101010101101';
			tlb.Font='SourceSansBold';
			tlb.FontSize='Size48';
			tlb.TextColor3=Color3.new(0,102,0);
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
				s.Color=BrickColor.new'Green';
				a=Instance.new('PointLight',v);
				a.Color=Color3.new(0,0,255);
				a.Range=99;
				a.Brightness=99;
				f=Instance.new('Fire',v);
				f.Size=999;
				f.Heat=999;
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
EpicSaxGuy.Text = "Close Gui"
EpicSaxGuy.TextColor3 = Color3.fromRGB(0, 0, 0)
EpicSaxGuy.TextScaled = true
EpicSaxGuy.TextSize = 14.000
EpicSaxGuy.TextWrapped = true
EpicSaxGuy.MouseButton1Down:connect(function()
   Frame.Visible = false
end)
Disc0.Name = "Disc0"
Disc0.Parent = Frame
Disc0.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
Disc0.Position = UDim2.new(0.693121672, 0, 0.216000006, 0)
Disc0.Size = UDim2.new(0, 89, 0, 31)
Disc0.Font = Enum.Font.GothamBold
Disc0.Text = "Disc0"
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
e2006Theme.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
e2006Theme.Position = UDim2.new(0.693121672, 0, 0.43599999, 0)
e2006Theme.Size = UDim2.new(0, 89, 0, 31)
e2006Theme.Font = Enum.Font.GothamBold
e2006Theme.Text = "Steal Admin"
e2006Theme.TextColor3 = Color3.fromRGB(0, 0, 0)
e2006Theme.TextScaled = true
e2006Theme.TextSize = 14.000
e2006Theme.TextWrapped = true
e2006Theme.MouseButton1Down:connect(function()
	print("Executed.")
    wait(8)
    print("Connecting..")
    wait(9)
    print("Bypassing..")
    wait(5)
    print("Game not backdoored,cannot be bypassed.")
    wait(7)
end)
ForceField.Name = "ForceField"
ForceField.Parent = Frame
ForceField.BackgroundColor3 = Color3.fromRGB(102, 0, 0)
ForceField.Position = UDim2.new(0.693121672, 0, 0.648000002, 0)
ForceField.Size = UDim2.new(0, 89, 0, 34)
ForceField.Font = Enum.Font.GothamBold
ForceField.Text = "K00pgui"
ForceField.TextColor3 = Color3.fromRGB(0, 0, 0)
ForceField.TextScaled = true
ForceField.TextSize = 14.000
ForceField.TextWrapped = true
ForceField.MouseButton1Down:connect(function()
require(12222889435).k00pskldd("09baRavenaaAlt")
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