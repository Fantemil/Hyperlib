--[[
	This script is under the GNU license from the Github repository created by Scriptery and Finny
]]

-- << Temp Whitelist >> --

--[[
if tick() > 1548202148 then
	game:GetService("Players").LocalPlayer:Kick("ok game over and use the actual script")
	return
end
]]


-- << Initialize >> --

local required = "2.3"
local comments = "2.3a Stability Update"

repeat wait() until workspace.CurrentCamera;

-- << Load Previous Settings >> --

local savedFile = {
	version = "2.3",
    mainColor = "0,0,0",
   	textColor = "255,255,255",
    	blurLevel = 25,
    	toggleKey = "LeftControl",
    scripts = {},
	settings = {
		Fastboot = false,
		FathomSmartScreen = true,
		Blur = true
	},
	searchSettings = {
		Ask = true,
		Ecosia = true,
		Bing = true
	}
};

local succ,returns = pcall(readfile, "FathomHub.config")

if readfile and succ then
    savedFile = game:GetService("HttpService"):JSONDecode(returns)
end

settings = savedFile;

-- << Initialize >> --
settings.toggleKey = Enum.KeyCode[settings.toggleKey];
repeat
	local _,_,rm,gm,bm = string.find(tostring(settings.mainColor), "(%d+)%D+(%d+)%D+(%d+)")
	settings.mainColor = Color3.fromRGB(rm,gm,bm)
	local _,_,rt,gt,bt = string.find(tostring(settings.textColor), "(%d+)%D+(%d+)%D+(%d+)")
	settings.textColor = Color3.fromRGB(rt,gt,bt)
until type(settings.mainColor) ~= "string"


if settings.version ~= required then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Fathom Hub Database Error"; 
		Text = "Required Database Version "..required.." | Current Version: "..settings.version.."\nUse the data transfer tool provided by Syntax via discord.me/fathom"; 
		Icon = ""; 
		Duration = 50; 
		Button1 = "OK";
	})
	return
end

-- << API Structure Development >> --

local TABS = {
    {
		Name = 'Browser';
		Icon = 'rbxassetid://2611436893';
    };
    {
		Name = 'Local Library';
		Icon = 'rbxassetid://728745585';
    };
	{
		Name = 'Preferences';
		Icon = 'rbxassetid://898100298';
	};
    {
		Name = 'About';
		Icon = 'rbxassetid://894507994';
    };
};

-- << PETA API | Scraped API's >> --

local runservice = game:GetService'RunService';

local services = setmetatable({
	workspace = workspace;
	lighting = game:service'Lighting';
	replicated = game:service'ReplicatedStorage';
	plrs = game:service'Players';
	step = runservice.Stepped;
	rstep = runservice.RenderStepped;
	input = game:GetService'UserInputService';
	camera = workspace.CurrentCamera;
	plr = game:service'Players'.LocalPlayer;
	plrgui = game:service'Players'.LocalPlayer:WaitForChild("PlayerGui");
	mouse = game:service'Players'.LocalPlayer:GetMouse();
}, {__index = function(_, service) return game:GetService(service) or services[service] or nil end});



function create(obj, tbl)
	local nobj = Instance.new(obj)
	for i,v in pairs(tbl) do
		nobj[i] = v
	end
	return nobj
end

function createShadow(parent)
	return create('Frame', {
		Size = UDim2.new(1, 8, 1, 8);
		Position = UDim2.new(0, -4, 0, -4);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = parent.ZIndex - 1;
		Parent = parent;
	})
end

function createSmallShadow(parent)
	return create('Frame', {
		Size = UDim2.new(1, 6, 1, 6);
		Position = UDim2.new(0, -3, 0, -3);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = parent.ZIndex - 1;
		Parent = parent;
	})
end

function event()
	return Instance.new'BindableEvent'
end

local onKeyPress = event()

local binds = {}

function bindToKey(key, func, nam)
	table.insert(binds, {key, func, nam})
end

function getBindList(cod)
	local lst = {}
	for _,v in pairs(binds) do
		if v[1] == cod then
			table.insert(lst, v[2])
		end
	end
	return lst
end

function createIcon(ic, prop, clik)
	local nic = create(clik and 'ImageButton' or 'ImageLabel', {
		Image = ic;
		BackgroundTransparency = 1;
	})
	for i,v in pairs(prop) do
		nic[i] = v
	end
	return nic
end

function Children(parent,func)
	coroutine.wrap(function()
		for i,v in pairs(parent:children())do
			pcall(function()
				func(v)
			end)
			pcall(function()
				Children(v,func)
			end)
		end
	end)()
end

function httpGet(query)
	return game:HttpGet(query, true)
end

local toggleable = true
services.input.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.Keyboard then
		if toggleable == false then return end
		onKeyPress:Fire(inp.KeyCode)
		for _,v in pairs(getBindList(inp.KeyCode)) do
			spawn(v)
		end
	end
end)

