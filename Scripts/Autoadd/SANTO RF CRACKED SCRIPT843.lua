-- THERES NO UI LIB SKID IT IF YOU WANT

-- localistan
local executor = identifyexecutor() or "Unknown"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local network = ReplicatedStorage:WaitForChild("network")
local Shared = network:WaitForChild("Shared")
local Lighting = game:GetService("Lighting")
local plr = game:GetService('Players').LocalPlayer
local id = plr.UserId
local r_storage = game:GetService("ReplicatedStorage")
local profiles = r_storage.network.Profiles
local p_prof = profiles:FindFirstChild(tostring(id))
local lfolder = p_prof.level
local sfolder = p_prof.stats

-- anticheat bypass
if executor == "Solara" then
    if game.PlaceId == 15758062201 then
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local network = ReplicatedStorage:WaitForChild("network")
        local Shared = network:WaitForChild("Shared")
        local Lighting = game:GetService("Lighting")
        local function removeFirstRemoteEvent()
            local remoteEvents = Shared:GetChildren()
            
            if #remoteEvents >= 1 then
                remoteEvents[1]:Remove()
            end
        end

        local function checkIfPreviouslyRan()
            if Lighting:FindFirstChild("ScriptRanFlag") then
            
            else
                local flag = Instance.new("BoolValue")
                flag.Name = "ScriptRanFlag"
                flag.Parent = Lighting
                removeFirstRemoteEvent()
            end
        end
else
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local network = ReplicatedStorage:WaitForChild("network")
        local Shared = network:WaitForChild("Shared")
        
        local connections = {}
    
        local function disableFirstRemoteEvent()
        local remoteEvents = Shared:GetChildren()
        local remoteEvent
    
        for _, obj in ipairs(remoteEvents) do
            if obj:IsA("RemoteEvent") then
                remoteEvent = obj
                break
            end
        end
    
        if remoteEvent then
            if remoteEvent.OnServerEvent then
                for _, connection in ipairs(getconnections(remoteEvent.OnServerEvent)) do
                    table.insert(connections, connection)
                    connection:Disable()
                end
            end
        end
    end
    
    disableFirstRemoteEvent()
end
else
    local OldFireServer
    OldFireServer = hookfunction(Instance.new("RemoteEvent").FireServer, newcclosure(function(...)
        local Args = { select(2, ...) }
        if Args[2] == "kick" then
            return coroutine.yield()
        end 
        return OldFireServer(...)
    end))
end


local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local rleg = char:FindFirstChild("RightBoot")
local lleg = char:FindFirstChild("LeftBoot")
local rarm = char:FindFirstChild("RightHand")
local larm = char:FindFirstChild("LeftHand")
local torso = char:FindFirstChild("Torso")
local head = char:FindFirstChild("Head")

local normalhead = Vector3.new(1.07806, 1.08216, 1.07811)
local normaltorso = Vector3.new(0.7437281608581543, 3.2065000534057617, 0.5140794515609741)
local normalrhand = Vector3.new(0.69334, 1.212, 0.744331)
local normallhand = Vector3.new(0.69334, 1.212, 0.744331)
local normalrleg = Vector3.new(0.823, 0.728, 1.582)
local normalleg = Vector3.new(0.823, 0.728, 1.582)


