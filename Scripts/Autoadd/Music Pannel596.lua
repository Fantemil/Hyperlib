local Request; if syn then
	Request = syn.request
elseif request then
	Request = request
elseif http_request then
	Request = http_request
end

local Create = function(Class,Properties)
	Properties = Properties or {};
	local Obj = Instance.new(Class)
	for K,V in next, Properties do 
		if rawequal(K,'Parent') then
			continue;
		end
		Obj[K] = V;
	end
	if Properties['Parent'] then
		Obj['Parent'] = Properties['Parent']
	end
	return Obj
end

workspace['FallenPartsDestroyHeight'] = 0/1/0

local UI, Origin = game:GetObjects('rbxassetid://5344970025&version=54')[1]; UI['Parent'] = game:GetService('CoreGui')

local Main, Notification, Control, Default, G, RL = UI['Main-Frame'], UI['Notification'], UI['Minimize/Close'], Color3.fromRGB(217,60,56), getgenv or function() return _G end, true

G = G(); G.__mode = 'k'; G['C'] = {}; C.__mode = 'k'; G['Create'] = Create

local CBackground, CImage, CText, CScroll = {}, {}, {}, {}

local Cast = {
	BackgroundColor3 = CBackground;
	ImageColor3 = CImage;
	TextColor3 = CText;
	ScrollBarImageColor3 = CScroll;
}

local T = UI:GetDescendants(); for A = 1,#T do local B = T[A]
	for C,D in next, Cast do
		coroutine.resume(coroutine.create(function()
			if tostring(B[C]) == tostring(Default) then
				D[#D+1] = B;
			end
		end))
	end
end; T = nil

local Menu, Sectors, RFE = Main['Main-Menu'], Main['Sector-Holder'], game:GetService('SoundService').RespectFilteringEnabled

local Dashboard = Sectors['Home']

local Tabs, TMenu = Dashboard['Tab-Frame']['Tab-Holder'], Dashboard['Tab-Menu']

Notification['Parent'] = game:GetService('CorePackages'); Notification['Main-Frame'].Position = UDim2.new(1.036,0,.753,0)

local Tween = function(Obj,Time,Style,Direction,Table)
	game:GetService('TweenService'):Create(Obj,TweenInfo.new(Time,Enum.EasingStyle[Style],Enum.EasingDirection[Direction],0,false,0),Table):Play()
end

Main['Position'] = Main['Position'] + UDim2.new(-1,0,0,0); Origin = Main['Position']; Tween(Main,.6,'Quad','Out',{Position = Main['Position'] + UDim2.new(1,0,0,0)})
Control['Position'] = Control['Position'] + UDim2.new(-1,0,0,0); Tween(Control,.6,'Quad','Out',{Position = Control['Position'] + UDim2.new(1,0,0,0)})

local Push = Instance.new('BindableEvent')

local Notify = function(Text,Duration)
	Duration = Duration or 4
	coroutine.wrap(function()
		local Clone = Notification:Clone(); local Frame = Clone['Main-Frame']; Clone['Parent'] = game:GetService('CoreGui'); Frame['TextBox'].Text = Text
		Push:Fire()
		local Event = Push['Event']:Connect(function()
			Tween(Frame,.4,'Quad','InOut',{Position = Frame['Position'] + UDim2.new(0,0,-.121,0)})
		end)
		Tween(Frame,.4,'Quad','InOut',{Position = UDim2.new(.8707,0,.753,0)}); wait(Duration + .4); Tween(Frame,.4,'Quad','InOut',{Position = UDim2.new(1.036,0,.753,0)}); wait(.4)
		Clone:Destroy(); Event:Disconnect()
	end)()
end

coroutine.wrap(function()
	wait(1.6)
	game:GetService('UserInputService')['InputBegan']:Wait()
	Notify('._ Boombox-Hub Loaded: discord.gg/bnDsbVvHmU for support.',4)
	wait(.4)
	if RFE then
		Notify('RFE is enabled on this game. Setting Time Positions and using Backpack-Plays are disabled.',5)
	end
	wait(.4)
	Notify('Visualizer is currently not working. A massive update for Boombox Hub will come soon.',7)
end)()

local Debounce = true

local Draggable = function(Frame)
	local DToggle, DInput, DStart, SPos
	local Upd = function(Input)
		if Debounce then
			Delta = Input['Position'] - DStart; Prime = UDim2.new(SPos['X'].Scale, SPos['X'].Offset + Delta['X'], SPos['Y'].Scale, SPos['Y'].Offset + Delta['Y'])
			Tween(Frame,.06,'Sine','Out',{Position = Prime})
		end
	end
	C[#C+1] = Frame['InputBegan']:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
			DToggle = true
			DStart = Input.Position
			SPos = Frame.Position
			C[#C+1] = Input['Changed']:Connect(function()
				if (Input.UserInputState == Enum.UserInputState.End) then
					DToggle = false
				end
			end)
		end
	end)
	C[#C+1] = Frame['InputChanged']:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
			DInput = Input
		end
	end)
	C[#C+1] = game:GetService('UserInputService').InputChanged:Connect(function(Input)
		if (Input == DInput and DToggle) then
			Upd(Input)
		end
	end)
end

Draggable(Main); Draggable(Control)

local MSelected = Menu['Home']

local MNavigate, TNavigate = function(Button,Y)
	C[#C+1] = Button['MouseButton1Click']:Connect(function()
		if Debounce then
			Debounce, MSelected = false, Button
			local T = Menu:GetChildren(); for I = 1,#T do local V = T[I]
				if V:IsA('TextButton') then
					if V ~= Button then
						if table.find(CText,V) then
							table.remove(CText,table.find(CText,V))
						end
						Tween(V,.3,'Quint','InOut',{TextColor3 = Color3.fromRGB(100,100,100)})
					else
						CText[#CText+1] = V
						Tween(V,.3,'Quint','InOut',{TextColor3 = Default})
					end
				end
			end
			Tween(Sectors,.6,'Quad','InOut',{Position = UDim2.new(0,0,Y,0)}); wait(.6)
			Debounce = true
		end
	end)
	C[#C+1] = Button['MouseEnter']:Connect(function()
		if MSelected ~= Button then
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Color3.fromRGB(170,170,170)})
		end
		Button['MouseLeave']:Wait()
		if MSelected ~= Button then
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Color3.fromRGB(100,100,100)})
		end
	end)
end, function(Button,X)
	C[#C+1] = Button['MouseButton1Click']:Connect(function()
		if Debounce then
			Debounce = false
			local Offset; if Button == TMenu['Scripts'] then
				Offset = .03
			elseif Button == TMenu['Anti-Logger'] then
				Offset = .068
			else
				Offset = .076
			end
			Tween(TMenu['Selector'],.4,'Quint','InOut',{Position = Button['Position'] + UDim2.new(Offset,0,.774,0)})
			Tween(Tabs,.6,'Quad','InOut',{Position = UDim2.new(X,0,0,0)}); wait(.6)
			Debounce = true
		end
	end)
	C[#C+1] = Button['MouseEnter']:Connect(function()
		Tween(Button,.3,'Quint','InOut',{TextColor3 = Color3.fromRGB(200,200,200)})
		Button['MouseLeave']:Wait()
		Tween(Button,.3,'Quint','InOut',{TextColor3 = Color3.fromRGB(120,120,120)})
	end)
end

MNavigate(Menu['Home'],0); MNavigate(Menu['Settings'],-1); MNavigate(Menu['Help'],-2); TNavigate(TMenu['Audio-Logger'],0); TNavigate(TMenu['Asset-Decoder'],-1); TNavigate(TMenu['Anti-Logger'],-2); TNavigate(TMenu['Scripts'],-3)

local Logger, Decoder, AntiLog, Scripts = Tabs['Audio-Logger'], Tabs['Asset-Decoder'], Tabs['Anti-Logger'], Tabs['Scripts']; local Logged = Logger['Logged-Sounds']; local Template = Logged['TextButton']; Template['Parent'] = game:GetService('CorePackages'); Logged['UIListLayout'].Padding = UDim.new(0,5)