function materializebutton(button)
	function CreateInstance(cls,props)	
		local inst = Instance.new(cls);	
		for i,v in pairs(props) do 
			inst[i] = v 
		end;
		return inst 
	end;
	
	
	
	button.AutoButtonColor = false;
	
	
	
	--<< Setting(s) >>--
	
	local HoverFX_Color = button.TextColor3
	
	--<< Instance(s) >>--
	
	local hoverfx = CreateInstance("Frame", {Size = UDim2.new(1,0,1,0),Parent=button, Name="HoverFX_now_stop_stalking",AnchorPoint = Vector2.new(0, 0), BackgroundColor3=HoverFX_Color,BorderSizePixel=0,ClipsDescendants=true,BackgroundTransparency=1,Position=UDim2.new(0,0,0,0),Visible=true,ZIndex=button.ZIndex+1})
	
	--<< Function >>--
	
	button.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(hoverfx, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {BackgroundTransparency = 0.76}):Play()
		end
	end)
	
	button.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(hoverfx, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {BackgroundTransparency = 1}):Play()
		end
	end)
	
	
	
	local function click()
		local mouse = game:GetService('Players').LocalPlayer:GetMouse();
		local diagonal = math.sqrt((button.Size.X.Offset) ^ 2 + (button.Size.Y.Offset) ^ 2)
		local x = (mouse.X) - (button.AbsolutePosition.X);
		local y = (mouse.Y) - (button.AbsolutePosition.Y);
		local circle = CreateInstance('ImageLabel', {Name = "CircleLabel", Parent = hoverfx, AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Color3.new(1,1,1), BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0,0,0,0), Size = UDim2.new(0,50,0,50), Visible = false, Image = "rbxasset://textures/whiteCircle.png", ImageColor3 = button.TextColor3, ImageTransparency = .76})

		--<< Settings [Button Function] >>--
		
		--<| TIP |>: If you want to use color values ranging from 0 - 255 change new to .fromRGB or add r/255 g/255 b/255
		
		circle.Position = UDim2.new(0,x,0,y);
		
		circle.Size = UDim2.new(0,0,0,0);
		
		circle.ImageTransparency = .76;
		
		circle.Visible = true;
		
		circle.ZIndex = button.ZIndex + 2
		
		local size = UDim2.new(0, diagonal * 2.15, 0, diagonal * 2.15)
		
		--<< Script >>--
		
		
		button.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				while wait() do
					if circle.Size == size then
						game:GetService("TweenService"):Create(circle, TweenInfo.new(.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
						wait(1.2) 
						circle:Destroy()
						break
					end
				end
			end
		end)

		button.MouseButton1Up:Connect(function()
			wait(0.17)
			game:GetService("TweenService"):Create(circle, TweenInfo.new(.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
			wait(1.2) 
			circle:Destroy()
		end)
		
		circle:TweenSize(size,"Out","Linear",0.45)
	end
	
	button.MouseButton1Down:Connect(click);
	
end;

-- << Text API >> --

function materializet(textbox, color, revertedtext)

		local parent = textbox;
		local mouse = game:GetService'Players'.LocalPlayer:GetMouse();
		local underlinecolor = color or parent.TextColor3;
		local ptext = revertedtext or parent.Text
		parent.Visible = true;
		parent.Active = true;
		parent.Selectable = true
		function CreateInstance(cls,props)	inst = Instance.new(cls)	for i,v in pairs(props) do inst[i] = v end return inst end
		local Underline = CreateInstance("Frame", {Name="Underline",ZIndex=parent.ZIndex, Parent=parent,BackgroundColor3=underlinecolor, BorderSizePixel=0,Position=UDim2.new(0,0,1,0),Size=UDim2.new(0, 0, 0, 2)})
		local UnderlineBase = CreateInstance("Frame", {Name="Underline",ZIndex=parent.ZIndex,Parent= parent,BackgroundColor3=underlinecolor,BackgroundTransparency=0.85,BorderSizePixel=0,Position=UDim2.new(0,0,1,0),Size=UDim2.new(1, 0, 0, 1)})

		local xsize = UnderlineBase.AbsoluteSize.X;

		parent.Focused:connect(function()
			if Underline.Size.X.Scale == 1 then return end
			parent.PlaceholderText= ""
			local x = (mouse.X) - (parent.AbsolutePosition.X);Underline.BackgroundTransparency = 0;Underline.Position = UDim2.new(0,x,1,0);wait()
			Underline:TweenSizeAndPosition(UDim2.new(1, 0, 0, 2),UDim2.new(0, 0, 1, 0),"Out","Quint",0.2)
		end)
		parent.FocusLost:connect(function()
			if parent.Text == "" then parent.PlaceholderColor3 = parent.TextColor3	parent.PlaceholderText = ptext	end
			game:GetService("TweenService"):Create(Underline,TweenInfo.new(0.15,Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0,false, 0 ),{BackgroundTransparency = 1}):Play()	
			wait(0.15)	Underline.Size = UDim2.new(0,0,0,2)
		end)

end

-- << Blur >> --

local blurEffect = create('BlurEffect', {
	Parent = workspace.CurrentCamera;
	Size = 0;
})

local blurLevel = 0

services.step:connect(function()
	local nm,nm2 = blurEffect.Size,services.camera.FieldOfView
	blurEffect.Size = nm + ((blurLevel - nm) * .1)
end)

-- << Create GUI >> --

local gui = create('ScreenGui', {
	Parent = services.CoreGui; --services.plrgui;
	Name = 'FathomV2';
})
local pingui = create('ScreenGui',{
	Parent = services.CoreGui;
	Name = 'FathomV2Focused';
})
local enabled = false

-- << Material Loader >> --

function SmallBlueLoader(parent, dimensions, position, zindex)
	local img = Instance.new("ImageLabel");
	img.Size = dimensions;
	img.Parent = parent;
	img.BackgroundTransparency = 1;
	img.ZIndex = zindex or parent.ZIndex + 1;
	img.Image = "rbxassetid://2634042664";
	img.ImageRectSize = Vector2.new(66,66);
	if position ~= nil then
		img.Position = position
	end
	local lbl = img
	local xDelta = 66
	local yDelta = 66
	local xIndex = 0
	local yIndex = 0
	local maxX = 6
	local maxY = 6
	local RunService = game:GetService('RunService')
	spawn(function() 
	repeat
		lbl.ImageRectOffset = Vector2.new(xIndex * xDelta, yIndex * yDelta)
		xIndex = xIndex + 1
		if xIndex == maxX then
			xIndex = 0
			yIndex = yIndex + 1
			if yIndex == maxY then
				yIndex = 0
			end
		end
		wait(.03)
	until img == nil
	end)
end

-- << String Functions >> --

function remove_tags(str)
    -- The m .. (str:match(m .. "%s") and "%s" or "") is the equivalent of:
    --
    --   if str:match(m .. "%s") then
    --       return m .. "%s"
    --   else
    --       return m .. ""
    --   end
    --
    -- The reason for doing this is because if it's like "something <strong> apple </strong>" I want to match --"something apple" not "something  apple " (with extra spaces)

    -- Taking out the <a> tag
    for m in str:gmatch("<a.->") do
        str = str:gsub(m .. (str:match(m .. "%s") and "%s" or ""), "")
    end
    -- Regular tags
    for m in str:gmatch("<%w+>") do
        str = str:gsub(m .. (str:match(m .. "%s") and "%s" or ""), "")
    end
    -- Ending tags
    for m in str:gmatch("</%w+>") do
        str = str:gsub(m .. (str:match(m .. "%s") and "%s" or ""), "")
    end
    -- Returning
    return str
end
function remove_whitespace(str)
    return str:match("^%s*(.-)%s*$")
    -- ^%s*   >  Beginning spaces
    -- (.-)   >  Capture of the shortest amt of chars
    -- %s*$   >  End spaces
end

-- << Transparency >> --

function getGuiRecursive(par)
	local rect = {par}

	local function drect(par)
		for _,v in pairs(par:GetChildren()) do
			if v:IsA'GuiObject' and not v.Name:sub(1, 1) == '-' then table.insert(rect, v) end
			drect(v)
		end
	end

	drect(par)

	return rect
end

function makePsuedoBorder(g,length)
	local top = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(1,length,0,length);
		Position = UDim2.new(0,0,0,-length);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local bottom = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(1,length,0,length);
		Position = UDim2.new(0,-length,1,0);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local left = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(0,length,1,length);
		Position = UDim2.new(0,-length,0,-length);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
	local right = create('Frame',{
		ZIndex = g.ZIndex;
		Size = UDim2.new(0,length,1,length);
		Position = UDim2.new(1,0,0,0);
		BackgroundColor3 = Color3.new(1,1,1);
		BorderSizePixel = 0;
		Parent = g;
	})
end

function getTransparencyProperty(obj)
	if obj.ClassName:sub(1, 5) == 'Image' then
		return 'ImageTransparency'
	elseif obj.ClassName:sub(1, 4) == 'Text' then
		return 'TextTransparency'
	end
	return 'BackgroundTransparency'
end

function setRecursiveTransparency(of, trans)
	coroutine.wrap(function()
		for _,v in pairs(getGuiRecursive(of)) do
			v[getTransparencyProperty(v)] = trans
		end
	end)
end

function tweenRecursiveTransparency(of, trans, chg)
	for _,v in pairs(getGuiRecursive(of)) do
		spawn(function()
			local tp = getTransparencyProperty(v)
			for i=v[tp], trans, chg do
				v[tp] = i
				services.step:wait()
			end
			v[tp] = trans
		end)
	end
end

-- << Create Intro >> -- 

local Intro = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Intro',Parent = gui})
local UIListLayout = create('UIListLayout', {Padding = UDim.new(0, 0), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Center, Name = 'UIListLayout', Parent = Intro })
local MainFrame = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.419531256, 0, 0.373831779, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 313, 0, 112),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=60,Name = 'MainFrame',Parent = Intro})
local Slider = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=63,Name = 'Slider',Parent = MainFrame})
create('ImageLabel',{Image='rbxassetid://2560659410',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.192808181, 0, 0.151451945, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 77, 0, 77),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=64,Name='Logo',Parent = Slider})
create('ImageLabel',{Image='rbxassetid://2560325910',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.382958382, 0, 0.347428471, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 132, 0, 33),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=64,Name='ImageLabel',Parent = Slider})
local Status = create('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Initializing Script',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.376568556, 0, 0.285714298, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 140, 0, 47),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=61,Name='Status',Parent = MainFrame})
for i,v in next, Slider:GetChildren() do 
	game:GetService("TweenService"):Create(v, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
end
wait(2)

spawn(function() wait(2)
	for i,v in next, Slider:GetChildren() do 
		game:GetService("TweenService"):Create(v, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
	end
	game:GetService("TweenService"):Create(Slider, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {BackgroundTransparency = 1}):Play()
	wait(.6)
	Intro:Destroy()
end)




-- << Window functionality >> --



local tabHolder = create('Frame', {
	Name = "FathomController";
	Size = UDim2.new(0, 0, 0, #TABS * 35);
	Position = UDim2.new(0, 10, .5, 0);
	AnchorPoint = Vector2.new(0, .5);
	BackgroundTransparency = 1;
	Parent = gui;
})

local Window = {}

function Window.new(properties)
	-- << Instance checker >> --

	for i,v in next, gui:GetChildren() do 
		if v.Name == properties.name then
			return "Function halted"
		end
	end

	-- << End of checker >> --
	local newWindow = create('Frame', {
		Size = UDim2.new(0, properties.width - 50, 0, properties.height - 50);
		ZIndex = 8;
		BorderSizePixel = 0;
		BackgroundColor3 = settings.mainColor;
		ClipsDescendants = true;
		Name = properties.name;
		Parent = gui;
	})
	newWindow.Position = (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)) + UDim2.new(0, 25, 0, 25);
	local nshad = createShadow(newWindow)
	nshad.Visible = false
	local top = create('TextButton', {
		Name = "Drag";
		Size = UDim2.new(1, 0, 0, 30);
		Position = UDim2.new(0, 31, 0, 0);
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		Font = Enum.Font.SourceSansLight;
		FontSize = Enum.FontSize.Size24;
		TextSize = 22;
		Text = properties.name;
		TextColor3 = settings.textColor;
		ZIndex = 8;
		Parent = newWindow;
	})
	local content = create('Frame',{
		Name = "Content";
		ZIndex = 8;
		Size = UDim2.new(1, 0, 0, properties.height - 30);
		Position = UDim2.new(0, 0, 0, 30);
		BackgroundColor3 = Color3.new(1, 1, 1);
		BackgroundTransparency = 1;
		Transparency = 1;
		Parent = newWindow;
		ClipsDescendants = true;
	})
	


	top.Changed:connect(function(ch)
		if ch == 'Position' then
			newWindow.Position = newWindow.Position + top.Position - UDim2.new(0, 31, 0, 0)       
			top.Position = UDim2.new(0, 31, 0, 0)
		end
	end)

	newWindow.Changed:connect(function(ch)
		if ch == 'AbsolutePosition'then
			if newWindow.AbsolutePosition.Y < 0 then
				newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,0))
			elseif newWindow.AbsolutePosition.Y > gui.AbsoluteSize.Y - 30 then
				newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,gui.AbsoluteSize.Y - 30))
			end
		end
	end)


	
	local icon = createIcon(properties.icon, {
		Name = "Icon";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, 3, 0, 3);
		ZIndex = 8;
		Parent = newWindow;
	})
	local close = createIcon('http://www.roblox.com/asset/?id=708205809', {
		Name = "Close";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(1, -27, 0, 3);
		ZIndex = 8;
		Parent = newWindow;
	}, true)
	local minimize = createIcon('http://www.roblox.com/asset/?id=708205677', {
		Name = "Minimize";
		Size = UDim2.new(0, 20, 0, 20);
		Position = UDim2.new(1, -50, 0, 5);
		ZIndex = 8;
		Parent = newWindow;
	}, true)

	local minimized = false


	close.MouseButton1Up:connect(function()
		--[[
		if properties.closed then
			properties.closed(newWindow)
		end
		]]

		nshad.Visible = false
		--newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), newWindow.Position - UDim2.new(0, 25, 0, 25), 'Out', 'Quart', .3, true)
		newWindow:TweenPosition(newWindow.Position - UDim2.new(0, 25, 0, 25), 'Out', 'Quart', .3, true)
		tweenRecursiveTransparency(newWindow, 1, .15)
		wait(.05)
		newWindow:ClearAllChildren()
		wait(.125)
		newWindow:Destroy()

	end)

	minimize.MouseButton1Up:connect(function()
		if minimized == false then
			newWindow:TweenSize(UDim2.new(0, newWindow.AbsoluteSize.X, 0, 30), "Out", "Quart", .3, true)
			minimized = true
		else
			minimized = false
			newWindow:TweenSize(UDim2.new(0, newWindow.AbsoluteSize.X, 0, properties.height), "Out", "Quart", .3, true)
		end
	end)

	
	--[[ Gui Snapping ]]--

	local function snapGuis(snapgui,reach,collides)
		local function returnLRTB(sg)
			local left = sg.AbsolutePosition.X
			local right = sg.AbsolutePosition.X+sg.AbsoluteSize.X
			local top = sg.AbsolutePosition.Y
			local bottom = sg.AbsolutePosition.Y+sg.AbsoluteSize.Y
			return {left=left,right=right,top=top,bottom=bottom}
		end
		snapgui.Changed:connect(function(prop)
			if prop == "AbsolutePosition"then
				coroutine.wrap(function()
					if collides ~= snapgui and collides.AbsolutePosition ~= snapgui.AbsolutePosition and collides.Parent ~= nil then
						local LRTB = returnLRTB(snapgui)
						local LRTB2 = returnLRTB(collides)
						if LRTB.left <= LRTB2.right + reach and LRTB.left >= LRTB2.right - reach then
							snapgui.Position = UDim2.new(0,LRTB2.right,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.right <= LRTB2.left + reach and LRTB.right >= LRTB2.left - reach then
							snapgui.Position = UDim2.new(0,LRTB2.left-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.left <= LRTB2.left + reach and LRTB.left >= LRTB2.left - reach then
							snapgui.Position = UDim2.new(0,LRTB2.left,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.right <= LRTB2.right + reach and LRTB.right >= LRTB2.right - reach then
							snapgui.Position = UDim2.new(0,LRTB2.right-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
						end
						if LRTB.top <= LRTB2.bottom + reach and LRTB.top >= LRTB2.bottom - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom)
						end
						if LRTB.bottom <= LRTB2.top + reach and LRTB.bottom >= LRTB2.top - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top-snapgui.AbsoluteSize.Y)
						end
						if LRTB.top <= LRTB2.top + reach and LRTB.top >= LRTB2.top - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top)
						end
						if LRTB.bottom <= LRTB2.bottom + reach and LRTB.bottom >= LRTB2.bottom - reach then
							snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom-snapgui.AbsoluteSize.Y)
						end
					end
				end)()
			end
		end)
	end

	-- << Checks for Guis already there to Snap to >> --

	for i,v in pairs(gui:children())do
		if v ~= tabHolder then
			spawn(function()
			snapGuis(newWindow,5,v)
			end)
		end
	end
	
	-- << Snap to Gui when Child is Added >> --
	
	gui.ChildAdded:connect(function(inst)
		if inst ~= tabHolder then
			spawn(function()
			snapGuis(newWindow,5,inst)
			end)
		end
	end)

	setRecursiveTransparency(newWindow, 1)
	newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)), 'Out', 'Quart', .3, true)

	local UserInputService = game:GetService("UserInputService")

	local gui = top

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		newWindow.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)  -- UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = newWindow.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	tweenRecursiveTransparency(newWindow, 0, -.15)
	coroutine.wrap(function()
		nshad.Visible = true
		wait(.5)
	end)()
	return newWindow
