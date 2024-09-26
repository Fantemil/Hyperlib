-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 6
Frame.Position = UDim2.new(0.169708028, 0, 0.298196942, 0)
Frame.Size = UDim2.new(0, 289, 0, 189)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 6
ImageLabel.Size = UDim2.new(0, 289, 0, 188)
ImageLabel.Image = "rbxassetid://17031816327"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 6
TextLabel.Size = UDim2.new(0, 289, 0, 23)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "teamZamiahmckillion30 gui v1"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 6
TextLabel_2.Position = UDim2.new(0, 0, 7.52173901, 0)
TextLabel_2.Size = UDim2.new(0, 289, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by teamcamer0n"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-0.00257942174, 0, 0.180482566, 0)
TextButton.Size = UDim2.new(0, 55, 0, 27)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "jumpscare"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = TextButton
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(1.20000005, 0, 0, 0)
TextButton_2.Size = UDim2.new(0, 67, 0, 27)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "skybox"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = TextButton_2
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(1.17910445, 0, 0, 0)
TextButton_3.Size = UDim2.new(0, 77, 0, 27)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "decal spam"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = TextButton_3
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(-1.88642263, 0, 1.62962961, 0)
TextButton_4.Size = UDim2.new(0, 124, 0, 31)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Zamiahmckillion30 theme"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = TextButton_4
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(-0.00806451589, 0, 1.5806452, 0)
TextButton_5.Size = UDim2.new(0, 80, 0, 32)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Zamiahmckillion30 hint"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

TextButton_6.Parent = TextButton_5
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(1.5625, 0, 0, 0)
TextButton_6.Size = UDim2.new(0, 98, 0, 29)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "fire"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

TextButton_7.Parent = TextButton_6
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.254898965, 0, -1.68965518, 0)
TextButton_7.Size = UDim2.new(0, 100, 0, 30)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "theme 2"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true

-- Scripts:

local function VEZSY_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
				spawn(function()
					local newgui = Instance.new("ScreenGui",v.PlayerGui)
					newgui.Name = "Screamer"
					local newimage = Instance.new("ImageLabel",newgui)
					newimage.Image = "http://www.roblox.com/asset/?id=17031816327"
					newimage.Size = UDim2.new(1,1,1,1)
					local s = Instance.new("Sound",newgui)
					s.SoundId = "rbxassetid://6129291390"
					s.Volume = 9999999999999999999999999999999999999
					s.Looped = true
					s:Play()
					print("Screamed "..v.Name)
					while wait(9) do
	
						newimage.Parent:Destroy()
	
					end
				end)
			end
		end
	end)
	
end
coroutine.wrap(VEZSY_fake_script)()
local function TMDEZUA_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	--sky
	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=17031816327"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=17031816327"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=17031816327"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=17031816327"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=17031816327"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=17031816327"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
	
	
end
coroutine.wrap(TMDEZUA_fake_script)()
local function ZLVNX_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=17031816327" then
					v.Parent = nil
				elseif v:IsA("BasePart") then
					v.Material = "Plastic"
					v.Transparency = 0
					local One = Instance.new("Decal", v)
					local Two = Instance.new("Decal", v)
					local Three = Instance.new("Decal", v)
					local Four = Instance.new("Decal", v)
					local Five = Instance.new("Decal", v)
					local Six = Instance.new("Decal", v)
					One.Texture = "http://www.roblox.com/asset/?id=17031816327"
					Two.Texture = "http://www.roblox.com/asset/?id=17031816327"
					Three.Texture = "http://www.roblox.com/asset/?id=17031816327"
					Four.Texture = "http://www.roblox.com/asset/?id=17031816327"
					Five.Texture = "http://www.roblox.com/asset/?id=17031816327"
					Six.Texture = "http://www.roblox.com/asset/?id=17031816327"
					One.Face = "Front"
					Two.Face = "Back"
					Three.Face = "Right"
					Four.Face = "Left"
					Five.Face = "Top"
					Six.Face = "Bottom"
				end
				exPro(v)
			end
		end
		function asdf(root)
			for _, v in pairs(root:GetChildren()) do
				asdf(v)
			end
		end
		exPro(game.Workspace)
		asdf(game.Workspace)
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
	
	--17031816327
	
end
coroutine.wrap(ZLVNX_fake_script)()
local function MRXN_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://1839246774" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
	
	
	
end
coroutine.wrap(MRXN_fake_script)()
local function OQWXM_fake_script() -- TextButton_5.Script 
	local script = Instance.new('Script', TextButton_5)

	script.Parent.MouseButton1Down:Connect(function()
		local function write(text,object)
			if object:IsA("Hint") == true then
				local count = object:FindFirstChild("Count")
				if count == nil then
					count = Instance.new("NumberValue")
					count.Parent = object
					count.Name = "Count"
					count.Value = count.Value + 1
				else
					count.Value = count.Value + 1
				end
				local startcount = count.Value
				for i = 1,#text do
					if count.Value == startcount then
						local letter = string.sub(text,i,i)
						object.Text = string.sub(text,1,i)
						wait(0.001)
					else
						break
					end
				end
			end
		end
		local bro = Instance.new("Hint",workspace)
		write("teamZamiahmckillion30 join today!",bro)
	end)
	
end
coroutine.wrap(OQWXM_fake_script)()
local function ZNJOJ_fake_script() -- TextButton_6.Script 
	local script = Instance.new('Script', TextButton_6)

	script.Parent.MouseButton1Click:Connect(function()
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
	
end
coroutine.wrap(ZNJOJ_fake_script)()
local function MBMUAON_fake_script() -- TextButton_7.Script 
	local script = Instance.new('Script', TextButton_7)

	function onClick()
		Instance.new("Sound").Parent = game.Workspace  game.Workspace.Sound.SoundId ="rbxassetid://5228173823" game.Workspace.Sound.Looped=true  game.Workspace.Sound:Play()
	end
	
	script.Parent.MouseButton1Down:connect(onClick)
	
	
	
	
	
	
end
coroutine.wrap(MBMUAON_fake_script)()
