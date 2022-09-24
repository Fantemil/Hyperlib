--[[

    i'm sorry if you're gonna read this abomination of a script
    just use it, it kinda works
    made by mikeymikey @ v3rm

]]


if not game:IsLoaded() then
    game.Loaded:Wait()
    task.wait(5)
end
repeat task.wait() until game.Players.LocalPlayer

local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local WTVP = Camera.WorldToViewportPoint
local Player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local Mouse = Player:GetMouse()
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local ContextActionService = game:GetService("ContextActionService")
local KitList = require(game:GetService("ReplicatedStorage").TS.kit["kit-type"]).KitType


local Cache = {
    UI = {},
    Players = {},
    UIEnabled = true,
    Connections = {},
    Enabled = {
        ESP = true,
        Tracers = false,
        Aimbot = false,
        AimbotPower = 40,
        AimbotFOV = 150,
        TogglingKeybind = false,
        ItemESP = false,
        Nametags = false,
        AimVisCheck = false,
        ESPVisCheck = false,
        TargetDebounce = tick()
    },
    UIToggle = Enum.KeyCode.F4,
    Selected = 1,
    Items = {}
}

if shared.enabledonrift then
    local en = HttpService:JSONDecode(shared.enabledonrift)
    Cache.Enabled.ESP = en.ESP
    Cache.Enabled.Tracers = en.Tracers
    Cache.Enabled.Aimbot = en.Aimbot
    Cache.Enabled.AimbotPower = en.AimbotPower
    Cache.Enabled.AimbotFOV = en.AimbotFOV
    Cache.Enabled.ItemESP = en.ItemESP
    Cache.Enabled.Nametags = en.Nametags
    Cache.Enabled.AimVisCheck = en.AimVisCheck
    Cache.Enabled.ESPVisCheck = en.ESPVisCheck
end

local function friendly(rig)
    for i,v in pairs(rig:GetChildren()) do
        if v.Name:find("Nametag") then return true end
    end
    return false
end

local function checkVisible(v)
    local hit = Camera:GetPartsObscuringTarget({Camera.CFrame.Position, v.Head.Position}, {Camera.CameraSubject.Parent})

    for i,v in pairs(hit) do
        if v.Name:find("Handle") then
            hit[i] = nil
        end
    end

    return #hit == 0
end

local function isRig(rig)
    if rig == (Camera.CameraSubject and Camera.CameraSubject.Parent) then return false end
    if rig.Name == "R15Rig" then return true end

    for _,name in pairs(KitList) do
        if rig.Name == name then return true end
    end

    return false
end

local function getPlayerHealth(rig)
    local id = rig:GetAttribute("userId")
    local plr = nil
    for _,entity in pairs(workspace.Entities:GetChildren()) do
        if entity:GetAttribute("userId") == id then
            plr = entity
        end
    end

    if plr then
        return plr:GetAttribute("health") + plr:GetAttribute("shield"), plr:GetAttribute("maxHealth") + plr:GetAttribute("maxShield"), plr:GetAttribute("maxHealth"), plr:GetAttribute("maxShield"), plr:GetAttribute("displayName"), plr:GetAttribute("dead")
    end
end

ContextActionService:BindActionAtPriority("DisableArrowKeys", function()
 if Cache.UIEnabled then return Enum.ContextActionResult.Sink end
end, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.Up, Enum.KeyCode.Down, Enum.KeyCode.Left, Enum.KeyCode.Right)