local RArg, RButton, PButton, CId, CButton = 'PlaySong', Sectors['Settings']['Boombox-Type']['Standard'], Scripts['Preset']

local AddFunc = function(Type,Button,Func)
	if Type == 'Main' then
		local IColor, TColor = Button['Parent'].ImageColor3, Button['TextColor3']
		C[#C+1] = Button['MouseButton1Click']:Connect(function()
			coroutine.wrap(Func)()
			Tween(Button['Parent'],.03,'Sine','Out',{ImageColor3 = Color3.fromRGB(22, 24, 27)}); wait(.03)
			Tween(Button['Parent'],.6,'Sine','Out',{ImageColor3 = IColor})
		end)
		C[#C+1] = Button['MouseEnter']:Connect(function()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Default})
			Button['MouseLeave']:Wait()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = TColor})
		end)
	elseif Type == 'Sounds' then
		local IColor, TColor = Button['Frame'].ImageColor3, Button['TextColor3']
		C[#C+1] = Button['MouseButton1Click']:Connect(function()
			coroutine.wrap(Func)()
			Tween(Button['Frame'],.2,'Back','InOut',{ImageColor3 = Color3.fromRGB(22, 24, 27)})
			SObject, CId, CButton = Button['Sound'].Value, Button['Sound'].Value['SoundId'], Button
			local T = Button['Parent']:GetChildren(); for I = 1,#T do local V = T[I]
				if V ~= CButton and not V:IsA('UIListLayout') and not V:IsA('UIPadding') then
					Tween(V['Frame'],.2,'Quad','InOut',{ImageColor3 = Color3.fromRGB(33, 37, 41)})
				end
			end
		end)
		C[#C+1] = Button['MouseEnter']:Connect(function()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Default})
			Button['MouseLeave']:Wait()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = TColor})
		end)
	elseif Type == 'Types' then
		local IColor, TColor = Button['Frame'].ImageColor3, Button['TextColor3']
		C[#C+1] = Button['MouseButton1Click']:Connect(function()
			coroutine.wrap(Func)()
			Tween(Button['Frame'],.2,'Back','InOut',{ImageColor3 = Color3.fromRGB(22, 24, 27)})
			RButton = Button
			local T = Button['Parent']:GetChildren(); for I = 1,#T do local V = T[I]
				if V ~= RButton and not V:IsA('UIListLayout') and not V:IsA('UIPadding') then
					Tween(V['Frame'],.2,'Quad','InOut',{ImageColor3 = Color3.fromRGB(33, 37, 41)})
				end
			end
		end)
		C[#C+1] = Button['MouseEnter']:Connect(function()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Default})
			Button['MouseLeave']:Wait()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = TColor})
		end)
	elseif Type == 'Presets' then
		local IColor, TColor = Button['Frame'].ImageColor3, Button['TextColor3']
		C[#C+1] = Button['MouseButton1Click']:Connect(function()
			coroutine.wrap(Func)()
			Tween(Button['Frame'],.2,'Back','InOut',{ImageColor3 = Color3.fromRGB(22, 24, 27)})
			PButton = Button
			local T = Button['Parent']:GetChildren(); for I = 1,#T do local V = T[I]
				if V ~= PButton and not V:IsA('UIListLayout') and not V:IsA('UIPadding') then
					Tween(V['Frame'],.2,'Quad','InOut',{ImageColor3 = Color3.fromRGB(33, 37, 41)})
				end
			end
		end)
		C[#C+1] = Button['MouseEnter']:Connect(function()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Default})
			Button['MouseLeave']:Wait()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = TColor})
		end)
	elseif Type == 'Commands' then
		local TColor = Button['TextColor3']
		C[#C+1] = Button['MouseButton1Click']:Connect(function()
			coroutine.wrap(Func)()
		end)
		C[#C+1] = Button['MouseEnter']:Connect(function()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = Default})
			Button['MouseLeave']:Wait()
			Tween(Button,.3,'Quint','InOut',{TextColor3 = TColor})
		end)
	end
end

local Escape, JSONEncode, JSONDecode = function(Input)
	return game:GetService('HttpService'):UrlEncode(Input)
end, function(Input)
	return game:GetService('HttpService'):JSONEncode(Input)
end, function(Input)
	return game:GetService('HttpService'):JSONDecode(Input)
end

local Encode, Decode = function(AssetId)
	if AssetId == nil then
		return;
	end
	local Response = Request({
		Url = 'https://riptxde.dev/anti-logger-v2.php/?mode=false&id='..game:GetService('HttpService'):UrlEncode(AssetId);
		Method = 'GET';
	})['Body']
	if Response:match('^Error: ') then
		Notify(Response,7)
	elseif Response:match('^Notice: New location detected') then
		Notify(Response,20)
		wait(.8)
		Notify('Once you have your verification code, please use ;verify {code} in the command bar.',20)
	elseif Response:match('discord.gg/DMakTbZ') then
		Notify('You are not whitelisted, Playing via jack\'s free anti-steal [less secure].',4)
		wait(.4)
		local CustomMessage = ''
		if pcall(function() readfile('Boombox-Hub-Custom-Message.txt') end) then
			CustomMessage = readfile('Boombox-Hub-Custom-Message.txt')
		end
		return Response:gsub('    ', ' ' .. CustomMessage:gsub('%%', '%%%%') .. ' ')
	else
		coroutine.wrap(function()
			local Phase = function()
				return Request({
					Url = 'https://riptxde.dev/anti-logger-v2.php/?mode=true&id='..game:GetService('HttpService'):UrlEncode(AssetId);
					Method = 'GET';
				})['Body']
			end
			wait(.06); Phase()
		end)()
		if pcall(function() readfile('Boombox-Hub-Custom-Message.txt') end) then
			return Response:format(readfile('Boombox-Hub-Custom-Message.txt'):gsub('[&#]',''))
		else
			return Response:format('')
		end
	end
end, function(AssetId)
	local Prefix = AssetId:gsub('%s',''):lower()
	if not Prefix:match('^http://www.roblox.com/asset/%?id=') and not Prefix:match('^https://www.roblox.com/asset/%?id=') and not Prefix:match('^rbxassetid://') then
		AssetId = 'http://www.roblox.com/asset/?id='..AssetId
	end
	local Response = Request({
		Body = 'soundid='..Escape(Escape(AssetId:gsub(' ','')));
		Url = 'https://riptxde.dev/audio-logger-v2.php/';
		Method = 'POST';
	})['Body']
	if Response:len() < 1 then
		Notify('Invalid parse. (B)',6)
	else
		if Response:match('^Error: ') then
			Notify(Response,7)
		elseif Response:match('^Notice: New location detected') then
			Notify(Response,20)
			wait(.8)
			Notify('Once you have your verification code, please use ;verify {code} in the command bar.',20)
		else
			return Response
		end
	end
end

local Ignore = {
'rbxasset://sounds/action_footsteps_plastic.mp3';
'rbxasset://sounds/impact_water.mp3';
'rbxasset://sounds/uuhhh.mp3';
'rbxasset://sounds/action_swim.mp3';
'rbxasset://sounds/action_get_up.mp3';
'rbxasset://sounds/action_falling.mp3';
'rbxasset://sounds/action_jump.mp3';
'rbxasset://sounds/action_jump_land.mp3';
}

local Sounds, IdSet, LToggle, Listening = {}, {}, false; Sounds.__mode = 'k'

AddFunc('Main',Logger['Copy ID'].TextButton, function()
	if CId then
		setclipboard(CId); Notify('Successfully set raw asset-id to clipboard.',4)
	end
end)

