local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X =
    Material.Load(
    {
        Title = "Keybrew Hub | FORCE",
        Style = 3,
        SizeX = 300,
        SizeY = 350,
        Theme = "Light",
        ColorOverrides = {
            MainFrame = Color3.fromRGB(0, 0, 0),
            Toggle = Color3.fromRGB(124, 37, 255),
            ToggleAccent = Color3.fromRGB(255, 255, 255),
            Dropdown = Color3.fromRGB(124, 37, 255),
            DropdownAccent = Color3.fromRGB(255, 255, 255),
            Slider = Color3.fromRGB(124, 37, 255),
            SliderAccent = Color3.fromRGB(255, 255, 255),
            NavBarAccent = Color3.fromRGB(0, 0, 0),
            Content = Color3.fromRGB(0, 0, 0)
        }
    }
)

local Y =
    X.New(
    {
        Title = "Main"
    }
)

local Z =
    X.New(
    {
        Title = "Misc"
    }
)

local Cred =
    X.New(
    {
        Title = "Credits"
    }
)
Cred.Button(
    {
        Text = "Copy Discord UyuSF4fPC9",
        Callback = function()
            setclipboard("https://discord.gg/UyuSF4fPC9")
            toclipboard("https://discord.gg/UyuSF4fPC9")
        end
    }
)

local IN = {}

for i, v in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
    if v.Parent.Name == "Ingredients" then
        if not table.find(IN, tostring(v)) then
            table.insert(IN, tostring(v))
        end
    end
end

local ORE = {}

for i, v in pairs(game:GetService("Workspace").OreLocations:GetDescendants()) do
    if v:IsA("MeshPart") then
        if not table.find(ORE, tostring(v)) then
            table.insert(ORE, tostring(v))
        end
    end
end

local SP = {}

for i, v in pairs(game:GetService("Workspace").GameSpawns:GetDescendants()) do
    if v:IsA("SpawnLocation") then
        if not table.find(SP, tostring(v)) then
            table.insert(SP, tostring(v))
        end
    end
end

local ii =
    Y.Dropdown(
    {
        Text = "Select Ingredient",
        Callback = function(Value)
            getgenv().ind = Value
        end,
        Options = IN
    }
)
local function getTR()
    local dist, thing = math.huge
    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:FindFirstChild("Rarity") then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end
local function getIN()
    local dist, thing = math.huge
    for _, v in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
        if v.Parent.Name == "Ingredients" and v.Name == ind then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end

Y.Toggle(
    {
        Text = "Auto Collect Ingredient",
        Callback = function(Value)
            a = Value
            while a do
                task.wait()
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getIN().CFrame
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        task.wait(.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    end
                )
            end
        end,
        Enabled = false
    }
)
Y.Button(
    {
        Text = "Refresh Ingredients",
        Callback = function()
            table.clear(IN)
            for i, v in pairs(game:GetService("Workspace").Ingredients:GetChildren()) do
                if v.Parent.Name == "Ingredients" then
                    if not table.find(IN, tostring(v)) then
                        table.insert(IN, tostring(v))
                        ii:SetOptions(IN)
                    end
                end
            end
        end
    }
)

local o =
    Y.Dropdown(
    {
        Text = "Select Ore",
        Callback = function(Value)
            getgenv().ore = Value
        end,
        Options = ORE
    }
)

local function getORE()
    local dist, thing = math.huge
    for i, v in pairs(game:GetService("Workspace").OreLocations:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name == ore then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end
Y.Toggle(
    {
        Text = "Auto Collect Ore",
        Callback = function(Value)
            aa = Value
            while aa do
                task.wait()
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            getORE().CFrame + Vector3.new(0, 2, 0)
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                        wait(.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        wait(1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        wait(.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        wait(.5)
                    end
                )
            end
        end,
        Enabled = false
    }
)
Y.Button(
    {
        Text = "Refresh Ore",
        Callback = function()
            table.clear(ORE)
            for i, v in pairs(game:GetService("Workspace").OreLocations:GetDescendants()) do
                if v:IsA("MeshPart") then
                    if not table.find(ORE, tostring(v)) then
                        table.insert(ORE, tostring(v))
                        o:SetOptions(ORE)
                    end
                end
            end
        end
    }
)
Z.Toggle(
    {
        Text = "Auto Collect Random stuff idk",
        Callback = function(Value)
            aaa = Value
            while aaa do
                task.wait()
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getTR().CFrame
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        task.wait(.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                    end
                )
            end
        end,
        Enabled = false
    }
)
local sp =
    Z.Dropdown(
    {
        Text = "Select Spawn",
        Callback = function(Value)
            getgenv().spa = Value
        end,
        Options = SP
    }
)
Z.Button(
    {
        Text = "tp to your spawns",
        Callback = function()
            for i, v in pairs(game:GetService("Workspace").GameSpawns:GetDescendants()) do
                if v:IsA("SpawnLocation") and v.Name == spa then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                end
            end
        end
    }
)
Z.Button(
    {
        Text = "Refresh Spawns",
        Callback = function()
            table.clear(SP)
            for i, v in pairs(game:GetService("Workspace").GameSpawns:GetDescendants()) do
                if v:IsA("SpawnLocation") then
                    if not table.find(SP, tostring(v)) then
                        table.insert(SP, tostring(v))
                        sp:SetOptions(SP)
                    end
                end
            end
        end
    }
)
Z.Button(
    {
        Text = "Teleport to Commision",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7118, 1953, -3572)
        end
    }
)
Z.Button(
    {
        Text = "Load Ores",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-951, 1553, 528)
        end
    }
)
Z.Button(
    {
        Text = "Kill yourself",
        Callback = function()
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    }
)
