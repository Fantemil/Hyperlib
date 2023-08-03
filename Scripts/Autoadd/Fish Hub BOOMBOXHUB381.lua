vis = false
sets = {}
muted = {}
function gyro()
    	for t,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	        for r,n in pairs(b:GetChildren()) do
	            for u,m in pairs(b.Handle:GetChildren()) do
	                if m.Name == "BodyPosition" then
	                    m:Destroy()
	                end
                    if m.Name == "BodyGyro" then
                        m:Destroy()
                    end
	            end
	        end
    	end
    end
function getSelection()
    local toolsl = {}
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
lowername = string.lower(v.Name)
        if v:IsA'Tool' and v.Name == "BoomBox" then
            table.insert(toolsl,v)
        end
    end
    for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
lowername = string.lower(v.Name)
        if v:IsA'Tool' and v.Name == "BoomBox" then
            table.insert(toolsl,v)
        end
    end
    return toolsl
end
wait(1)
    Index = 0
    Devide = 0
    x = 360
    switch = false
    pbl = Instance.new("NumberValue", game.ReplicatedStorage)
    off = Instance.new("NumberValue", game.ReplicatedStorage)
    d = 500
    prefix = "-"
    sin = Instance.new("NumberValue")
    sin.Value = 3.14
    ym = Instance.new("NumberValue")
    ym.Value = -4
    rx = Instance.new("NumberValue")
    ry = Instance.new("NumberValue")
    rz = Instance.new("NumberValue")
    tx = Instance.new("NumberValue")
    ty = Instance.new("NumberValue")
    tz = Instance.new("NumberValue")
    pbl.Value = 1
    off.Value = 1
    local ts = game:GetService("TweenService")
    function prop1(i, v)
        local ti = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0, false, 0)
        local prop = {
            Value = v
        }
        local aaa = ts:Create(i, ti, prop)
        aaa:Play()
    end
    mode1, mode2, mode3, mode4 = true, false, false, false
    local player = game.Players.LocalPlayer.Name
    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local msg = msg:lower()
        if msg:sub(1, 7) == "prefix " then
            prefix = msg:sub(8)
        end
        if msg:sub(1, 6) == prefix .. "mode " then
            if msg:sub(7, 7) == "1" then
                mode1 = true
                mode2 = false
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "2" then
                mode1 = false
                mode2 = true
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "3" then
                mode1 = false
                mode2 = false
                mode3 = true
                mode4 = false
            elseif msg:sub(7, 7) == "4" then
                mode1 = false
                mode2 = false
                mode3 = false
                mode4 = true
            end
        end
        if msg:sub(1, 6) == prefix .. "play " then
            for i, v in pairs(sets) do
                v.Remote:FireServer("PlaySong", msg:sub(7))
            end
        end
        if msg:sub(1, 3) == prefix .. "p " then
            player = gotya(msg:sub(4))
            print(player)
            if player == nil then
                FoundPlr = false
            else
                FoundPlr = true
            end
        end
        if msg:sub(1, 5) == prefix .. "pbl " then
            prop1(pbl, tonumber(msg:sub(6)))
        end
        if msg:sub(1, 4) == prefix .. "os " then
            prop1(off, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 3) == prefix .. "d " then
            d = tonumber(msg:sub(4))
        end
        if msg:sub(1, 3) == prefix .. "y " then
            prop1(ym, tonumber(msg:sub(4)))
        end
        if msg:sub(1, 3) == prefix .. "k " then
            k = tonumber(msg:sub(4))
        end
        if msg:sub(1, 4) == prefix .. "rx " then
            prop1(rx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ry " then
            prop1(ry, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "rz " then
            prop1(rz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tx " then
            prop1(tx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ty " then
            prop1(ty, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tz " then
            prop1(tz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 5) == prefix .. "sin " then
            prop1(sin, tonumber(msg:sub(6)))
        end
    end)
    k = 1.1
function anchor()
    game.Players.LocalPlayer.Character.Torso.Anchored = true
    wait(0.2)
    for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if a.Name == "Right Arm" then
            for i,z in pairs(a:GetChildren()) do
                if z.Name == "RightGrip" then
                    z:Destroy()
                end
            end
            wait(0.2)
            game.Players.LocalPlayer.Character.Torso.Anchored = false
        end
    end
end
wait(1)
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Fish Hub", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Visualizer")
local section2 = page:addSection("Visualizer Options")
section1:addTextbox("Sound ID", "0", function(value, enterPressed)
    
if enterPressed then
_G.id = value
venyx:Notify("Changed ID", "ID set to "..value)
end
end)

section1:addTextbox("Dupe Amount", "0", function(value, enterPressed)
    
if enterPressed then
_G.dupeamount = value
venyx:Notify("Changed dupe amount", "Dupe amount set to "..value)
end
end)

section1:addButton("Dupe Tools", function()
        for i=1,tonumber(_G.dupeamount) or 1 do
        char=game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character=nil
        game.Players.LocalPlayer.Character=char
        char.Animate:Destroy()
        char.HumanoidRootPart.CFrame=CFrame.new(0,9999,0)
        wait(.1)
        char.HumanoidRootPart.Anchored=true
        for i,v in pairs(char:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent=game.Players.LocalPlayer.Backpack
            end
        end
        wait(game.Players.RespawnTime-0.3)
        local t = {}
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            v.Parent=char
            v.Parent=workspace
            t[i]=v
        end
        char.Humanoid:Destroy()
        game.Players.LocalPlayer.Character=nil
        game.Players.LocalPlayer.CharacterAdded:Wait()
        char=game.Players.LocalPlayer.Character
        char:WaitForChild("Humanoid")
        wait(.1)
        for i,v in pairs(t) do
            char.Humanoid:EquipTool(v)
        end
        wait(.3)
    end
    end)

section1:addTextbox("Visualize Player", "Name", function(value, enterPressed)
    
if enterPressed then
player = value
venyx:Notify("Changed player", "Player set to "..value)
end
end)

section1:addButton("Play ID", function()
    if vis == false then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	else
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	end
	wait(1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "BoomBox" then
			coroutine.wrap(function()
				v.Handle:FindFirstChildOfClass("Sound").TimePosition=0
				v.Handle:FindFirstChildOfClass("Sound").Playing=true
			end)()
		end
	end
end)
--vis button

section2:addTextbox("Boombox Distance", "0", function(value, enterPressed)
    
if enterPressed then
offvalue = value
prop1(off, tonumber(offvalue))
venyx:Notify("Changed distance", "Distance set to "..value)
end
end)

section2:addTextbox("Boombox Height", "0", function(value, enterPressed)
    
if enterPressed then
height = value
prop1(ym, tonumber(height))
venyx:Notify("Changed height", "Height set to "..value)
end
end)

section2:addTextbox("Boombox Speed", "0", function(value, enterPressed)
    
if enterPressed then
sin.Value = value
venyx:Notify("Changed speed", "Speed set to "..value)
end
end)

section2:addTextbox("Boombox PBL", "0", function(value, enterPressed)
    
if enterPressed then
pbl.Value = value
venyx:Notify("Changed PBL", "PBL set to "..value)
end
end)
--other vis page
local vispage = venyx:addPage("Presets", 5012544693)
local section4 = vispage:addSection("Presets")
section4:addButton("Spiral", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
				v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(yv.Value + time() * math.pi)) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value) + time() * sin.Value) * off.Value) + Vector3.new(0,math.rad((i*(360/#tools))),0)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end)
			end
	end
    venyx:Notify("Visualizer", "Started spiral visualizer")
end)

section4:addButton("Circle", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
				v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(yv.Value + time() * math.pi)) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(0+v.Handle.Sound.PlaybackLoudness/600,0,0) * CFrame.new(0,0,0+v.Handle.Sound.PlaybackLoudness/300)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
    venyx:Notify("Visualizer", "Started circle visualizer")
end)
section4:addButton("Line", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = game.Players[player].Character.Torso.CFrame * CFrame.new(i * off.Value - (#tools * 3 / 2), math.sin(math.rad(val.Value/0.5+rot+v.Handle.Sound.PlaybackLoudness/125))*pbl.Value,0) * CFrame.new(0,0+ym.Value,0)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
    venyx:Notify("Visualizer", "Started line visualizer")
end)
section4:addButton("Line 2", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = game.Players[player].Character.Torso.CFrame * CFrame.new(i * 1.6 - (#tools * 1.6 / 2), math.abs(math.sin(yv.Value + time() * math.pi)) * pbl.Value * v.Handle.Sound.PlaybackLoudness * 0.005,0) * CFrame.new(-1,0+ym.Value,0) * CFrame.Angles(0,math.rad(90),math.rad(90))
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
    venyx:Notify("Visualizer", "Started line 2 visualizer")
end)
section4:addButton("Orbit", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Position = game.Players[player].Character.Torso.Position
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 2, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(math.rad((i*(360/#tools))+rot),0,0) * CFrame.new(0,0+ym.Value,0+off.Value+v.Handle.Sound.PlaybackLoudness/150)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
    venyx:Notify("Visualizer", "Started orbit visualizer")
end)
section4:addButton("Wavy", function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			bg.CFrame = v.Handle.CFrame
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local song = char:FindFirstChildOfClass("Tool").Handle.Sound
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
				v.Handle.Position = game.Players[player].Character.Head.Position
				v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value+song.PlaybackLoudness/250) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(val.Value/3 + tick()/3 * math.pi)) * 400 * 0.005 * pbl.Value, math.cos(math.rad(val.Value+song.PlaybackLoudness/250) + time() * sin.Value) * off.Value)
				bp.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value+song.PlaybackLoudness/250) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(val.Value/3 + tick()/3 * math.pi)) * 400 * 0.005 * pbl.Value, math.cos(math.rad(val.Value+song.PlaybackLoudness/250) + time() * sin.Value) * off.Value)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(0,0,0) * CFrame.new(0,0,0+v.Handle.Sound.PlaybackLoudness/300)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
    venyx:Notify("Visualizer", "Started wavy visualizer")
end)
-- second page
local guioptions = venyx:addPage("Gui Options", 5012544693)
local section3 = guioptions:addSection("Options")
section3:addKeybind("Toggle Bind", Enum.KeyCode.F1, function()
    venyx:toggle()
    end, function()
    venyx:Notify("Keybind", "Changed keybind")
    end)
--third page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Gui Theme")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
--credits page
local credits = venyx:addPage("Credits", 5012544693)
local creds = credits:addSection("Script Credits")
creds:addTextbox("eloekx2 aka. $V#1337 - dev")
-- load
venyx:SelectPage(venyx.pages[1], true)