AddFunc('Main',Logger['Write ID To File'].TextButton, function()
	if CId then
		if not isfolder('RH-LoggedIds') then
			makefolder('RH-LoggedIds')
		end
		writefile('RH-LoggedIds/Id-'..(#listfiles('RH-LoggedIds')+1)..'.txt',CId)
		Notify('Successfully wrote raw asset-id to file: workspace/RH-LoggedIds/Id-'..(#listfiles('RH-LoggedIds'))..'.txt',6)
	end
end)

AddFunc('Main',Logger['Send ID to Decoder'].TextButton,function()
	if CId then
		if not RL then
			return
		end; RL = false
		local AssetId; AssetId = Decode(CId)
		if AssetId then
			Decoder['Asset-Id'].TextBox['Text'] = AssetId
			Tween(TMenu['Selector'],.4,'Quint','InOut',{Position = TMenu['Asset-Decoder']['Position'] + UDim2.new(.076,0,.774,0)})
			Tween(Tabs,.6,'Quad','InOut',{Position = UDim2.new(-1,0,0,0)}); wait(.6)
			Notify('Successfully decoded asset-id.',4)
		end
		RL = true
	end
end)

AddFunc('Main',Logger['Listen'].TextButton,function()
	if CId then
		LToggle = not LToggle
		if LToggle then
			Listening = Create('Sound',{
				SoundId = CId;
				Looped = true;
				Parent = game:GetService('CorePackages');
			})
			Listening:Play()
			Logger['Listen'].TextButton['Text'] = 'Stop'
		elseif Listening and type(Listening) == 'userdata' then
			Listening:Destroy()
			Logger['Listen'].TextButton['Text'] = 'Listen'
		end
	end
end)

AddFunc('Main',Logger['Put ID in Ignore List'].TextButton,function()
	if CId then
		Ignore[#Ignore+1] = CId
	end
end)

AddFunc('Main',Logger['Clear All'].TextButton,function()
	Sounds, IdSet = {}, {}; Sounds.__mode = 'k'
	CButton, SObject, CId = nil,nil,nil
	local T = Logged:GetChildren(); for I = 1,#T do local V = T[I]
		if not V:IsA('UIListLayout') and not V:IsA('UIPadding') then
			coroutine.wrap(function()
				Tween(V,.2,'Quad','Out',{TextTransparency = 1})
				Tween(V['Frame'],.2,'Quad','Out',{ImageTransparency = 1})
				wait(.2); V:Destroy()
			end)()
		end
	end
	Tween(Logged,.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,2,0)})
end)

AddFunc('Main',Logger['Scan Workspace'].TextButton, function()
	local T = workspace:GetDescendants()
	for I = 1,#T do local V = T[I]
		if V:IsA('Sound') then
			if V['IsLoaded'] ~= false and not table.find(Ignore,V['SoundId']) and not table.find(Sounds,V) and not table.find(IdSet,V['SoundId']) then
				coroutine.wrap(function()
					local Clone = Template:Clone()
					Clone['TextTransparency'] = 1; Clone['Frame'].ImageTransparency = 1
					Bool,Info = pcall(function() return game:GetService('MarketplaceService'):GetProductInfo(V['SoundId']:gsub('rbxassetid://','',1):gsub('http://www.roblox.com/asset/%?id=','',1):gsub('https://www.roblox.com/asset/%?id=','',1)) end)
					if Bool then
						Clone['Text'] = Info['Name']
					elseif V['SoundId']:match('^rbxasset://sounds/') then
						Clone['Text'] = V['SoundId']:gsub('rbxasset://sounds/','',1)
					else
						Clone['Text'] = V['Name']
					end
					Clone['Sound'].Value = V
					Tween(Clone,.2,'Quad','Out',{TextTransparency = 0})
					Tween(Clone['Frame'],.2,'Quad','Out',{ImageTransparency = 0})
					Tween(Logged,.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,0,Logged['UIListLayout'].AbsoluteContentSize['Y'] * 2)})
					Clone['Parent'] = Logged
					AddFunc('Sounds',Clone,function()
						Logger['Asset-Id Preview'].TextBox['Text'] = V['SoundId']
					end)
				end)()
				Sounds[#Sounds+1] = V; IdSet[#IdSet+1] = V['SoundId']
			end
		end
		if I % 1080 == 0 then
			game:GetService('RunService')['Heartbeat']:Wait()
		end
	end
end)

AddFunc('Main',Logger['Scan Game'].TextButton, function()
	local T = game:GetDescendants()
	for I = 1,#T do local V = T[I]
		if V:IsA('Sound') then
			if V['IsLoaded'] ~= false and not table.find(Ignore,V['SoundId']) and not table.find(Sounds,V) and not table.find(IdSet,V['SoundId']) then
				coroutine.wrap(function()
					local Clone = Template:Clone()
					Clone['TextTransparency'] = 1; Clone['Frame'].ImageTransparency = 1
					Bool,Info = pcall(function() return game:GetService('MarketplaceService'):GetProductInfo(V['SoundId']:gsub('rbxassetid://','',1):gsub('http://www.roblox.com/asset/%?id=','',1):gsub('https://www.roblox.com/asset/%?id=','',1)) end)
					if Bool then
						Clone['Text'] = Info['Name']
					elseif V['SoundId']:match('^rbxasset://sounds/') then
						Clone['Text'] = V['SoundId']:gsub('rbxasset://sounds/','',1)
					else
						Clone['Text'] = V['Name']
					end
					Clone['Sound'].Value = V
					Tween(Clone,.2,'Quad','Out',{TextTransparency = 0})
					Tween(Clone['Frame'],.2,'Quad','Out',{ImageTransparency = 0})
					Tween(Logged,.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,0,Logged['UIListLayout'].AbsoluteContentSize['Y'] * 2)})
					Clone['Parent'] = Logged
					AddFunc('Sounds',Clone,function()
						Logger['Asset-Id Preview'].TextBox['Text'] = V['SoundId']
					end)
				end)()
				Sounds[#Sounds+1] = V; IdSet[#IdSet+1] = V['SoundId']
			end
		end
		if I % 1080 == 0 then
			game:GetService('RunService')['Heartbeat']:Wait()
		end
	end
end)

local Presets;
if not pcall(function()
	Presets = JSONDecode(readfile('Boombox-Hub-Presets.dat'))
	assert(Presets['circle'] ~= nil)
end) then
	writefile('Boombox-Hub-Presets.dat', JSONEncode({
		['circle'] = [=[for K,V in next, Tools do
			coroutine.wrap(function()
				local BP, BG, PCF = V['VPosition'].Value, V['VGyro'].Value
				while Selected['Playing'] do
					local I, Vol = 1, 0
					repeat
						Vol = Selected['PlaybackLoudness']
						PRY = math.rad(I+(K*(360/#Tools)))
						PZ = OffsetSensitivity + Vol / (Sensitivity ~= 100 and (100 - Sensitivity) or .01)
						GY = OffsetTiltSensitivity + Vol / (TiltSensitivity ~= 100 and (100 - TiltSensitivity) or .01)
						PCF = CFrame.new(Root['Position']) * CFrame.Angles(0,PRY,0) * CFrame.new(0,0,PZ)
						BP['Position'] = PCF.p
						BG['CFrame'] = CFrame.new(BG['Parent'].Position, Root['Position'] + Vector3.new(0, GY, 0))
						I = I + Speed
						game:GetService('RunService')['RenderStepped']:Wait()
					until I >= 360 or not Selected['Playing']
				end
			end)()
		end]=];
		['line'] = [=[for K,V in next, Tools do
			coroutine.wrap(function()
				local BP, BG, PCF = V['VPosition'].Value, V['VGyro'].Value
				while Selected['Playing'] do
					local I, Vol = 1, 0
					repeat
						if K == 1 then
							Samples[#Samples+1] = Selected['PlaybackLoudness']
						end
						Vol = (Samples[#Samples - (K-1)] or 0) / (Sensitivity ~= 100 and (100 - Sensitivity) or .01)
						BP['Position'] = Root['Position'] + Vector3.new(K * 1.6,Vol + OffsetSensitivity,0)
						I = I + Speed
						game:GetService('RunService')['RenderStepped']:Wait()
					until I >= 360 or not Selected['Playing']
				end
			end)()
		end]=];
	}))
	Presets = JSONDecode(readfile('Boombox-Hub-Presets.dat'))
end

local PTemplate, CPreset = Scripts['Preset'].Circle, Presets['circle']

for K,V in next, Presets do
	Clone = PTemplate:Clone()
	Clone['Text'] = K
	Clone['Name'] = K
	AddFunc('Presets',Clone,function()
		CPreset = V
	end)
	Clone['Parent'] = Scripts['Preset']
	Tween(Scripts['Preset'],.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,0,Scripts['Preset'].UIListLayout['AbsoluteContentSize'].Y * 2)})
end

PTemplate['Parent'] = game:GetService('CorePackages')

AddFunc('Types',Sectors['Settings']['Boombox-Type']['Da Hood'],function()
	RArg = 'Boombox'
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = 'Da Hood';
		Mode = RArg;
		Color = tostring(Default);
	}))
end)

AddFunc('Main',Decoder['Decode'].TextButton,function()
	if not RL then
		return
	end; RL = false
	local AssetId; AssetId = Decode(Decoder['Asset-Id'].TextBox['Text'])
	if AssetId then
		Decoder['Asset-Id'].TextBox['Text'] = AssetId
		Notify('Successfully decoded asset-id.',4)
	end
	RL = true
end)

AddFunc('Main',Decoder['Decode File'].TextButton,function()
	if not RL then
		return
	end; RL = false
	local Content;
	if pcall(function()
		Content = readfile(Decoder['Asset-Id'].TextBox['Text']):gsub(' ','')
	end) then
		local AssetId; AssetId = Decode(Content)
		if AssetId then
			Decoder['Asset-Id'].TextBox['Text'] = AssetId
			Notify('Successfully decoded asset-id.',4)
		end
	end
	RL = true
end)

AddFunc('Main',Decoder['Copy ID'].TextButton,function()
	if Decoder['Asset-Id'].TextBox['Text']:len() > 0 then
		setclipboard(Decoder['Asset-Id'].TextBox['Text'])
		Notify('Successfully copied asset-id to clipboard.',4)
	end
end)

local ToClock = function(Seconds)
	if Seconds < 1 then
		return '0:00';
	else
		local Mins = ('%2.f'):format(math.floor(Seconds/60));
		local Secs = ('%02.f'):format(math.floor(Seconds - Mins*60));
		return Mins..':'..Secs
	end
end

local LP, Playing, Tool = game:GetService('Players')['LocalPlayer']

local RN = Random.new()

local LatentYield = function(N)
	local Index = 0
	repeat
		game['RobloxReplicatedStorage'].GetServerVersion:InvokeServer()
		Index = Index + 1
	until Index >= N
end

local CancelDupe = false

local DupeTools = function(Num)
	CancelDupe = false
	local Estimate = (game:GetService('Players')['RespawnTime'] + 1) * (Num + 1)
	local Tools, Type, RCF = {}, workspace['CurrentCamera'].CameraType
	for I = 1,Num + 1 do
		if I <= Num then
			Notify(('Approximately %s seconds until dupe is complete.'):format(math.round(Estimate - (game:GetService('Players')['RespawnTime'] + 1) * I)),1)
		end
		local Char = LP['Character']
		local Root = Char:FindFirstChild('HumanoidRootPart')
		while not Root do
			Char['ChildAdded']:Wait()
			Root = Char:FindFirstChild('HumanoidRootPart')
		end
		if I == 1 then
			RCF = Root['CFrame']
		end
		LatentYield(2.0)
		if I > Num or CancelDupe then
			for K,V in next, Tools do
				V['Anchored'] = false
				V['CFrame'] = Root['CFrame']
				LatentYield(1.0)
			end
			Notify('Dupe-Tools complete.',3)
			Root['CFrame'] = RCF
			break
		end
		LatentYield(2.0)
		for IDX = 1,10 do
			for K,V in next, LP['Backpack']:GetChildren() do
				if V:IsA('Tool') then
					V['Parent'] = Char
				end
			end
			game:GetService('RunService')['Heartbeat']:Wait()
		end
		Root['CFrame'] = CFrame.new(RN:NextInteger(-3.0e4, 3.0e4),5.0e5,RN:NextInteger(-3.0e4, 3.0e4))
		LatentYield(2.0)
		Char['Head'].Anchored = true
		for K,V in next, LP['Character']:GetChildren() do
			if V:IsA('Tool') and V['Handle'] then
				V['Parent'] = workspace
				V['Handle'].Anchored = true
				Tools[#Tools+1] = V['Handle']
			end
		end
		(Char:FindFirstChild('Torso') or Char:FindFirstChild('UpperTorso')):Destroy()
		local Con = Char['ChildAdded']:Connect(function(V)
			if V:IsA('Tool') then
				game:GetService('RunService')['Heartbeat']:Wait()
				V['Parent'] = workspace
				V['Handle'].Anchored = true
			end
		end)
		LP['CharacterAdded']:Wait()
		Con:Disconnect()
	end
end

settings()['Physics'].AllowSleep = false
settings()['Physics'].PhysicsEnvironmentalThrottle = Enum['EnviromentalPhysicsThrottle'].Disabled

if not NK then
	G['NK'] = true
	if type(setsimulationradius) == 'function' then
		coroutine.wrap(function()
			repeat
				game:GetService('RunService')['RenderStepped']:Wait()
				setsimulationradius(1/0, 1/0)
			until not NK
		end)()
	elseif type(sethiddenproperty) == 'function' then
		coroutine.wrap(function()
			repeat
				game:GetService('RunService')['RenderStepped']:Wait()
				sethiddenproperty(LP, 'MaximumSimulationRadius', 1/0)
				sethiddenproperty(LP, 'SimulationRadius', 1/0)
			until not NK
		end)()
	elseif type(set_hidden_prop) == 'function' then
		coroutine.wrap(function()
			repeat
				game:GetService('RunService')['RenderStepped']:Wait()
				set_hidden_prop(LP, 'MaximumSimulationRadius', 1/0)
				set_hidden_prop(LP, 'SimulationRadius', 1/0)
			until not NK
		end)()
	else
		Notify('Your exploit does not have certain functions, the Visualizer may not work as expected.',7)
	end
end

local Visualize = function(AssetId)
	Scripts['Asset-Id'].TextBox['TextEditable'], RL = false, false
	if pcall(function()
		Playing = game:GetService('MarketplaceService'):GetProductInfo(AssetId)['Name']
	end) then
		Scripts['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify(('Play: Attempting to visualize %s under boombox settings: "%s"'):format(Playing, RButton['Name'] or 'Standard'),7)
	else
		Scripts['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify('Error: Invalid id given.',4)
	end
	local Char = LP['Character']
	local Humanoid = Char:FindFirstChildOfClass('Humanoid')
	Humanoid:ChangeState(2)
	LatentYield(1.0)
	local Root = Char['HumanoidRootPart']
	local Tools, Forces = {}, {}
	Humanoid:UnequipTools()
	repeat
		for K,V in next, Forces do
			V:Destroy()
			table.remove(Forces, K)
		end
	until #Forces == 0
	for K,V in next, LP['Backpack']:GetChildren() do
		if V:IsA('Tool') then
			V['Parent'] = Char
		end
	end
	for K,V in next, Char:GetChildren() do
		if V:IsA('Tool') and V['Handle'] then
			Tools[#Tools+1] = V
		end
	end
	for K,V in next, Char:GetDescendants() do
		if V['Name'] == 'RightGrip' then V:Destroy() end
	end
	LatentYield(2.0)
	for K,V in next, Tools do
		local BP = Create('BodyPosition',{
			MaxForce = Vector3.new(1/0,1/0,1/0);
			Position = V['Handle'].Position;
			P = 1.0e5;
		})
		Forces[#Forces+1] = BP
		BP['Parent'] = V['Handle']
		local BG = Create('BodyGyro',{
			MaxTorque = Vector3.new(1/0,1/0,1/0);
			P = 1.0e4;
			Parent = V['Handle'];
		})
		Forces[#Forces+1] = BG
		BG['Parent'] = V['Handle']
		local BPO = Create('ObjectValue',{
			Value = BP;
			Name = 'VPosition';
			Parent = V;
		})
		Forces[#Forces+1] = BPO
		BPO['Parent'] = V
		local BGO = Create('ObjectValue',{
			Value = BG;
			Name = 'VGyro';
			Parent = V;
		})
		Forces[#Forces+1] = BGO
		BGO['Parent'] = V
		V['Parent'] = Char
	end
	for K,V in next, Char:GetDescendants() do
		if V['Name'] == 'RightGrip' then V:Destroy() end
	end
	local Encoded = Encode(AssetId)
	if Encoded then
		AssetId = Encoded
	end
	for K,V in next, Humanoid:GetPlayingAnimationTracks() do
		V:Stop()
	end
	local Current = 0
	for K,V in next, Tools do
		if Current <= MassPlayLimit then
			coroutine.resume(coroutine.create(function()
				Remote = (RArg == 'Boombox' and game:GetService('ReplicatedStorage')['MainEvent'] or V:FindFirstChildOfClass('RemoteEvent'))
				Remote:FireServer(RArg,AssetId)
				Current = Current + 1
			end))
		end
	end
	local Selected = nil;
	repeat
		for A,B in next, Tools do
			local T = B:GetDescendants()
			for I = 1,#T do local V = T[I]
				if V:IsA('Sound') then
					if V['Playing'] and V['TimeLength'] ~= 0 and V['IsLoaded'] then
						Selected = V
					end
				end
			end
		end
		wait(.06)
	until Selected or Char:FindFirstChildOfClass('Tool') == nil
	if Char:FindFirstChildOfClass('Tool') == nil then
		repeat
			for K,V in next, Forces do
				V:Destroy()
				table.remove(Forces, K)
			end
		until #Forces == 0
		Humanoid:UnequipTools()
		return;
	end
	G['Tools'], G['Selected'], G['Root'], G['Samples'], G['Forces'] = Tools, Selected, Root, {}, Forces
	TPos = tonumber(Scripts['Time-Position'].TextBox['Text']) or 0
	if not RFE then
		for K,V in next, Char:GetDescendants() do
			if V:IsA('Sound') then
				V['TimePosition'] = TPos
			end
		end
	end
	local PFunc = loadstring(CPreset or Presets['circle'])
	if G['ExperimentalMode'] then
		PFunc()
	else
		pcall(PFunc)
	end
	repeat
		game:GetService('RunService')['Heartbeat']:Wait()
	until not Selected['Playing']
	Humanoid:UnequipTools()
	repeat
		for K,V in next, Forces do
			V:Destroy()
			table.remove(Forces, K)
		end
	until #Forces == 0
end

AddFunc('Main',Scripts['Dupe-Tools'].TextButton,function()
	DupeTools(tonumber(Scripts['Dupe-Amount'].TextBox['Text']) or 1)
end)

AddFunc('Main',Scripts['Visualize'].TextButton,function()
	Visualize(Scripts['Asset-Id'].TextBox['Text'])
end)

AddFunc('Main',AntiLog['Play'].TextButton,function()
	if not RL then
		return
	end
	AntiLog['Asset-Id'].TextBox['TextEditable'], RL = false, false
	local AssetId = Encode(AntiLog['Asset-Id'].TextBox['Text'])
	if AssetId == nil then
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	local Boombox = LP['Character']:FindFirstChildOfClass('Tool')
	if Boombox == nil then
		Notify('Error: User is not holding boombox.',4); AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	if not pcall(function()
		Remote, Tool = (RArg == 'Boombox' and game:GetService('ReplicatedStorage')['MainEvent'] or Boombox:FindFirstChildOfClass('RemoteEvent')), (RArg == 'Boombox' and LP['Character'].LowerTorso or Boombox)
		Remote:FireServer(RArg,AssetId)
	end) then
		Notify('Error: Boombox is not compatible, check the Settings tab.',7); AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	if pcall(function()
		Playing = game:GetService('MarketplaceService'):GetProductInfo(AntiLog['Asset-Id'].TextBox['Text'])['Name']
	end) then
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify(('Play: Attempting to play %s under boombox settings: "%s"'):format(Playing, RButton['Name'] or 'Standard'),7)
	else
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify('Error: Invalid id given.',4)
	end
end)

AddFunc('Main',AntiLog['Backpack-Play'].TextButton,function()
	if not RL then
		return
	end
	if RFE then
		Notify('Error: RFE is enabled on this game.',4); return
	end
	if RArg == 'Boombox' then
		Notify('Backpack-Play is not functional on Da Hood.',4); return
	end
	AntiLog['Asset-Id'].TextBox['TextEditable'] = false
	local AssetId = Encode(AntiLog['Asset-Id'].TextBox['Text'])
	if AssetId == nil then
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	local Boombox = LP['Character']:FindFirstChildOfClass('Tool')
	if Boombox == nil then
		Notify('Error: User is not holding boombox.',4); AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	Tool = Boombox;
	if not pcall(function()
		Boombox:FindFirstChildOfClass('RemoteEvent'):FireServer(RArg, AssetId)
		wait(.6)
		local Selected = nil;
		repeat
			local T = Tool:GetDescendants()
			for I = 1,#T do local V = T[I]
				if V:IsA('Sound') then
					if V['Playing'] and V['TimeLength'] ~= 0 and V['IsLoaded'] then
						Selected = V
					end
				end
			end
			wait(.06)
		until Selected
		Selected['Parent'] = game:GetService('CorePackages')
		LP['Character']:FindFirstChildOfClass('Humanoid'):UnequipTools()
		wait(.6)
		Selected['Parent'] = Tool; Selected:Play()
		coroutine.wrap(function()
			Selected['AncestryChanged']:Wait()
			if Selected then
				Selected:Stop()
			end
		end)()
	end) then
		Notify('Error: Boombox is not compatible, check the Settings tab.',7); AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; return
	end
	if pcall(function()
		Playing = game:GetService('MarketplaceService'):GetProductInfo(AntiLog['Asset-Id'].TextBox['Text'])['Name']
	end) then
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify(('Play: Attempting to backpack-play %s under boombox settings: "%s"'):format(Playing, RButton['Name'] or 'Standard'),7)
	else
		AntiLog['Asset-Id'].TextBox['TextEditable'], RL = true, true; Notify('Error: Invalid id given.',4)
	end
end)

AddFunc('Main',AntiLog['Copy ID'].TextButton,function()
	if not RL then
		return
	end
	local AssetId = Encode(AntiLog['Asset-Id'].TextBox['Text'])
	if AssetId then
		setclipboard(AssetId); Notify('Successfully copied encoded asset-id to clipboard.',4)
	end
	RL = true
end)

local HDelay = true; C[#C+1] = game:GetService('RunService')['Heartbeat']:Connect(function()
	if HDelay then
		HDelay = false
		if Tool and Tool['Parent'] then
			local T, Selected = Tool:GetDescendants()
			for I = 1,#T do local V = T[I]
				if V:IsA('Sound') then
					if V['Playing'] and V['TimeLength'] ~= 0 and V['IsLoaded'] then
						Selected = V
					end
				end
			end
			if Selected and Playing then
				if not RFE then
					AntiLog['Current-Time'].TextEditable = true
				end
				Tween(AntiLog['Song-Length'].Mover,.08,'Quad','Out',{Position = UDim2.new(Selected['TimePosition']/Selected['TimeLength'],0,-5,0)})
				AntiLog['Title'].Text = 'Playing: '..Playing
				if not AntiLog['Current-Time']:IsFocused() then
					AntiLog['Current-Time'].Text = ToClock(Selected['TimePosition'])
				end
				AntiLog['Total-Time'].Text = ToClock(Selected['TimeLength'])
			else
				AntiLog['Current-Time'].TextEditable = false
				AntiLog['Title'].Text = 'Playing: Nothing'
				AntiLog['Current-Time'].Text = '0:00'
				AntiLog['Total-Time'].Text = '0:00'
				if AntiLog['Song-Length'].Mover['Position'] ~= UDim2.new(0,0,-5,0) then
					Tween(AntiLog['Song-Length'].Mover,.08,'Quad','Out',{Position = UDim2.new(0,0,-5,0)})
					wait(.08)
				end
			end
		else
			AntiLog['Current-Time'].TextEditable = false
			AntiLog['Title'].Text = 'Playing: Nothing'
			AntiLog['Current-Time'].Text = '0:00'
			AntiLog['Total-Time'].Text = '0:00'
			if AntiLog['Song-Length'].Mover['Position'] ~= UDim2.new(0,0,-5,0) then
				Tween(AntiLog['Song-Length'].Mover,.08,'Quad','Out',{Position = UDim2.new(0,0,-5,0)})
				wait(.08)
			end
		end
		HDelay = true
	end
end)

AntiLog['Current-Time'].FocusLost:Connect(function(Enter)
	if Enter and Tool and Tool['Parent'] and not RFE then
		local T, Selected = Tool:GetDescendants()
		for I = 1,#T do local V = T[I]
			if V:IsA('Sound') then
				if V['Playing'] and V['TimeLength'] ~= 0 and V['IsLoaded'] then
					Selected = V
				end
			end
		end
		if Selected and Playing then
			local Time = AntiLog['Current-Time'].Text
			if tonumber(Time) then
				Selected['TimePosition'] = tonumber(Time)
			elseif Time:match(':') then
				local Split = Time:split(':')
				local Mins, Secs = Split[1], Split[2]
				Selected['TimePosition'] = (tonumber(Mins)*60) + tonumber(Secs)
			end
		end
	end
end)

local Data, RColor;
if pcall(function() readfile('Boombox-Hub-Settings.dat') end) then
	Data = JSONDecode(readfile('Boombox-Hub-Settings.dat'))
else
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = RButton['Name'] or 'Standard';
		Mode = RArg;
		Color = tostring(Default);
	}))
	Data = JSONDecode(readfile('Boombox-Hub-Settings.dat'))
end

if not pcall(function()
	RButton, RArg, RColor = Sectors['Settings']['Boombox-Type'][Data.Type], Data['Mode'], Color3.new(unpack(Data['Color']:gsub('%s',''):split(',')))
end) then
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = RButton['Name'] or 'Standard';
		Mode = RArg;
		Color = tostring(Default);
	}))
	Data = JSONDecode(readfile('Boombox-Hub-Settings.dat'))
	RButton, RArg, RColor = Sectors['Settings']['Boombox-Type'][Data.Type], Data['Mode'], Color3.new(unpack(Data['Color']:gsub('%s',''):split(',')))
end

Default = RColor

for K,V in next, CBackground do
	V['BackgroundColor3'] = Default
end
for K,V in next, CImage do
	V['ImageColor3'] = Default
end
for K,V in next, CText do
	V['TextColor3'] = Default
end
for K,V in next, CScroll do
	V['ScrollBarImageColor3'] = Default
end

if pcall(function() readfile('Boombox-Hub-Custom-Message.txt') end) then
	Sectors['Settings']['Custom-Message'].TextBox['Text'] = readfile('Boombox-Hub-Custom-Message.txt')
end

Tween(RButton['Frame'],.2,'Back','InOut',{ImageColor3 = Color3.fromRGB(22, 24, 27)})
local T = RButton['Parent']:GetChildren(); for I = 1,#T do local V = T[I]
	if V ~= RButton and not V:IsA('UIListLayout') and not V:IsA('UIPadding') then
		Tween(V['Frame'],.2,'Quad','InOut',{ImageColor3 = Color3.fromRGB(33, 37, 41)})
	end
end

AddFunc('Types',Sectors['Settings']['Boombox-Type']['Standard'],function()
	RArg = 'PlaySong'
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = 'Standard';
		Mode = RArg;
		Color = tostring(Default);
	}))
end)

AddFunc('Types',Sectors['Settings']['Boombox-Type']['The Streets'],function()
	RArg = 'play'
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = 'The Streets';
		Mode = RArg;
		Color = tostring(Default);
	}))