end

-- << Main framework >> --

local atbts = {}

for i,v in pairs(TABS) do
	local nbt = create('TextButton', {
		Name = v.Name;
		Size = UDim2.new(0, 150, 0, 30);
		Position = UDim2.new(0, -165, 0, (i - 1) * 35);
		BorderSizePixel = 0;
		ZIndex = 8;
		BackgroundColor3 = settings.mainColor;
		Parent = tabHolder;
		Text = "";
		TextColor3 = Color3.new(1,1,1)
	})

	nbt.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and enabled then
			nbt:TweenPosition(UDim2.new(0, 10, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)
		end
	end)
	nbt.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and enabled then
			nbt:TweenPosition(UDim2.new(0, 0, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)
		end
	end)

	--nbt.MouseEnter:connect(function()nbt:TweenPosition(UDim2.new(0, 10, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end)
	--nbt.MouseLeave:connect(function()nbt:TweenPosition(UDim2.new(0, 0, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end)

	table.insert(atbts, nbt)

	local icon = createIcon(v.Icon, {
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, 3, 0, 3);
		ZIndex = 8;
		Parent = nbt;
	})

	local ntx = create('TextLabel', {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 31, 0, 0);
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = Enum.Font.SourceSansLight;
		FontSize = Enum.FontSize.Size24;
		TextSize = 22;
		ZIndex = 8;
		TextColor3 = settings.textColor;
		Text = v.Name;
		Parent = nbt;
	})

	materializebutton(nbt)
	createSmallShadow(nbt)
end

-- << Notify >> --

local MsgContainer = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.949999988, -420, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0.0500000007, 420, 1, -20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Container',Parent = gui})
create('UIListLayout', {Padding = UDim.new(0, 15), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Bottom, Name = 'UIListLayout', Parent = MsgContainer })

function notify(icon,title,subtitle,time)
	spawn(function()
		local parent = MsgContainer
		local closeactivate = false
		local Noti = create('Frame',{Style=Enum.FrameStyle.Custom,LayoutOrder=1,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 390, 0, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=60,Name = 'Noti',Parent = parent})
		local Shadow = create('ImageLabel',{Image='rbxassetid://186491278',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(50, 50, 50, 50),Active=false,AnchorPoint=Vector2.new(0.5, 0.479999989),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 195, 0, 49),Rotation=0,Selectable=false,Size=UDim2.new(1, 31, 1, 32),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=59,Name='Shadow',Parent = Noti})
		local Close = create('ImageButton',{Image='rbxassetid://2549094740',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -30, 0, 13),Rotation=0,Selectable=true,Size=UDim2.new(0, 15, 0, 15),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=63,Name='Close',Parent = Noti})
		local Icon = create('ImageLabel',{Image=icon[1],ImageColor3=Color3.new(0.533333, 0.65098, 0.658824),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 18, 0, 14),Rotation=0,Selectable=false,Size=UDim2.new(0, 73, 0, 73),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=61,Name='Icon',Parent = Noti})
		local Subtitle = create('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text=subtitle,TextColor3=Color3.new(0.239216, 0.239216, 0.239216),TextScaled=false,TextSize=19,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 105, 0, 45),Rotation=0,Selectable=false,Size=UDim2.new(0, 270, 0, 17),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=62,Name='Subtitle',Parent = Noti})
		local Title = create('TextLabel',{Font=Enum.Font.SourceSansSemibold,FontSize=Enum.FontSize.Size24,Text=title,TextColor3=Color3.new(0.239216, 0.239216, 0.239216),TextScaled=false,TextSize=21,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=1,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Bottom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 105, 0, 10),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 27),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=62,Name='Title',Parent = Noti})
		if icon[2] ~= nil then
			Icon.ImageColor3 = icon[2]
		end
		for i,v in next, parent:GetChildren() do
			if v:IsA("GuiObject") and (not Noti) then
				v.LayoutOrder = v.LayoutOrder + 1;
			end;
		end;
		Noti.InputBegan:Connect(function(Input)
			if closeactivate and Input.UserInputType == Enum.UserInputType.MouseMovement then
				game:GetService("TweenService"):Create(Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
			end
		end)
		Noti.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				game:GetService("TweenService"):Create(Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
			end
		end)
		Close.MouseButton1Up:Connect(function()
			if closeactivate then
				closeactivate = false
				Noti:TweenSize(UDim2.new(0,390,0,0), "Out", "Quart", .7, true);
				game:GetService("TweenService"):Create(Close, TweenInfo.new(.01,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()		
				game:GetService("TweenService"):Create(Shadow, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
				game:GetService("TweenService"):Create(Subtitle, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 1}):Play()
				game:GetService("TweenService"):Create(Title, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 1}):Play()
				game:GetService("TweenService"):Create(Icon, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
			end
		end)
		Noti:GetPropertyChangedSignal("Size"):Connect(function()
			Shadow.Position = UDim2.new(0, Noti.Size.X.Offset/2, 0, Noti.Size.Y.Offset/2.05);
		end);
		local textsize = game:GetService("TextService"):GetTextSize(subtitle, 19, Enum.Font.SourceSans, Vector2.new(270,2147483583)).Y;
		local mainsize = math.max(100, textsize + 63)
		Subtitle.Size = UDim2.new(0,270,0,textsize);
		Noti:TweenSize(UDim2.new(0,390,0,mainsize), "Out", "Quart", .7, true);
		wait(.6)
		game:GetService("TweenService"):Create(Noti, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {BackgroundTransparency = 0}):Play()
		game:GetService("TweenService"):Create(Shadow, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
		game:GetService("TweenService"):Create(Subtitle, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 0}):Play()
		game:GetService("TweenService"):Create(Title, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 0}):Play()
		game:GetService("TweenService"):Create(Icon, TweenInfo.new(.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
		wait(.3)
		closeactivate = true
		if time ~= nil then
			wait(time)
		else
			wait(4)
		end
		closeactivate = false
		Noti:TweenSize(UDim2.new(0,390,0,0), "Out", "Quart", .7, true);
		
		game:GetService("TweenService"):Create(Close, TweenInfo.new(.01,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
		game:GetService("TweenService"):Create(Shadow, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
		game:GetService("TweenService"):Create(Subtitle, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 1}):Play()
		game:GetService("TweenService"):Create(Title, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {TextTransparency = 1}):Play()
		game:GetService("TweenService"):Create(Icon, TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
		wait(.3)
		game:GetService("TweenService"):Create(Noti, TweenInfo.new(.33,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {BackgroundTransparency = 1}):Play()
	end)
end

-- << Make Things More Creative :D >> --

function toggleanim(parent,func)
	local pos = UDim2.new(0,parent.Size.X.Offset/2,0,parent.Size.Y.Offset/2)
	local circleanim = create('ImageLabel', {
		Name = "Circleanim";
		Size = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/whiteCircle.png";
		ImageTransparency = .7;
		Position = pos;
		ZIndex = 8;
		Rotation = 0;
		Parent = parent;
	})
	local enabled = false
	parent.MouseButton1Up:Connect(function()
		if enabled then
			circleanim.ImageTransparency = .7
			enabled = not enabled
			func(enabled)
		else
			circleanim.ImageTransparency = .5
			enabled = not enabled
			func(enabled)
		end
	end)
	parent.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			circleanim:TweenSizeAndPosition(UDim2.new(1,0,1,0), UDim2.new(0,0,0,0), "Out", "Linear", .1, true);
		end
	end)
	parent.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement and (not enabled) then
			circleanim:TweenSizeAndPosition(UDim2.new(0,0,0,0), pos, "Out", "Linear", .1, true);
		end
	end)
end

-- << Material Checkbox (oh yez) >> --

function createcheckbox(parent,oncolor,offcolor,respone_function,mode)
	local selectcolor = oncolor or Color3.fromRGB(0,0,0);local notselectedcolor = offcolor or Color3.new(1,1,1)
	local CheckBoxImage = create('ImageButton',{Image='rbxassetid://1721163816',ZIndex=65,ImageColor3=selectcolor,ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -35, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 26, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,Name='CheckBoxImage',Parent = parent})
	local BackgroundFrame = create('Frame',{Style=Enum.FrameStyle.Custom,ZIndex=63,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=selectcolor,BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.150000006, 0, 0.150000006, 0),Rotation=0,Selectable=false,Size=UDim2.new(0.699999988, 0, 0.699999988, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,Name = 'BackgroundFrame',Parent = CheckBoxImage})
	local CheckFrame = create('Frame',{Style=Enum.FrameStyle.Custom,ZIndex=64,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=notselectedcolor,BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 4, 0, 5),Rotation=0,Selectable=false,Size=UDim2.new(0, 0, 0.600000024, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,Name = 'CheckFrame',Parent = CheckBoxImage})
	local UncheckedFrame = create('Frame',{Style=Enum.FrameStyle.Custom,ZIndex=65,Active=false,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=notselectedcolor,BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5, 0, 0.5, 0),Rotation=0,Selectable=false,Size=UDim2.new(0.600000024, 0, 0.600000024, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,Name = 'UncheckedFrame',Parent = CheckBoxImage})
	local checked = false
	if mode == true then
		checked = true
		CheckFrame.Size = UDim2.new(0.7, 0,0.6, 0)
		CheckFrame.Position = UDim2.new(0, 4,0, 5)
		UncheckedFrame.BackgroundTransparency = 1
	end

	-- << If not clicked >> --

	CheckBoxImage.MouseButton1Down:Connect(function()
		if checked then
			CheckFrame:TweenSize(UDim2.new(0, 0,0.6, 0),"Out","Quad",0.1)
		else
			game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
		end
	end)
	CheckBoxImage.MouseButton1Up:Connect(function()
		if checked then
			game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
			checked = false
			respone_function(checked)
		else
			CheckFrame:TweenSizeAndPosition(UDim2.new(0.7, 0,0.6, 0),UDim2.new(0, 4,0, 5),"Out","Quad",0.2)
			checked = true
			respone_function(checked)
		end
	end)

	-- << When Clicked/not clicked >> --

	if parent.ClassName =="TextButton" or parent.ClassName == "ImageButton" then 
		parent.AutoButtonColor = false
		parent.MouseButton1Up:Connect(function()
			if checked then
				game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
				checked = false
				respone_function(checked)
			else
				CheckFrame:TweenSizeAndPosition(UDim2.new(0.7, 0,0.6, 0),UDim2.new(0, 4,0, 5),"Out","Quad",0.2)
				checked = true
				respone_function(checked)
			end
		end)
		parent.MouseButton1Down:Connect(function()
			if checked then
				CheckFrame:TweenSize(UDim2.new(0, 0,0.6, 0),"Out","Quad",0.1)
			else
				game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
			end
		end)
		parent.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				if checked and CheckFrame.Size == UDim2.new(0, 0, 1, 0) then
					CheckFrame:TweenSize(UDim2.new(1, 0, 1, 0),"Out","Quad",0.1)
				elseif checked == false and UncheckedFrame.BackgroundTransparency > 0 then
					game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
				end
			end
		end)
	end
	
	CheckBoxImage.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			if checked and CheckFrame.Size == UDim2.new(0, 0, 1, 0) then
				CheckFrame:TweenSize(UDim2.new(1, 0, 1, 0),"Out","Quad",0.1)
			elseif checked == false and UncheckedFrame.BackgroundTransparency > 0 then
				game:GetService("TweenService"):Create(UncheckedFrame, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
			end
		end
	end)


end

-- << Toggler >> --

bindToKey(settings.toggleKey, function() 
	enabled = not enabled
	for i,v in pairs(gui:children())do
		if v ~= tabHolder and v ~= MsgContainer then
			v.Visible = enabled
		end
	end
	if enabled and settings.settings.Blur then
		blurLevel = enabled and settings.blurLevel or 0
	elseif (not enabled) then
		blurLevel = enabled and settings.blurLevel or 0
	end
	
	for _,v in pairs(atbts) do
		if v.Parent ~= nil then
			v:TweenPosition(UDim2.new(0, enabled and 0 or -165, 0, v.Position.Y.Offset), enabled and 'Out' or 'In', 'Quart', .3, true)
			services.step:wait()
		end
	end
end)

-- << Audio Controller >> --

function playMusic(id)
    local audio = Instance.new("Sound")
    audio.Parent = game
	audio.Name = "AudioController"
	audio.Volume = 10
	audio.SoundId = "rbxassetid://"..id
	audio.RobloxLocked = true;
	audio.Loaded:connect(function()
		audio:Play()
	end)
	return audio
end

-- << Tab Functionality >> --

tabHolder.Browser.MouseButton1Up:Connect(function()

	-- << Variables >> --
	local window = Window.new({width = 300, height = 350, name='Fathom Browser', icon='rbxassetid://2580611153'})
	local Content = window.Content

	-- << Instances >> --
	local Search = create('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,MultiLine=false,Text='Search Online',TextColor3=Color3.new(1, 1, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Bottom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.025, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0.95, 0,0.1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Search',Parent = Content})
	local ScriptsHolder = create('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-middle.png', ScrollBarImageTransparency=0.7,CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 2, 0),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=6,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-middle.png',Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 0, 0.137500003, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0.862500012, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='ScriptsHolder',Parent = Content})
	local ScriptExecutor = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0500000007, 0, 0.0425330997, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 270, 0, 81),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'ScriptExecutor',Parent = ScriptsHolder})
	local Title = create('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='execute gay script',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0481481478, 0, 0.0800001323, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 243, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Title',Parent = ScriptExecutor})
	local Execute = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Execute',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=17,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.552941, 0.552941, 0.552941),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0439999998, 0, 1, -33),Rotation=0,Selectable=true,Size=UDim2.new(0, 151, 0, 31),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Execute',Parent = ScriptExecutor})
	local More = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='More Options',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=17,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.282353, 0.282353, 0.282353),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.637000024, 0, 1, -33),Rotation=0,Selectable=true,Size=UDim2.new(0, 86, 0, 31),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='More',Parent = ScriptExecutor})
	local Sensor = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -22, 0.137999997, 0),Rotation=0,Selectable=false,Size=UDim2.new(-0.260000199, 100, 0.863000035, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Sensor',Parent = Content})
	local Buffer = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.137999997, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0.862999976, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Buffer',Parent = Content})
	local UIListLayout = create('UIListLayout', {Padding = UDim.new(0, 0), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Center, Name = 'UIListLayout', Parent = Buffer })
	local Settings = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Settings',Parent = Content})
	local Title = create('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size28,Text='Engine Customizations',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=26,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.166666672, 0, 0.0249999985, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 36),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Title',Parent = Settings})
	local Ecosia = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Ecosia',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.196666658, 0, 0.199184805, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 181, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Ecosia',Parent = Settings})
	local Ask = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Ask.com',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.196666658, 0, 0.311684787, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 181, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Google',Parent = Settings})
	local Bing = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Bing',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.196999997, 0, 0, 135),Rotation=0,Selectable=true,Size=UDim2.new(0, 181, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Bing',Parent = Settings})
	local TextLabel = create('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size14,Text='Powered by Peta',TextColor3=Color3.new(0.729412, 0.729412, 0.729412),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.00999999978, 0, 0.950703025, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 59, 0, 15),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='TextLabel',Parent = Settings})
	local MetaInfo = create('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'MetaInfo',Parent = Content})
	local MetaTitle = create('TextLabel',{Font=Enum.Font.SourceSansLight,TextSize=23,Text='Script Name Here',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=25,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0266666673, 0, 0.046875, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 282, 0, 84),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Title',Parent = MetaInfo})
	local Add = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Add to Library',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.166666672, 0, 0.340624988, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 41),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Add',Parent = MetaInfo})
	create('ImageLabel',{Image='rbxassetid://728745585',ImageColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0.0979999974, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 33, 0, 33),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='ICN',Parent = Add})
	local Download = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Download',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.166666672, 0, 0.484375, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 41),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Download',Parent = MetaInfo})
	create('ImageLabel',{Image='rbxassetid://1669787447',ImageColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0.0979999974, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 33, 0, 33),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='ICN',Parent = Download})
	local Close = create('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Close',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=20,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.166999996, 0, 0.634000003, -1),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 41),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Close',Parent = MetaInfo})
	local SettingsToggle = createIcon('http://www.roblox.com/asset/?id=898100298', {
		Name = "Settings";
		Size = UDim2.new(0, 20, 0, 20);
		Position = UDim2.new(1, -75, 0, 5);
		ZIndex = 8;
		Rotation = 0;
		Parent = window;
	}, true)

	-- << Functions >> --

	materializet(Search, Color3.new(1,1,1), "Search Online")
	createcheckbox(Ecosia, nil, nil, function(arg) settings.searchSettings.Ecosia = arg end, settings.searchSettings.Ecosia)
	createcheckbox(Ask, nil, nil, function(arg) settings.searchSettings.Ask = arg end, settings.searchSettings.Ask)
	createcheckbox(Bing, nil, nil, function(arg) settings.searchSettings.Bing = arg end, settings.searchSettings.Bing)
	toggleanim(SettingsToggle, function(arg)
		if arg == true then
			Settings:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
			for i,v in next, ScriptsHolder:GetChildren() do
				if v:IsA("GuiObject") then
					v:TweenPosition(UDim2.new(-1,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
					wait(0.05)
				end;
			end;
		else
			Settings:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
			for i,v in next, ScriptsHolder:GetChildren() do
				if v:IsA("GuiObject") then
					v:TweenPosition(UDim2.new(0.05,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
					wait(0.05)
				end;
			end;
		end
	end)

	-- << Copy Instance >> --

	local ScriptTab = ScriptExecutor:Clone()
	ScriptExecutor:Destroy()

	local MetaFrame = MetaInfo:Clone()
	MetaInfo:Destroy()

	-- << Main Functions >> --

	Sensor.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(ScriptsHolder, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ScrollBarImageTransparency = 0}):Play()
		end
	end)

	Sensor.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(ScriptsHolder, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ScrollBarImageTransparency = 0.7}):Play()
		end
	end)

	Search.FocusLost:Connect(function(e)
		local queries = {}
		if e then
			for i,v in next, ScriptsHolder:GetChildren() do
				if v:IsA("GuiObject") then
					v:TweenPosition(UDim2.new(-1,0,0,v.Position.Y.Offset), "In", "Quart", .2, true);
					wait(.05)
				end;
			end;
			for i,v in next, ScriptsHolder:GetChildren() do
				if v:IsA("GuiObject") then
					v:Destroy()
				end;
			end;
			wait(.3)
			if settings.searchSettings.Bing then
				local baseurl = game:HttpGet("https://www.bing.com/search?q=site:pastebin.com%20"..game:GetService("HttpService"):UrlEncode(Search.Text), true)
				local filter = baseurl:gsub("<style type=\"text/css\">%S+</style>", "")
				local InitTime = tick();
				for m in string.gmatch(filter, [[<a href="https://pastebin.com/%S+" h="%S+">.-</a>]]) do
					table.insert(queries, {remove_whitespace(remove_tags(m:match("<a .+>.+</a>"))), m:match("<a.-href=[\'\"](%S*)[\"\'].->.-</a>"), "Bing Engine"})
					game:GetService("RunService").RenderStepped:wait()
				end
			end
			if settings.searchSettings.Ecosia then
				local baseurl =	game:HttpGetAsync("https://www.ecosia.org/search?p=1&q=site:pastebin.com+roblox+"..game:GetService("HttpService"):UrlEncode(Search.Text))
    			for m_and_m_wot in string.gmatch(baseurl,[[<a class="result%-title js%-result%-title" href="https://pastebin.com/%S+">.-</a>]]) do
					local url = m_and_m_wot:match("<a.-href=[\'\"](%S*)[\"\'].->.-</a>")
					local title = remove_whitespace(remove_tags(m_and_m_wot:match("<a .->(.-)</a>")))
					if title ~= url and url:find("https://pastebin.com") then
						table.insert(queries, {title,url,"Ecosia Engine"})
					end
					game:GetService("RunService").RenderStepped:wait()
				end
			end
			if settings.searchSettings.Ask then
				local baseurl = game:HttpGetAsync("https://www.ask.com/web?q=site:pastebin.com+"..game:GetService("HttpService"):UrlEncode(Search.Text).."&page=1")
				for m_and_m_wot in string.gmatch(baseurl,[[<a.-class="PartialSearchResults%-item%-title%-link result%-link".-target="_blank" href=[\'\"]https://pastebin.com/%S+[\"\'].->.-</a>]]) do
					local url = m_and_m_wot:match("<a.-href=[\'\"](%S*)[\"\'].->.-</a>")
					local title = remove_whitespace(remove_tags(m_and_m_wot:match("<a .->(.-)</a>")))
					if not title:find("Ask.com") then
						table.insert(queries, {title, url, "Ask Engine"})
					end
					game:GetService("RunService").RenderStepped:wait()
				end
			end

			wait(.2)

			if #queries > 0 then
				for i,v in next, queries do

					if v[2]:sub(1,23) ~= "https://pastebin.com/u/" then   -- << Check if it is a user profile or not

						-- << Create the instance >> --
						local position = UDim2.new(-1,0,0,#ScriptsHolder:GetChildren()*81+#ScriptsHolder:GetChildren()*2)
						local query = ScriptTab:Clone()
						query.Parent = ScriptsHolder
						query.Position = position
						query.Title.Text = v[1]

						-- << Decorate >> --
					
						materializebutton(query.Execute)
						materializebutton(query.More)

						-- << Functions >> --

						query.Execute.MouseButton1Up:Connect(function()
							loadstring(game:HttpGetAsync("https://pastebin.com/raw/"..string.sub(v[2], 22)))()
						end)

						query.More.MouseButton1Up:Connect(function()
							spawn(function()
								for i,v in next, ScriptsHolder:GetChildren() do
									if v:IsA("GuiObject") then
										v:TweenPosition(UDim2.new(-1,0,0,v.Position.Y.Offset), "In", "Quart", .2, true);
									end;
								end;
							end)

							wait(.5)

							local NewFrame = MetaFrame:Clone()

							NewFrame.Parent = Content

							NewFrame:TweenPosition(UDim2.new(0,0,0,0),"Out","Quart",.2,true);

							NewFrame.Title.Text = query.Title.Text.." - ".."pastebin.com/"..string.sub(v[2], 22)

							materializebutton(NewFrame.Add)
							materializebutton(NewFrame.Close)
							materializebutton(NewFrame.Download)
							
							NewFrame.Add.MouseButton1Up:Connect(function()
								addScript(query.Title.Text, "https://pastebin.com/raw/"..string.sub(v[2], 22), "link")
								notify({"rbxassetid://1378446989", Color3.new(0,0,0)}, "Script Added", "Script \""..query.Title.Text.."\" has been saved in your library.");
								NewFrame:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.2,true);
								wait(.22)
								NewFrame:Destroy()
								for i,v in next, ScriptsHolder:GetChildren() do
									if v:IsA("GuiObject") then
										v:TweenPosition(UDim2.new(0.05,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
										wait(0.05)
									end;
								end;
							end)

							NewFrame.Download.MouseButton1Up:Connect(function()
								if writefile then
									function filtercharacters(str)
										local vertical = str:gsub("|", "")
										local heck = vertical:gsub(">", "")
										local heck2 = heck:gsub("<", "")
										local quote = heck2:gsub("\"", "")
										local question = quote:gsub("?", "")
										local asterick = question:gsub("*", "")
										local colon = asterick:gsub(":","")
										local frontslash = colon:gsub("\\", "")
										return frontslash:gsub("/", "")
									end
									local succ, fail = pcall(writefile, filtercharacters(query.Title.Text)..".lua", game:HttpGetAsync("https://pastebin.com/raw/"..string.sub(v[2], 22)))
									if succ then
										notify({"rbxassetid://1669787447", Color3.new(0,0,0)}, "Script Downloaded", "Script \""..query.Title.Text.."\" has been saved in your exploit's workspace folder");
									else
										notify({"rbxassetid://1375864607", Color3.new(0,0,0)}, "Couldn't download script", "Write function returned \""..fail.."\"\nContact Syntax if you have this error.")
									end
									NewFrame:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.2,true);
									wait(.22)
									NewFrame:Destroy()
									for i,v in next, ScriptsHolder:GetChildren() do
										if v:IsA("GuiObject") then
											v:TweenPosition(UDim2.new(0.05,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
											wait(0.05)
										end;
									end;
								else
									notify({"rbxassetid://1375879624", Color3.new(0,0,0)}, "Error", "Couldn't resolve function, please try again.");
									NewFrame:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.2,true);
									wait(.22)
									NewFrame:Destroy()
									for i,v in next, ScriptsHolder:GetChildren() do
										if v:IsA("GuiObject") then
											v:TweenPosition(UDim2.new(0.05,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
											wait(0.05)
										end;
									end;
								end
							end)

							NewFrame.Close.MouseButton1Up:Connect(function()
								NewFrame:TweenPosition(UDim2.new(1,0,0,0),"Out","Quart",.2,true);
								wait(.22)
								NewFrame:Destroy()
								for i,v in next, ScriptsHolder:GetChildren() do
									if v:IsA("GuiObject") then
										v:TweenPosition(UDim2.new(0.05,0,0,v.Position.Y.Offset), "Out", "Quart", .2, true);
										wait(0.05)
									end;
								end;
							end)

						end)
						

						-- << Make it visible! >> --

						query:TweenPosition(UDim2.new(0.05, 0,0, query.Position.Y.Offset), "Out", "Quart", .3, true);

						wait(0.05)

					end
				end
				queries = {}
				ScriptsHolder.CanvasSize = UDim2.new(0,0,0,#ScriptsHolder:GetChildren()*81+#ScriptsHolder:GetChildren()*2)
			else
				-- << Debugging >> --
				notify({"rbxassetid://1375864607", Color3.new(0,0,0)}, "No Queries", "Enable an engine in settings or refer to a developer if this was an unintentional error with the engines.")
				queries = {}
			end
		end
	end)

end)

-- << Add To Library Function >> --

addScript = function(name, data, type)
	if type == "link" then
		table.insert(settings.scripts, {name:gsub("- Pastebin.com", ""), "link", data});
	else
		table.insert(settings.scripts, {name, "file", data})
	end
end

-- << Local Library >> --

tabHolder["Local Library"].MouseButton1Up:Connect(function()
	local window = Window.new({width = 457, height = 306, name='Local Library', icon='rbxassetid://728745585'})

	local Content = window.Content

	-- << Instances >> --

	local Search = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,MultiLine=false,Text='Search Your Library',TextColor3=Color3.new(1, 1, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Bottom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0250000004, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0.949999988, 0, 0.100000001, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Search',Parent = Content})
	local Viewer = CreateInstance('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-middle.png',CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 2, 0),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=6,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-middle.png',Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 0, 0.137500048, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0,0.863, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Viewer',Parent = Content})
	local UIGridLayout = CreateInstance('UIGridLayout', {CellPadding = UDim2.new(0, 5, 0, 5), CellSize = UDim2.new(0, 223, 0, 100), FillDirectionMaxCells = 0, StartCorner=Enum.StartCorner.TopLeft, FillDirection=Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIGridLayout', Parent = Viewer })
	local Lib = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 999, 0, 100),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Lib',Parent = Viewer})
	local Title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Some Script',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 65),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Title',Parent = Lib})
	local Type = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Web App',TextColor3=Color3.new(0.27451, 0.27451, 0.27451),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0.649999976, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, -0.300000012, 65),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Type',Parent = Lib})
	local Options = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Options',Parent = Lib})
	local Close = CreateInstance('ImageButton',{Image='rbxassetid://2549094740',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=1,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.933000028, -3, 0, 3),Rotation=0,Selectable=false,Size=UDim2.new(0, 15, 0, 15),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Close',Parent = Options})
	local Execute = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Execute',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=17,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.423529, 0.423529, 0.423529),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.147982061, 0, 0.127499998, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 157, 0, 39),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Execute',Parent = Options})
	local Delete = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Delete',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=17,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.147982061, 0, 0.517499983, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 157, 0, 30),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Delete',Parent = Options})
	local Sensor = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 7, 0.137999997, 0),Rotation=0,Selectable=false,Size=UDim2.new(-0.260000199, 100, 0.863000035, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Sensor',Parent = Content})
	local Add = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name = 'Add',Parent = Content})
	CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size36,Text='Import New File',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157),TextScaled=false,TextSize=34,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0306345727, 0, 0.0398550704, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='stop viewing instances',Parent = Add})
	local SType = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Local File',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.118161917, 0, 0.268115938, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='SType',Parent = Add})
	local Data = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,MultiLine=false,Text='Link Or File Name',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=21,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Bottom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0309999995, 0, 0.5, 30),Rotation=0,Selectable=true,Size=UDim2.new(0, 287, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Data',Parent = Add})
	local Name = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,MultiLine=false,Text='Please Specify A Name',TextColor3=Color3.new(0.00392157, 0.00392157, 0.00392157), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=21,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Bottom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0309999995, 0, 0.409000009, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 287, 0, 45),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Name',Parent = Add})
	local Submit = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Submit',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.678336978, 0, 0.836956501, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 139, 0, 36),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Submit',Parent = Add})
	local AddToggle = createIcon('http://www.roblox.com/asset/?id=1378446987', {
		Name = "Settings";
		Size = UDim2.new(0, 20, 0, 20);
		Position = UDim2.new(1, -75, 0, 5);
		ZIndex = 8;
		Rotation = 0;
		Parent = window;
	}, true)

	-- << Reclone >> --

	local datasample = Lib:Clone()
	Lib:Destroy()

	-- << Functions >> --
	function createdatasample(name, type, data1)
		if type == "link" then
			if settings.settings.FathomSmartScreen then
				local succ,fail = pcall(game.HttpGetAsync, game, data1)
				if (not succ) then
					notify({"rbxassetid://1375864607", Color3.new(0,0,0)}, "Invalid URL for script", "Fathom SmartScreen returned \""..fail.."\" for \""..name.."\"");
				else
					local data = datasample:Clone()
					local open = false
					data.Parent = Viewer
					data.Title.Text = name
					data.Type.Text = "Web App"
					materializebutton(data.Options.Delete)
					materializebutton(data.Options.Execute)
					data.Title.InputBegan:connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 and (not open) then -- << Did not open just in case because Roblox doesn't seem to focus on certain buttons when they are on each other
							open = not open
							data.Options:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
						end
					end)

					data.Options.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseMovement then
							game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
						end
					end)

					data.Options.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseMovement then
							game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
						end
					end)

					data.Options.Close.MouseButton1Up:Connect(function()
						open = not open
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
					end)

					data.Options.Execute.MouseButton1Up:Connect(function()
						if data.Options.Position.Y.Scale == 0 then
							open = not open
							data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
							loadstring(game:HttpGetAsync(data1,0,true))()
						end
					end)

					data.Options.Delete.MouseButton1Up:Connect(function()
						if data.Options.Position.Y.Scale == 0 then
							open = not open
							data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
							for i,v in next, settings.scripts do
								if v[1] == name then
									table.remove(settings.scripts, i)
									data:Destroy()
									notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Deleted Script", "Script \""..name.."\" has been deleted from your library.")
									return
								end
							end
							
						end
					end)

				end
			else

				local data = datasample:Clone()
				local open = false
				data.Parent = Viewer
				data.Title.Text = name
				data.Type.Text = "Web App"
				materializebutton(data.Options.Delete)
				materializebutton(data.Options.Execute)
				data.Title.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and (not open) then -- << Did not open just in case because Roblox doesn't seem to focus on certain buttons when they are stacked
						open = true
						data.Options:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
					end
				end)
				data.Options.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement then
						game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
					end
				end)

				data.Options.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement then
						game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
					end
				end)

				data.Options.Close.MouseButton1Up:Connect(function()
					open = false
					data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
				end)

				data.Options.Execute.MouseButton1Up:Connect(function()
					if data.Options.Position.Y.Scale == 0 then
						open = false
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
						loadstring(game:HttpGetAsync(data1,0,true))()
					end
				end)

				data.Options.Delete.MouseButton1Up:Connect(function()
					if data.Options.Position.Y.Scale == 0 then
						open = not open
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
						for i,v in next, settings.scripts do
							if v[1] == name then
								table.remove(settings.scripts, i)
								data:Destroy()
								notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Deleted Script", "Script \""..name.."\" has been deleted from your library.")
								return
							end
						end
						
					end
				end)

			end

		else
			if settings.settings.FathomSmartScreen then
				local succ, fail = pcall(readfile, data1)
				if (not succ) then
					notify({"rbxassetid://1375864607", Color3.new(0,0,0)}, "Invalid arguments for script", "Fathom SmartScreen returned\""..fail.."\" for \""..name.."\"");
				else
					local data = datasample:Clone()
					local open = false
					data.Parent = Viewer
					data.Title.Text = name
					data.Type.Text = "Local App"
					materializebutton(data.Options.Delete)
					materializebutton(data.Options.Execute)
					data.Title.InputBegan:connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 and (not open) then -- << Did not open just in case because Roblox doesn't seem to focus on certain buttons when they are on each other
							open = true
							data.Options:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
						end
					end)

					data.Options.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseMovement then
							game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
						end
					end)

					data.Options.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseMovement then
							game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
						end
					end)

					data.Options.Close.MouseButton1Up:Connect(function()
						open = false
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
					end)

					data.Options.Execute.MouseButton1Up:Connect(function()
						if data.Options.Position.Y.Scale == 0 then
							open = false
							data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
							loadstring(readfile(data1))()
						end
					end)

					data.Options.Delete.MouseButton1Up:Connect(function()
						if data.Options.Position.Y.Scale == 0 then
							open = false
							data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
							for i,v in next, settings.scripts do
								if v[1] == name then
									table.remove(settings.scripts, i)
									data:Destroy()
									notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Deleted Script", "Script \""..name.."\" has been deleted from your library.")
									return
								end
							end
							
						end
					end)

				end
			else
				local data = datasample:Clone()
				local open = false
				data.Parent = Viewer
				data.Title.Text = name
				data.Type.Text = "Local App"
				materializebutton(data.Options.Delete)
				materializebutton(data.Options.Execute)
				data.Title.InputBegan:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and (not open) then -- << Did not open just in case because Roblox doesn't seem to focus on certain buttons when they are stacked
						open = true
						data.Options:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
					end
				end)
				data.Options.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement then
						game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 0}):Play()
					end
				end)

				data.Options.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseMovement then
						game:GetService("TweenService"):Create(data.Options.Close, TweenInfo.new(.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ImageTransparency = 1}):Play()
					end
				end)

				data.Options.Close.MouseButton1Up:Connect(function()
					open = false
					data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
				end)

				data.Options.Execute.MouseButton1Up:Connect(function()
					if data.Options.Position.Y.Scale == 0 then
						open = false
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
						loadstring(readfile(data1))()
					end
				end)

				data.Options.Delete.MouseButton1Up:Connect(function()
					if data.Options.Position.Y.Scale == 0 then
						open = false
						data.Options:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
						for i,v in next, settings.scripts do
							if v[1] == name then
								table.remove(settings.scripts, i)
								data:Destroy()
								notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Deleted Script", "Script \""..name.."\" has been deleted from your library.")
								return
							end
						end
						
					end
				end)
			end
		end
	end

	local file = false

	materializet(Search)
	materializebutton(Submit)
	materializet(Name)
	materializet(Data)
	createcheckbox(SType, nil, nil, function(arg)
		file = arg
	end, false)

	toggleanim(AddToggle, function(arg)
		if arg == true then
			Add:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quart", .2, true);
			Viewer:TweenPosition(UDim2.new(-1, 0, 0.137500048, 0), "Out", "Quart", .2, true)
		else
			Add:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quart", .2, true);
			Viewer:TweenPosition(UDim2.new(0, 0, 0.137500048, 0), "Out", "Quart", .2, true)
		end
	end)

	-- << Main Code >> --

	for i,v in next, settings.scripts do
		createdatasample(v[1], v[2], v[3])
	end

	Search:GetPropertyChangedSignal("Text"):Connect(function()
		for i,v in next, Viewer:GetChildren() do
			if v:IsA("GuiObject") then
				v:Destroy()
			end
		end
		for i,v in next, settings.scripts do
			if tostring(v[1]):lower():match(Search.Text:lower()) then
				createdatasample(v[1], v[2], v[3])
			end
		end
	end)

	UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		Viewer.CanvasSize = UDim2.new(0, 0, 0, UIGridLayout.AbsoluteContentSize.Y)
	end)

	Sensor.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(Viewer, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ScrollBarImageTransparency = 0}):Play()
		end
	end)

	Sensor.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			game:GetService("TweenService"):Create(Viewer, TweenInfo.new(.09,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0), {ScrollBarImageTransparency = 0.7}):Play()
		end
	end)

	Submit.MouseButton1Up:Connect(function()
		if file == false then
			if Name.Text ~= "" and Data.Text ~= "" then
				addScript(Name.Text, Data.Text, "link")
				createdatasample(Name.Text, "link", Data.Text)
				notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Success", "Added your web app to the library")
			end
		else
			if Name.Text ~= "" and Data.Text ~= "" then
				addScript(Name.Text, Data.Text, "file")
				createdatasample(Name.Text, "file", Data.Text)
				notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Success", "Added your file to the library")
			end
		end
	end)
