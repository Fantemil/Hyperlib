local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Keybrew Hub | Collect All Pets",
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

local M = X.New({
    Title = "Main"
})

local M1 = X.New({
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

local Egg = {}

    for i, v in pairs(game:GetService("Workspace").EggShops:GetChildren()) do
        if v:IsA "Model"  then
            if not table.find(Egg, tostring(v)) then
            table.insert(Egg, tostring(v))
        end
    end
end

local Area = {}

    for i, v in pairs(game:GetService("Workspace").Areas:GetChildren()) do
        if v:IsA "Part"  then
            table.insert(Area, tostring(v))
    end
end

local function getClosestCoin()
    local dist, thing = math.huge
    for i, v in next, game:GetService("Workspace").Drops:GetChildren() do
        if v:IsA("Model") then
            local mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Base.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end

    M.Toggle({
    Text = "Teleport to Coins",
    Callback = function(Value)
        a = Value
        while a do task.wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getClosestCoin().Base.CFrame
            end)
        end
    end,
    Enabled = false
})


M.Dropdown({
    Text = "Select Egg",
    Callback = function(Value)
       getgenv().egg = Value
    end,
    Options = Egg
})
local function getClosestEgg()
    local dist, thing = math.huge
    for i, v in next, game:GetService("Workspace").EggShops:GetChildren() do
        if v:IsA("Model") and v.Name == egg then
            local mag =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.ProxPart.Position).magnitude
            if mag < dist then
                dist = mag
                thing = v
            end
        end
    end
    return thing
end
M.Toggle({
    Text = "Buy Egg",
    Callback = function(Value)
        a1 = Value
        while a1 do task.wait()            
            local args = {
                [1] = getClosestEgg().Rarity.Value
            }
                
            game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))        
        end
    end,
    Enabled = false
})

M.Toggle({
    Text = "Open Hidden Eggs",
    Callback = function(Value)
        a2 = Value
        while a2 do task.wait()            
            for i,v in pairs(game:GetService("Workspace").HiddenEggs:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                end
            end      
        end
    end,
    Enabled = false
})
M.Toggle({
    Text = "Auto Claim Quest",
    Callback = function(Value)
        a3 = Value
        while a3 do task.wait()            
            game:GetService("ReplicatedStorage").Remotes.ClaimQuestReward:FireServer()   
        end
    end,
    Enabled = false
})

M.Dropdown({
    Text = "Select Area",
    Callback = function(Value)
       getgenv().area = Value
    end,
    Options = Area
})

M.Button({
    Text = "Teleport to",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas[area].CFrame
    end,
})