end)

AddFunc('Types',Sectors['Settings']['Boombox-Type']['Da Hood'],function()
	RArg = 'Boombox'
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = 'Da Hood';
		Mode = RArg;
		Color = tostring(Default);
	}))
end)

AddFunc('Main',Sectors['Settings'].Reset['TextButton'],function()
	Default = Color3.fromRGB(217,60,56)
	for K,V in next, CBackground do
		Tween(V,.3,'Quint','InOut',{BackgroundColor3 = Default})
	end
	for K,V in next, CImage do
		Tween(V,.3,'Quint','InOut',{ImageColor3 = Default})
	end
	for K,V in next, CText do
		Tween(V,.3,'Quint','InOut',{TextColor3 = Default})
	end
	for K,V in next, CScroll do
		Tween(V,.3,'Quint','InOut',{ScrollBarImageColor3 = Default})
	end
	writefile('Boombox-Hub-Settings.dat', JSONEncode({
		Type = RButton['Name'];
		Mode = RArg;
		Color = tostring(Default);
	}))
end)

G['Sensitivity'], G['TiltSensitivity'], G['OffsetSensitivity'], G['OffsetTiltSensitivity'], G['Speed'], G['MassPlayLimit'] = 65, 90, 5, -20, 1, 8

C[#C+1] = Sectors['Settings']['Color-Picker'].TextBox['FocusLost']:Connect(function(Enter)
	if Enter then
		Default = Color3.fromRGB(unpack(Sectors['Settings']['Color-Picker'].TextBox['Text']:gsub('%s',''):split(',')))
		for K,V in next, CBackground do
			Tween(V,.3,'Quint','InOut',{BackgroundColor3 = Default})
		end
		for K,V in next, CImage do
			Tween(V,.3,'Quint','InOut',{ImageColor3 = Default})
		end
		for K,V in next, CText do
			Tween(V,.3,'Quint','InOut',{TextColor3 = Default})
		end
		for K,V in next, CScroll do
			Tween(V,.3,'Quint','InOut',{ScrollBarImageColor3 = Default})
		end
		writefile('Boombox-Hub-Settings.dat', JSONEncode({
			Type = RButton['Name'];
			Mode = RArg;
			Color = tostring(Default);
		}))
	end
end)