local function ConstructUI()
    local textsize = math.floor(0.007421875 * Camera.ViewportSize.X)
    Cache.UIEnabled = true

    Cache.UI.MainFrame = Drawing.new("Square")
    Cache.UI.MainFrame.Visible = true
    Cache.UI.MainFrame.Transparency = 0.6
    Cache.UI.MainFrame.Filled = true
    Cache.UI.MainFrame.Color = Color3.new(0.156862, 0.125490, 0.125490)
    Cache.UI.MainFrame.Size = Vector2.new(Camera.ViewportSize.X/8-3, Camera.ViewportSize.Y/2-200)
    Cache.UI.MainFrame.Position = Vector2.new(0, Camera.ViewportSize.Y/2-200)

    Cache.UI.MainFrameTextFrame = Drawing.new("Square")
    Cache.UI.MainFrameTextFrame.Visible = true
    Cache.UI.MainFrameTextFrame.Transparency = 0.6
    Cache.UI.MainFrameTextFrame.Filled = true
    Cache.UI.MainFrameTextFrame.Color = Color3.new(0.298039, 0.282352, 0.282352)
    Cache.UI.MainFrameTextFrame.Size = Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20)
    Cache.UI.MainFrameTextFrame.Position = Vector2.new(0, Camera.ViewportSize.Y/2-200)

    Cache.UI.MainFrameText = Drawing.new("Text")
    Cache.UI.MainFrameText.Visible = true
    Cache.UI.MainFrameText.Text = "Rift Royale Script"
    Cache.UI.MainFrameText.Size = textsize
    Cache.UI.MainFrameText.Position = Vector2.new(0, Camera.ViewportSize.Y/2-200)
    Cache.UI.MainFrameText.Color = Color3.new(0.878431, 0.878431, 0.878431)
    Cache.UI.MainFrameText.Font = 2
    Cache.UI.MainFrameText.Center = false

    Cache.UI.Credits = Drawing.new("Text")
    Cache.UI.Credits.Visible = true
    Cache.UI.Credits.Text = "Made by MikeyMikey @ v3rmillion"
    Cache.UI.Credits.Size = textsize
    Cache.UI.Credits.Position = Vector2.new(1, Camera.ViewportSize.Y/2-200 - ((Camera.ViewportSize.Y/2-200)/20)*2)
    Cache.UI.Credits.Color = Color3.new(0.878431, 0.878431, 0.878431)
    Cache.UI.Credits.Font = 2
    Cache.UI.Credits.Center = false

    Cache.UI.Credits2 = Drawing.new("Text")
    Cache.UI.Credits2.Visible = true
    Cache.UI.Credits2.Text = "discord.gg/NfcwzE2aM4"
    Cache.UI.Credits2.Size = textsize
    Cache.UI.Credits2.Position = Vector2.new(1, Camera.ViewportSize.Y/2-200 - (Camera.ViewportSize.Y/2-200)/20)
    Cache.UI.Credits2.Color = Color3.new(0.878431, 0.878431, 0.878431)
    Cache.UI.Credits2.Font = 2
    Cache.UI.Credits2.Center = false

    Cache.UI.MainFrameBorder = Drawing.new("Square")
    Cache.UI.MainFrameBorder.Visible = true
    Cache.UI.MainFrameBorder.Transparency = 0.6
    Cache.UI.MainFrameBorder.Filled = false
    Cache.UI.MainFrameBorder.Color = Color3.new(0, 0, 0)
    Cache.UI.MainFrameBorder.Size = Vector2.new(Camera.ViewportSize.X/8, Camera.ViewportSize.Y/2-200)
    Cache.UI.MainFrameBorder.Position = Vector2.new(-2, Camera.ViewportSize.Y/2-202)
    Cache.UI.MainFrameBorder.Thickness = 2

    for i = 1, 19 do
        Cache.UI["ESPFrame"..i] = Drawing.new("Square")
        Cache.UI["ESPFrame"..i].Visible = true
        Cache.UI["ESPFrame"..i].Transparency = 0.6
        Cache.UI["ESPFrame"..i].Filled = true
        if i % 2 == 0 then
            Cache.UI["ESPFrame"..i].Color = Color3.new(0.298039, 0.282352, 0.282352)
        else
            Cache.UI["ESPFrame"..i].Color = Color3.new(0.156862, 0.125490, 0.125490)
        end
        Cache.UI["ESPFrame"..i].Size = Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20)
        Cache.UI["ESPFrame"..i].Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*i)))
    end

    Cache.UI.ESPButton = Drawing.new("Text")
    Cache.UI.ESPButton.Visible = true
    if Cache.Enabled.ESP then Cache.UI.ESPButton.Text = "[x] ESP" else Cache.UI.ESPButton.Text = "[ ] ESP" end
    Cache.UI.ESPButton.Size = textsize
    Cache.UI.ESPButton.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*1)))
    if Cache.Enabled.ESP then Cache.UI.ESPButton.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.ESPButton.Color = Color3.new(1,1,1) end
    Cache.UI.ESPButton.Font = 2

    Cache.UI.TracersButton = Drawing.new("Text")
    Cache.UI.TracersButton.Visible = true
    if Cache.Enabled.Tracers then Cache.UI.TracersButton.Text = "[x] Tracers" else Cache.UI.TracersButton.Text = "[ ] Tracers" end
    Cache.UI.TracersButton.Size = textsize
    Cache.UI.TracersButton.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*2)))
    if Cache.Enabled.Tracers then Cache.UI.TracersButton.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.TracersButton.Color = Color3.new(1, 1, 1) end
    Cache.UI.TracersButton.Font = 2

    Cache.UI.Aimbot = Drawing.new("Text")
    Cache.UI.Aimbot.Visible = true
    if Cache.Enabled.Aimbot then Cache.UI.Aimbot.Text = "[x] Aimbot" else Cache.UI.Aimbot.Text = "[ ] Aimbot" end
    Cache.UI.Aimbot.Size = textsize
    Cache.UI.Aimbot.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*3)))
    if Cache.Enabled.Aimbot then Cache.UI.Aimbot.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.Aimbot.Color = Color3.new(1, 1, 1) end
    Cache.UI.Aimbot.Font = 2

    Cache.UI.AimbotPower = Drawing.new("Text")
    Cache.UI.AimbotPower.Visible = true
    Cache.UI.AimbotPower.Text = "Aimbot Power: "..Cache.Enabled.AimbotPower.."%"
    Cache.UI.AimbotPower.Size = textsize
    Cache.UI.AimbotPower.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*4)))
    Cache.UI.AimbotPower.Color = Color3.new(1, 1, 1)
    Cache.UI.AimbotPower.Font = 2

    Cache.UI.AimbotFOV = Drawing.new("Text")
    Cache.UI.AimbotFOV.Visible = true
    Cache.UI.AimbotFOV.Text = "Aimbot FOV: "..Cache.Enabled.AimbotFOV.."px"
    Cache.UI.AimbotFOV.Size = textsize
    Cache.UI.AimbotFOV.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*5)))
    Cache.UI.AimbotFOV.Color = Color3.new(1, 1, 1)
    Cache.UI.AimbotFOV.Font = 2

    Cache.UI.ItemESPButton = Drawing.new("Text")
    Cache.UI.ItemESPButton.Visible = true
    if Cache.Enabled.ItemESP then Cache.UI.ItemESPButton.Text = "[x] Item ESP" else Cache.UI.ItemESPButton.Text = "[ ] Item ESP" end
    Cache.UI.ItemESPButton.Size = textsize
    Cache.UI.ItemESPButton.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*6)))
    if Cache.Enabled.ItemESP then Cache.UI.ItemESPButton.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.ItemESPButton.Color = Color3.new(1, 1, 1) end
    Cache.UI.ItemESPButton.Font = 2

    Cache.UI.Nametags = Drawing.new("Text")
    Cache.UI.Nametags.Visible = true
    if Cache.Enabled.Nametags then Cache.UI.Nametags.Text = "[x] Nametags" else Cache.UI.Nametags.Text = "[ ] Nametags" end
    Cache.UI.Nametags.Size = textsize
    Cache.UI.Nametags.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*7)))
    if Cache.Enabled.Nametags then Cache.UI.Nametags.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.Nametags.Color = Color3.new(1, 1, 1) end
    Cache.UI.Nametags.Font = 2
    
    Cache.UI.AimbotVis = Drawing.new("Text")
    Cache.UI.AimbotVis.Visible = true
    if Cache.Enabled.AimVisCheck then Cache.UI.AimbotVis.Text = "[x] Aimbot Visibility" else Cache.UI.AimbotVis.Text = "[ ] Aimbot Visibility" end
    Cache.UI.AimbotVis.Size = textsize
    Cache.UI.AimbotVis.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*8)))
    if Cache.Enabled.AimVisCheck then Cache.UI.AimbotVis.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.AimbotVis.Color = Color3.new(1, 1, 1) end
    Cache.UI.AimbotVis.Font = 2

    Cache.UI.ESPVis = Drawing.new("Text")
    Cache.UI.ESPVis.Visible = true
    if Cache.Enabled.ESPVisCheck then Cache.UI.ESPVis.Text = "[x] ESP Visibility" else Cache.UI.ESPVis.Text = "[ ] ESP Visibility" end
    Cache.UI.ESPVis.Size = textsize
    Cache.UI.ESPVis.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*9)))
    if Cache.Enabled.ESPVisCheck then Cache.UI.ESPVis.Color = Color3.new(0.203921, 1, 0.537254) else Cache.UI.ESPVis.Color = Color3.new(1, 1, 1) end
    Cache.UI.ESPVis.Font = 2

    Cache.UI.ToggleUIButton = Drawing.new("Text")
    Cache.UI.ToggleUIButton.Visible = true
    Cache.UI.ToggleUIButton.Text = "Toggle: "..Cache.UIToggle.Name
    Cache.UI.ToggleUIButton.Size = textsize
    Cache.UI.ToggleUIButton.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*18)))
    Cache.UI.ToggleUIButton.Color = Color3.new(1, 1, 1)
    Cache.UI.ToggleUIButton.Font = 2

    Cache.UI.ExitButton = Drawing.new("Text")
    Cache.UI.ExitButton.Visible = true
    Cache.UI.ExitButton.Text = "Exit"
    Cache.UI.ExitButton.Size = textsize
    Cache.UI.ExitButton.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*19)))
    Cache.UI.ExitButton.Color = Color3.new(1, 1, 1)
    Cache.UI.ExitButton.Font = 2

    Cache.UI.Selected = Drawing.new("Square")
    Cache.UI.Selected.Visible = true
    Cache.UI.Selected.Transparency = 0.2
    Cache.UI.Selected.Filled = true
    Cache.UI.Selected.Color = Color3.new(0.576470, 0.309803, 0.309803)
    Cache.UI.Selected.Size = Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20)
    Cache.UI.Selected.Position = Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*Cache.Selected)))

    

