getgenv().ScriptVersion = 1;
local games = {
    [2440500124] = {["Game"] = "Doors", ["State"] = true};
};
local JSONEncode, JSONDecode, GenerateGUID = 
game.HttpService.JSONEncode, 
game.HttpService.JSONDecode,
game.HttpService.GenerateGUID
local Request = syn and syn.request or request
Request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = JSONEncode(game.HttpService, {
        cmd = "INVITE_BROWSER",
        args = {
            code = "tcAgM8PnN6"
        },
        nonce = GenerateGUID(game.HttpService, false)
    }),
})
if (game.GameId == 2440500124 and games[game.GameId].State == true) then
    repeat task.wait() until game:IsLoaded()
    local Config = {
        WindowName = "Doors",
        Color = Color3.fromRGB(255,0,0),
        Keybind = Enum.KeyCode.RightControl
    }

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WyvLich/Reposts/main/BracketV3"))()
    local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
    local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
    local Tab1 = Window:CreateTab("Main")
    local Tab3 = Window:CreateTab("UI Settings")

    local Main = Tab1:CreateSection("Main");
    local ESP = Tab1:CreateSection("ESP");
    local Visual = Tab1:CreateSection("Visual");
    local Player = Tab1:CreateSection("Player");
    local UI1 = Tab3:CreateSection("Menu");
    local UI2 = Tab3:CreateSection("Background");
    local lplr = game:GetService("Players").LocalPlayer;
    local keyrange, leverrange, lockpickrange, bookrange, bandagerange, lighterrange, flashlightrange = 15, 15, 15, 15, 15, 15, 15

    local bullshittable = {KeyObtain = {}, LeverForGate = {},LiveHintBook = {}}
    local prompttable = {"KeyObtain", "LeverForGate", "LiveHintBook",}
    
    
    
    task.spawn(function()
        game.Workspace.ChildAdded:Connect(function(v)
            if v:IsA("Model") then
                notifications:notify{
                    Title = "â ï¸Monster Spawnedâ ï¸",
                    Description = v.Name.. " spawned!",
                    Accept = {
                        Text = "OK"
                    },
                    Length = 5
                }
                task.wait(5)
            end
        end)
    end)

    local function outline(dad)
        local esp = Instance.new("Highlight")
        esp.Name = "Outline"
        esp.FillTransparency = 1
        esp.FillColor = Color3.new(1, 0.666667, 0)
        esp.OutlineColor = Color3.new(255,0,0)
        esp.OutlineTransparency = 0
        esp.Parent = dad
    end

    function getbullshit()
        local function getname(a)
            return bullshittable[a.Parent.Name]
        end

        local function checkifstillthere(a)
            for _,v in pairs(a) do
                if v.Parent == nil then
                    table.remove(a, i)
                end
            end
        end

        while task.wait(1) do
            for _,v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do 
                if v:IsA("ProximityPrompt") and table.find(prompttable, v.Parent.Name) then
                     table.insert(getname(v), v)
                end
            end

            for _,v in pairs(bullshittable) do
                checkifstillthere(v)
            end
        end
    end
    coroutine.wrap(getbullshit)()

    Main:CreateSlider("Key Aura Range",0,15,keyrange,false, function(val)
        val = keyrange
    end)
    Main:CreateSlider("Lever Aura Range",0,15,leverrange,false, function(val)
        val = leverrange
    end)

    Main:CreateSlider("Book Aura Range",0,15,bookrange,false, function(val)
        val = bookrange
    end)


    local pickupaura
    Main:CreateToggle("Key Aura", false, function(val)
        pickupaura = val
        repeat task.wait(.5)
            for _,v in pairs(bullshittable.KeyObtain) do
                pcall(function()
                    local mag = (lplr.Character.HumanoidRootPart.Position - v.Parent.Hitbox.Position).magnitude
                    if mag < keyrange then 
                        fireproximityprompt(v)
                    end
                end)
             end
        until not pickupaura 
    end)
    
    local leveraura
    Main:CreateToggle("Lever Aura", false, function(val)
        leveraura = val
        repeat task.wait(.5)
            for _,v in pairs(bullshittable.LeverForGate) do
                pcall(function()
                    local mag = (lplr.Character.HumanoidRootPart.Position - v.Parent.Main.Position).magnitude
                    if mag < leverrange then 
                        fireproximityprompt(v)
                    end
                end)
             end
        until not leveraura
    end)

    local bookaura
    Main:CreateToggle("Book Aura", false, function(val)
        bookaura = val
        repeat task.wait(.5)
            for _,v in pairs(bullshittable.LiveHintBook) do
                pcall(function()
                    local mag = (lplr.HumanoidRootPart.Position - v.Parent.Cover2.Position).magnitude
                    if mag < bookrange then 
                        fireproximityprompt(v)
                    end
                end)
             end
        until not bookaura
    end)


    Visual:CreateToggle("Fullbright", false, function(v)
        if v then
            game:GetService("Lighting").Brightness = 2
            game:GetService("Lighting").ClockTime = 14
            game:GetService("Lighting").FogEnd = 100000
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        else
            game:GetService("Lighting").Brightness = 3
            game:GetService("Lighting").ClockTime = 20
            game:GetService("Lighting").FogEnd = 1.1111111533265e+16
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0.5, 0.5, 0.5)
        end
    end)


    local keyesp
    ESP:CreateToggle("Key ESP", false, function(val)
        keyesp = val
        if keyesp then
            repeat task.wait(.25)
                for i,v in pairs(bullshittable.KeyObtain) do
                    pcall(function()
                        if not v.Parent:FindFirstChild("Outline") then
                            if keyesp then
                                outline(v.Parent)
                            end
                        end
                    end)
                end
            until not keyesp
        else
            for i,v in pairs(bullshittable.KeyObtain) do
                pcall(function()
                    v.Parent.Outline:Destroy()
                end)
            end
        end
    end)

    local leveresp
    ESP:CreateToggle("Lever ESP", false, function(val)
        leveresp = val
        if leveresp then
            repeat task.wait(.25)
                for i,v in pairs(bullshittable.LeverForGate) do
                    pcall(function()
                        if not v.Parent:FindFirstChild("Outline") then
                            if leveresp then
                                outline(v.Parent)
                            end
                        end
                    end)
                end
            until not leveresp
        else
            for i,v in pairs(bullshittable.LeverForGate) do
                pcall(function()
                    v.Parent.Outline:Destroy()
                end)
            end
        end
    end)

    local bookesp
    ESP:CreateToggle("Book ESP", false, function(val)
        bookesp = val
        if bookesp then
            repeat task.wait(.25)
                for i,v in pairs(bullshittable.LiveHintBook) do
                    pcall(function()
                        if not v.Parent:FindFirstChild("Outline") then
                            if bookesp then
                                outline(v.Parent)
                            end
                        end
                    end)
                end
            until not bookesp
        else
            for i,v in pairs(bullshittable.LiveHintBook) do
                pcall(function()
                    v.Parent.Outline:Destroy()
                end)
            end
        end
    end)

  

    local Toggle3 = UI1:CreateToggle("UI Toggle", nil, function(State)
        Window:Toggle(State)
    end)
    
    Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
        Config.Keybind = Enum.KeyCode[Key]
    end)
    Toggle3:SetState(true)

    local Colorpicker3 = UI1:CreateColorpicker("UI Color", function(Color)
        Window:ChangeColor(Color)
    end)
    Colorpicker3:UpdateColor(Config.Color)

    local imageshit = {
        ["Default"] = "2151741365",
        ["Hearts"] = "6073763717",
        ["Abstract"] = "6073743871",
        ["Hexagon"] = "6073628839",
        ["Circles"] = "6071579801",
        ["Lace With Flowers"] = "6071575925",
        ["Floral"] = "5553946656"
    }

    local imagenames = {}
    for i,v in pairs(imageshit) do
        table.insert(imagenames,tostring(i));
    end;


    local Dropdown3 = UI2:CreateDropdown("Image", imagenames, function(Name)
        Window:SetBackground(imageshit[Name])
    end)

    Dropdown3:SetOption("Default")

    local Colorpicker4 = UI2:CreateColorpicker("Color", function(Color)
        Window:SetBackgroundColor(Color)
    end)
    Colorpicker4:UpdateColor(Color3.new(1,1,1))

    local Slider3 = UI2:CreateSlider("Transparency",0,1,0,false, function(Value)
        Window:SetBackgroundTransparency(Value)
    end)
    Slider3:SetValue(0)

    local Slider4 = UI2:CreateSlider("Tile Scale",0,1,10,false, function(Value)
        Window:SetTileScale(Value)
    end)
    Slider4:SetValue(0.5)

    Player:CreateToggle("Toggle", false, function(val)
        getgenv().wstog = val
    end)

    Player:CreateSlider("Speed",0,45,16,false, function(val)
        getgenv().ws = val
    end)
    task.spawn(function()
        while task.wait() do
            if getgenv().wstog then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().ws
            end
        end
    end)
end;