-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextButton_6 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextButton_7 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local TextButton_8 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TextButton_9 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local TextButton_10 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local TextButton_11 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local TextButton_12 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(54, 65, 68)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.211394295, 0, 0.181333318, 0)
Frame.Size = UDim2.new(0, 384, 0, 238)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TextLabel.Size = UDim2.new(0, 384, 0, 34)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "Chaos Script"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 28.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(38, 136, 54)
TextLabel.TextStrokeTransparency = 0.850
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton.Position = UDim2.new(0.018229166, 0, 0.176470593, 0)
TextButton.Size = UDim2.new(0, 107, 0, 26)
TextButton.Font = Enum.Font.Bangers
TextButton.Text = "Old Version"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:Connect(function()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Hitbox = Instance.new("TextButton")
local Gamepass = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local speedsonic = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame.Position = UDim2.new(0.218826383, 0, 0.14314115, 0)
Frame.Size = UDim2.new(0, 438, 0, 277)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 438, 0, 35)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Chaos Gui Script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 26.000
TextLabel.TextWrapped = true

Hitbox.Name = "Hitbox"
Hitbox.Parent = Frame
Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.Position = UDim2.new(0.0547945164, 0, 0.193650797, 0)
Hitbox.Size = UDim2.new(0, 164, 0, 50)
Hitbox.Font = Enum.Font.SourceSansBold
Hitbox.Text = "HITBOX"
Hitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.TextScaled = true
Hitbox.TextSize = 14.000
Hitbox.TextWrapped = true
Hitbox.MouseButton1Down:connect(function()
	_G.HeadSize = 20
	_G.Disabled = true

	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

Gamepass.Name = "Gamepass"
Gamepass.Parent = Frame
Gamepass.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Gamepass.Position = UDim2.new(0.570776224, 0, 0.193650797, 0)
Gamepass.Size = UDim2.new(0, 164, 0, 50)
Gamepass.Font = Enum.Font.SourceSansBold
Gamepass.Text = "FREE GAMEPASS!!!!"
Gamepass.TextColor3 = Color3.fromRGB(255, 255, 255)
Gamepass.TextScaled = true
Gamepass.TextSize = 14.000
Gamepass.TextWrapped = true
Gamepass.MouseButton1Down:connect(function()
	if game.CreatorType == Enum.CreatorType.User then
		game.Players.LocalPlayer.UserId = game.CreatorId
	end
	if game.CreatorType == Enum.CreatorType.Group then
		game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
	end
end)

fly.Name = "fly (patched)"
fly.Parent = Frame
fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fly.Position = UDim2.new(0.0547944903, 0, 0.596825421, 0)
fly.Size = UDim2.new(0, 164, 0, 50)
fly.Font = Enum.Font.SourceSansBold
fly.Text = "Fly Press (E)"
fly.TextColor3 = Color3.fromRGB(255, 255, 255)
fly.TextScaled = true
fly.TextSize = 14.000
fly.TextWrapped = true
fly.MouseButton1Down:connect(function()
	-- Press "E" to fly and unfly
	-- You have to re-apply the script if you die
	loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
end)

speedsonic.Name = "speed sonic"
speedsonic.Parent = Frame
speedsonic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
speedsonic.Position = UDim2.new(0.570776224, 0, 0.596825421, 0)
speedsonic.Size = UDim2.new(0, 164, 0, 50)
speedsonic.Font = Enum.Font.SourceSansBold
speedsonic.Text = "Speed"
speedsonic.TextColor3 = Color3.fromRGB(255, 255, 255)
speedsonic.TextScaled = true
speedsonic.TextSize = 14.000
speedsonic.TextWrapped = true
speedsonic.MouseButton1Down:connect(function()
	speed = 1500 --16 is default

	function onPlayerRespawned(character)
		wait(1) --loading delay
		local player = game.Players:GetPlayerFromCharacter(character)
		local human = character:findFirstChild("Humanoid")
		if player ~= nil and human ~= nil then
			human.WalkSpeed = speed
		end
	end

	game.Workspace.ChildAdded:connect(onPlayerRespawned)
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0, 0, 0.87189275, 0)
TextLabel_2.Size = UDim2.new(0, 438, 0, 35)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Script Made By JJspolit93s"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 26.000
TextLabel_2.TextWrapped = true
end)