end

local function DeconstructUI()
    for a,object in pairs(Cache.UI) do
        if typeof(object["Remove"]) == "function" then object:Remove() Cache.UI[a] = nil end
    end
    Cache.UIEnabled = false
end

local function DestroyScript()
    DeconstructUI()
    for _,v in pairs(Cache.Connections) do
        v:Disconnect()
    end

    RunService:UnbindFromRenderStep("afggg")
    RunService:UnbindFromRenderStep("afggghan")
    ContextActionService:UnbindAction("DisableArrowKeys")

    for _,rig in pairs(Cache.Players) do
        for _,object in pairs(rig) do
            if typeof(object["Remove"]) == "function" then object:Remove() end
        end
    end

    for a,b in pairs(Cache.Items) do
        for _,object in pairs(b) do
            
            if typeof(object["Remove"]) == "function" then object:Remove() end
        end
    end
end

ConstructUI()

Cache.Connections.WindowSizeChange = Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
    DeconstructUI()
    ConstructUI()
end)

local function checkInRange(pos, size)
    if Mouse.X > pos.X and Mouse.X < pos.X + size.X and Mouse.Y > pos.Y and Mouse.Y < pos.Y + size.Y then
        return true
    end
    return false
end

Cache.Connections.MouseDown = Mouse.Button1Down:Connect(function()
    local hoveringESP = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*1))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringESP then
        if Cache.Enabled.ESP then
            Cache.UI.ESPButton.Text = "[ ] ESP"
            Cache.Enabled.ESP = false
            Cache.UI.ESPButton.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.ESPButton.Text = "[x] ESP"
            Cache.Enabled.ESP = true
            Cache.UI.ESPButton.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringTracers = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*2))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringTracers then
        if Cache.Enabled.Tracers then
            Cache.UI.TracersButton.Text = "[ ] Tracers"
            Cache.Enabled.Tracers = false
            Cache.UI.TracersButton.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.TracersButton.Text = "[x] Tracers"
            Cache.Enabled.Tracers = true
            Cache.UI.TracersButton.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringAimbot = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*3))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringAimbot then
        if Cache.Enabled.Aimbot then
            Cache.UI.Aimbot.Text = "[ ] Aimbot"
            Cache.Enabled.Aimbot = false
            Cache.UI.Aimbot.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.Aimbot.Text = "[x] Aimbot"
            Cache.Enabled.Aimbot = true
            Cache.UI.Aimbot.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringAimbotFOV = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*5))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringAimbotFOV then
        Cache.Enabled.AimbotFOV = Cache.Enabled.AimbotFOV + 25
        if Cache.Enabled.AimbotFOV > 400 then
            Cache.Enabled.AimbotFOV = 25
        end
        Cache.UI.AimbotFOV.Text = "Aimbot FOV: "..Cache.Enabled.AimbotFOV .. "px"
    end

    local hoveringAimbotPower = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*4))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringAimbotPower then
        Cache.Enabled.AimbotPower = Cache.Enabled.AimbotPower + 10
        if Cache.Enabled.AimbotPower > 100 then
            Cache.Enabled.AimbotPower = 10
        end
        Cache.UI.AimbotPower.Text = "Aimbot Power: "..Cache.Enabled.AimbotPower .. "%"
    end
    
    local hoveringItemESP = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*6))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringItemESP then
        if Cache.Enabled.ItemESP then
            Cache.UI.ItemESPButton.Text = "[ ] Item ESP"
            Cache.Enabled.ItemESP = false
            Cache.UI.ItemESPButton.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.ItemESPButton.Text = "[x] Item ESP"
            Cache.Enabled.ItemESP = true
            Cache.UI.ItemESPButton.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringNameESP = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*7))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringNameESP then
        if Cache.Enabled.Nametags then
            Cache.UI.Nametags.Text = "[ ] Nametags"
            Cache.Enabled.Nametags = false
            Cache.UI.Nametags.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.Nametags.Text = "[x] Nametags"
            Cache.Enabled.Nametags = true
            Cache.UI.Nametags.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringAimbotVis = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*8))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringAimbotVis then
        if Cache.Enabled.AimVisCheck then
            Cache.UI.AimbotVis.Text = "[ ] Aimbot Visibility"
            Cache.Enabled.AimVisCheck = false
            Cache.UI.AimbotVis.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.AimbotVis.Text = "[x] Aimbot Visibility"
            Cache.Enabled.AimVisCheck = true
            Cache.UI.AimbotVis.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringESPVis = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*9))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringESPVis then
        if Cache.Enabled.ESPVisCheck then
            Cache.UI.ESPVis.Text = "[ ] ESP Visibility"
            Cache.Enabled.ESPVisCheck = false
            Cache.UI.ESPVis.Color = Color3.new(1, 1, 1)
        else
            Cache.UI.ESPVis.Text = "[x] ESP Visibility"
            Cache.Enabled.ESPVisCheck = true
            Cache.UI.ESPVis.Color = Color3.new(0.203921, 1, 0.537254)
        end
    end

    local hoveringExit = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*19))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringExit then
        DestroyScript()
    end

    local hoveringKeybind = checkInRange(Vector2.new(0, Camera.ViewportSize.Y/2-(200-(((Camera.ViewportSize.Y/2-200)/20)*18))-35), Vector2.new(Camera.ViewportSize.X/8-3, (Camera.ViewportSize.Y/2-200)/20))
    if hoveringKeybind then
        if Cache.Enabled.TogglingKeybind then
            Cache.UI.ToggleUIButton.Text = "Toggle: " .. Cache.UIToggle.Name
            Cache.UI.ToggleUIButton.Color = Color3.new(1, 1, 1)
            Cache.Enabled.TogglingKeybind = false
        else
            Cache.UI.ToggleUIButton.Text = "Press any key"
            Cache.UI.ToggleUIButton.Color = Color3.new(0.203921, 1, 0.537254)
            Cache.Enabled.TogglingKeybind = true
        end
    end