-- ui
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Santoware",
    SubTitle = "by santos team",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightShift
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "percent" }),
    Hitbox = Window:AddTab({ Title = "Hitbox", Icon = "sliders-horizontal" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "wrench" }),
    AnotherReach = Window:AddTab({ Title = "Another", Icon = "wrench" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

Tabs.Main:AddParagraph({
    Title = "Discord",
    Content = "Our server discord.gg/aYJuQvyUbr"
})

Tabs.Main:AddParagraph({
    Title = "Solara",
    Content = "Solara have some bugs like gk catch invisible ball or sum, sorry about that."
})

Tabs.Main:AddParagraph({
    Title = "Warn!",
    Content = "Don't type rtp because it blocks sizers."
})

Tabs.Main:AddParagraph({
    Title = "About Fake Boots!",
    Content = "If you want to use fake boots then first press fake boots button after change the leg size."
})

Tabs.Main:AddButton({
    Title = "Copy Discord Link",
    Description = "",
    Callback = function()
        setclipboard("https://discord.gg/aYJuQvyUbr")
    end
})

Tabs.Hitbox:AddParagraph({
    Title = "FOOT",
    Content = ""
})


Tabs.Hitbox:AddButton({
    Title = "Fake Boots",
    Description = "",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        local leftBoot = character:FindFirstChild("LeftBoot")
        if leftBoot then
            local leftBootClone = leftBoot:Clone()
            leftBootClone.Name = "LeftBootFake"
            leftBootClone.Parent = character
            leftBootClone.CanCollide = false
        end
        
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        local rightBoot = character:FindFirstChild("RightBoot")
        if rightBoot then
            local rightBootClone = rightBoot:Clone()
            rightBootClone.Name = "RightBootFake"
            rightBootClone.Parent = character
            rightBootClone.CanCollide = false
        end

        rleg.Transparency = 1
        lleg.Transparency = 1
    end
})

local Lenabled = false
local Lx = 0.823
local Ly = 0.728
local Lz = 1.582
local LTrans = 0

local foothitbox = Tabs.Hitbox:AddToggle("foothitbox", {Title = "Enable Boot", Default = false })

foothitbox:OnChanged(function()
    Lenabled = Options.foothitbox.Value
    if Options.foothitbox.Value then
	    rleg.Size = Vector3.new(Lx, Ly, Lz)
        rleg.Transparency = LTrans
	    rleg.Massless = true
	    rleg.CanCollide = false
        lleg.Transparency = LTrans
	    lleg.Size = Vector3.new(Lx, Ly, Lz)
	    lleg.CanCollide = false	
	    lleg.Massless = true
    else
        lleg.Transparency = 0
        rleg.Transparency = 0
        rleg.Size = normalrleg
	    rleg.Massless = false
	    rleg.CanCollide = true
	    lleg.Size = normalleg
	    lleg.CanCollide = true	
	    lleg.Massless = false
    end
end)

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size X:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Lx = Value
        if Lenabled then
            rleg.Size = Vector3.new(Lx, Ly, Lz)
            lleg.Size = Vector3.new(Lx, Ly, Lz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Y:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Ly = Value
        if Lenabled then
            rleg.Size = Vector3.new(Lx, Ly, Lz)
            lleg.Size = Vector3.new(Lx, Ly, Lz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Z:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Lz = Value
        if Lenabled then
            rleg.Size = Vector3.new(Lx, Ly, Lz)
            lleg.Size = Vector3.new(Lx, Ly, Lz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Transparency",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        LTrans = Value / 100
        if Lenabled then
            lleg.Transparency = Value / 100
            rleg.Transparency = Value / 100
        end
    end
})

Tabs.Hitbox:AddParagraph({
    Title = "HAND",
    Content = ""
})

local Henabled = false
local Hx = 0.823
local Hy = 0.728
local Hz = 1.582
local HTrans = 0


local handhitbox = Tabs.Hitbox:AddToggle("handhitbox", {Title = "Enable Hand", Default = false })

handhitbox:OnChanged(function()
    Henabled = Options.handhitbox.Value
    if Options.handhitbox.Value then
	    rarm.Size = Vector3.new(Hx, Hy, Hz)
        rarm.Transparency = HTrans
	    rarm.Massless = true
	    rarm.CanCollide = false
        larm.Transparency = HTrans
	    larm.Size = Vector3.new(Hx, Hy, Hz)
	    larm.CanCollide = false	
	    larm.Massless = true
    else
        larm.Transparency = 0
        rarm.Transparency = 0
        rarm.Size = normalrhand
	    rarm.Massless = false
	    rarm.CanCollide = true
	    larm.Size = normallhand
	    larm.CanCollide = true	
	    larm.Massless = false
    end
end)

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size X:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hx = Value
        if Henabled then
            rarm.Size = Vector3.new(Hx, Hy, Hz)
            larm.Size = Vector3.new(Hx, Hy, Hz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Y:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hy = Value
        if Henabled then
            rarm.Size = Vector3.new(Hx, Hy, Hz)
            larm.Size = Vector3.new(Hx, Hy, Hz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Z:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hz = Value
        if Henabled then
            rarm.Size = Vector3.new(Hx, Hy, Hz)
            larm.Size = Vector3.new(Hx, Hy, Hz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Transparency",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        LTrans = Value / 100
        if Lenabled then
            larm.Transparency = Value / 100
            rarm.Transparency = Value / 100
        end
    end
})

Tabs.Hitbox:AddParagraph({
    Title = "TORSO",
    Content = ""
})

local Tenabled = false
local Hedenabld = false
local TTrans = 0
local HedTrans = 0

local Tx = 0.7437281608581543
local Ty = 3.2065000534057617
local Tz = 0.5140794515609741

local Hedx = 1.078055739402771
local Hedy = 1.0821601152420044
local Hedz = 1.078110694885254


local torsohitbox = Tabs.Hitbox:AddToggle("torsohitbox", {Title = "Enable Torso", Default = false })

torsohitbox:OnChanged(function()
    Tenabled = Options.torsohitbox.Value
    if Options.torsohitbox.Value then
	    torso.Size = Vector3.new(Tx, Ty, Tz)
		torso.Transparency = TTrans
		torso.Massless = true
		torso.CanCollide = false
    else
        torso.Size = Vector3.new(normaltorso)
		torso.Transparency = TTrans
		torso.Massless = false
		torso.CanCollide = true
    end
end)


local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size X:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Tx = Value
        if Tenabled then
            torso.Size = Vector3.new(Tx, Ty, Tz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Y:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Ty = Value
        if Tenabled then
            torso.Size = Vector3.new(Tx, Ty, Tz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Z:",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Tz = Value
        if Tenabled then
            torso.Size = Vector3.new(Tx, Ty, Tz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Transparency",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        TTrans = Value / 100
        if Tenabled then
           torso.Transparency = Value / 100
        end
    end
})


Tabs.Hitbox:AddParagraph({
    Title = "HEAD",
    Content = ""
})

local headhitbox = Tabs.Hitbox:AddToggle("headhitbox", {Title = "Enable Head", Default = false })

headhitbox:OnChanged(function()
    Hedenabld = Options.headhitbox.Value
    if Options.headhitbox.Value then
	    head.Size = Vector3.new(Hedx, Hedy, Hedz)
		head.Transparency = HedTrans
		head.Massless = true
		head.CanCollide = false
    else
        head.Size = Vector3.new(normalhead)
		head.Transparency = HedTrans
		head.Massless = false
		head.CanCollide = true
    end
end)


local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size X:",
    Description = "",
    Default = 1.07806,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hedx = Value
        if Hedenabld then
            head.Size = Vector3.new(Hedx, Hedy, Hedz)
        end
    end
})


local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Y:",
    Description = "",
    Default = 1.08216,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hedy = Value
        if Hedenabld then
            head.Size = Vector3.new(Hedx, Hedy, Hedz)
        end
    end
})


local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Size Z:",
    Description = "",
    Default = 1.07811,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        Hedz = Value
        if Hedenabld then
            head.Size = Vector3.new(Hedx, Hedy, Hedz)
        end
    end
})

