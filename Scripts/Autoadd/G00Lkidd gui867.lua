--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local gui = Instance.new("ScreenGui")
gui.Name = "g00lkidd GUI- Client Side"
gui.Parent = game.CoreGui

--screengui = gui






local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.35, 0, 0.8, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
Frame.BorderSizePixel = 3
Frame.Active = true
Frame.Draggable = true
Frame.Parent = gui


local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0 ,0)
ImageLabel.BorderColor3 = Color3.fromRGB(27, 27, 27)
ImageLabel.BackgroundTransparency = 0
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0001, 0, 0.0001, 0)
ImageLabel.Size = UDim2.new(0.885, 35, 0.83, 54)
ImageLabel.Image = "rbxassetid://18840948887"
ImageLabel.Active = false

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.33, 0, 0.1, 0)
TextLabel.Position = UDim2.new(0.33, 0, 0.00001, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "G00LKIDD Gui"
TextLabel.TextSize = 29
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Frame

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.00001, 0, 0.2, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Sky"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
local ID = 18840948887
 local Skybox = true
 
if Skybox == true then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=" ..ID
sky.SkyboxDn = "http://www.roblox.com/asset/?id=" ..ID
sky.SkyboxFt = "http://www.roblox.com/asset/?id=" ..ID
sky.SkyboxLf = "http://www.roblox.com/asset/?id=" ..ID
sky.SkyboxRt = "http://www.roblox.com/asset/?id=" ..ID
sky.SkyboxUp = "http://www.roblox.com/asset/?id=" ..ID
end
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.35, 0, 0.2, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Decal Spam"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
local ID = 18840948887

for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local decal1 =Instance.new("Decal")
			local decal2 =Instance.new("Decal")
			local decal3 =Instance.new("Decal")
			local decal4 =Instance.new("Decal")
			local decal5 =Instance.new("Decal")
			local decal6 =Instance.new("Decal")
			decal1.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal2.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal3.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal4.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal5.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal6.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal1.Parent = v
			decal2.Parent = v
			decal3.Parent = v
			decal4.Parent = v
			decal5.Parent = v
			decal6.Parent = v
			decal1.Face = "Front"
		    decal2.Face = "Top"
		    decal3.Face = "Left"
		    decal4.Face = "Right"
		    decal5.Face = "Bottom"
		    decal6.Face = "Back"
		end
		end
			for i,v in pairs (game.Workspace:GetChildren()) do
			if v:IsA("Model") then
			for i,z in pairs (v:GetChildren()) do
			if z:IsA("Part") then
						local decal7 =Instance.new("Decal")
			local decal8 =Instance.new("Decal")
			local decal9 =Instance.new("Decal")
			local decal10 =Instance.new("Decal")
			local decal11 =Instance.new("Decal")
			local decal12 =Instance.new("Decal")
			decal7.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal8.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal9.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal10.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal11.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal12.Texture = "http://www.roblox.com/asset/?id=" ..ID
			decal7.Parent = z
			decal8.Parent = z
			decal9.Parent = z
			decal10.Parent = z
			decal11.Parent = z
			decal12.Parent = z
			decal7.Face = "Front"
		    decal8.Face = "Top"
		    decal9.Face = "Left"
		    decal10.Face = "Right"
		    decal11.Face = "Bottom"
		    decal12.Face = "Back"
			end
			end
			end
			end
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.7, 0, 0.2, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Particle"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
local ID = 18840948887
 local particle = true
 
if particle == true then
for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
	local particle = Instance.new("ParticleEmitter")
	particle.Texture = "rbxassetid://18840948887" ..ID
	particle.Parent = v
	particle.Rate = 200
	for i,x in pairs (game.Workspace:GetChildren()) do
		if x:IsA("Model") then
			for i,z in pairs (x:GetChildren()) do
			if z:IsA("Part") then
					local particle2 = Instance.new("ParticleEmitter")
	particle2.Texture = "rbxassetid://18840948887" ..ID
	particle2.Parent = z
	particle2.Rate = 200
				end
			end
		end
		end
		end
		end
end

for Get,Players in ipairs(game.Players:GetPlayers()) do

for Get,Players in ipairs(game.Players:GetPlayers()) do
	
			for Get,Workspace in ipairs(game.Workspace:GetChildren()) do
	
				if (Workspace.Name == Players.Name) then
	
					ParticleEmitter = Instance.new("ParticleEmitter");
	
					ParticleEmitter.Texture = ("rbxassetid://18840948887")
	
					ParticleEmitter.Parent = Workspace.Head;
					
					ParticleEmitter.Rate = 200
	
				end
	
			end
	
		end
	
	
	
		for Get,Workspace in ipairs(game.Workspace:GetChildren()) do
	
			ParticleEmitter = Instance.new("ParticleEmitter");
	
			ParticleEmitter.Texture = ("rbxassetid://18840948887")
	
			ParticleEmitter.Parent = Workspace;
			
			ParticleEmitter.Rate = 200
	
		end
		end
		
		for Get,Workspace in ipairs(game.Workspace:GetChildren()) do
	
			ParticleEmitter = Instance.new("ParticleEmitter");
	
			ParticleEmitter.Texture = ("rbxassetid://18840948887")
	
			ParticleEmitter.Parent = Workspace.Torso;
			
			ParticleEmitter.Rate = 200
			
			end
			
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.00001, 0, 0.45, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "666"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
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
					f.Size=11;
					f.Heat=12;
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
				--for _,__ in pairs(fac) do
				--local ddec = Instance.new("Decal", v)
				--ddec.Face = __
				--ddec.Texture = dec
				--end end)()
				if #(v:GetChildren())>0 then
					xds(v)
				end
			end
		end
		xds(game.Workspace)
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.35, 0, 0.45, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Music"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
local tubers93		= Instance.new("Sound")
		tubers93.Parent		= game:GetService("Workspace")
		tubers93.SoundId		= "rbxassetid://7006487793"
		tubers93.Playing		= true
		tubers93.Looped		= true
		tubers93.Pitch      = 0.8
		tubers93.Volume		= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.7, 0, 0.45, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Disco Fog"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