end)


local function getNear()
    local distance, player, screenpos = Cache.Enabled.AimbotFOV, nil, nil
    for i,v in pairs(game.Workspace:GetChildren()) do
        if isRig(v) and v ~= game.Players.LocalPlayer.Character and not friendly(v) then
            local ScreenPosition, visible = Camera:WorldToViewportPoint(v.Head.Position)
            if visible and (checkVisible(v) or not Cache.Enabled.AimVisCheck) then
                local MDistance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude
                if MDistance < distance then
                    player = v
                    screenpos = ScreenPosition
                    distance = MDistance
                end
            end
        end
    end
    return distance, player, screenpos
end

Cache.Connections.InputBegin = UserInputService.InputBegan:Connect(function(input)
    if Cache.Enabled.TogglingKeybind and input.UserInputType == Enum.UserInputType.Keyboard then
        Cache.UIToggle = input.KeyCode
        Cache.UI.ToggleUIButton.Text = "Toggle: " .. Cache.UIToggle.Name
        Cache.UI.ToggleUIButton.Color = Color3.new(1, 1, 1)
        Cache.Enabled.TogglingKeybind = false
        return
    end
    if input.KeyCode == Cache.UIToggle then
        if Cache.UIEnabled then
            DeconstructUI()
        else
            ConstructUI()
        end
    end

    if input.KeyCode == Enum.KeyCode.Up then
        if not Cache.UIEnabled then return end
        Cache.Selected = Cache.Selected - 1
        if Cache.Selected == 0 then Cache.Selected = 19 end
        DeconstructUI()
        ConstructUI()
    end

    if input.KeyCode == Enum.KeyCode.Down then
        if not Cache.UIEnabled then return end
        Cache.Selected = Cache.Selected + 1
        if Cache.Selected == 20 then Cache.Selected = 1 end
        DeconstructUI()
        ConstructUI()
    end

    if input.KeyCode == Enum.KeyCode.Right then
        if not Cache.UIEnabled then return end
        if Cache.Selected == 1 then
            Cache.Enabled.ESP = not Cache.Enabled.ESP
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 2 then
            Cache.Enabled.Tracers = not Cache.Enabled.Tracers
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 3 then
            Cache.Enabled.Aimbot = not Cache.Enabled.Aimbot
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 4 then
            Cache.Enabled.AimbotPower = Cache.Enabled.AimbotPower + 10
            if Cache.Enabled.AimbotPower > 100 then
                Cache.Enabled.AimbotPower = 10
            end
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 5 then
            Cache.Enabled.AimbotFOV = Cache.Enabled.AimbotFOV + 25
            if Cache.Enabled.AimbotFOV > 400 then
                Cache.Enabled.AimbotFOV = 25
            end
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 6 then
            Cache.Enabled.ItemESP = not Cache.Enabled.ItemESP
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 7 then
            Cache.Enabled.Nametags = not Cache.Enabled.Nametags
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 8 then
            Cache.Enabled.AimVisCheck = not Cache.Enabled.AimVisCheck
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 9 then
            Cache.Enabled.ESPVisCheck = not Cache.Enabled.ESPVisCheck
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 18 then
            Cache.UI.ToggleUIButton.Text = "Press any key"
            Cache.UI.ToggleUIButton.Color = Color3.new(0.203921, 1, 0.537254)
            Cache.Enabled.TogglingKeybind = true
        elseif Cache.Selected == 19 then
            DestroyScript()
        end
    end

    if input.KeyCode == Enum.KeyCode.Left then
        if not Cache.UIEnabled then return end
        if Cache.Selected == 4 then
            Cache.Enabled.AimbotPower = Cache.Enabled.AimbotPower - 10
            if Cache.Enabled.AimbotPower < 10 then
                Cache.Enabled.AimbotPower = 100
            end
            DeconstructUI()
            ConstructUI()
        elseif Cache.Selected == 5 then
            Cache.Enabled.AimbotFOV = Cache.Enabled.AimbotFOV - 25
            if Cache.Enabled.AimbotFOV < 25 then
                Cache.Enabled.AimbotFOV = 400
            end
            DeconstructUI()
            ConstructUI()
        end
    end

    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        if game.PlaceId == 9611595239 or not Cache.Enabled.Aimbot then return end
        local distance, player, screenpos = getNear()

        repeat
            RunService.RenderStepped:Wait()
            if player then
                Cache.Enabled.TargetDebounce = tick()
            end
            
            if tick() - Cache.Enabled.TargetDebounce > 0.5 then
                if player then Cache.Enabled.TargetDebounce = tick() end
                distance, player, screenpos = getNear()
            end
            screenpos = Camera:WorldToViewportPoint(player.Head.Position)
            if player then
                magnitudeX = ((Cache.Enabled.AimbotPower/100)*(-(Mouse.X-screenpos.X)))/2
                magnitudeY = ((Cache.Enabled.AimbotPower/100)*(-(Mouse.Y+36 - screenpos.Y)))/2
                mousemoverel(magnitudeX, magnitudeY)
            end
        until not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
    end
end)