end)

-- << Settings Tab >> --

tabHolder.Preferences.MouseButton1Up:Connect(function()
	local window = Window.new({width = 300, height = 350, name='Preferences', icon='rbxassetid://894507994'})

	local Content = window.Content
	local Fastboot = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Fastboot',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.164828584, 0, 0.121508792, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Fastboot',Parent = Content})
	local FathomSmartScreen = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Fathom Smart Screen',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.165000007, 0, 0.122000001, 30),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='FathomSmartScreen',Parent = Content})
	local Blur = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Blur',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.165000007, 0, 0.122000001, 60),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Blur',Parent = Content})
	local ToggleKey = CreateInstance('TextButton',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Toggle Key:',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=22,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.165000007, 0, 0.122000001, 90),Rotation=0,Selectable=true,Size=UDim2.new(0, 200, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='ToggleKey',Parent = Content})

	createcheckbox(Fastboot, Color3.new(1,1,1), Color3.new(0,0,0), function(arg)
		settings.settings.Fastboot = arg
	end, settings.settings.Fastboot)  -- function createcheckbox(parent,oncolor,offcolor,respone_function,mode)
	createcheckbox(FathomSmartScreen, Color3.new(1,1,1), Color3.new(0,0,0), function(arg)
		settings.settings.FathomSmartScreen = arg
	end, settings.settings.FathomSmartScreen)  -- function createcheckbox(parent,oncolor,offcolor,respone_function,mode)
	createcheckbox(Blur, Color3.new(1,1,1), Color3.new(0,0,0), function(arg)
		settings.settings.Blur = arg
	end, settings.settings.Blur)  -- function createcheckbox(parent,oncolor,offcolor,respone_function,mode)
	
	ToggleKey.Text = "Toggle Key: " .. tostring(settings.toggleKey):sub(14)
	
	local function b()
		toggleable = false
		ToggleKey.Text = "Press A New Key"
		local a = services.input.InputBegan:wait()
		if a.UserInputType == Enum.UserInputType.Keyboard then
			binds[1][1] = a.KeyCode
			settings.toggleKey = binds[1][1]
			ToggleKey.Text = "Toggle Key: " .. tostring(binds[1][1]):sub(14);
			notify({"rbxassetid://1375852124", Color3.new(0,0,0)}, "Keybind changed", "Your keybind has been changed.")
			wait()
			toggleable = true;
		else
			b()
		end
	end
	ToggleKey.MouseButton1Up:Connect(b)
end)