while true do
			game.Lighting.Ambient = Color3.new(math.random() , math.random() , math.random())
			wait(0.2)
			game.Lighting.ShadowColor = Color3.new(math.random() , math.random() , math.random())
			wait(0.2) 
		end
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.00001, 0, 0.7, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Shedletskyify"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
for Get,Players in ipairs(game.Players:GetPlayers()) do
	
			for Get,Workspace in ipairs(game.Workspace:GetChildren()) do
	
				if (Workspace.Name == Players.Name) then
	
					ParticleEmitter = Instance.new("ParticleEmitter");
	
					ParticleEmitter.Texture = ("rbxassetid://18840948887");
	
					ParticleEmitter.Parent = Workspace.Head;
	
				end
	
			end
	
		end
	
	
	
		for Get,Workspace in ipairs(game.Workspace:GetChildren()) do
	
			ParticleEmitter = Instance.new("ParticleEmitter");
	
			ParticleEmitter.Texture = ("rbxassetid://18840948887")
	
			ParticleEmitter.Parent = Workspace;
	
		end
	
	
	
		a=Instance.new("Sky",game.Lighting)
	
		b={"Bk","Dn","Ft","Lf","Rt","Up"}
	
		for i,v in pairs(b) do
	
			a["Skybox"..v]="rbxassetid://18840948887"
	
		end
	
	
	
		print("Music executed!")
	
		s = Instance.new("Sound")
	
		s.Name = "Music"
	
		s.SoundId = "rbxassetid://18840948887" --Put the id into there.
	
		s.Looped = true
	
		s.Pitch = 1 --You can edit these settings.
	
		s.Volume = 2000 --You can edit these settings.
	
		s.archivable = false
	
	
	
		s.Parent = game.Workspace
	
	
	
		wait(1)
	
	
		s:play()
	
	
	
		for i,v in pairs(game.Players:GetChildren()) do
			isis = Instance.new("Message",workspace)
			isis.Text = "dislike for you fuck!"
			wait(1)
			isis:Destroy()
			bomb = Instance.new("Explosion")
			bomb.Parent = v.Character.Torso
			bomb.Position = v.Character.Torso.Position
			bomb.BlastPressure = 1000
			bomb.BlastRadius = 1000
		end
		print("Music executed!")
	
		s = Instance.new("Sound")
	
		s.Name = "Music"
	
		s.SoundId = "http://www.roblox.com/asset/?id=1847661821" --Put the idi into there.
	
		s.Looped = true
	
		s.Pitch = 0.5 --You can edit these settings.
	
		s.Volume = 100 --You can edit these settings.
	
		s.archivable = false
	
	
	
		s.Parent = game.Workspace
	
	
	
		wait(1
		)
	
	
		s:play()
	
	
	
		for i,v in pairs(game.Players:GetChildren()) do
			isis = Instance.new("Message",workspace)
			isis.Text = "OH FUCK, SHEDLETSKY'S RAP IS STARTING! LEL"
			wait(1)
			isis:Destroy()
			bomb = Instance.new("Explosion")
			bomb.Parent = v.Character.Torso
			bomb.Position = v.Character.Torso.Position
			bomb.BlastPressure = 1000
			bomb.BlastRadius = 1000
		end
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.35, 0, 0.7, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Unanchor All"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()

end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.3, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.7, 0, 0.7, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(213, 115, 61) -- Orange
TextButton.BorderSizePixel = 2
TextButton.BackgroundTransparency = 0.66
TextButton.Text = "Hint"
TextButton.TextSize = 23
TextButton.TextWrapped = true
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
	
		local msg = Instance.new("Hint")
		msg.Parent = Workspace
	
		while true do
			msg.Text = "This Game Get Fucked By G00BKIDZ LOL"
			wait(1.5)
			msg.Text = "Get Fucked Mafaka1!1!!1!1"
			wait(1.5)
			msg.Text = "team B00GKIDZ AND g00bkidz join today!"
			wait(1.5)
		end
end)

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.3, 0, 0.2, 0)
TextLabel.Position = UDim2.new(0.35, 0, 0.85, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Text = "Cerdits To : b00gkidz"
TextLabel.TextSize = 15
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Frame

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.3, 0, 0.2, 0)
TextLabel.Position = UDim2.new(0.35, 0, 0.05, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Text = "Made By me "
TextLabel.TextSize = 28
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Frame