C[#C+1] = Sectors['Settings']['Custom-Message'].TextBox['FocusLost']:Connect(function(Enter)
	if Enter then
		writefile('Boombox-Hub-Custom-Message.txt', Sectors['Settings']['Custom-Message'].TextBox['Text'])
	end
end)

local PSettings = {
	Sensitivity = {Scripts['Sensitivity'].TextBox, 65};
	OffsetSensitivity = {Scripts['Sensitivity-Offset'].TextBox, 5};
	MassPlayLimit = {Scripts['MassPlay-Amount'].TextBox, 8};
	TiltSensitivity = {Scripts['TiltSensitivity'].TextBox, 90};
	OffsetTiltSensitivity = {Scripts['TiltSensitivity-Offset'].TextBox, -20};
	Speed = {Scripts['Rotation-Speed'].TextBox, 1};
}

local Numerics = {
	AntiLog['Asset-Id'].TextBox;
	Scripts['Asset-Id'].TextBox;
	Scripts['Dupe-Amount'].TextBox;
	Scripts['Time-Position'].TextBox;
}

for K,V in next, Numerics do
	C[#C+1] = V['Changed']:Connect(function(Property)
		if Property == 'Text' then
			V['Text'] = V['Text']:gsub('[^-%.%d+]','')
		end
	end)