tabHolder.About.MouseButton1Up:Connect(function()
	local window = Window.new({width = 300, height = 350, name='About', icon='rbxassetid://898100298'})

	local Content = window.Content
	local Logo = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size36,Text='Fathom Hub',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=33,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0500000007, 0, 0.0406249985, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 50),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Logo',Parent = Content})
	local Version = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Version Stable Build',TextColor3=Color3.new(0.854902, 0.854902, 0.854902),TextScaled=false,TextSize=23,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0500000007, 0, 0.196875006, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 271, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Version',Parent = Content})
	local Other = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size18,Text='Fathom was made possible by open source repositories. More info can be found in Fathom\'s source. We try to make our script as legal as possible by crediting the creators',TextColor3=Color3.new(0.854902, 0.854902, 0.854902),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0500000007, 0, 0.731249988, 0),Rotation=0,Selectable=false,Size=UDim2.new(0.953333318, -15, 0.0593749993, 57),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Other',Parent = Content})
	local Developers = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansLight,FontSize=Enum.FontSize.Size24,Text='Syntax - Developer/Web Developer\nExpensive - Previous Work\nabs_0 - Partial Help\nScriptery - Providing the repository\nOofsl - Made me put him here',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=23,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0500000007, 0, 0.296875, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 271, 0, 131),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=8,Name='Developers',Parent = Content})

	Version.Text = comments
end)

notify({"rbxassetid://2723162086"}, "Welcome back!", "Open Fathom by pressing " .. tostring(settings.toggleKey):sub(14) .. "\nYou can check out our website at http://www.peta-en.ml/", 15)

-- << Save Function >> --

game:GetService("Players").PlayerRemoving:connect(function()
	settings.toggleKey = tostring(settings.toggleKey):sub(14)
	settings.mainColor = tostring(math.floor(settings.mainColor.r*255)..", "..math.floor(settings.mainColor.g*255)..", "..math.floor(settings.mainColor.b*255))
	settings.textColor = tostring(math.floor(settings.textColor.r*255)..", "..math.floor(settings.textColor.g*255)..", "..math.floor(settings.textColor.b*255))
	writefile("FathomHub.config",game:GetService("HttpService"):JSONEncode(settings))
end)