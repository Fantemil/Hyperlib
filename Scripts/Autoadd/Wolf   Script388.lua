--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	Instruction for script:
		Description Mode - only 1-4 mods
		Description Text - text which will be automated in ur desc
	Desc Modes:
		Mode 1 - default typing
		Mode 2 - erase typing
		Mode 3 - glitchy
		Mode 4 - backward typing
--]]
-- Please wait for the cerdit panel its coming soon :)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Syr0nix/UI-lib-NEW/main/WL"))()
Window = Library.Main("WLF3 syr0nix5257", "F5")
local Tab = Window.NewTab("Main Tab")
local Section = Tab.NewSection("ReSpawners")
local Section2 = Tab.NewSection("BE FREE")
local function createButton(section, name, arg1, arg2)
    local args = { [1] = arg1, [2] = arg2, [3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD" }
    section.NewButton(name, function()
        game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    end)
end
local ageButtons = { "Adult", "Pup", "Newborn" }
for _, age in pairs(ageButtons) do
    createButton(Section, age, "Age", age)
end
createButton(Section2, "Wings", "Wings", 0)
createButton(Section2, "Ocean Skin", "Ocean", 0)
createButton(Section2, "Dragon skin", "Dragon", 0)
createButton(Section2, "Remove Wings", "Wings", 1)
createButton(Section2, "Remove Ocean skin", "Ocean", 1)
createButton(Section2, "Remove Dragon skin", "Dragon", 1)
local Tab = Window.NewTab("VIW")
local Section = Tab.NewSection("Wana Be VIW")
local Button = Section.NewButton("VIW TAG", function()
    game.ReplicatedStorage.MasterKey:FireServer("AddVIWTag", nil,
        "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
end)
local Audioplayer = Section.Newtextbox('Enter Audio ID here', function(self, value)
    local id = tonumber(value)
    if id then
        game.ReplicatedStorage.MasterKey:FireServer("PlayMusic", id, "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
    end
end)
local Button = Section.NewButton("Stop Music", function()
    game.ReplicatedStorage.MasterKey:FireServer("StopMusic", nil, "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
end)
_G.autoaudiomute = false
local EnabledToggle = Section.NewToggle("Mute VIW Music", function(bool)
    _G.autoaudiomute = not _G.autoaudiomute
    while _G.autoaudiomute do
        task.wait()
        for _, v in next, game:GetService('Players'):GetPlayers() do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character.Parent ~= nil and v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM') then
                v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM'):Stop()
                v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM').Playing = false
            end
        end
    end
end)
--Made by: Flixz_y and Colby
_G.SpamLights = false
local EnabledToggle = Section.NewToggle("SpamLights!", function(bool)
    if _G.SpamLights then
        _G.SpamLights = false
        return
    else
        _G.SpamLights = true
    end
    while _G.SpamLights do
        for _, L in next, workspace.Models:GetDescendants() do
            if L:IsA("ClickDetector") then
                fireclickdetector(L)
            end
        end
        task.wait(0.1)
    end
end)
local Button = Section.NewButton("RTX", function()
    --made by Colby :D
    local sunrays = game.Lighting.SunRays
    local s = Instance.new("DepthOfFieldEffect")
    local a = game.Lighting.Atmosphere
    game.Lighting.OutdoorAmbient = Color3.fromRGB(50, 50, 50)
    game.Lighting.Ambient = Color3.fromRGB(20, 20, 20)
    sunrays.Intensity = 0.1
    s.FarIntensity = 0.20
    s.FocusDistance = 0.05
    s.InFocusRadius = 15
    s.NearIntensity = 0.75
    s.Parent = game.Lighting
    sunrays.Parent = game.Lighting
    a.Density = .1
    a.Haze = 0
    a.Glare = 1
    a.Offset = 0
    a.Decay = Color3.fromRGB(159, 43, 104)
    print("Rtx Enabled")
end)
local Button = Section.NewButton("FPS BOOSTER", function()
    local decalsyeeted = true
    local game = game
    local workspace = game.Workspace
    local lighting = game.Lighting
    local terrain = workspace.Terrain
    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 0
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for _, object in pairs(game:GetDescendants()) do
        if object:IsA("Part") or object:IsA("Union") or object:IsA("MeshPart") then
            object.Material = "Plastic"
            object.Reflectance = 0
        elseif object:IsA("Decal") and decalsyeeted then
            object.Transparency = 1
        elseif object:IsA("ParticleEmitter") or object:IsA("Trail") then
            object.Lifetime = NumberRange.new(0)
        end
    end
end)
local Button = Section.NewButton("Remove Name tags", function()
    local args = { [1] = "ChangeDesc", [2] = "",
        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153" }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "ChangeName", [2] = "",
        [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153" }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    game.Players.LocalPlayer.Character.Head.NameTag.Main.Pack:remove()
    game.Players.LocalPlayer.Character.Head.NameTag.Main.VIW:remove()
end)
local timergb, RBW_COL = 7
rgb1 = game:GetService('RunService').Heartbeat:Connect(function()
    local hue = tick() % timergb / timergb
    RBW_COL = Color3.fromHSV(hue, 1, 1)
end)
_G.cocktuning = {
    dmod = 1,            -- mode 1-4
    desc = 'Example Title', -- auto description text
    wait = .2,           -- text type speed
    wait2 = .8,          -- time wait after done typing for other mods
    wait3 = .4           -- time wait after done typing for mode 3
}
local text_ = Section.Newtextbox('Description Text', function(self, value)
    _G.cocktuning.desc = value
end)
local mode_ = Section.Newtextbox('Description Mode', function(self, value)
    if tonumber(value) ~= nil then
        _G.cocktuning.dmod = tonumber(value)
    end
end)
--[[
Usage:
    to change mod or text u should just change in _G.cocktuning
    Example:
        dmod = 2,
        desc = 'SOME ANOTHER TEXT TO WHAT U WANT'

    DO NOT TOUCH FUCKING WAITS IN _G.cocktuning IF YOU DONT KNOW WHAT THEY MEAN!!
    Cause I don't want to be like sucker when y'all use my script wrongly.. :sob:

    Mady by: Unix
    Included to syronix script.
--]]
_G.PROVODASUKAB = false
local cfg = {
    key = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" ..
    "\153", eventname = "ChangeDesc", mk = game:GetService('ReplicatedStorage'):FindFirstChild('MasterKey') }
local Button = Section.NewToggle("Auto Description", function()
    if _G.PROVODASUKAB then
        _G.PROVODASUKAB = false
        return
    else
        _G.PROVODASUKAB = true
    end
    while _G.PROVODASUKAB do
        if _G.cocktuning.dmod == 1 then
            for i = 1, #_G.cocktuning.desc do
                if not _G.PROVODASUKAB or _G.cocktuning.dmod ~= 1 then continue; end
                task.wait(_G.cocktuning.wait)
                local args = { [1] = cfg.eventname, [2] = string.sub(_G.cocktuning.desc, 1, i) .. '|', [3] = cfg.key }
                cfg.mk:FireServer(unpack(args))
            end
            ; task.wait(_G.cocktuning.wait2)
        elseif _G.cocktuning.dmod == 2 then
            for i = 1, #_G.cocktuning.desc do
                if not _G.PROVODASUKAB or _G.cocktuning.dmod ~= 2 then continue; end
                task.wait(_G.cocktuning.wait)
                local args = { [1] = cfg.eventname, [2] = string.sub(_G.cocktuning.desc, 1, #_G.cocktuning.desc - i) .. '|',
                    [3] = cfg.key }
                cfg.mk:FireServer(unpack(args))
            end
            ; task.wait(_G.cocktuning.wait2)
        elseif _G.cocktuning.dmod == 3 then
            for i = 1, #_G.cocktuning.desc do
                if not _G.PROVODASUKAB or _G.cocktuning.dmod ~= 3 then continue; end
                task.wait(_G.cocktuning.wait)
                local fakea = _G.cocktuning.desc; fakea = string.sub(_G.cocktuning.desc, math.random(1, #fakea),
                    math.random(1, #fakea) - i) .. '|'
                local args = { [1] = cfg.eventname, [2] = fakea, [3] = cfg.key }
                cfg.mk:FireServer(unpack(args))
            end
            ; task.wait(_G.cocktuning.wait3)
        elseif _G.cocktuning.dmod == 4 then
            for i = 1, #_G.cocktuning.desc do
                if not _G.PROVODASUKAB or _G.cocktuning.dmod ~= 4 then continue; end
                task.wait(_G.cocktuning.wait)
                local args = { [1] = cfg.eventname,
                    [2] = '|' .. string.sub(_G.cocktuning.desc, #_G.cocktuning.desc - i, #_G.cocktuning.desc),
                    [3] = cfg.key }
                cfg.mk:FireServer(unpack(args))
            end
        end
        ; task.wait(_G.cocktuning.wait2)
    end
end)
local Tab = Window.NewTab("Admin")
local Section = Tab.NewSection("Wana Be Admin")
local Button = Section.NewButton("Remove Anti Cheat", function()
    local Players = game:GetService("Players")

    for _, player in ipairs(Players:GetPlayers()) do
        local gui = player:FindFirstChild("PlayerGui")
        if gui then
            local morphGUI = gui:FindFirstChild("MorphGUI")
            if morphGUI then
                morphGUI:Destroy()
            else
                print("MorphGUI not found for player "..player.Name)
            end
        else
            print("PlayerGui not found for player "..player.Name)
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1042.43982, 19.7494831, -117.529419, -0.997552693, 0.00699939113, -0.0695673227, -1.71995453e-05, 0.994952023, 0.100351952, 0.0699185431, 0.100107551, -0.992516994)
                     warn("Anti Cheat has been bypass there are still admins use at your own risk SYR0NIX :)")
    local ChatGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local LogPanel = Instance.new("ScrollingFrame")
    local Close = Instance.new("TextButton")
    local Mini = Instance.new("TextButton")
    local Log = Instance.new("TextButton")
    local title = Instance.new("TextLabel")
    local UIListLayoutt = Instance.new("UIListLayout", LogPanel)
    UIListLayoutt.VerticalAlignment = "Bottom"
    UIListLayoutt.Padding = UDim.new(0, 0) 
    ChatGui.Name = "ChatGui"
    ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
    ChatGui.ResetOnSpawn = false
    Frame.Parent = ChatGui
    Frame.BackgroundColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
    Frame.Size = UDim2.new(0, 600, 0, 400) 
    Frame.Active = true
    Frame.Draggable = true
    LogPanel.Name = "LogPanel"
    LogPanel.Parent = Frame
    LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
    LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
    LogPanel.Position = UDim2.new(0, 0, 0.0625, 0) 
    LogPanel.Size = UDim2.new(1, 0, 0.875, 0) 
    LogPanel.ScrollBarThickness = 5
    LogPanel.ScrollingEnabled = true
    LogPanel.CanvasSize = UDim2.new(2, 0, 100, 0)
    Close.Name = "Close"
    Close.Parent = Frame
    Close.BackgroundColor3 = Color3.new(1, 1, 1)
    Close.BackgroundTransparency = 1
    Close.Position = UDim2.new(0.823979557, 0, 0, 0) 
    Close.Size = UDim2.new(0.176020443, 0, 0.0625, 0) 
    Close.Font = Enum.Font.SourceSans
    Close.Text = "Close"
    Close.TextColor3 = Color3.new(1, 1, 1)
    Close.TextSize = 14
    Mini.Name = "Mini"
    Mini.Parent = Frame
    Mini.BackgroundColor3 = Color3.new(1, 1, 1)
    Mini.BackgroundTransparency = 1
    Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
    Mini.Size = UDim2.new(0.176020443, 0, 0.0625, 0) 
    Mini.Font = Enum.Font.SourceSans
    Mini.Text = "Minimize"
    Mini.TextColor3 = Color3.new(1, 1, 1)
    Mini.TextSize = 14
    Log.Name = "Log"
    Log.Parent = Frame
    Log.BackgroundColor3 = Color3.new(1, 1, 1)
    Log.BackgroundTransparency = 1
    Log.Position = UDim2.new(0.293367326, 0, 0, 0) 
    Log.Size = UDim2.new(0.354591837, 0, 0.0625, 0) 
    Log.Font = Enum.Font.SourceSans
    Log.Text = "Log Chat [ON]"
    Log.TextColor3 = Color3.new(1, 1, 1)
    Log.TextSize = 14
    title.Name = "title"
    title.Parent = Frame
    title.BackgroundColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0.293367326, 0, 0.0625, 0)
    title.Font = Enum.Font.SourceSans
    title.Text = "Syr0nix Chat GUI"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left
    local ChatBox = Instance.new("TextBox")
    ChatBox.Name = "ChatBox"
    ChatBox.Parent = Frame
    ChatBox.Size = UDim2.new(1, 0, 0.0625, 0) 
    ChatBox.Position = UDim2.new(0, 0, 0.9375, 0) 
    ChatBox.PlaceholderText = "Type your message here..."
    ChatBox.ClearTextOnFocus = false
    ChatBox.Font = Enum.Font.SourceSans
    ChatBox.TextSize = 14
    ChatBox.TextColor3 = Color3.new(1, 1, 1)
    ChatBox.BackgroundTransparency = 0.5
    ChatBox.BackgroundColor3 = Color3.new(0, 0, 0)
    ChatBox.BorderSizePixel = 0
    local logging = true
    local minimized = false
    Log.MouseButton1Down:Connect(function()
        logging = not logging
        if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
    end)
    Mini.MouseButton1Down:Connect(function()
        if minimized then
            LogPanel:TweenSize(UDim2.new(0, 600, 0, 350), "InOut", "Sine", 0.5, false, nil)
        else
            LogPanel:TweenSize(UDim2.new(0, 600, 0, 0), "InOut", "Sine", 0.5, false, nil)
        end
        minimized = not minimized
    end)
    Close.MouseButton1Down:Connect(function()
        ChatGui:Destroy()
    end)
    local prevOutputPos = 0
    function output(plr, msg)
        if not logging then return end
        local colour = Color3.fromRGB(255, 255, 255)
        if string.sub(msg, 1, 1) == ":" or string.sub(msg, 1, 1) == ";" then
            colour = Color3.fromRGB(255, 0, 0)
        elseif string.sub(msg, 1, 2) == "/w" or string.sub(msg, 1, 7) == "/whisper" or string.sub(msg, 1, 5) == "/team" or string.sub(msg, 1, 2) == "/t" then
            colour = Color3.fromRGB(0, 0, 255)
        else
            colour = Color3.fromRGB(255, 255, 255)
        end
        local o = Instance.new("TextLabel", LogPanel)
        o.Text = plr.Name .. ": " .. msg
        o.Size = UDim2.new(0.5, 0, .003, 0)
        o.Position = UDim2.new(0, 0, .007 + prevOutputPos, 0)
        o.Font = Enum.Font.SourceSansSemibold
        o.TextColor3 = colour
        o.TextStrokeTransparency = 0
        o.BackgroundTransparency = 0
        o.BackgroundColor3 = Color3.new(0, 0, 0)
        o.BorderSizePixel = 0
        o.BorderColor3 = Color3.new(0, 0, 0)
        o.FontSize = "Size14"
        o.TextXAlignment = Enum.TextXAlignment.Left
        o.ClipsDescendants = true
        prevOutputPos = prevOutputPos + 0.003
    end
    for i, v in pairs(game.Players:GetChildren()) do
        v.Chatted:Connect(function(msg)
            output(v, msg)
        end)
    end
    game.Players.ChildAdded:Connect(function(plr)
        if plr:IsA("Player") then
            plr.Chatted:Connect(function(msg)
                output(plr, msg)
            end)
        end
    end)
    ChatBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local message = ChatBox.Text
                ChatBox.Text = "" 
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
                end
            end)
end)
local NAME = ''
local BringButton = Section.NewButton("Bring Player", function()
    local playerToBring = findPlayer(NAME)
    if playerToBring then
        game:GetService("ReplicatedStorage").CarryNewborn:FireServer(playerToBring)
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1042.43982, 19.7494831, -117.529419, -0.997552693, 0.00699939113, -0.0695673227, -1.71995453e-05, 0.994952023, 0.100351952, 0.0699185431, 0.100107551, -0.992516994)
        wait(0.2)
        game:GetService("ReplicatedStorage").CarryNewborn:FireServer("Kick Eggs")
        wait(0.2)
    end
end)
function playerCheck(p)
    if type(p) == 'boolean' or p == nil then return false end
    if game:GetService('Players'):FindFirstChild(p) then
        return game:GetService('Players'):FindFirstChild(p)
    end
end

function findPlayer(name)
    local nameLower = string.lower(name)
    local bestMatch = nil
    local bestMatchScore = math.huge
    for _, p in next, game:GetService('Players'):GetPlayers() do
        local pn = string.lower(p.Name)
        local pd = string.lower(p.DisplayName)
        local score1 = levenshtein(nameLower, pn)
        local score2 = levenshtein(nameLower, pd)
        local score = math.min(score1, score2)
        if score < bestMatchScore then
            bestMatchScore = score
            bestMatch = p
        end
    end
    return bestMatch
end

function levenshtein(str1, str2)
    local len1, len2 = #str1, #str2
    local matrix = {}
    for i = 0, len1 do
        matrix[i] = { [0] = i }
    end
    for j = 0, len2 do
        matrix[0][j] = j
    end
    for j = 1, len2 do
        for i = 1, len1 do
            if (str1:byte(i) == str2:byte(j)) then
                matrix[i][j] = matrix[i - 1][j - 1]
            else
                matrix[i][j] = math.min(matrix[i - 1][j], matrix[i][j - 1], matrix[i - 1][j - 1]) + 1
            end
        end
    end
    return matrix[len1][len2]
end

local plr = Section.Newtextbox('Player Name', function(self, value)
    local _plr = findPlayer(value)
    if _plr then
        NAME = _plr.Name
        self.Text = NAME
    end
end)
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        character.Humanoid.Died:Connect(function()
            -- code to run when a new player joins the game and their character dies
            -- for example, you could reset the NAME variable to the new player's name:
            NAME = player.Name
            -- or you could call the BringButton function to bring the new player:
            BringButton()
        end)
    end)
end)
for _, player in pairs(game.Players:GetPlayers()) do
    player.CharacterAdded:Connect(function(character)
        character.Humanoid.Died:Connect(function()
            -- code to run when an existing player's character dies
            -- for example, you could reset the NAME variable to the existing player's name:
            NAME = player.Name
            -- or you could call the BringButton function to bring the existing player:
            BringButton()
        end)
    end)
end
local function createButton(name, url)
    Section.NewButton(name, function()
        loadstring(game:HttpGet(url, true))()
    end)
end
local buttons = { { "fates admin", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua" },
    { "Homebrew Admin", 'https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main' },
    { "Inf Yeld", 'https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source' },
    { "Server Browser GUI", 'https://www.scriptblox.com/raw/Server-Browser_80' },
    { "Server ID Joiner GUI", 'https://raw.githubusercontent.com/AzureServicess/Job-ID/main/Universal/lua' } }
table.sort(buttons, function(a, b) return a[1] < b[1] end)
for _, button in pairs(buttons) do
    createButton(button[1], button[2])
end
local Button = Section.NewButton("Chat Logger", function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local ChatGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local LogPanel = Instance.new("ScrollingFrame")
local Close = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local Log = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local UIListLayoutt = Instance.new("UIListLayout", LogPanel)
UIListLayoutt.VerticalAlignment = "Bottom"
UIListLayoutt.Padding = UDim.new(0, 0) 
ChatGui.Name = "ChatGui"
ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
ChatGui.ResetOnSpawn = false
Frame.Parent = ChatGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
Frame.Size = UDim2.new(0, 600, 0, 400) 
Frame.Active = true
Frame.Draggable = true
LogPanel.Name = "LogPanel"
LogPanel.Parent = Frame
LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
LogPanel.Position = UDim2.new(0, 0, 0.0625, 0) 
LogPanel.Size = UDim2.new(1, 0, 0.875, 0) 
LogPanel.ScrollBarThickness = 5
LogPanel.ScrollingEnabled = true
LogPanel.CanvasSize = UDim2.new(2, 0, 100, 0)
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.823979557, 0, 0, 0) 
Close.Size = UDim2.new(0.176020443, 0, 0.0625, 0) 
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Mini.Name = "Mini"
Mini.Parent = Frame
Mini.BackgroundColor3 = Color3.new(1, 1, 1)
Mini.BackgroundTransparency = 1
Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
Mini.Size = UDim2.new(0.176020443, 0, 0.0625, 0) 
Mini.Font = Enum.Font.SourceSans
Mini.Text = "Minimize"
Mini.TextColor3 = Color3.new(1, 1, 1)
Mini.TextSize = 14
Log.Name = "Log"
Log.Parent = Frame
Log.BackgroundColor3 = Color3.new(1, 1, 1)
Log.BackgroundTransparency = 1
Log.Position = UDim2.new(0.293367326, 0, 0, 0) 
Log.Size = UDim2.new(0.354591837, 0, 0.0625, 0) 
Log.Font = Enum.Font.SourceSans
Log.Text = "Log Chat [ON]"
Log.TextColor3 = Color3.new(1, 1, 1)
Log.TextSize = 14
title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(0.293367326, 0, 0.0625, 0)
title.Font = Enum.Font.SourceSans
title.Text = "Syr0nix Chat GUI"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
local ChatBox = Instance.new("TextBox")
ChatBox.Name = "ChatBox"
ChatBox.Parent = Frame
ChatBox.Size = UDim2.new(1, 0, 0.0625, 0) 
ChatBox.Position = UDim2.new(0, 0, 0.9375, 0) 
ChatBox.PlaceholderText = "Type your message here..."
ChatBox.ClearTextOnFocus = false
ChatBox.Font = Enum.Font.SourceSans
ChatBox.TextSize = 14
ChatBox.TextColor3 = Color3.new(1, 1, 1)
ChatBox.BackgroundTransparency = 0.5
ChatBox.BackgroundColor3 = Color3.new(0, 0, 0)
ChatBox.BorderSizePixel = 0
local logging = true
local minimized = false
Log.MouseButton1Down:Connect(function()
    logging = not logging
    if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
end)
Mini.MouseButton1Down:Connect(function()
    if minimized then
        LogPanel:TweenSize(UDim2.new(0, 600, 0, 350), "InOut", "Sine", 0.5, false, nil)
    else
        LogPanel:TweenSize(UDim2.new(0, 600, 0, 0), "InOut", "Sine", 0.5, false, nil)
    end
    minimized = not minimized
end)
Close.MouseButton1Down:Connect(function()
    ChatGui:Destroy()
end)
local prevOutputPos = 0
function output(plr, msg)
    if not logging then return end
    local colour = Color3.fromRGB(255, 255, 255)
    if string.sub(msg, 1, 1) == ":" or string.sub(msg, 1, 1) == ";" then
        colour = Color3.fromRGB(255, 0, 0)
    elseif string.sub(msg, 1, 2) == "/w" or string.sub(msg, 1, 7) == "/whisper" or string.sub(msg, 1, 5) == "/team" or string.sub(msg, 1, 2) == "/t" then
        colour = Color3.fromRGB(0, 0, 255)
    else
        colour = Color3.fromRGB(255, 255, 255)
    end
    local o = Instance.new("TextLabel", LogPanel)
    o.Text = plr.Name .. ": " .. msg
    o.Size = UDim2.new(0.5, 0, .003, 0)
    o.Position = UDim2.new(0, 0, .007 + prevOutputPos, 0)
    o.Font = Enum.Font.SourceSansSemibold
    o.TextColor3 = colour
    o.TextStrokeTransparency = 0
    o.BackgroundTransparency = 0
    o.BackgroundColor3 = Color3.new(0, 0, 0)
    o.BorderSizePixel = 0
    o.BorderColor3 = Color3.new(0, 0, 0)
    o.FontSize = "Size14"
    o.TextXAlignment = Enum.TextXAlignment.Left
    o.ClipsDescendants = true
    prevOutputPos = prevOutputPos + 0.003
end
for i, v in pairs(game.Players:GetChildren()) do
    v.Chatted:Connect(function(msg)
        output(v, msg)
    end)
end
game.Players.ChildAdded:Connect(function(plr)
    if plr:IsA("Player") then
        plr.Chatted:Connect(function(msg)
            output(plr, msg)
        end)
    end
end)
ChatBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local message = ChatBox.Text
        ChatBox.Text = "" 
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end)

-- Focus ChatBox when / key is pressed
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.Slash and not gameProcessed then
        ChatBox:CaptureFocus()
    end
end)
end)
local Button = Section.NewButton("CTRL + Click TP", function()
    local UIS = game:GetService("UserInputService")
    local Player = game.Players.LocalPlayer
    local Mouse = Player:GetMouse()
    function GetCharacter()
        return game.Players.LocalPlayer.Character
    end

    function Teleport(pos)
        local Char = GetCharacter()
        if Char then
            Char:MoveTo(pos)
        end
    end

    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
            Teleport(Mouse.Hit.p)
        end
    end)
end)
local Button = Section.NewButton("Teleport all", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local carryNewborn = replicatedStorage.CarryNewborn
    local masterKey = replicatedStorage.MasterKey
    local players = game.Players:GetChildren()
    for i, v in ipairs(players) do
        carryNewborn:FireServer(v)
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(1042.43982, 19.7494831, -117.529419, -0.997552693, 0.00699939113, -0.0695673227, -1.71995453e-05, 0.994952023, 0.100351952, 0.0699185431, 0.100107551, -0.992516994)
        wait(0.2)
        carryNewborn:FireServer("Kick Eggs")
        wait(0.2)
    end
end)
local Button = Section.NewButton("INF CASH", function()
    local args = { [1] = "Coins", [2] = math.huge, [3] = "\226\135\154\225\155\157i\220\176\219\173\230\155\157u" }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Anti Fling and Void", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/anti-scripts/main/anti%20fling'))();
end)
local Button = Section.NewButton("Anti pick up", function()
    game.Players.LocalPlayer.Character.Request:Destroy();
end)
_G.AntiAFK = false
local EnabledToggle = Section.NewToggle("Anti AFK", function(bool)
    if _G.AntiAFK then
        _G.AntiAFK = false
        print("Anti AFK Is Disabled")
        return
    else
        _G.AntiAFK = true
    end
    print("Anti AFK Is Enable")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end)
local Tab = Window.NewTab("Local OC")
local Section = Tab.NewSection("Be Creative")
function playerCheck(p)
    if type(p) == 'boolean' or p == nil then return false end
    if game:GetService('Players'):FindFirstChild(p) then
        return game:GetService('Players'):FindFirstChild(p)
    end
end

local function findPlayer(name)
    for _, p in next, game:GetService('Players'):GetPlayers() do
        local pn = string.lower(p.Name)
        local pd = string.lower(p.DisplayName)
        if (string.sub(name, 1, #name) == string.sub(pn, 1, #name) or string.sub(name, 1, #name) == string.sub(pd, 1, #name)) then
            return p
        end
    end
    return false
end
local NAME, USER = '', nil
local plr = Section.Newtextbox('Player Name', function(self, value)
    local find = findPlayer(value)
    if find then
        NAME, USER = find.Name, find
        self.Text = find.Name
    else
        self.Text = 'User not found'
    end
end)
local copyWolfVars = {
    HairF = { ["Long"] = '1.1634', ["Spiky"] = '0.53845', ["Swiped Back"] = '0.71497', ["Punk"] = '0.57207',
        ["Lonely Woof"] = '1.0990', ["Ewooftional"] = '1.0871', ["Braided"] = '1.3539', ["Scene"] = '0.94984',
        ["Curly"] = '1.1623', ["Long straight"] = '1.1057', ["Bed Head"] = '1.2428', ["Emo-Punk"] = '0.74069',
        ["Spiky Punk"] = '0.54955', ["Short Spiky"] = '1.4760', ["Long Spiky"] = '1.4688', ["Sidecut"] = '1.2984',
        ["Long Sidecut"] = '0.74951', ["Extreme-Edge"] = '1.1373' },
    TorsoF = { ["Swords"] = '2.3725', ["Cape"] = '1.6089', ["Guitar"] = '1.7366', ["Medic"] = '0.2127',
        ["Flower"] = '1.1194', ["Rope"] = '1.2306', ["RippedShirt"] = '1.1532', ["Bags"] = '1.2729',
        ["SwordSet1"] = '0.21984', ["SwordSet2"] = '3.3593', ["Sword1"] = '0.24967', ["Sword2"] = '0.080584',
        ["Chains"] = '1.2260', ["Leaves"] = '1.473', ["Backpack"] = '1.2158', ["Scars"] = '0.73279' },
    FeetF = { ["Slider Bracelets"] = '0.49548', ["Cross Bracelets"] = '0.48346', ["Winter Boots"] = '0.56080',
        ["Leaves"] = '0.6', ["Double Bracelets"] = '0.36447' },
    fluffs = { 'ChestFluff', 'BackFluff', 'EarFluff', 'JawFluff', 'TailFluff', 'LegFluff', 'Fat', 'ChubbyCheeks' } }
local VARS = {
    _fKEY = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" ..
    "\153", _tKEY = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD", }
Section.NewButton('Copy Wolf', function()
    local _acesory = game:GetService('ReplicatedStorage').Accessories
    local _maKEY = game:GetService('ReplicatedStorage').MasterKey
    local _maKEY2 = game:GetService('ReplicatedStorage').MasterKey2
    local plr = playerCheck(NAME)
    if plr then
        coroutine.resume(coroutine.create(function()
            local char = plr.Character or false
            local spchar = game:GetService('Players').LocalPlayer.Character or false
            local head = char and char:FindFirstChild('Head') or false
            local sphead = spchar and spchar:FindFirstChild('Head') or false
            local nmt = head and head:FindFirstChild('NameTag') or false
            local spnmt = sphead and sphead:FindFirstChild('NameTag') or false
            local mnt = nmt and nmt:FindFirstChild('Main') or false
            local spmnt = spnmt and spnmt:FindFirstChild('Main') or false
            if spchar and sphead and char and head then
                local function arg(a, b, v)
                    if a == 1 then
                        return unpack { [1] = "customize", [2] = { [1] = v.Name }, [3] = v.Color, [4] = "Body" }
                    elseif a == 2 then
                        return unpack { [1] = v, [2] = b, [3] = VARS._tKEY }
                    elseif a == 3 then
                        return unpack { [1] = "Material", [2] = v.Material, [3] = { [1] = v.Name } }
                    end
                end
                _acesory:FireServer("remove", 'HairF')
                _acesory:FireServer("remove", 'TorsoF')
                _acesory:FireServer("remove", 'FeetF')
                task.wait()
                _maKEY2:FireServer("LeavePack")
                if (mnt and mnt:FindFirstChild('Pack') and mnt:FindFirstChild('Pack').Text ~= 'No Pack') then
                    task.delay(.4, function()
                        local args = {
                            [1] = "CreatePack",
                            [2] = mnt:FindFirstChild('Pack') and mnt:FindFirstChild('Pack').Text .. '' or false
                        }
                        if (mnt:FindFirstChild('Pack') and mnt:FindFirstChild('Pack').Text:sub(1, 8) == '[ALPHA] ') then
                            args[2] = args[2]:sub(8, #args[2]) .. ''
                        end
                        _maKEY2:FireServer(unpack(args))
                    end)
                end
                if (mnt and mnt:FindFirstChild('Username')) then
                    _maKEY:FireServer("ChangeName",
                        mnt:FindFirstChild('Username') and mnt:FindFirstChild('Username').Text or false, VARS._fKEY)
                end
                if (mnt and mnt:FindFirstChild('Description')) then
                    _maKEY:FireServer("ChangeDesc",
                        mnt:FindFirstChild('Description') and mnt:FindFirstChild('Description').Text or false, VARS
                    ._fKEY)
                end
                if not mnt then
                    task.wait(.1)
                    _maKEY:FireServer("ChangeName", string.rep('HERE\nBYTE\n', 200), VARS._fKEY)
                    _maKEY:FireServer("ChangeDesc", string.rep('HERE\nBYTE\n', 200), VARS._fKEY)
                    _maKEY2:FireServer("CreatePack", string.rep('e\n\n', 15))
                end
                if char:FindFirstChild("RightWing3") and char:FindFirstChild("RightWing3").Transparency == 0 then
                    _maKEY:FireServer(arg(2, 0, 'Wings'))
                else
                    _maKEY:FireServer(arg(2, 1, 'Wings'))
                end
                if char:FindFirstChild("OceanPrimary") and char:FindFirstChild("OceanPrimary").Transparency == 0 then
                    _maKEY:FireServer(arg(2, 0, 'Ocean'))
                else
                    _maKEY:FireServer(arg(2, 1, 'Ocean'))
                end
                if char:FindFirstChild("DragonThird") and char:FindFirstChild("DragonThird").Transparency == 0 then
                    _maKEY:FireServer(arg(2, 0, 'Dragon'))
                else
                    _maKEY:FireServer(arg(2, 1, 'Dragon'))
                end
                if char:FindFirstChild('HairF') then
                    for c, v in next, char:FindFirstChild('HairF'):children() do
                        if v:IsA('BasePart') then
                            for b, a in next, copyWolfVars.HairF do
                                if tostring(v.Size.X):sub(1, #a) == a then
                                    _acesory:FireServer('HairF', b)
                                    task.wait(.1)
                                    _maKEY:FireServer("Accessories", v.Color)
                                    _maKEY:FireServer("AccessoryMaterial", v.Material, "HairF")
                                    break
                                end
                            end
                        end
                    end
                end
                if char:FindFirstChild('TorsoF') then
                    for c, v in next, char:FindFirstChild('TorsoF'):children() do
                        if v:IsA('BasePart') or v.Name:find('Color1') then
                            for b, a in next, copyWolfVars.TorsoF do
                                if tostring(v.Size.X):sub(1, #a) == a then
                                    task.wait(.25)
                                    _acesory:FireServer('TorsoF', b)
                                    task.wait(.1)
                                    _maKEY:FireServer("Accessories", v.Color)
                                    _maKEY:FireServer("AccessoryMaterial", v.Material, "TorsoF")
                                    break
                                end
                            end
                        end
                    end
                end
                if char:FindFirstChild('FeetF') then
                    for c, v in next, char:FindFirstChild('FeetF'):children() do
                        if v:IsA('BasePart') or v.Name:find('Hat') then
                            for b, a in next, copyWolfVars.FeetF do
                                if tostring(v.Size.X):sub(1, #a) == a then
                                    task.wait(.25)
                                    _acesory:FireServer('FeetF', b)
                                    task.wait(.1)
                                    _maKEY:FireServer("Accessories", v.Color)
                                    _maKEY:FireServer("AccessoryMaterial", v.Material, "FeetF")
                                    break
                                end
                            end
                        end
                    end
                end
                for _, f in next, char:children() do
                    if table.find(copyWolfVars.fluffs, f.Name) then
                        if f:IsA('BasePart') then
                            if f.Transparency == 0 then
                                _maKEY:FireServer("Fluff", f.Name, 0)
                            else
                                _maKEY:FireServer("Fluff", f.Name, 1)
                            end
                        end
                    end
                end
                for _, v in next, char:GetChildren() do
                    if v:IsA('BasePart') then
                        _maKEY:FireServer("customize", { [1] = v.Name }, v.Color, "Body")
                        _maKEY:FireServer("Material", v.Material, { [1] = v.Name })
                    end
                end
            end
        end))
    end
end)
local enableSeats = Section.NewButton('Enable Sit', function()
    if USER then
        for i, v in pairs(USER.Character:GetChildren()) do
            if v:IsA('Seat') then
                v.Disabled = false
            end
        end
    end
end)
local function createButton(name, arg1, arg2)
    local args
    if arg1 == "LoadFile1Colours" or arg1 == "SaveFile1Colours" then
        args = { [1] = arg1, [2] = arg2,
            [3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147" }
    else
        args = { [1] = arg1, [2] = arg2 }
    end
    Section.NewButton(name, function()
        if arg1 == "Female" or arg1 == "Male" then
            game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
        else
            game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
        end
    end)
end
createButton("Female", "Female")
createButton("Male", "Male")
for i = 1, 3 do
    createButton("File " .. i, "LoadFile1Colours", tostring(i))
    createButton("Save " .. i, "SaveFile1Colours", tostring(i))
end
local Button = Section.NewButton("Explorer", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/DEX-Synapse-Edition/main/DEX'))();
end)
local Button = Section.NewButton("Syr0nix Custom", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Syr0nix-Customs/main/Syr0nix%20Customs'))();
end)
local Button = Section.NewButton("Block Me", function()
    for _, v in next, game.Players.LocalPlayer.Character:children() do
        if v:IsA 'BasePart' and v.Name ~= 'HumanoidRootPart' then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
        elseif v:IsA 'BasePart' and v.Name == 'HumanoidRootPart' then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 0)
        end
    end
end)
local Tab = Window.NewTab("presets")
local Section = Tab.NewSection("presets")
local Button = Section.NewButton("ghost wolf", function()
    local char = game:GetService('Players').LocalPlayer.Character
    for i, v in pairs(char:GetChildren()) do
        if (v.Name == 'HumanoidRootPart' or v:IsA('Seat') or v.Name:find 'Tooth' or v.Name == 'JawWeldPart' or v.Name:find 'Toungue') then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
        elseif v:IsA('BasePart') and v.Transparency == 0 then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, .8)
        end
    end
end)
local Button = Section.NewButton("scary face", function()
    local args = { [1] = "remove", [2] = "HairF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "TorsoF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "PiercingsF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "remove", [2] = "FeetF" }
    game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Back", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightCarpal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftCarpal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "NeckReal", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "BackFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "ChestFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Claws", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonClaws", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonPrimary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonSecondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "DragonThird", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EarFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeColor", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeLid", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Fat", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Gum", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Head", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Hip", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "HumanoidRootPart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "InsideEars", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Jaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "JawFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftArmPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftEar", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftFootPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Leftleg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLowerArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLowerLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftShoulder", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftThigh", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWing2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWing3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftWingStart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LegFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Muzzle", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Neck", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Nose", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "OceanPrimary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "OceanSecondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pads", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pupils", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightArmPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightEar", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightFootPaw", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLowerArm", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightLowerLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightShoulder", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightThigh", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWing2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWing3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "RightWingStart", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Secondary", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail5", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail6", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "TailFluff", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Torso", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "White", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "lash", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail3", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tail5", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "LeftLeg", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "ChubbyCheeks", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Eyebrow2", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Eyebrow1", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tooth", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "UpperTooth", [3] = 1 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "White", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "EyeColor", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Pupils", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue1", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Toungue2", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Nose", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "UpperTooth", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    local args = { [1] = "Fluff", [2] = "Tooth", [3] = 0 }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    task.wait(0.1)
end)
local function fireMasterKey(partName, color, advanced)
    game:GetService("ReplicatedStorage").MasterKey:FireServer(partName, color, advanced)
end
local function removeAccessory(accessoryName)
    local removeAction = "remove"
    local event = game:GetService("ReplicatedStorage").Accessories
    event:FireServer(removeAction, accessoryName)
end
local Button = Section.NewButton("Big DADY Cock", function()
    --code was made by Say10 aka Colby Cleaned by Syr0nix
    for _, part in next, game.Players.LocalPlayer.Character:children() do
        if part:IsA 'BasePart' and part.Name ~= 'HumanoidRootPart' then
            game.ReplicatedStorage.MasterKey:FireServer("Fluff", part.Name, 1)
        end
    end
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "Torso", 0)
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "LeftThigh", 0)
    game.ReplicatedStorage.MasterKey:FireServer("Fluff", "RightThigh", 0)
    removeAccessory("HairF")
    local torsoColor = Color3.new(0.866667, 0.737255, 0.627451)
    fireMasterKey("Torso", torsoColor, "Advanced")
    local thighColor = Color3.new(0.866667, 0.737255, 0.627451)
    fireMasterKey("LeftThigh", thighColor, "Advanced")
    fireMasterKey("RightThigh", thighColor, "Advanced")
    local neckColor = Color3.new(0.600, 0, 0)
    fireMasterKey("NeckReal", neckColor, "Advanced")
end)
local Button = Section.NewButton("White Eyes", function()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MasterKey = ReplicatedStorage.MasterKey
local function customize(part, color)
	local args = {"customize",{part},color,"Body"}
	MasterKey:FireServer(unpack(args))
end
customize("Pupils", Color3.new(1, 1, 1))
customize("EyeColor", Color3.new(1, 1, 1))
end)
local Button = Section.NewButton("all ForceField", function()
    local Mat = "ForceField"
    local Hair = { "AccessoryMaterial", Mat, "HairF" }
    local Torso = { "AccessoryMaterial", Mat, "TorsoF" }
    local Legs = { "AccessoryMaterial", Mat, "FeetF" }
    local SecondaryArgs = { "Material", Mat,
        { "DragonSecondary", "OceanSecondary", "ChubbyCheeks", "Fat", "EarFluff", "JawFluff", "ChestFluff", "LegFluff",
            "Eyebrow1", "Eyebrow2", "Secondary", "Jaw", "RightShoulder", "RightLowerLeg", "RightLowerArm", "RightLeg",
            "RightFootPaw", "LeftArm", "LeftArmPaw", "LeftCarpal", "LeftFootPaw", "LeftLeg", "LeftLowerArm",
            "LeftLowerLeg", "LeftShoulder", "RightArm", "RightArmPaw", "RightCarpal", "DragonThird" } }
    local PrimaryArgs = { "Material", Mat,
        { "DragonPrimary", "OceanPrimary", "BackFluff", "TailFluff", "LeftWingStart", "LeftWing2", "LeftWing3",
            "RightWingStart", "RightWing2", "RightWing3", "EyeLid", "Torso", "Tail1", "Tail2", "Tail3", "Tail5", "Tail6",
            "RightThigh", "RightEar", "EyeLid", "Head", "Hip", "LeftEar", "LeftThigh", "Muzzle", "Neck", "NeckReal",
            "Nose" } }
    local MasterKey = game:GetService("ReplicatedStorage").MasterKey
    MasterKey:FireServer(unpack(Hair))
    MasterKey:FireServer(unpack(Torso))
    MasterKey:FireServer(unpack(Legs))
    MasterKey:FireServer(unpack(SecondaryArgs))
    MasterKey:FireServer(unpack(PrimaryArgs))
end)
local Button = Section.NewButton("all neon", function()
    local Mat = "Neon"
    local Hair = { "AccessoryMaterial", Mat, "HairF" }
    local Torso = { "AccessoryMaterial", Mat, "TorsoF" }
    local Legs = { "AccessoryMaterial", Mat, "FeetF" }
    local SecondaryArgs = { "Material", Mat,
        { "DragonSecondary", "OceanSecondary", "ChubbyCheeks", "Fat", "EarFluff", "JawFluff", "ChestFluff", "LegFluff",
            "Eyebrow1", "Eyebrow2", "Secondary", "Jaw", "RightShoulder", "RightLowerLeg", "RightLowerArm", "RightLeg",
            "RightFootPaw", "LeftArm", "LeftArmPaw", "LeftCarpal", "LeftFootPaw", "LeftLeg", "LeftLowerArm",
            "LeftLowerLeg", "LeftShoulder", "RightArm", "RightArmPaw", "RightCarpal", "DragonThird" } }
    local PrimaryArgs = { "Material", Mat,
        { "DragonPrimary", "OceanPrimary", "BackFluff", "TailFluff", "LeftWingStart", "LeftWing2", "LeftWing3",
            "RightWingStart", "RightWing2", "RightWing3", "EyeLid", "Torso", "Tail1", "Tail2", "Tail3", "Tail5", "Tail6",
            "RightThigh", "RightEar", "EyeLid", "Head", "Hip", "LeftEar", "LeftThigh", "Muzzle", "Neck", "NeckReal",
            "Nose" } }
    local MasterKey = game:GetService("ReplicatedStorage").MasterKey
    MasterKey:FireServer(unpack(Hair))
    MasterKey:FireServer(unpack(Torso))
    MasterKey:FireServer(unpack(Legs))
    MasterKey:FireServer(unpack(SecondaryArgs))
    MasterKey:FireServer(unpack(PrimaryArgs))
end)
local Button = Section.NewButton("Neon Toungue", function()
    --Made by syr0nix
    local args = { [1] = "Material", [2] = "Neon", [3] = { [29] = "Toungue1", [30] = "Toungue2" } }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
_G.Rainbowwings = false
local EnabledToggle = Section.NewToggle("Rainbow wings", function(bool)
    _G.Rainbowwings = not _G.Rainbowwings
    if _G.Rainbowwings then
        local Mat = "Neon"
        local SecondaryArgs = { [1] = "Material", [2] = Mat,
            [3] = { [1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "Nose", [5] = "EyeColor", } }
        game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
        local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
        while _G.Rainbowwings do
            task.wait()
            local h, s, v = RBW_COL:ToHSV()
            h = (h + 0.001) % 1
            RBW_COL = Color3.fromHSV(h, s, v)
            mk1:FireServer("customize",
                { [1] = "EyeColor", [2] = "Nose", [3] = "DragonPrimary", [4] = "DragonThird", [5] = "OceanPrimary", },
                Color3.new(RBW_COL.R, RBW_COL.G, RBW_COL.B), "Body")
        end
    end
end, false)
_G.Rainbowwingsflash = false
local EnabledToggle = Section.NewToggle("RGB Wings Flash", function(bool)
    _G.Rainbowwingsflash = not _G.Rainbowwingsflash
    if _G.Rainbowwingsflash then
        local Mat = "Neon"
        local SecondaryArgs = { [1] = "Material", [2] = Mat,
            [3] = { [1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "Nose", [5] = "EyeColor", } }
        game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
        local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
        -- Define the colors to fade between
        local colors = { Color3.new(1, 0, 0), Color3.new(0, 1, 0), Color3.new(0, 0, 1) }
        local colorIndex = 1
        while _G.Rainbowwingsflash do
            -- Get the current and next color
            local currentColor = colors[colorIndex]
            local nextColorIndex = colorIndex % #colors + 1
            local nextColor = colors[nextColorIndex]
            -- Interpolate between the current and next color
            for i = 0, 1, 1 do
                local color = currentColor:lerp(nextColor, i)
                mk1:FireServer("customize",
                    { [1] = "EyeColor", [2] = "Nose", [3] = "DragonPrimary", [4] = "DragonThird", [5] = "OceanPrimary", },
                    color, "Body")
                task.wait(0.02) -- Increase the wait time to slow down the color change
            end
            -- Move to the next color
            colorIndex = nextColorIndex
        end
    end
end, false)
_G.MonoChromeWingsFade = false
local EnabledToggle = Section.NewToggle("MonoChrome Wings Fade", function(bool)
    _G.MonoChromeWingsFade = not _G.MonoChromeWingsFade
    if _G.MonoChromeWingsFade then
        local Mat = "Neon"
        local SecondaryArgs = { [1] = "Material", [2] = Mat,
            [3] = { [1] = "DragonThird", [2] = "DragonPrimary", [3] = "OceanPrimary", [4] = "Nose", [5] = "EyeColor", } }
        game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
        local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
        -- Define the colors to fade between
        local colors = { Color3.new(1, 1, 1), Color3.new(0, 0, 0), Color3.new(1, 1, 1) }
        local colorIndex = 1
        while _G.MonoChromeWingsFade do
            -- Get the current and next color
            local currentColor = colors[colorIndex]
            local nextColorIndex = colorIndex % #colors + 1
            local nextColor = colors[nextColorIndex]
            -- Interpolate between the current and next color
            for i = 0, 1, 0.01 do
                local color = currentColor:lerp(nextColor, i)
                mk1:FireServer("customize",
                    { [1] = "EyeColor", [2] = "Nose", [3] = "DragonPrimary", [4] = "DragonThird", [5] = "OceanPrimary", },
                    color, "Body")
                task.wait(0.01) -- Increase the wait time to slow down the color change
            end
            -- Move to the next color
            colorIndex = nextColorIndex
        end
    end
end, false)
local Tab = Window.NewTab("Objects")
local Section = Tab.NewSection("Lazy Ass")
local function getItem(what, items)
    return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
end
local function createButton(name, item)
    local Button = Section.NewButton(name, function()
        local items = { [name] = workspace.ItemOnes[item] }
        getItem(name, items)
    end)
end
createButton("Raw Venison", "Raw Venison")
createButton("Raw Porkchop", "Raw Porkchop")
createButton("Raw Chicken Leg", "Raw Chicken Leg")
createButton("Raw Chicken Breast", "Raw Chicken Breast")
createButton("Raw Rabbit", "Raw Rabbit")
createButton("Raw Beef", "Raw Beef")
createButton("Duck", "Duck")
createButton("Football", "Football")
createButton("Fish", "Raw Fish")
createButton("Ball", "Ball")
local Button = Section.NewButton("Torch", function()
    local items = { ['Torch'] = workspace.GroupedItems.Torch.Handle }
    getItem('Torch', items)
end)
local Button = Section.NewButton("Bone", function()
    local items = { ['Bone'] = workspace.GroupedItems.Bone }
    getItem('Bone', items)
end)
local Button = Section.NewButton("TeddyBear", function()
    local items = { ['TeddyBear'] = workspace.GroupedItems.TeddyBear }
    getItem('TeddyBear', items)
end)
local Button = Section.NewButton("Stick", function()
    local items = { ['Stick'] = workspace.GroupedItems.Stick }
    getItem('Stick', items)
end)
local Button = Section.NewButton("Bunny", function()
    local items = { ['Bunny'] = workspace.Bunnies.Bunny['Hit'] }
    getItem('Bunny', items)
end)
local Tab = Window.NewTab("Toggles")
local Section = Tab.NewSection("wana be sick")
_G.rbweyes = false
local EnabledToggle = Section.NewToggle("Rainbow Eyes", function(bool)
    _G.rbweyes = not _G.rbweyes
    if _G.rbweyes then
        local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
        while _G.rbweyes do
            task.wait()
            local args = {
                "customize",
                { [10] = "EyeColor" },
                Color3.new(RBW_COL.R, RBW_COL.G, RBW_COL.B),
                "Body"
            }
            mk1:FireServer(unpack(args))
        end
    end
end, false)
local hsv = Color3.fromHSV
_G.rbwtag = false
local EnabledToggle = Section.NewToggle("Rainbow Tag", function(bool)
    _G.rbwtag = not _G.rbwtag
    if _G.rbwtag then
        local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
        while _G.rbwtag do
            task.wait()
            local h, s, v = RBW_COL:ToHSV()
            local args = { [1] = "ChangeColor", [2] = { hsv(h, s, v).R, hsv(h, s, v).G, hsv(h, s, v).B },
                [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
            mk1:FireServer(unpack(args))
        end
    end
end, false)
_G.faderbw = false
local EnabledToggle = Section.NewToggle("Rainbow Fade", function(bool)
    if _G.faderbw then
        _G.faderbw = false
        return
    else
        _G.faderbw = true
    end
    local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
    local spd = 4
    while _G.faderbw do
        for i = 0, 1, 0.001 * spd do
            if _G.faderbw == false then return end
            col = Color3.fromHSV(i, 1, 1)
            local args = { [1] = "ChangeColor", [2] = { col.G, col.B, col.B },
                [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
            mk1:FireServer(unpack(args))
            wait()
        end
        for i = 0, 1, 0.001 * spd do
            if _G.faderbw == false then return end
            col = Color3.fromHSV(i, 1, 1)
            local args = { [1] = "ChangeColor", [2] = { col.B, col.B, col.G },
                [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
            mk1:FireServer(unpack(args))
            wait()
        end
        for i = 0, 1, 0.001 * spd do
            if _G.faderbw == false then return end
            col = Color3.fromHSV(i, 1, 1)
            local args = { [1] = "ChangeColor", [2] = { col.r, col.B, col.R },
                [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
            mk1:FireServer(unpack(args))
            wait()
        end
    end
end, false)
_G.rbwparti = false
local EnabledToggle = Section.NewToggle("Rainbow Particles", function(bool)
    if _G.rbwparti then
        _G.rbwparti = false
        return
    else
        _G.rbwparti = true
    end
    local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
    while _G.rbwparti do
        task.wait()
        local args = { [1] = "ColorParticle", [2] = RBW_COL }
        mk1:FireServer(unpack(args))
    end
end, false)
_G.rbwwolf = false
local EnabledToggle = Section.NewToggle("Rainbow wolf", function(bool)
    if _G.rbwwolf then
        _G.rbwwolf = false
        return
    else
        _G.rbwwolf = true
    end
    local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
    while _G.rbwwolf do
        task.wait()
        local args = { [1] = "customize",
            [2] = { [1] = "LeftArm", [2] = "LeftShoulder", [3] = "Pads", [4] = "LeftArmPaw", [5] = "LeftLowerArm", [6] = "RightArm",
                [7] = "RightFootPaw", [8] = "LeftLeg", [9] = "LeftThigh", [10] = "LeftFootPaw", [11] = "Tail3", [12] = "Tail1",
                [13] = "Eyebrow1", [14] = "Eyebrow2", [15] = "Tail2", [16] = "Nose", [17] = "LeftEar", [18] = "Head",
                [19] = "InsideEars", [20] = "RightEar", [21] = "RightThigh", [22] = "Hip", [23] = "Muzzle", [24] = "Tail5",
                [25] = "RightShoulder", [26] = "Torso", [27] = "EyeLid", [28] = "Jaw", [29] = "RightArmPaw", [30] = "RightLeg",
                [31] = "LeftLowerLeg", [32] = "RightLowerLeg", [33] = "LeftWingStart", [34] = "RightWing3", [35] = "LeftWing3",
                [36] = "RightWingStart", [37] = "LeftWing2", [38] = "RightWing2", [39] = "RightLowerArm", [40] = "Secondary",
                [41] = "BackFluff", [42] = "ChestFluff", [43] = "EarFluff", [44] = "JawFluff", [45] = "LegFluff", [46] = "TailFluff",
                [47] = "Fat", [48] = "Claws", [49] = "EyeColor", [50] = "Pupils", [51] = "Gum", [52] = "lash", [53] = "Toungue1",
                [54] = "Toungue2", [55] = "Tooth", [56] = "Neck", [57] = "White", [58] = "JawWeldPart", [59] = "Back",
                [60] = "UpperTooth", [61] = "DragonThird", [62] = "DragonClaws", [63] = "DragonSecondary", [64] = "OceanPrimary",
                [65] = "OceanSecondary", [66] = "DragonPrimary" }, [3] = RBW_COL, [4] = "Body" }
        mk1:FireServer(unpack(args))
    end
end, false)
_G.rbwhair = false
local EnabledToggle = Section.NewToggle("Rainbow Hair", function(bool)
    if _G.rbwhair then
        _G.rbwhair = false
        return
    else
        _G.rbwhair = true
    end
    local mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
    while _G.rbwhair do
        task.wait()
        local args = { [1] = "Accessories", [2] = RBW_COL }
        mk1:FireServer(unpack(args))
    end
end)
_G.MonoChromeFade = false
local EnabledToggle = Section.NewToggle("Mono Fade tag", function(bool)
    if _G.MonoChromeFade then
        _G.MonoChromeFade = false
        return
    else
        _G.MonoChromeFade = true
    end
    local RS = game:service('ReplicatedStorage')
    local mk1 = RS:FindFirstChild('MasterKey')
    local spd = 6
    while _G.MonoChromeFade do
        for i = 0, 1, 0.001 * spd do
            col = Color3.fromHSV(i, 1, 1)
            local args = { [1] = "ChangeColor", [2] = { col.R, col.R, col.R },
                [3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151" .. "\153" }
            mk1:FireServer(unpack(args))
            wait()
        end
    end
end)
_G.MonoChromeparticlefade = false
-- settings
local COLOR1 = Color3.fromRGB(255, 255, 255) -- first color
local COLOR2 = Color3.fromRGB(0, 0, 0)     -- second color
local SPEED = 1
-- additional variables
local Remote = game:GetService('ReplicatedStorage'):FindFirstChild('MasterKey')
local first_color = Instance.new('Color3Value')      -- first value
first_color.Value = COLOR1
local second_color = Instance.new('Color3Value')     -- second value
second_color.Value = COLOR2
local current_color = Instance.new('Color3Value')    -- fading value
current_color.Value = first_color.Value
local TweenService = game:GetService('TweenService') -- get tween service
local EnabledToggle = Section.NewToggle("Mono Chrome Particle Fade", function(bool)
    _G.MonoChromeparticlefade = not _G.MonoChromeparticlefade
    while _G.MonoChromeparticlefade do
        task.wait()
        local nextColor = current_color.Value == second_color.Value and first_color.Value or second_color.Value
        TweenService:Create(current_color, TweenInfo.new(SPEED, Enum.EasingStyle.Linear), { Value = nextColor }):Play()
        Remote:FireServer("ColorParticle", current_color.Value)
    end
end)
local Tab = Window.NewTab("Teleports")
local function createButton(Section, name, callback)
    Section.NewButton(name, callback)
end
local function createSpawnButton(Section, name, spawnName)
    createButton(Section, name, function()
        local args = { [1] = "Spawn", [2] = spawnName }
        game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
    end)
end
local Section = Tab.NewSection("Forest Biome")
createSpawnButton(Section, "Forest Biome", "Forest Biome")
createSpawnButton(Section, "Pup Adoption", "Adoption")
createButton(Section, "Medic Den", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1103.30884, 18.1427574, -114.369957,
        -0.311288834, -0.0115207694, 0.95024544, -0.0118246786, 0.999896049, 0.00824911054, -0.950241745, -0.00866849069,
        -0.311392784)
end)
createButton(Section, "Ship", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.030334, 18.3770428, -53.5521202,
        -0.996551991, 0, -0.0829701647, 0, 1, 0, 0.0829701647, 0, -0.996551991)
end)
createSpawnButton(Section, "School", "School")
createSpawnButton(Section, "Store", "Store")
createSpawnButton(Section, "Jail", "Jail")
createSpawnButton(Section, "Camp", "Camp")
createSpawnButton(Section, "Cafe", "CafÃ©")
local Section = Tab.NewSection("Redwood Biome")
createSpawnButton(Section, "Redwood Biome", "Redwood Biome")
createSpawnButton(Section, "Restaurant", "Restaurant")
createSpawnButton(Section, "Medic Centre", "Medic Centre")
local Section = Tab.NewSection("Snow Biome")
createSpawnButton(Section, "Snow Biome", "Snow Biome")
createSpawnButton(Section, "Ice Lake", "Ice Lake")
createSpawnButton(Section, "Ice Bath", "Ice Bath")
local Button = Section.NewButton("Secret Ice Cave", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1231.13416, 145.920944, 519.690552,
        -0.354107857, -0.935192585, 0.00472927094, 0.0165816545, -0.0113345385, -0.999798238, 0.935057521, -0.35395807,
        0.0195207)
end)
local Section = Tab.NewSection("Beach Biome")
local function createButton(name, callback)
    Section.NewButton(name, callback)
end
createButton("Beach Biome", function()
    local args = { [1] = "Spawn", [2] = "Beach Biome" }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
createButton("island 1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.716675, 37.9980087, 140.57019,
        0.913549721, -0, -0.406727046, 0, 1, -0, 0.406727046, 0, 0.913549721)
end)
createButton("island 2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(163.153854, 48.6937866, 281.848389,
        -0.707002521, -0.0519653112, 0.705299318, 4.31202352e-06, 0.997296453, 0.0734835118, -0.707211077, 0.0519560687,
        -0.70509088)
end)
createButton("Secret Cave", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.217712, 63.5017815, -87.6332779,
        -0.350877404, 0.851145625, -0.390430629, 2.22027302e-05, 0.41694665, 0.908930898, 0.936421335, 0.318914741,
        -0.146316051)
end)
local Button = Section.NewButton("Volcano", function()
    local args = { [1] = "Spawn", [2] = "Volcano" }
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("VIW Dens")
local function createButton(name, x, y, z, x1, y1, z1)
    local Button = Section.NewButton(name, function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z, x1, 0, y1, 0, 1, 0, z1, 0, x1)
    end)
end
createButton("VIW Den Forest", 669.526855, 47.9800034, 242.779861, -0.120643139, 0.992695987, -0.992695987)
createButton("VIW Den Forest 2", 519.791199, 48.2600021, -47.4920311, 0.600657463, -0.799506426, 0.799506426)
createButton("VIW Den Redwood", 532.389893, 87.6499786, 476.836426, -0.24057126, 0.97063148, -0.97063148)
createButton("VIW Den Redwood 2", 557.94342, 64.1299896, 619.453613, 0.996085644, -0.0883934423, 0.0883934423)
createButton("VIW Den Redwood 3", 266.536804, 45.2700043, 574.910095, -0.373445153, 0.927652299, -0.927652299)