local Slider = Tabs.Hitbox:AddSlider("Slider", {
    Title = "Transparency",
    Description = "",
    Default = 2,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        HedTrans = Value / 100
        if Hedenabld then
           head.Transparency = Value / 100
        end
    end
})

function torsocan()
    if Tenabled then
        torso.CanCollide = false
    else
        torso.CanCollide = true
    end
end

function headcan()
    if Hedenabld then
        head.CanCollide = false
    else
        head.CanCollide = true
    end
end

game:GetService("RunService").RenderStepped:Connect(torsocan)
game:GetService("RunService").RenderStepped:Connect(headcan)

head:GetPropertyChangedSignal("CanCollide"):Connect(function()
    if Hedenabld then
        head.CanCollide = false
    else
        head.CanCollide = true
    end
end)

-- misc
Tabs.Misc:AddButton({
    Title = "Get All Skins",
    Description = "it gives you all skins",
    Callback = function()
        skinchange()
    end
})

local infsenabled = false

local infstamina = Tabs.Misc:AddToggle("infstamina", {Title = "Infinite Stamina", Default = false })

infstamina:OnChanged(function()
    infsenabled = Options.infstamina.Value
end)


local staminaValue = game.AssetService.controllers.movementController.stamina
local RunService = game:GetService("RunService")