end

for K,V in next, PSettings do
	C[#C+1] = V[1]['Changed']:Connect(function(Property)
		if Property == 'Text' then
			V[1]['Text'] = V[1]['Text']:gsub('[^-%.%d+]','')
		end
		G[K] = tonumber(V[1]['Text']) or V[2]
	end)
end

C[#C+1] = Decoder['Asset-Id'].TextBox.Changed:Connect(function(Property)
	if Property == 'Text' then
		if Decoder['Asset-Id'].TextBox.Text:len() > 16383 then
			Notify('Asset-Id exceeded maximum TextBox length, create a file in your workspace folder and type the file\'s path into the TextBox and use Decode File instead.',10)
		end
	end
end)

local Minimized, SLocation = false

local MToggle = function()
	Minimized = not Minimized
	if Minimized then
		SLocation = Main['Position']
	end
	Tween(Main,.4,'Quad','InOut',{Position = Minimized and Origin or SLocation})
	Control['Minimize'].Text = Minimized and '+' or '-'
end

local Exit = function()
	for I = 1,#C do local V = C[I]
		V:Disconnect()
	end
	NK = nil
	UI:Destroy(); Notification:Destroy(); Template:Destroy(); Push:Destroy()
end

local Prefix = ';'

local LP = game:GetService('Players')['LocalPlayer']