UICorner_3.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_2.Position = UDim2.new(0.359375, 0, 0.176470593, 0)
TextButton_2.Size = UDim2.new(0, 107, 0, 26)
TextButton_2.Font = Enum.Font.Bangers
TextButton_2.Text = "Original Version"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:Connect(function()
local function Create(Object, Properties)
	local New = Instance.new(Object)
	for i,v in pairs(Properties) do
		New[i] = v
	end
	return New
end

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local Gui = Create("ScreenGui",{Name="MXscript",ResetOnSpawn=false,Parent=Player.PlayerGui})
local Frame = Create("Frame",{Parent=Gui,Position = UDim2.new(0.4,0,0.4,0),Size=UDim2.new(0.2,0,0.2,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=0})
local Title = Create("TextLabel",{Parent=Frame,Position=UDim2.new(0.3,0,-0.15,-1),Size=UDim2.new(0.4,0,0.15,0),Font=Enum.Font.Oswald,Text="MXscript",BorderSizePixel=3,TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(8,3,7),ZIndex=100})
local OutlineU = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.01,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=100})
local OutlineD = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,1,0),Size=UDim2.new(1,0,0.01,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=100})
local OutlineL = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,0,0),Size=UDim2.new(0.005,0,1,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=100})
local OutlineR = Create("Frame",{Parent=Frame,Position = UDim2.new(1,0,0,0),Size=UDim2.new(0.005,0,1,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=100})

local InfoText = Create("TextLabel",{Parent=Gui,Position=UDim2.new(0,0,0,0),Size=UDim2.new(0.1,0,0.1,0),BackgroundTransparency=0,BackgroundColor3=Color3.new(0,0,0),Font=Enum.Font.Oswald,Text="Weapons",TextColor3=Color3.new(0,0,0),TextStrokeTransparency=10,TextScaled=true,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Top,Visible=false,ZIndex=15})

local GiveGS = Create("TextButton",{Name="GiveGS",Parent=Frame,Position=UDim2.new(0.05,0,0.3,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="SD",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local GiveBD = Create("TextButton",{Name="GiveBD",Parent=Frame,Position=UDim2.new(0.05,0,0.5,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="BD",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local SpamTools = Create("TextButton",{Name="SpamTools",Parent=Frame,Position=UDim2.new(0.05,0,0.7,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="STools",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local KillNear = Create("TextButton",{Name="KillNear",Parent=Frame,Position=UDim2.new(0.6,0,0.3,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="KNear",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local SpamGrenades = Create("TextButton",{Name="C4/Grenades",Parent=Frame,Position=UDim2.new(0.6,0,0.5,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="C4/GR",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local FastKill = Create("TextButton",{Name="FastKill",Parent=Frame,Position=UDim2.new(0.6,0,0.7,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="FKAll",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local RSpam = Create("TextButton",{Name="RSpam",Parent=Frame,Position=UDim2.new(0.6,0,0.9,0),Size=UDim2.new(0.3,0,0.14,0),Font=Enum.Font.Oswald,Text="RSpam",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local SSpiked = Create("TextButton",{Name="SSpiked",Parent=Frame,Position=UDim2.new(0.05,0,0.9,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="SSpiked",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local InfDash = Create("TextButton",{Name="InfDash",Parent=Frame,Position=UDim2.new(0.05,0,0.07,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="InfDash",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})
local Pan = Create("TextButton",{Name="Pan",Parent=Frame,Position=UDim2.new(0.6,0,0.07,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Pan",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=0})

local ButtonInfo = {
    GiveGS = "Gives gamepass Emerald Greatsword weapon for free",
    GiveBD = "Gives gamepass Blood Dagger weapon for free",
    SpamTools = "Rapidly gives you multiple tools, use when combined with Spam Grenades",
    KillNear = "WHILE HOLDING OUT A WEAPON, damages the closest player from any distance",
    SpamGrenades = "Automatically throws grenades incredibly fast, use with Spam Tools to refresh grenades",
    FastKill = "Uses all weapons to kill everybody in the server. Give yourself more tools for faster killing"
}

local function GetChar()
    local Char = Player.Character or Player.CharacterAdded:Wait()
    return Char
end

local DragSpeed = .3
local FrameStart
local MouseStart
local HeldDown = false
Title.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		HeldDown = true
		FrameStart = Frame.Position
		MouseStart = Input.Position
		repeat
			Frame.Position = Frame.Position:Lerp(UDim2.new(FrameStart.X.Scale,FrameStart.X.Offset + (Mouse.X - MouseStart.X),FrameStart.Y.Scale,FrameStart.Y.Offset + (Mouse.Y - MouseStart.Y)), DragSpeed)
			game:GetService("RunService").RenderStepped:Wait()
		until not HeldDown
		local EndPos = {X = Mouse.X, Y = Mouse.Y}
		for i=1,50 do
			if not HeldDown then
				Frame.Position = Frame.Position:Lerp(UDim2.new(FrameStart.X.Scale,FrameStart.X.Offset + (EndPos.X - MouseStart.X),FrameStart.Y.Scale,FrameStart.Y.Offset + (EndPos.Y - MouseStart.Y)), DragSpeed)
			else
				break
			end
			game:GetService("RunService").RenderStepped:Wait()
		end
	end
end)

Title.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		HeldDown = false
	end
end)

Pan.MouseButton1Click:Connect(function()
    if Player.Character:FindFirstChild("Loaded") then Player.Character.Loaded:Destroy() end
    Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Pan")
end)

GiveGS.MouseButton1Click:Connect(function()
    if Player.Character:FindFirstChild("Loaded") then Player.Character.Loaded:Destroy() end
    Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Emerald Greatsword")
end)

GiveBD.MouseButton1Click:Connect(function()
    if Player.Character:FindFirstChild("Loaded") then Player.Character.Loaded:Destroy() end
    Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Blood Dagger")
end)

local Spamming = false
SpamTools.MouseButton1Click:Connect(function()
    if Spamming then
        Spamming = false
        SpamTools.BackgroundColor3 = Color3.new(1,1,1)
    else
        SpamTools.BackgroundColor3 = Color3.new(0,1,0)
        Spamming = true
        repeat
            if GetChar():FindFirstChild("Loaded") then
                GetChar().Loaded:Destroy()
            end
            Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Chainsaw")
            game:GetService("RunService").Heartbeat:Wait()
        until not Spamming
    end
end)

local KillingNear = false
KillNear.MouseButton1Click:Connect(function()
    if KillingNear then
        KillingNear = false
        KillNear.BackgroundColor3 = Color3.new(1,1,1)
    else
        KillNear.BackgroundColor3 = Color3.new(0,1,0)
        KillingNear = true
        repeat
            local targ
            local range = 10000
            for i,v in pairs(workspace:GetChildren()) do
                if v~=GetChar() and not table.find(_G.IgnoreList,v.Name) then
                    local vhum = v:FindFirstChild("Humanoid")
                    local vroot = v:FindFirstChild("HumanoidRootPart")
                    if vhum and vroot then
                        local dist = (vroot.Position - Player.Character.HumanoidRootPart.Position).magnitude
                        if vhum.Health>0 and not v:FindFirstChild("ForceField") and dist <= range then
                            targ = vhum
                            range = dist
                        end
                    end
                end
            end
            
            if targ then
                local tool = GetChar():FindFirstChildOfClass("Tool")
                tool.DamageRemote:FireServer(targ)
            end
            wait()
        until not KillingNear
    end
end)

local Grenading = false
RSpam.MouseButton1Click:Connect(function()
    if Grenading then
        Grenading = false
        RSpam.BackgroundColor3 = Color3.new(1,1,1)
    else
        RSpam.BackgroundColor3 = Color3.new(0,1,0)
        Grenading = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name == "Kawaii Revolver" then
                    GetChar().Humanoid:EquipTool(v)
                    v:Activate()
                    for i=1,2 do
                        game:GetService("RunService").Heartbeat:Wait()
                        break
                    end
                end
            end
            game:GetService("RunService").Heartbeat:Wait()
        until not Grenading
    end
end)

InfDash.MouseButton1Click:Connect(function()
	originalfunction = hookfunction(wait, function(seconds)
		if seconds == 2 then return end
		return originalfunction(seconds)
	end)
end)

local Grenading = false
SpamGrenades.MouseButton1Click:Connect(function()
    if Grenading then
        Grenading = false
        SpamGrenades.BackgroundColor3 = Color3.new(1,1,1)
    else
        SpamGrenades.BackgroundColor3 = Color3.new(0,1,0)
        Grenading = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name == "Grenade" then
                    GetChar().Humanoid:EquipTool(v)
                    v:Activate()
                    for i=1,5 do
                        game:GetService("RunService").Heartbeat:Wait()
                        break
                    end
                end
            end
            game:GetService("RunService").Heartbeat:Wait()
        until not Grenading
    end
end)

local Grenading = false
SSpiked.MouseButton1Click:Connect(function()
    if Grenading then
        Grenading = false
        SSpiked.BackgroundColor3 = Color3.new(1,1,1)
    else
        SSpiked.BackgroundColor3 = Color3.new(0,1,0)
        Grenading = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name == "Spiked Trap" then
                    GetChar().Humanoid:EquipTool(v)
                    v:Activate()
                    for i=1,5 do
                        game:GetService("RunService").Heartbeat:Wait()
                        break
                    end
                end
            end
            game:GetService("RunService").Heartbeat:Wait()
        until not Grenading
    end
end)

local Grenading = false
SpamGrenades.MouseButton1Click:Connect(function()
    if Grenading then
        Grenading = false
        SpamGrenades.BackgroundColor3 = Color3.new(1,1,1)
    else
        SpamGrenades.BackgroundColor3 = Color3.new(0,1,0)
        Grenading = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name == "C4" then
                    GetChar().Humanoid:EquipTool(v)
                    v:Activate()
                    for i=1,5 do
                        game:GetService("RunService").Heartbeat:Wait()
                    end
                    if not Grenading then
                        break
                    end
                end
            end
            game:GetService("RunService").Heartbeat:Wait()
        until not Grenading
    end
end)

local FastKilling = false
FastKill.MouseButton1Click:Connect(function()
    if FastKilling then
        FastKilling = false
        FastKill.BackgroundColor3 = Color3.new(1,1,1)
    else
        FastKill.BackgroundColor3 = Color3.new(0,1,0)
        FastKilling = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v:FindFirstChild("DamageRemote") then
                    GetChar().Humanoid:EquipTool(v)
                    
                    local targ
                    local range = 10000
                    for i,v in pairs(workspace:GetChildren()) do
                        if v~=GetChar() and not table.find(_G.IgnoreList,v.Name) then
                            local vhum = v:FindFirstChild("Humanoid")
                            local vroot = v:FindFirstChild("HumanoidRootPart")
                            if vhum and vroot then
                                local dist = (vroot.Position - Player.Character.HumanoidRootPart.Position).magnitude
                                if vhum.Health>0 and not v:FindFirstChild("ForceField") and dist <= range then
                                    targ = vhum
                                    range = dist
                                end
                            end
                        end
                    end
                    
                    for i=1,2 do
                        game:GetService("RunService").Heartbeat:Wait()
                    end
                    
                    if targ then
                        v.DamageRemote:FireServer(targ)
                    end
                    
                    if not FastKilling then
                        break
                    end
                end
            end
            wait()
        until not FastKilling
    end
end)

for name,info in pairs(ButtonInfo) do
    local button = Frame[name]
    button.MouseEnter:Connect(function()
    	local left = false
    	local con = button.MouseLeave:Connect(function()
    		left = true
    	end)
    	
    	InfoText.Visible = true
    	InfoText.Text = info
    	
    	repeat
    		game:GetService("RunService").RenderStepped:Wait()
    		InfoText.Position = UDim2.new(0,Mouse.X+5,0,Mouse.Y+5)
    	until left
    	InfoText.Visible = false
    	con:Disconnect()
    end)
end
end)

UICorner_4.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_3.Position = UDim2.new(0.690104127, 0, 0.176470593, 0)
TextButton_3.Size = UDim2.new(0, 107, 0, 26)
TextButton_3.Font = Enum.Font.Bangers
TextButton_3.Text = "NEW version"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:Connect(function()
if not _G.IgnoreList then
    _G.IgnoreList = {}
end

local function Create(Object, Properties)
	local New = Instance.new(Object)
	for i,v in pairs(Properties) do
		New[i] = v
	end
	return New
end

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local Gui = Create("ScreenGui",{Name="Peacemaker",ResetOnSpawn=false,Parent=Player.PlayerGui})
local Frame = Create("Frame",{Parent=Gui,Position = UDim2.new(0.4,0,0.4,0),Size=UDim2.new(0.2,0,0.2,0),BackgroundTransparency=0.6,BorderSizePixel=0,BackgroundColor3=Color3.new(1,1,1),ZIndex=10})
local Title = Create("TextLabel",{Parent=Frame,Position=UDim2.new(0.3,0,-0.15,-1),Size=UDim2.new(0.4,0,0.15,0),Font=Enum.Font.Oswald,Text="PEACEMAKER",BorderSizePixel=3,TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),ZIndex=11})
local OutlineU = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.01,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=11})
local OutlineD = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,1,0),Size=UDim2.new(1,0,0.01,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=11})
local OutlineL = Create("Frame",{Parent=Frame,Position = UDim2.new(0,0,0,0),Size=UDim2.new(0.005,0,1,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=11})
local OutlineR = Create("Frame",{Parent=Frame,Position = UDim2.new(1,0,0,0),Size=UDim2.new(0.005,0,1,0),BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=Color3.new(0,0,0),ZIndex=11})
local Note = Create("TextLabel",{Parent=Frame,Position=UDim2.new(0,0,0.9,0),Size=UDim2.new(1,0,0.1,0),Font=Enum.Font.Oswald,Text="Made by Crokuran",BorderSizePixel=3,BackgroundTransparency=1,TextScaled=true,TextWrapped=true,TextColor3=Color3.new(1,1,1),TextStrokeTransparency=0,ZIndex=11})

local ToolsText = Create("TextLabel",{Parent=Frame,Position=UDim2.new(0.05,0,0.05,0),Size=UDim2.new(0.3,0,0.2,0),BackgroundTransparency=1,Font=Enum.Font.Oswald,Text="Tools",TextColor3=Color3.new(1,1,1),TextStrokeTransparency=0,TextScaled=true,TextWrapped=true,ZIndex=11})
local WeaponsText = Create("TextLabel",{Parent=Frame,Position=UDim2.new(0.6,0,0.05,0),Size=UDim2.new(0.3,0,0.2,0),BackgroundTransparency=1,Font=Enum.Font.Oswald,Text="Weapons",TextColor3=Color3.new(1,1,1),TextStrokeTransparency=0,TextScaled=true,TextWrapped=true,ZIndex=11})
local InfoText = Create("TextLabel",{Parent=Gui,Position=UDim2.new(0,0,0,0),Size=UDim2.new(0.1,0,0.1,0),BackgroundTransparency=0,BackgroundColor3=Color3.new(0,0,0),Font=Enum.Font.Oswald,Text="Weapons",TextColor3=Color3.new(1,1,1),TextStrokeTransparency=0,TextScaled=true,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Top,Visible=false,ZIndex=15})

local GiveGS = Create("TextButton",{Name="GiveGS",Parent=Frame,Position=UDim2.new(0.05,0,0.3,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Emerald Greatsword",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})
local GiveBD = Create("TextButton",{Name="GiveBD",Parent=Frame,Position=UDim2.new(0.05,0,0.5,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Blood Dagger",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})
local SpamTools = Create("TextButton",{Name="SpamTools",Parent=Frame,Position=UDim2.new(0.05,0,0.7,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Spam Tools",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})
local KillNear = Create("TextButton",{Name="KillNear",Parent=Frame,Position=UDim2.new(0.6,0,0.3,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Kill Nearest",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})
local SpamGrenades = Create("TextButton",{Name="SpamGrenades",Parent=Frame,Position=UDim2.new(0.6,0,0.5,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Spam Grenades",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})
local FastKill = Create("TextButton",{Name="FastKill",Parent=Frame,Position=UDim2.new(0.6,0,0.7,0),Size=UDim2.new(0.3,0,0.15,0),Font=Enum.Font.Oswald,Text="Fast Kill All",TextScaled=true,TextWrapped=true,BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=2,ZIndex=11})

local ButtonInfo = {
    GiveGS = "Gives gamepass Emerald Greatsword weapon for free",
    GiveBD = "Gives gamepass Blood Dagger weapon for free",
    SpamTools = "Rapidly gives you multiple tools, use when combined with Spam Grenades",
    KillNear = "WHILE HOLDING OUT A WEAPON, damages the closest player from any distance",
    SpamGrenades = "Automatically throws grenades incredibly fast, use with Spam Tools to refresh grenades",
    FastKill = "Uses all weapons to kill everybody in the server. Give yourself more tools for faster killing"
}

local function GetChar()
    local Char = Player.Character or Player.CharacterAdded:Wait()
    return Char
end

local DragSpeed = .3
local FrameStart
local MouseStart
local HeldDown = false
Title.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		HeldDown = true
		FrameStart = Frame.Position
		MouseStart = Input.Position
		repeat
			Frame.Position = Frame.Position:Lerp(UDim2.new(FrameStart.X.Scale,FrameStart.X.Offset + (Mouse.X - MouseStart.X),FrameStart.Y.Scale,FrameStart.Y.Offset + (Mouse.Y - MouseStart.Y)), DragSpeed)
			game:GetService("RunService").RenderStepped:Wait()
		until not HeldDown
		local EndPos = {X = Mouse.X, Y = Mouse.Y}
		for i=1,50 do
			if not HeldDown then
				Frame.Position = Frame.Position:Lerp(UDim2.new(FrameStart.X.Scale,FrameStart.X.Offset + (EndPos.X - MouseStart.X),FrameStart.Y.Scale,FrameStart.Y.Offset + (EndPos.Y - MouseStart.Y)), DragSpeed)
			else
				break
			end
			game:GetService("RunService").RenderStepped:Wait()
		end
	end
end)

Title.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		HeldDown = false
	end
end)

GiveGS.MouseButton1Click:Connect(function()
    if Player.Character:FindFirstChild("Loaded") then Player.Character.Loaded:Destroy() end
    Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Emerald Greatsword")
end)

GiveBD.MouseButton1Click:Connect(function()
    if Player.Character:FindFirstChild("Loaded") then Player.Character.Loaded:Destroy() end
    Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Blood Dagger")
end)

local Spamming = false
SpamTools.MouseButton1Click:Connect(function()
    if Spamming then
        Spamming = false
        SpamTools.BackgroundColor3 = Color3.new(1,1,1)
    else
        SpamTools.BackgroundColor3 = Color3.new(0,1,0)
        Spamming = true
        repeat
            if GetChar():FindFirstChild("Loaded") then
                GetChar().Loaded:Destroy()
            end
            Player.PlayerGui["Menu Screen"].RemoteEvent:FireServer("Pencil")
            game:GetService("RunService").Heartbeat:Wait()
        until not Spamming
    end
end)

local KillingNear = false
KillNear.MouseButton1Click:Connect(function()
    if KillingNear then
        KillingNear = false
        KillNear.BackgroundColor3 = Color3.new(1,1,1)
    else
        KillNear.BackgroundColor3 = Color3.new(0,1,0)
        KillingNear = true
        repeat
            local targ
            local range = 10000
            for i,v in pairs(workspace:GetChildren()) do
                if v~=GetChar() and not table.find(_G.IgnoreList,v.Name) then
                    local vhum = v:FindFirstChild("Humanoid")
                    local vroot = v:FindFirstChild("HumanoidRootPart")
                    if vhum and vroot then
                        local dist = (vroot.Position - Player.Character.HumanoidRootPart.Position).magnitude
                        if vhum.Health>0 and not v:FindFirstChild("ForceField") and dist <= range then
                            targ = vhum
                            range = dist
                        end
                    end
                end
            end
            
            if targ then
                local tool = GetChar():FindFirstChildOfClass("Tool")
                tool.DamageRemote:FireServer(targ)
            end
            wait()
        until not KillingNear
    end
end)

local Grenading = false
SpamGrenades.MouseButton1Click:Connect(function()
    if Grenading then
        Grenading = false
        SpamGrenades.BackgroundColor3 = Color3.new(1,1,1)
    else
        SpamGrenades.BackgroundColor3 = Color3.new(0,1,0)
        Grenading = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name == "Grenade" then
                    GetChar().Humanoid:EquipTool(v)
                    v:Activate()
                    for i=1,5 do
                        game:GetService("RunService").Heartbeat:Wait()
                    end
                    if not Grenading then
                        break
                    end
                end
            end
            game:GetService("RunService").Heartbeat:Wait()
        until not Grenading
    end
end)

local FastKilling = false
FastKill.MouseButton1Click:Connect(function()
    if FastKilling then
        FastKilling = false
        FastKill.BackgroundColor3 = Color3.new(1,1,1)
    else
        FastKill.BackgroundColor3 = Color3.new(0,1,0)
        FastKilling = true
        repeat
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v:FindFirstChild("DamageRemote") then
                    GetChar().Humanoid:EquipTool(v)
                    
                    local targ
                    local range = 10000
                    for i,v in pairs(workspace:GetChildren()) do
                        if v~=GetChar() and not table.find(_G.IgnoreList,v.Name) then
                            local vhum = v:FindFirstChild("Humanoid")
                            local vroot = v:FindFirstChild("HumanoidRootPart")
                            if vhum and vroot then
                                local dist = (vroot.Position - Player.Character.HumanoidRootPart.Position).magnitude
                                if vhum.Health>0 and not v:FindFirstChild("ForceField") and dist <= range then
                                    targ = vhum
                                    range = dist
                                end
                            end
                        end
                    end
                    
                    for i=1,2 do
                        game:GetService("RunService").Heartbeat:Wait()
                    end
                    
                    if targ then
                        v.DamageRemote:FireServer(targ)
                    end
                    
                    if not FastKilling then
                        break
                    end
                end
            end
            wait()
        until not FastKilling
    end
end)

for name,info in pairs(ButtonInfo) do
    local button = Frame[name]
    button.MouseEnter:Connect(function()
    	local left = false
    	local con = button.MouseLeave:Connect(function()
    		left = true
    	end)
    	
    	InfoText.Visible = true
    	InfoText.Text = info
    	
    	repeat
    		game:GetService("RunService").RenderStepped:Wait()
    		InfoText.Position = UDim2.new(0,Mouse.X+5,0,Mouse.Y+5)
    	until left
    	InfoText.Visible = false
    	con:Disconnect()
    end)
end
end)

UICorner_5.Parent = TextButton_3

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_4.Position = UDim2.new(0.690104127, 0, 0.340336144, 0)
TextButton_4.Size = UDim2.new(0, 107, 0, 26)
TextButton_4.Font = Enum.Font.Bangers
TextButton_4.Text = "New Script Update"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Down:Connect(function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
end)

UICorner_6.Parent = TextButton_4

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_5.Position = UDim2.new(0.361979127, 0, 0.340336144, 0)
TextButton_5.Size = UDim2.new(0, 107, 0, 26)
TextButton_5.Font = Enum.Font.Bangers
TextButton_5.Text = "Script name"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000
TextButton_5.MouseButton1Down:Connect(function()

end)

UICorner_7.Parent = TextButton_5

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_6.Position = UDim2.new(0.0182291269, 0, 0.340336144, 0)
TextButton_6.Size = UDim2.new(0, 107, 0, 26)
TextButton_6.Font = Enum.Font.Bangers
TextButton_6.Text = "Script name"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000
TextButton_6.MouseButton1Down:Connect(function()

end)

UICorner_8.Parent = TextButton_6

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_7.Position = UDim2.new(0.0182291269, 0, 0.50420171, 0)
TextButton_7.Size = UDim2.new(0, 107, 0, 26)
TextButton_7.Font = Enum.Font.Bangers
TextButton_7.Text = "Script name"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextSize = 14.000
TextButton_7.MouseButton1Down:Connect(function()

end)

UICorner_9.Parent = TextButton_7

TextButton_8.Parent = Frame
TextButton_8.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_8.Position = UDim2.new(0.35937497, 0, 0.50420171, 0)
TextButton_8.Size = UDim2.new(0, 107, 0, 26)
TextButton_8.Font = Enum.Font.Bangers
TextButton_8.Text = "Script name"
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextSize = 14.000
TextButton_8.MouseButton1Down:Connect(function()

end)

UICorner_10.Parent = TextButton_8

TextButton_9.Parent = Frame
TextButton_9.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_9.Position = UDim2.new(0.690104127, 0, 0.50420171, 0)
TextButton_9.Size = UDim2.new(0, 107, 0, 26)
TextButton_9.Font = Enum.Font.Bangers
TextButton_9.Text = "Script name"
TextButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.TextSize = 14.000
TextButton_9.MouseButton1Down:Connect(function()

end)

UICorner_11.Parent = TextButton_9

TextButton_10.Parent = Frame
TextButton_10.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_10.Position = UDim2.new(0.690104127, 0, 0.680672288, 0)
TextButton_10.Size = UDim2.new(0, 107, 0, 26)
TextButton_10.Font = Enum.Font.Bangers
TextButton_10.Text = "Script name"
TextButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.TextSize = 14.000
TextButton_10.MouseButton1Down:Connect(function()

end)

UICorner_12.Parent = TextButton_10

TextButton_11.Parent = Frame
TextButton_11.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_11.Position = UDim2.new(0.361979127, 0, 0.680672288, 0)
TextButton_11.Size = UDim2.new(0, 107, 0, 26)
TextButton_11.Font = Enum.Font.Bangers
TextButton_11.Text = "Script name"
TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.TextSize = 14.000
TextButton_11.MouseButton1Down:Connect(function()

end)

UICorner_13.Parent = TextButton_11

TextButton_12.Parent = Frame
TextButton_12.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
TextButton_12.Position = UDim2.new(0.0156249702, 0, 0.680672288, 0)
TextButton_12.Size = UDim2.new(0, 107, 0, 26)
TextButton_12.Font = Enum.Font.Bangers
TextButton_12.Text = "Script name"
TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.TextSize = 14.000
TextButton_12.MouseButton1Down:Connect(function()

end)

UICorner_14.Parent = TextButton_12

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
TextLabel_2.Position = UDim2.new(0, 0, 0.857142866, 0)
TextLabel_2.Size = UDim2.new(0, 384, 0, 34)
TextLabel_2.Font = Enum.Font.Bangers
TextLabel_2.Text = "Credits To GamerZ"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 28.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(38, 136, 54)
TextLabel_2.TextStrokeTransparency = 0.850
TextLabel_2.TextWrapped = true

UICorner_15.Parent = TextLabel_20