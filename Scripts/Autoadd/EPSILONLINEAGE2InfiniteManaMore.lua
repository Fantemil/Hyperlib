local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("EL2 Hub", 5013109572)

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
local section2 = page:addSection("main")

section2:addToggle("trinket pickup", nil, function(value)
    if value then
        local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
            for i, v in pairs(workspace.MouseIgnore:GetChildren()) do
                if v:IsA("Model") and v.Name ~= "Entity" then
                    for _, g in pairs(v:GetDescendants()) do
                        if g:IsA("ClickDetector") then
                            if (plr.Position - g.Parent.Position).Magnitude <=18 then
                                fireclickdetector(g)
                            end
                        end
                    end
                end
                if workspace:FindFirstChild("Stuff") then
                    workspace.Stuff:Destroy()
                end
            end
    else
        print("stopped")
    end
end)


section2:addButton("Sell all", function()
    game:GetService("ReplicatedStorage").BulkSell:FireServer(1)
end)

section2:addButton("remove kill bricks", function()
    for i,v in pairs(game:GetService("Workspace").Map.KillBricks:GetChildren()) do if v:IsA("Part") then v:Destroy()
end
end
end)

section2:addButton("Inf mana run", function()
    game:GetService("Workspace").Alive[game.Players.LocalPlayer.Name].Stats.Mana.Value = 100
end)

section2:addButton("no fall dmg", function()
    for i,v in pairs(game:GetService("Workspace").Alive[game.Players.LocalPlayer.Name].FallDamage:GetChildren()) do if v:IsA("RemoteEvent") then v:Destroy()
end
end
end)

section2:addButton("race reroll", function()
    fireclickdetector(game:GetService("Workspace").Map.Eth.Reroller2.ClickDetector)
end)



local page = venyx:addPage("Esp", 5012544693)
local section11 = page:addSection("settings")

local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

section11:addToggle("Enabled", nil, function(value)
    if value then
        espLib.Init()
        espLib.options.enabled = true
    else
        espLib.options.enabled = false
    end
end)

section11:addToggle("Boxes", nil, function(value)
    if value then
        espLib.options.boxes = true
    else
        espLib.options.boxes = false
    end
end)

section11:addToggle("names", nil, function(value)
    if value then
        espLib.options.names = true
    else
        espLib.options.names = false
    end
end)

section11:addToggle("tracers", nil, function(value)
    if value then
        espLib.options.tracers = true
    else
        espLib.options.tracers = false
    end
end)

section11:addToggle("chams", nil, function(value)
    if value then
        espLib.options.chams = true
    else
        espLib.options.chams = false
    end
end)

section11:addToggle("health bars", nil, function(value)
    if value then
        espLib.options.healthBars = true
    else
        espLib.options.healthBars = false
    end
end)

section11:addToggle("distance", nil, function(value)
    if value then
        espLib.options.distance = true
    else
        espLib.options.distance = false
    end
end)

section11:addSlider("Distance limit", 0, 1000, 10000, function(value)
    maxDistance = value
end)


espLib.options = {
    enabled = false,
    scaleFactorX = 4,
    scaleFactorY = 5,
    font = 2,
    fontSize = 13,
    limitDistance = true,
    maxDistance = 1000,
    visibleOnly = false,
    teamCheck = false,
    teamColor = false,
    fillColor = nil,
    whitelistColor = Color3.new(1, 0, 0),
    outOfViewArrows = false,
    outOfViewArrowsFilled = false,
    outOfViewArrowsSize = 25,
    outOfViewArrowsRadius = 100,
    outOfViewArrowsColor = Color3.new(1, 1, 1),
    outOfViewArrowsTransparency = 0.5,
    outOfViewArrowsOutline = false,
    outOfViewArrowsOutlineFilled = false,
    outOfViewArrowsOutlineColor = Color3.new(1, 1, 1),
    outOfViewArrowsOutlineTransparency = 1,
    names = false,
    nameTransparency = 1,
    nameColor = Color3.new(1, 1, 1),
    boxes = false,
    boxesTransparency = 1,
    boxesColor = Color3.new(1, 1, 1),
    boxFill = false,
    boxFillTransparency = 0.5,
    boxFillColor = Color3.new(1, 1, 1),
    healthBars = false,
    healthBarsSize = 1,
    healthBarsTransparency = 1,
    healthBarsColor = Color3.new(0, 1, 0),
    healthText = false,
    healthTextTransparency = 1,
    healthTextSuffix = "%",
    healthTextColor = Color3.new(1, 1, 1),
    distance = false,
    distanceTransparency = 1,
    distanceSuffix = " Studs",
    distanceColor = Color3.new(1, 1, 1),
    tracers = false,
    tracerTransparency = 1,
    tracerColor = Color3.new(1, 1, 1),
    tracerOrigin = "Bottom", -- Available [Mouse, Top, Bottom]
    chams = false,
    chamsColor = Color3.new(1, 0, 0),
    chamsTransparency = 0.5,
}

local page = venyx:addPage("misc", 5012544693)
local section4 = page:addSection("misc stuff")

section4:addTextbox("Speed", "", function(txt, focusLost)
    game:GetService("Workspace").Alive[game.Players.LocalPlayer.Name].Stats.WalkSpeed.Value = txt
end)

section4:addButton("Server hop", function()
    local x = {}
 for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
 if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
 x[#x + 1] = v.id
 end
 end
 if #x > 0 then
 game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
 else
 return notify("Serverhop","Couldn't find a server.")
 end
end)

section4:addButton("rejoin", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

section4:addButton("inf yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local page = venyx:addPage("Settings", 5012544693)
local section5 = page:addSection("Credits and other")

section5:addButton("click to copy discord", function()
    setclipboard("Sleazy#4892")
end)

section5:addButton("click to copy v3rm account", function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=1195801")
end)

section5:addButton("Shoutout to budderattack550 for trinket pickup", function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=76541")
end)

section5:addButton("also credit budderattack550 for the idea for kill bricks", function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=76541")
end)

section5:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)