local function ESPOnRig(Rig)
    if not isRig(Rig) then return end

    TABLE = {}

    TABLE.box = Drawing.new("Square")
    TABLE.box.Thickness = 1
    TABLE.box.Visible = false
    TABLE.box.Color = Color3.new(0.752941, 0.360784, 0.360784)

    TABLE.tracers = Drawing.new("Line")
    TABLE.tracers.Visible = false
    TABLE.tracers.Thickness = 1
    TABLE.tracers.Color = Color3.new(0.752941, 0.360784, 0.360784)

    TABLE.name = Drawing.new("Text")
    TABLE.name.Visible = false
    TABLE.name.Size = 12
    TABLE.name.Font = 2
    TABLE.name.Center = true

    Cache.Players[Rig] = TABLE
end

Cache.Connections.Added = game.Workspace.ChildAdded:Connect(ESPOnRig)

for i,v in pairs(game.Workspace:GetChildren()) do
    if isRig(v) and v ~= game.Players.LocalPlayer.Character then
        ESPOnRig(v)
    end
end

local function update()

    for rig, drawings in pairs(Cache.Players) do
        ESPBox = drawings.box
        ESPTracers = drawings.tracers
        ESPName = drawings.name
        if not rig or rig.Parent == nil then
            ESPBox:Remove() 
            ESPTracers:Remove()
            ESPName:Remove()
            Cache.Players[rig] = nil 
            continue
        end

        local health, maxhealth, maxhp, maxshield, name, dead = getPlayerHealth(rig)
        local cframe = workspace.GetPivot(rig)
        local position, visible = WTVP(Camera, cframe.Position)
        if friendly(rig) then ESPBox.Color = Color3.new(0.831372, 0, 1) ESPTracers.Color = Color3.new(0.831372, 0, 1) ESPName.Color = Color3.new(0.831372, 0, 1) else
            if game.PlaceId == 9611608064 and health and maxhealth then
                ESPBox.Color = Color3.fromHSV((health/maxhealth)* 0.3, 1, 1)
                ESPTracers.Color = Color3.fromHSV((health/maxhealth)* 0.3, 1, 1)
                ESPName.Color = Color3.fromHSV((health/maxhealth)* 0.3, 1, 1)
            end
        end
        ESPBox.Visible = visible and Cache.Enabled.ESP and (checkVisible(rig) or not Cache.Enabled.ESPVisCheck) and not dead and not (Camera.CameraSubject and rig == Camera.CameraSubject.Parent)
        ESPTracers.Visible = visible and Cache.Enabled.Tracers and (checkVisible(rig) or not Cache.Enabled.ESPVisCheck) and not dead and not (Camera.CameraSubject and rig == Camera.CameraSubject.Parent)
        ESPName.Visible = visible and Cache.Enabled.Nametags and (checkVisible(rig) or not Cache.Enabled.ESPVisCheck) and not dead and not (Camera.CameraSubject and rig == Camera.CameraSubject.Parent)
        if visible then
            local scale_factor = 1 / (position.Z * math.tan(math.rad(Camera.FieldOfView * 0.5)) * 2) * 1000;
            local width, height = math.floor(3 * scale_factor), math.floor(5 * scale_factor);
            local x, y = math.floor(position.X), math.floor(position.Y);
        
            ESPBox.Size = Vector2.new(width, height);
            ESPBox.Position = Vector2.new(math.floor(x - width * 0.5), math.floor(y - height * 0.5))
        
            ESPTracers.From = Vector2.new(math.floor(Camera.ViewportSize.X * 0.5), math.floor((Camera.ViewportSize.Y/4)*3));
            ESPTracers.To = Vector2.new(x, math.floor(y + height * 0.5));

            if game.PlaceId == 9611608064 then
                ESPName.Position = Vector2.new(math.floor(x), math.floor(y + height * 0.5))
                ESPName.Text = name
            end
        end
    end