local function checkAndSetStamina()
    if infsenabled then
        if staminaValue.Value < 100 then
            staminaValue.Value = 100
        end
    end
end

RunService.RenderStepped:Connect(checkAndSetStamina)


local Input = Tabs.Misc:AddInput("Input", {
    Title = "Level",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
        lfolder.Level.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "XP",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		lfolder.XP.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "XP Needed",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		lfolder.XPNeeded.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "Point(Cash)",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.Cash.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "Assist",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.Assist.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "Goals",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.Goals.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "MOTM",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.MOTM.Value = Value
    end
})

local Input = Tabs.Misc:AddInput("Input", {
    Title = "Wins",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.Wins.Value = Value
    end
})


local Input = Tabs.Misc:AddInput("Input", {
    Title = "Saves",
    Default = "",
    Placeholder = "",
    Numeric = true,
    Finished = false,
    Callback = function(Value)
		sfolder.Saves.Value = Value
    end
})



Tabs.AnotherReach:AddParagraph({
    Title = "Read!",
    Content = "If you using Solara Foot and Head and Torso reachs are buggy, idk about Hand but its work maybe."
})

Tabs.AnotherReach:AddParagraph({
    Title = "Read!",
    Content = "Have some bugs pls be patient for now."
})


local handrr = Tabs.AnotherReach:AddToggle("handrr", { Title = "enable hand reach", Default = false })
local enableFeet = Tabs.AnotherReach:AddToggle("enableFeet", { Title = "enable foot reach", Default = false })
local enableHead = Tabs.AnotherReach:AddToggle("enableHead", { Title = "enable head reach", Default = false })
local enableTorso = Tabs.AnotherReach:AddToggle("enableTorso", { Title = "enable torso reach", Default = false })

local handSlider = Tabs.AnotherReach:AddSlider("HandSlider", {
    Title = "studs of hand",
    Description = "adjust the reach for hands",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        _G.HandMagnitude = Value
    end
})

local footSlider = Tabs.AnotherReach:AddSlider("FootSlider", {
    Title = "studs for foot",
    Description = "adjust the reach for foot",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        _G.FootMagnitude = Value
    end
})

local headSlider = Tabs.AnotherReach:AddSlider("HeadSlider", {
    Title = "studs of head",
    Description = "adjust the reach for head",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        _G.HeadMagnitude = Value
    end
})

local torsoSlider = Tabs.AnotherReach:AddSlider("TorsoSlider", {
    Title = "studs of torso",
    Description = "adjust the reach for torso",
    Default = 2,
    Min = 0,
    Max = 25,
    Rounding = 1,
    Callback = function(Value)
        _G.TorsoMagnitude = Value
    end
})

_G.BallName = ""
_G.HandMagnitude = 2
_G.FootMagnitude = 2
_G.HeadMagnitude = 2
_G.TorsoMagnitude = 2
_G.HandEnabled = false
_G.FeetEnabled = false
_G.HeadEnabled = false
_G.TorsoEnabled = false
_G.Path = nil

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local rarm = char:FindFirstChild("LeftHand")
local larm = char:FindFirstChild("RightHand")
local rfoot = char:FindFirstChild("RightFoot")
local lfoot = char:FindFirstChild("LeftFoot")
local head = char:FindFirstChild("Head")
local torso = char:FindFirstChild("Torso")

local props = {
    size = Vector3.new(1.75, 1.75, 1.75),
    shape = Enum.PartType.Ball,
    material = Enum.Material.SmoothPlastic
}