local GPlayer = function(Name)
	Name = Name:lower()
	local Matches = {};
	for I = #Name,1,-1 do 
		for K,V in next, game:GetService('Players'):GetPlayers() do 
			if rawequal(Name,V['Name']:lower():sub(1,I)) then 
				table.insert(Matches,V)
			end
		end
	end
	if #Matches > 0 then 
		return Matches[1]
	else
		for K,V in next, game:GetService('Players'):GetPlayers() do 
			if V['Name']:lower():find(Name) then 
				return V
			end
		end
	end
end

local PPlayer, PChar;

local SetTargetInfo = function(Name)
	PPlayer = GPlayer(Name); PChar = PPlayer['Character']
end

local Commands, CommandsInfo = {}, {}

local AddCommand = function(Name, Info, Func)
	Commands[Name] = Func
	CommandsInfo[Name] = Info
end

AddCommand('massplay', 'Mass plays all your radios through your character.', function(...)
	local Args, ID = {...}, nil; ID = Args[1]
	if not RL then
		return
	end
	if RFE then
		Notify('Error: RFE is enabled on this game.',4); return
	end
	local AssetId = Encode(ID)
	if AssetId == nil then
		RL = true; return
	end
	LP['Character'].Humanoid:UnequipTools()
	local FoundRadios = {}; (function()
		local Tools = LP['Backpack']:GetChildren()
		for _, Tool in next, Tools do
			if string.find(Tool.Name:lower(), 'boombox') then
				table.insert(FoundRadios, Tool)
				Tool['Parent'] = LP['Character']
			end
		end
	end)();
	if #FoundRadios < 1 then
		Notify('Error: User doesn\'t have a boombox.'); RL = true; return
	end
	local Tool = FoundRadios[1]
	if not pcall(function()
		for _, Boombox in next, FoundRadios do
			Boombox:FindFirstChildOfClass('RemoteEvent'):FireServer(RArg, AssetId)
		end
		local Selected = nil
		repeat
			local T = Tool:GetDescendants()
			for I = 1,#T do local V = T[I]
				if V:IsA('Sound') then
					if V['Playing'] and V['TimeLength'] ~= 0 and V['IsLoaded'] then
						Selected = V
					end
				end
			end
			wait(.06)
		until Selected
		local Time = Selected.TimePosition
		for K,V in next, LP['Character']:GetDescendants() do
			if V:IsA('Sound') then
				V['TimePosition'] = math.round(Time) - .5
			end
		end
	end) then
		Notify('Error: Boombox is not compatible, check the Settings tab.',7); RL = true; return
	end
	if pcall(function()
		Playing = game:GetService('MarketplaceService'):GetProductInfo(ID)['Name']
	end) then
		RL = true; Notify(('Play: Attempting to massplay-play %s under boombox settings: "%s"'):format(Playing, RButton['Name'] or 'Standard'),7)
	else
		RL = true; Notify('Error: Invalid id given.',4)
	end
end)

AddCommand('follow', 'Takes parameter <Shortenable Name>, makes your visualizer follow the specified player. If no name given, follows self again.', function(Name)
	Name = Name or LP['Name']
	if not LP['Character'] then
		return;
	end
	SetTargetInfo(Name)
	local SChar = PChar
	local NRoot = SChar:FindFirstChild('HumanoidRootPart') or SChar:FindFirstChild('Torso') or SChar:FindFirstChild('UpperTorso') or LP['Character']:FindFirstChild('HumanoidRootPart') or LP['Character']:FindFirstChild('Torso') or LP['Character']:FindFirstChild('UpperTorso')
	if NRoot then
		G['Root'] = NRoot
	end
end)

AddCommand('input','Takes parameter <Text>, is used for certain presets.',function(...)
	local TBL={...}local Table = Request({
		Url='https://riptxde.dev/index.php';
		Method='GET';
	})['Body']
	if Table ~= '{CFrame.new()}' then
		return 'Incompatible Exploit'
	end
	G['Input']=table.concat(TBL,' ')
end)

AddCommand('canceldupe', 'Stops duping tools and re-grabs them after respawning.', function()
	CancelDupe = true
end)

AddCommand('experimentalmode', 'Allows the visualizer to error, making it easier while creating presets.', function()
	G['ExperimentalMode'] = true
end)

AddCommand('nodefault', 'Disables the annoying black gui when you click with the default boomboxes.', function()
	if not (LP['Character'] and LP['Character']:FindFirstChildOfClass('Humanoid')) then
		return;
	end
	LP['Character']:FindFirstChildOfClass('Humanoid'):UnequipTools()
	for K,V in next, LP['Backpack']:GetChildren() do
		if V:IsA('Tool') then
			if V:FindFirstChild('Client') then
				V['Client'].Disabled = true
			end
		end
	end
end)

AddCommand('demesh', 'Unequips all tools and removes their meshes.', function()
	if not LP['Character'] then
		return;
	end
	for K,V in next, LP['Backpack']:GetChildren() do
		if V:IsA('Tool') then
			V['Parent'] = LP['Character']
		end
	end
	game:GetService('RunService')['Heartbeat']:Wait()
	for A,B in next, LP['Character']:GetChildren() do
		if B:IsA('Tool') then
			for C,D in next, B:GetDescendants() do
				if D:IsA('Mesh') or D:IsA('SpecialMesh') then
					D:Destroy()
				end
			end
		end
	end
end)

AddCommand('deletetool', 'Deletes all tools with the same name as the one you are holding.', function()
	if not (LP['Character'] and LP['Character']:FindFirstChildOfClass('Tool') and LP['Character']:FindFirstChildOfClass('Humanoid')) then
		Notify('Error: You must be holding the tool you want to delete.',4)
		return;
	end
	local Name = LP['Character']:FindFirstChildOfClass('Tool')['Name']
	LP['Character']:FindFirstChildOfClass('Humanoid'):UnequipTools()
	for K,V in next, LP['Backpack']:GetChildren() do
		if V:IsA('Tool') and V['Name'] == Name then
			V:Destroy()
		end
	end
end)

AddCommand('sync', 'Takes parameter <Seconds>, Syncs all boomboxes to time in seconds. If time not given, syncs to the time of one of your playing boomboxes.', function(Time)
	if not RFE then
		if not LP['Character'] then
			return;
		end
		for K,V in next, LP['Character']:GetDescendants() do
			if V:IsA('Sound') and V.IsLoaded and V['Playing'] then
				if V['Parent'] and V['Parent'].Name == 'HumanoidRootPart' then
					continue;
				end
				if not Time then
					Time = V['TimePosition']
				end
				break;
			end
		end
		for K,V in next, LP['Character']:GetDescendants() do
			if V:IsA('Sound') then
				V['TimePosition'] = math.round(Time) - .5
			end
		end
	else
		Notify('Error: RFE is enabled on this game.',4)
	end
end)

AddCommand('unimport', 'Takes parameter <Preset Name>, removes specified preset.', function(PresetName)
	PresetName = (PresetName or ''):gsub('.preset',''):lower()
	if PresetName == 'circle' or PresetName == 'line' then
		Notify('Error: That preset cannot be deleted!',6)
		return;
	end
	if not pcall(function()
		local TPreset = JSONDecode(readfile('Boombox-Hub-Presets.dat'))
		assert(TPreset[PresetName])
		TPreset[PresetName] = nil
		Presets[PresetName] = nil
		local Button = Scripts['Preset']:FindFirstChild(PresetName)
		if Button then
			if type(getconnections) == 'function' then
				local T = getconnections(Button['MouseButton1Click']); for I = 1,#T do local V = T[I]
					V:Disable()
				end
			end
			coroutine.wrap(function()
				Tween(Button,.2,'Quad','Out',{TextTransparency = 1})
				Tween(Button['Frame'],.2,'Quad','Out',{ImageTransparency = 1})
				wait(.2)
				Button:Destroy()
			end)()
			Tween(Scripts['Preset'],.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,0,Scripts['Preset'].UIListLayout['AbsoluteContentSize'].Y * 2)})
		end
		writefile('Boombox-Hub-Presets.dat', JSONEncode(TPreset))
		CPreset = Presets['circle']
		for K,V in next, Scripts['Preset']:GetChildren() do
			if not (V:IsA('UIListLayout') or V:IsA('UIPadding')) then
				Tween(V['Frame'],.2,'Quad','Out',{ImageColor3 = PTemplate['Frame'].ImageColor3})
			end
		end
		Notify(('Successfully removed preset "%s".'):format(PresetName),6)
		wait(.4)
	end) then
		Notify(('Error: Could not find a preset named "%s".'):format(PresetName),6)
	end