end

local function update2()
    
    for part, draws in pairs(Cache.Items) do
        Box = draws[2]
        Text = draws[1]
        if not part or part.Parent == nil then Box:Remove() Text:Remove() Cache.Items[part] = nil continue end
        ---local prox = part.Model:FindFirstChildWhichIsA("ProximityPrompt")
        --if not part:GetAttribute("displayItem") then continue end

        pos, vis = WTVP(Camera, part.Position + Vector3.new(0,5,0))
        Box.Visible = vis and Cache.Enabled.ItemESP
        Text.Visible = vis and Cache.Enabled.ItemESP
        if not part:FindFirstChild("Model") and not part:FindFirstChild("Handle") and (part:FindFirstChild("Model") and not part.Model:FindFirstChild("Handle")) then
            Box.Visible = false
            Text.Visible = false
        end
        if not vis then continue end

        Text.Text = part:GetAttribute("itemType") or "unnamed"
        Text.Position = Vector2.new(pos.X, pos.Y-6)

        Box.Size = Vector2.new(Text.TextBounds.X + 5, Text.TextBounds.Y + 2.5)
        Box.Position = Vector2.new((pos.X - Text.TextBounds.X * 0.5) - 2.5, (pos.Y - Text.TextBounds.Y * 0.5) - 1.35)

        if part:GetAttribute("itemType") == "ak_4" or part:GetAttribute("itemType") == "heavy_armor" then
            Box.Color = Color3.new(0.772549, 0.141176, 1)
            Text.Color = Color3.new(0.772549, 0.141176, 1)
        elseif part:GetAttribute("itemType") == "ak_5" or part:GetAttribute("itemType") == "deagle_5" or part:GetAttribute("itemType") == "barrett_5" or part:GetAttribute("itemType") == "rewind_watch" then
            Box.Color = Color3.new(0.964705, 1, 0)
            Text.Color = Color3.new(0.964705, 1, 0)
        elseif part:GetAttribute("itemType") == "launch_pad" then
            Box.Color = Color3.new(0.109803, 0.290196, 1)
            Text.Color = Color3.new(0.109803, 0.290196, 1)
        end
        

        if not (part:GetAttribute("itemType") == "barrett_5" or part:GetAttribute("itemType") == "rewind_watch" or part:GetAttribute("itemType") == "ak_4" or part:GetAttribute("itemType") == "ak_5" or part:GetAttribute("itemType") == "heavy_armor" or part:GetAttribute("itemType") == "deagle_5" or part:GetAttribute("itemType") == "launch_pad") then
            Box.Visible = false
            Text.Visible = false
        end

        -- purple ak = ak_4
        -- legendary ak = ak_5
        -- medium_armor
        -- launch_pad
        -- heavy_armor
        -- legendary deagle = deagle5
        -- barrett_5

    end
