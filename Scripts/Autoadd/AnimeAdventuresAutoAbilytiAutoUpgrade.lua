local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Keybrew Hub | Anime Adventures",
    Style = 3,
    SizeX = 300,
    SizeY = 350,
    Theme = "Light",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(0,0,0),
        Toggle = Color3.fromRGB(124,37,255),
        ToggleAccent = Color3.fromRGB(255,255,255), 
        Dropdown = Color3.fromRGB(124,37,255),
  DropdownAccent = Color3.fromRGB(255,255,255),
        Slider = Color3.fromRGB(124,37,255),
  SliderAccent = Color3.fromRGB(255,255,255),
        NavBarAccent = Color3.fromRGB(0,0,0),
        Content = Color3.fromRGB(0,0,0),
    }
})

local Y = X.New({
    Title = "Main"
})

local P = X.New({
    Title = "Place Anywhere"
})

local Z = X.New({
    Title = "Misc"
})

local Cred = X.New({
    Title = "Credits"
})
    Cred.Button({
    Text = "Copy Discord UyuSF4fPC9",
    Callback = function()
        setclipboard("https://discord.gg/UyuSF4fPC9")
        toclipboard("https://discord.gg/UyuSF4fPC9")
    end,
})

Y.Toggle({
    Text = "Auto Abilities",
    Callback = function(Value)
        a = Value
        while a do task.wait()
            pcall(function()
                    for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
                        if v:IsA("Model") and v._stats.player.Value == game.Players.LocalPlayer then
                        local args = {
                            [1] = v
                        }

                        game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack:InvokeServer(unpack(args))
                    end
                end
            end)
        end
    end,
    Enabled = false
})



local Unit = {}

for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
    if v:IsA("Model") and v._stats.player.Value == game.Players.LocalPlayer then
        if not table.find(Unit, tostring(v)) then
            table.insert(Unit, tostring(v))
        end
    end
end


local drop = Y.Dropdown({
    Text = "Select Unit",
    Callback = function(Value)
        getgenv().unit = Value
    end,
    Options = Unit
})

local function getClosest()
    local dist, thing = math.huge
    for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
        if v:IsA("Model") and v.Name == unit then
            local mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end

local function getClosest1()
    local dist, thing = math.huge
    for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
        if v:IsA("Model") then
            local mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end

Y.Toggle({
    Text = "Auto Upgrade Nearest",
    Callback = function(Value)
        bb = Value
        while bb do task.wait()
            local args = {
                [1] = getClosest()
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(args))
        end
    end,
    Enabled = false
})

Y.Button(
    {
        Text = "Refresh Units",
        Callback = function()
            table.clear(Unit)
            for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
                if v:IsA("Model") and v._stats.player.Value == game.Players.LocalPlayer then
                    if not table.find(Unit, tostring(v)) then
                        table.insert(Unit, tostring(v))
                        drop:SetOptions(Unit)
                    end
                end
            end
        end
    }
)

Y.Toggle({
    Text = "Auto Sell Nearest",
    Callback = function(Value)
        bbbb = Value
        while bbbb do task.wait()
            pcall(function()
                local args = {
                [1] = getClosest1()
            }
            
            game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(unpack(args))
        end)
        end
    end,
    Enabled = false
})

local u = P.Dropdown({
    Text = "Select Unit",
    Callback = function(Value)
        getgenv().id = Value
    end,
    Options = Unit,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Place a unit then press Refresh Unit"
            })
        end
    }
})


P.Button({
    Text = "Place Unit",
    Callback = function()
        local function RoundNumber(Number, Divider)
            Divider = Divider or 1
            return (math.floor((Number/Divider)+0.5)*Divider)
            end
        for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
            if v.Name == id then
        local args = {
            [1] = v._stats.uuid.Value,
            [2] = CFrame.new(Vector3.new(RoundNumber(game.Players.LocalPlayer.Character.Torso.Position.X,1),RoundNumber(game.Players.LocalPlayer.Character.Torso.Position.Y-1.5,1),RoundNumber(game.Players.LocalPlayer.Character.Torso.Position.Z,1)))
        }
        
        game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args))
            end
        end
    end,
})
P.Button(
    {
        Text = "Refresh Units",
        Callback = function()
            table.clear(Unit)
            for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
                if v:IsA("Model") and v._stats.player.Value == game.Players.LocalPlayer then
                    if not table.find(Unit, tostring(v)) then
                        table.insert(Unit, tostring(v))
                        u:SetOptions(Unit)
                    end
                end
            end
        end
    }
)


game.Players.LocalPlayer.PlayerGui.MessageGui:Destroy()