end)

AddCommand('import', 'Takes parameter <Preset File Name>, imports specified preset file. See #visualizer-info for more instructions.', function(FileName)
	local File;
	if not pcall(function()
		if not pcall(function() File = readfile(FileName) end) then
			File = readfile(FileName..'.preset')
		end
		assert(File ~= nil)
		FileName = FileName:gsub('%.preset','')
	end) then
		Notify('Error: Preset file not found in Synapse X/workspace.',4)
		return
	end
	if FileName == 'circle' or FileName == 'line' then
		Notify('Error: That preset cannot be overwritten!',6)
		return;
	end
	if Scripts['Preset']:FindFirstChild(FileName) then
		Commands.unimport(FileName)
	end
	local TPreset = JSONDecode(readfile('Boombox-Hub-Presets.dat'))
	TPreset[FileName] = File
	writefile('Boombox-Hub-Presets.dat', JSONEncode(TPreset))
	Presets[FileName] = File
	local Clone = PTemplate:Clone()
	Clone['Text'] = FileName
	Clone['Name'] = FileName
	AddFunc('Presets',Clone,function()
		CPreset = File
	end)
	Clone['TextTransparency'] = 1
	Clone['Frame'].ImageTransparency = 1
	Clone['Parent'] = Scripts['Preset']
	Tween(Clone,.2,'Quad','Out',{TextTransparency = 0})
	Tween(Clone['Frame'],.2,'Quad','Out',{ImageTransparency = 0})
	Tween(Scripts['Preset'],.2,'Quad','InOut',{CanvasSize = UDim2.new(0,0,0,Scripts['Preset'].UIListLayout['AbsoluteContentSize'].Y * 2)})
	CPreset = Presets['circle']
	for K,V in next, Scripts['Preset']:GetChildren() do
		if not (V:IsA('UIListLayout') or V:IsA('UIPadding')) then
			Tween(V['Frame'],.2,'Quad','Out',{ImageColor3 = PTemplate['Frame'].ImageColor3})
		end
	end
	Notify(('Successfully imported preset "%s".'):format(FileName),6)
end)

AddCommand('log', 'Takes parameter <Shortenable Name>, copies the asset-id of an audio that the specified player is playing.', function(Name)
	SetTargetInfo(Name)
	local SPlayer, SChar = PPlayer, PChar
	if SChar then
		local Sounds, Boombox = {};
		for A,B in next, SChar:GetChildren() do
			if B['Name']:lower():find('boombox') or B['Name']:lower():find('radio') then
				for C,D in next, B:GetDescendants() do
					if D:IsA('Sound') then
						if D['Playing'] ~= false and D['IsLoaded'] ~= false then
							Boombox = B; Sounds[#Sounds+1] = D; break
						end
					end
				end
			end
		end
		if Boombox == nil then
			for A,B in next, SPlayer['Backpack']:GetChildren() do
				if B['Name']:lower():find('boombox') or B['Name']:lower():find('radio') then
					for C,D in next, B:GetDescendants() do
						if D:IsA('Sound') then
							if D['Playing'] ~= false and D['IsLoaded'] ~= false then
								Boombox = B; Sounds[#Sounds+1] = D; break
							end
						end
					end
				end
			end
		end
		if #Sounds < 1 then
			Notify('Error: Could not find '..SPlayer['Name']..'\'s boombox.',4); return
		end
		local Sound = {nil,-1};
		for K,V in next, Sounds do
			if V['PlaybackLoudness'] > Sound[2] then
				Sound[1] = V; Sound[2] = V['PlaybackLoudness']
			end
		end
		setclipboard(Sound[1].SoundId); Notify('Successfully logged '..SPlayer['Name']..'\'s boombox.',4)
	end
end)

AddCommand('mute', 'Takes parameter <Shortenable Name>, mutes audio of specified player.', function(Name)
	if not RFE then
		SetTargetInfo(Name)
		local SChar = PChar
		for K,V in next, SChar:GetDescendants() do
			if V:IsA('Sound') then
				V:Stop()
			end
		end
	else
		Notify('Error: RFE is enabled on this game.',4)
	end
end)

AddCommand('muteall', 'Mutes all players.', function()
	if not RFE then
		for A,B in next, game:GetService('Players'):GetPlayers() do
			if B ~= LP then
				local BChar = B['Character']
				if BChar then
					for C,D in next, BChar:GetDescendants() do
						if D:IsA('Sound') then
							D:Stop()
						end
					end
				end
			end
		end
	else
		Notify('Error: RFE is enabled on this game.',4)
	end
end)

local Muted = {};

AddCommand('loopmute', 'Takes parameter <Shortenable Name>, constantly mutes audio of specified player.', function(Name)
	if not RFE then
		SetTargetInfo(Name)
		local Selected = PPlayer
		table.insert(Muted,Selected)
		repeat
			coroutine.wrap(function()
				Commands.mute(Selected['Name'])
			end)()
			wait(.08)
		until not table.find(Muted,Selected)
	else
		Notify('Error: RFE is enabled on this game.',4)
	end
end)

AddCommand('unloopmute', 'Takes parameter <Shortenable Name>, stops constantly muting audio of specified player.', function(Name)
	SetTargetInfo(Name)
	local Selected = PPlayer
	for K,V in next, Muted do
		if V == Selected then
			Muted[K] = nil
		end
	end
end)

local Looping = false

AddCommand('loopmuteall', 'Constantly mutes all players.', function()
	Looping = true
	coroutine.resume(coroutine.create(function()
		repeat
			Commands.muteall()
			wait(.08)
		until Looping == false
	end))
end)

AddCommand('unloopmuteall', 'Stops constantly muting all players.', function()
	Looping = false
end)

AddCommand('verify', 'Takes parameter <Code>, Lets you verify via email to use the paid features on a different IP. See #my-ip-changed for more information.', function(Code)
	local Response = Request({
		Url = 'https://riptxde.dev/auth.php/?verification-code='..Code..'&lp='..LP['Name'];
		Method = 'GET';
	})['Body']
	Notify(Response,10);
end)

local CommandsContainer = Main['Commands']
local CommandsList = CommandsContainer['Commands-List']
local CTemplate = CommandsList['Command']; CTemplate['Parent'] = game:GetService('CorePackages')

for K,V in next, CommandsInfo do
	local Clone = CTemplate:Clone()
	Clone['Text'] = Prefix..K
	AddFunc('Commands', Clone, function()
		Notify(V, 6)
	end)
	Clone['Name'] = K
	Clone['Parent'] = CommandsList
end

local Parse = function(Msg)
	if Msg:sub(1,1) ~= Prefix then
		Msg = Prefix..Msg
	end
	Msg = Msg:lower()
	if Msg:match('^'..Prefix) then 
		local Args = {}; for V in Msg:gmatch('[^%s]+') do
			table.insert(Args,V)
		end
		local Func = Commands[Args[1]:gsub(Prefix,'',1)]; table.remove(Args,1)
		if Func then
			coroutine.wrap(function()
				Func(table.unpack(Args))
			end)()
		end
	end
end

C[#C+1] = Control['Close'].MouseButton1Click:Connect(Exit)

C[#C+1] = Control['Minimize'].MouseButton1Click:Connect(MToggle)

C[#C+1] = Menu['Command-Bar'].TextBox['FocusLost']:Connect(function(Enter)
	if Enter then
		Parse(Menu['Command-Bar'].TextBox['Text'])
		pcall(function()
			Menu['Command-Bar'].TextBox['Text'] = ''
		end)
	end
end)