local function fire(ball)
    if _G.HandEnabled then
        firetouchinterest(rarm, ball, 0)
        firetouchinterest(larm, ball, 0)
        wait()
        firetouchinterest(rarm, ball, 1)
        firetouchinterest(larm, ball, 1)
    end
    
    if _G.FeetEnabled then
        firetouchinterest(rfoot, ball, 0)
        firetouchinterest(lfoot, ball, 0)
        wait()
        firetouchinterest(rfoot, ball, 1)
        firetouchinterest(lfoot, ball, 1)
    end
    
    if _G.HeadEnabled then
        firetouchinterest(head, ball, 0)
        wait()
        firetouchinterest(head, ball, 1)
    end
    
    if _G.TorsoEnabled then
        firetouchinterest(torso, ball, 0)
        wait()
        firetouchinterest(torso, ball, 1)
    end
end

local function handleBall(ball)
    local distance = (ball.Position - char.HumanoidRootPart.Position).Magnitude
    if _G.HandEnabled and distance <= _G.HandMagnitude then
        _G.Path = ball.Parent
        fire(ball)
    end
    if _G.FeetEnabled and distance <= _G.FootMagnitude then
        _G.Path = ball.Parent
        fire(ball)
    end
    if _G.HeadEnabled and distance <= _G.HeadMagnitude then
        _G.Path = ball.Parent
        fire(ball)
    end
    if _G.TorsoEnabled and distance <= _G.TorsoMagnitude then
        _G.Path = ball.Parent
        fire(ball)
    end
end

local function checkBalls()
    local balls = _G.Path and _G.Path:GetChildren() or workspace:GetDescendants()
    for _, ball in pairs(balls) do
        if ball:IsA("BasePart") and ball.Size == props.size and ball.Material == props.material and ball.Shape == props.shape then
            handleBall(ball)
        end
    end
end

local function onBallAdded(child)
    if child:IsA("BasePart") and child.Size == props.size and child.Material == props.material and child.Shape == props.shape then
        handleBall(child)
    end
end

local function reachfunction()
    if _G.HandEnabled or _G.FeetEnabled or _G.HeadEnabled or _G.TorsoEnabled then
        workspace.ChildAdded:Connect(onBallAdded)

        local int = 1
        local last = tick()
        game:GetService("RunService").RenderStepped:Connect(function()
            if tick() - last > int then
                last = tick()
                checkBalls()
            end
        end)
    end
end

handrr:OnChanged(function()
    _G.HandEnabled = Options.handrr.Value
    reachfunction()
end)

enableFeet:OnChanged(function()
    _G.FeetEnabled = Options.enableFeet.Value
    reachfunction()
end)

enableHead:OnChanged(function()
    _G.HeadEnabled = Options.enableHead.Value
    reachfunction()
end)

enableTorso:OnChanged(function()
    _G.TorsoEnabled = Options.enableTorso.Value
    reachfunction()
end)

reachfunction()