end

local function addItemToESP(PART)
    local name = PART:GetAttribute("itemType") 
    --if name ~= "ak_4" or name ~= "ak_5" or name ~= "medium_armor" or name ~= "heavy_armor" or name ~= "launch_pad" or name ~= "deagle5" then return end

    local TextBox = Drawing.new("Square")
    TextBox.Visible = false
    TextBox.Filled = false
    TextBox.Thickness = 2
    
    local Text = Drawing.new("Text")
    Text.Visible = false
    Text.Size = 14
    Text.Center = true
    Cache.Items[PART] = {Text, TextBox}
end

if game.PlaceId == 9611608064 then
    Cache.Connections.GROUNDITEMADED = workspace.GroundItems.ChildAdded:Connect(function(c)
        addItemToESP(c)
    end)
    for _,PART in pairs(workspace.GroundItems:GetChildren()) do
        addItemToESP(PART)
    end
end

RunService:BindToRenderStep("afggg", 1, update)
RunService:BindToRenderStep("afggghan", 2, update2)

local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function() end
Cache.Connections.OnTp = Player.OnTeleport:Connect(function(state)
    if state == Enum.TeleportState.Started then
        task.spawn(DestroyScript)
        queueteleport("shared.enabledonrift = '".. HttpService:JSONEncode({
            ItemESP = Cache.Enabled.ItemESP,
            ESP = Cache.Enabled.ESP,
            Tracers = Cache.Enabled.Tracers,
            Aimbot = Cache.Enabled.Aimbot,
            AimbotFOV = Cache.Enabled.AimbotFOV,
            AimbotPower = Cache.Enabled.AimbotPower,
            Nametags = Cache.Enabled.Nametags,
            AimVisCheck = Cache.Enabled.AimVisCheck,
            ESPVisCheck = Cache.Enabled.ESPVisCheck,
        }) .."'\ntask.wait(5)\nloadstring(game:HttpGet(\"https://gist.githubusercontent.com/DeveloperMikey/0787e77a45d5f1f9a5de709d71ff2f25/raw/rift.lua\"))()")
    end
end)