function skinchange()
	local AssetService = game:GetService("AssetService")
	local Profiles = game.ReplicatedStorage.network.Profiles
	
	local function createAccessoryValues(player)
		local playerUserId = player.UserId
		local playerProfileFolder = Profiles:FindFirstChild(playerUserId)
		if playerProfileFolder then
			local inventoryFolder = playerProfileFolder:FindFirstChild("inventory")
			if inventoryFolder then
				local accessoriesFolder = inventoryFolder:FindFirstChild("Accessories")
				if accessoriesFolder then
					local playerGlovesValue = accessoriesFolder:FindFirstChild("Player Gloves")
					if playerGlovesValue then
						for _, asset in pairs(AssetService.game.accessories:GetChildren()) do
							local clonedValue = playerGlovesValue:Clone()
							clonedValue.Name = asset.Name
							clonedValue.Parent = accessoriesFolder
							
							local defaultValue = Instance.new("BoolValue")
							defaultValue.Name = "DefaultValue"
							defaultValue.Value = true
							defaultValue.Parent = clonedValue
						end
					end
				end
			end
		end
	end
	
	local player = game.Players.LocalPlayer
	createAccessoryValues(player)
	
	local AssetService = game:GetService("AssetService")
	local Profiles = game.ReplicatedStorage.network.Profiles
	
	local function createAccessoryValues(player)
		local playerUserId = player.UserId
		local playerProfileFolder = Profiles:FindFirstChild(playerUserId)
		if playerProfileFolder then
			local inventoryFolder = playerProfileFolder:FindFirstChild("inventory")
			if inventoryFolder then
				local accessoriesFolder = inventoryFolder:FindFirstChild("Boots")
				if accessoriesFolder then
					local playerGlovesValue = accessoriesFolder:FindFirstChild("White and Black")
					if playerGlovesValue then
						for _, asset in pairs(AssetService.game.boots:GetChildren()) do
							local clonedValue = playerGlovesValue:Clone()
							clonedValue.Name = asset.Name
							clonedValue.Parent = accessoriesFolder
							
							local defaultValue = Instance.new("BoolValue")
							defaultValue.Name = "DefaultValue"
							defaultValue.Value = true
							defaultValue.Parent = clonedValue
						end
					end
				end
			end
		end
	end
	
	local player = game.Players.LocalPlayer
	createAccessoryValues(player)
	
	local AssetService = game:GetService("AssetService")
	local Profiles = game.ReplicatedStorage.network.Profiles
	
	local function createAccessoryValues(player)
		local playerUserId = player.UserId
		local playerProfileFolder = Profiles:FindFirstChild(playerUserId)
		if playerProfileFolder then
			local inventoryFolder = playerProfileFolder:FindFirstChild("inventory")
			if inventoryFolder then
				local accessoriesFolder = inventoryFolder:FindFirstChild("Gloves")
				if accessoriesFolder then
					local playerGlovesValue = accessoriesFolder:FindFirstChild("White and Black")
					if playerGlovesValue then
						for _, asset in pairs(AssetService.game.gloves:GetChildren()) do
							local clonedValue = playerGlovesValue:Clone()
							clonedValue.Name = asset.Name
							clonedValue.Parent = accessoriesFolder
							
							local defaultValue = Instance.new("BoolValue")
							defaultValue.Name = "DefaultValue"
							defaultValue.Value = true
							defaultValue.Parent = clonedValue
						end
					end
				end
			end
		end
	end
	
	local player = game.Players.LocalPlayer
	createAccessoryValues(player)
	
	local AssetService = game:GetService("AssetService")
	local Profiles = game.ReplicatedStorage.network.Profiles
	
	local function createAccessoryValues(player)
		local playerUserId = player.UserId
		local playerProfileFolder = Profiles:FindFirstChild(playerUserId)
		if playerProfileFolder then
			local inventoryFolder = playerProfileFolder:FindFirstChild("inventory")
			if inventoryFolder then
				local accessoriesFolder = inventoryFolder:FindFirstChild("Ball Holds")
				if accessoriesFolder then
					local playerGlovesValue = accessoriesFolder:FindFirstChild("Default")
					if playerGlovesValue then
						for _, asset in pairs(AssetService.game.animations.Ball:GetChildren()) do
							local clonedValue = playerGlovesValue:Clone()
							clonedValue.Name = asset.Name
							clonedValue.Parent = accessoriesFolder
						end
					end
				end
			end
		end
	end
	
	local player = game.Players.LocalPlayer
	createAccessoryValues(player)
	
	local AssetService = game:GetService("AssetService")
	local Profiles = game.ReplicatedStorage.network.Profiles
	
	local function createAccessoryValues(player)
		local playerUserId = player.UserId
		local playerProfileFolder = Profiles:FindFirstChild(playerUserId)
		if playerProfileFolder then
			local inventoryFolder = playerProfileFolder:FindFirstChild("inventory")
			if inventoryFolder then
				local accessoriesFolder = inventoryFolder:FindFirstChild("Celebrations")
				if accessoriesFolder then
					local playerGlovesValue = accessoriesFolder:FindFirstChild("Fist Pump")
					if playerGlovesValue then
						for _, asset in pairs(AssetService.game.animations.Celebrations:GetChildren()) do
							local clonedValue = playerGlovesValue:Clone()
							clonedValue.Name = asset.Name
							clonedValue.Parent = accessoriesFolder
						end
					end
				end
			end
		end
	end
	
	local player = game.Players.LocalPlayer
	createAccessoryValues(player)
end