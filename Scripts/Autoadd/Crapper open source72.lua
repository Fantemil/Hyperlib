--NOTE THE USER AND PASS USER IS 1, AND THE PASS IS 2
-- Farewell infortality 
-- Revamp by ImFrostic, Version 2.81 
 
 -- Objects

 local ScreenGui = Instance.new("ScreenGui")
 local opengui = Instance.new("Frame")
 local open = Instance.new("TextButton")
 local loginscreen = Instance.new("Frame")
 local Frame = Instance.new("Frame")
 local pass = Instance.new("TextBox")
 local user = Instance.new("TextBox")
 local enter = Instance.new("TextButton")
 local Frame_2 = Instance.new("Frame")
 local title = Instance.new("TextBox")
 local main = Instance.new("Frame")
 local Frame_3 = Instance.new("Frame")
 local Frame_4 = Instance.new("Frame")
 local money = Instance.new("TextButton")
 local hammer = Instance.new("TextButton")
 local blocks = Instance.new("TextButton")
 local shattervest = Instance.new("TextButton")
 local explode = Instance.new("TextButton")
 local TextBox = Instance.new("TextBox")
 local close = Instance.new("TextButton")
 
 -- Properties
 
 ScreenGui.Parent = game.CoreGui
 
 opengui.Name = "opengui"
 opengui.Parent = ScreenGui
 opengui.BackgroundColor3 = Color3.new(0, 0, 0)
 opengui.BackgroundTransparency = 0.89999997615814
 opengui.Position = UDim2.new(0, 0, 0.510357797, 0)
 opengui.Size = UDim2.new(0, 87, 0, 19)
 opengui.Visible = false
 
 open.Name = "open"
 open.Parent = opengui
 open.BackgroundColor3 = Color3.new(0, 0, 0)
 open.BackgroundTransparency = 0.5
 open.Size = UDim2.new(0, 87, 0, 19)
 open.Font = Enum.Font.SciFi
 open.Text = "Open"
 open.TextColor3 = Color3.new(1, 1, 1)
 open.TextSize = 14
 open.MouseButton1Down:connect(function()
 opengui.Visible = false
 main.Visible = true
 end)
 
 loginscreen.Name = "loginscreen"
 loginscreen.Parent = ScreenGui
 loginscreen.BackgroundColor3 = Color3.new(0, 0, 0)
 loginscreen.BackgroundTransparency = 0.5
 loginscreen.Position = UDim2.new(0.10367579, 0, 0.290018827, 0)
 loginscreen.Size = UDim2.new(0, 214, 0, 283)
 loginscreen.Visible = true
 loginscreen.Active = true
 loginscreen.Draggable = true
 
 Frame.Parent = loginscreen
 Frame.BackgroundColor3 = Color3.new(0, 0, 0)
 Frame.Position = UDim2.new(0, 0, 0.932862163, 0)
 Frame.Size = UDim2.new(0, 214, 0, 19)
 
 pass.Name = "pass"
 pass.Parent = loginscreen
 pass.BackgroundColor3 = Color3.new(0, 0, 0)
 pass.Position = UDim2.new(0.0327102803, 0, 0.466431081, 0)
 pass.Size = UDim2.new(0, 200, 0, 22)
 pass.Font = Enum.Font.SciFi
 pass.Text = "Password"
 pass.TextColor3 = Color3.new(1, 1, 1)
 pass.TextSize = 14
 
 user.Name = "user"
 user.Parent = loginscreen
 user.BackgroundColor3 = Color3.new(0, 0, 0)
 user.Position = UDim2.new(0.0327102803, 0, 0.197879851, 0)
 user.Size = UDim2.new(0, 200, 0, 22)
 user.Font = Enum.Font.SciFi
 user.Text = "Username"
 user.TextColor3 = Color3.new(1, 1, 1)
 user.TextSize = 14
 
 enter.Name = "enter"
 enter.Parent = loginscreen
 enter.BackgroundColor3 = Color3.new(0, 0, 0)
 enter.Position = UDim2.new(0.294392526, 0, 0.66077739, 0)
 enter.Size = UDim2.new(0, 88, 0, 38)
 enter.Font = Enum.Font.SciFi
 enter.Text = "Enter"
 enter.TextColor3 = Color3.new(1, 1, 1)
 enter.TextSize = 14
 enter.MouseButton1Down:connect(function()
 if user.Text == "1" and pass.Text == "2" then
 loginscreen.Visible = false
 opengui.Visible = true
 end
 wait(1)
local old
old = hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local method = tostring(getnamecallmethod())
        if string.lower(method) == "kick" then
            return wait(9e9)
        end
        return old(self, ...)
    end
)
wait(2)
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
 end)
 
 Frame_2.Parent = loginscreen
 Frame_2.Active = true
 Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
 Frame_2.Selectable = true
 Frame_2.Size = UDim2.new(0, 214, 0, 19)
 
 title.Name = "title"
 title.Parent = Frame_2
 title.Active = false
 title.BackgroundColor3 = Color3.new(1, 1, 1)
 title.BackgroundTransparency = 1
 title.Position = UDim2.new(0.0327102803, 0, 0, 0)
 title.Size = UDim2.new(0, 200, 0, 16)
 title.ClearTextOnFocus = false
 title.Font = Enum.Font.SciFi
 title.Text = "Login"
 title.TextColor3 = Color3.new(1, 1, 1)
 title.TextScaled = true
 title.TextSize = 14
 title.TextWrapped = true
 
 main.Name = "main"
 main.Parent = ScreenGui
 main.BackgroundColor3 = Color3.new(0, 0, 0)
 main.BackgroundTransparency = 0.5
 main.Position = UDim2.new(0.156456202, 0, 0.248587579, 0)
 main.Size = UDim2.new(0, 337, 0, 296)
 main.Visible = false
 main.Active = true
 main.Draggable = true
 
 Frame_3.Parent = main
 Frame_3.Active = true
 Frame_3.BackgroundColor3 = Color3.new(0, 0, 0)
 Frame_3.Selectable = true
 Frame_3.Size = UDim2.new(0, 337, 0, 19)
 
 Frame_4.Parent = main
 Frame_4.BackgroundColor3 = Color3.new(0, 0, 0)
 Frame_4.Position = UDim2.new(0, 0, 0.932432413, 0)
 Frame_4.Size = UDim2.new(0, 337, 0, 19)
 
 money.Name = "money"
 money.Parent = main
 money.BackgroundColor3 = Color3.new(0, 0, 0)
 money.Position = UDim2.new(0.0534124635, 0, 0.111486487, 0)
 money.Size = UDim2.new(0, 133, 0, 35)
 money.Font = Enum.Font.SciFi
 money.Text = "FPS Boost"
 money.TextColor3 = Color3.new(1, 1, 1)
 money.TextSize = 14
 money.MouseButton1Down:connect(function()
    workspace.Prison.Inner_Prison_Trees:Destroy()
    wait()
    workspace.Prison.Prison_Trees:Destroy()
    wait()
    workspace.Prison_Outer_Map.Trees:Destroy()
    wait()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    _G.FullBrightExecuted = true
    _G.FullBrightEnabled = not _G.FullBrightEnabled
end)
 
 hammer.Name = "hammer"
 hammer.Parent = main
 hammer.BackgroundColor3 = Color3.new(0, 0, 0)
 hammer.Position = UDim2.new(0.540059328, 0, 0.111486487, 0)
 hammer.Size = UDim2.new(0, 133, 0, 35)
 hammer.Font = Enum.Font.SciFi
 hammer.Text = "All guns"
 hammer.TextColor3 = Color3.new(1, 1, 1)
 hammer.TextSize = 14
 hammer.MouseButton1Down:connect(function()
local args = {
    [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("M4A1"):WaitForChild("Part")
}

workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
wait()
local args = {
    [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("M9"):WaitForChild("ITEMPICKUP")
}

workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
wait()
local args = {
    [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("Remington 870"):WaitForChild("ITEMPICKUP")
}

workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
wait()
local args = {
    [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("giver"):WaitForChild("AK-47"):WaitForChild("ITEMPICKUP")
}

workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))

 end)
 
 blocks.Name = "blocks"
 blocks.Parent = main
 blocks.BackgroundColor3 = Color3.new(0, 0, 0)
 blocks.Position = UDim2.new(0.540059328, 0, 0.462837845, 0)
 blocks.Size = UDim2.new(0, 133, 0, 35)
 blocks.Font = Enum.Font.SciFi
 blocks.Text = "Hitboxs+Arrest"
 blocks.TextColor3 = Color3.new(1, 1, 1)
 blocks.TextSize = 14
 blocks.MouseButton1Down:connect(function()
    while true do
        wait(1)
        _G.HeadSize = 17
        _G.Disabled = true
    
        if _G.Disabled then
        for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
        pcall(function()
        v.Character.HumanoidRootPart.Name = "xC6M3Vuz7QpsY5nv"
        v.Character.xC6M3Vuz7QpsY5nv.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        v.Character.xC6M3Vuz7QpsY5nv.Transparency = 0.5
        v.Character.xC6M3Vuz7QpsY5nv.CanCollide = false
        end)
        end
        end
        end
        end
 end)
 
 shattervest.Name = "shattervest"
 shattervest.Parent = main
 shattervest.BackgroundColor3 = Color3.new(0, 0, 0)
 shattervest.Position = UDim2.new(0.0534124374, 0, 0.462837845, 0)
 shattervest.Size = UDim2.new(0, 133, 0, 35)
 shattervest.Font = Enum.Font.SciFi
 shattervest.Text = "Gun mods"
 shattervest.TextColor3 = Color3.new(1, 1, 1)
 shattervest.TextSize = 14
 shattervest.MouseButton1Down:connect(function()
    local gun = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)

    gun["AutoFire"] = true
    gun["Range"] = 9999999
    gun["FireRate"] = 0.01
    gun["ReloadTime"] = 2
    gun["Damage"] = 999999
    gun["MaxAmmo"] = 8
    wait()
    local gun = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)

    gun["AutoFire"] = true
    gun["Range"] = 9999999
    gun["FireRate"] = 0.01
    gun["ReloadTime"] = 2
    gun["Damage"] = 9999999
    wait()
    local gun = require(game.Players.LocalPlayer.Backpack["M4A1"].GunStates)

    gun["AutoFire"] = true
    gun["Range"] = 9999
    gun["FireRate"] = 0.01
    gun["ReloadTime"] = 2
    gun["Damage"] = 999999
    wait()
    local gun = require(game.Players.LocalPlayer.Backpack["Taser"].GunStates)


gun["ReloadTime"] = 0


end)
 
 explode.Name = "explode"
 explode.Parent = main
 explode.BackgroundColor3 = Color3.new(0, 0, 0)
 explode.Position = UDim2.new(0.302670598, 0, 0.722972989, 0)
 explode.Size = UDim2.new(0, 133, 0, 35)
 explode.Font = Enum.Font.SciFi
 explode.Text = ">:) Menu"
 explode.TextColor3 = Color3.new(1, 1, 1)
 explode.TextSize = 14
 explode.MouseButton1Down:connect(function()
    local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/hoho_lib.lua", true))()
    local win = lib:Window("UWU",">:)",Color3.new(0.333333, 0.666667, 1))
    local tab = win:Tab("Main")
    local label = tab:Label("Label", properties) --properties: {["Visible"] = flase}
    label:NewLabel("Main", properties)
    tab:Line()
    tab:Button("Arrest all", function() 
        for i, v in pairs(game.Teams.Criminals:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local inp = 10
                repeat
                    wait()
                    inp = inp-1
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                            game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
                until inp == 0
            end
        end
    end)
    
    tab:Line() 
    tab:Button("Open all doors", function()
        local function touch(x)
            x = x:FindFirstAncestorWhichIsA("Part")
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
            if x then
                if firetouchinterest then
                    task.spawn(function()
                        firetouchinterest(x, root, 1)
                        wait()
                        firetouchinterest(x, root, 0)
                    end)
                end
            end
        end
    
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("TouchTransmitter") then
                    touch(descendant)
                end
            end
    end)
    
    tab:Line() 
    tab:Button("Prison Break", function() 
        while true do
        local function touch(x)
            x = x:FindFirstAncestorWhichIsA("Part")
    local root = game.Players.LocalPlayer.Character.HumanoidRootPart
            if x then
                if firetouchinterest then
                    task.spawn(function()
                        firetouchinterest(x, root, 1)
                        wait()
                        firetouchinterest(x, root, 0)
                    end)
                end
            end
        end
    
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("TouchTransmitter") then
                    touch(descendant)
                end
            end
            wait(2.5)
        end
    end)
    tab:Button("No more dropped items", function() 
        while true do
        function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
    
        local args = {
            [1] = getNil("ITEMPICKUP", "Part")
        }
        
        workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
        wait()
    end
    end)
    tab:Button("Break everything on the map", function() 
        while true do
        local args = {
            [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("buttons"):WaitForChild("Prison Gate"):WaitForChild("Prison Gate")
        }
        
        workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
    wait()
    local args = {
        [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("buttons"):WaitForChild("Car Spawner"):WaitForChild("Car Spawner")
    }
    
    workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
    wait()
    local args = {
        [1] = workspace:WaitForChild("Prison_ITEMS"):WaitForChild("buttons"):WaitForChild("Car Spawner"):WaitForChild("Car Spawner")
    }
    
    workspace:WaitForChild("Remote"):WaitForChild("ItemHandler"):InvokeServer(unpack(args))
    wait()
    end
    end)
    tab:Button("No more criminals", function() 
        while true do
        for i, v in pairs(game.Teams.Criminals:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local inp = 10
                repeat
                    wait()
                    inp = inp-1
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                            game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
                until inp == 0
            end
        end
        wait(1.6)
    end
    end)
    tab:Line() 
    tab:Button("Godmode", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
        wait()
        loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/FwfNEqYz", true))()
wait()

    end)
    local tab = win:Tab("Players")
    local txtbox = tab:Textbox("Kill Works 50% of the time","Full username",function(val)
    -- Settings
    local Settings = {
        Target = val -- Target Name (Not display name)
     }
     
     -- Objects
     local Players = game:GetService("Players")
     local RunService = game:GetService("RunService")
     
     local LocalPlayer = Players.LocalPlayer
     local Target = Players:FindFirstChild(Settings.Target)
     
     local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
     BodyAngularVelocity.AngularVelocity = Vector3.new(10^6, 10^6, 10^6)
     BodyAngularVelocity.MaxTorque = Vector3.new(10^6, 10^6, 10^6)
     BodyAngularVelocity.P = 10^6
     
     -- Start
     if not Target then return end
     BodyAngularVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
     
     while Target.Character.HumanoidRootPart and LocalPlayer.Character.HumanoidRootPart do
        RunService.RenderStepped:Wait()
        LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
        LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new()
     end
        
     BodyAngularVelocity.Parent = nil
    end)
 end)
 
 TextBox.Parent = main
 TextBox.Active = false
 TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
 TextBox.BackgroundTransparency = 1
 TextBox.Position = UDim2.new(0.246290803, 0, 0.945945978, 0)
 TextBox.Size = UDim2.new(0, 170, 0, 11)
 TextBox.ClearTextOnFocus = false
 TextBox.Font = Enum.Font.SciFi
 TextBox.Text = "Prisoner Life crapper- Kosovo & Empty"
 TextBox.TextColor3 = Color3.new(1, 1, 1)
 TextBox.TextSize = 14
 
 close.Name = "close"
 close.Parent = main
 close.BackgroundColor3 = Color3.new(0, 0, 0)
 close.Position = UDim2.new(0.934718072, 0, -0.00337837846, 0)
 close.Size = UDim2.new(0, 22, 0, 20)
 close.Font = Enum.Font.SciFi
 close.Text = "X"
 close.TextColor3 = Color3.new(1, 1, 1)
 close.TextSize = 14
 close.MouseButton1Down:connect(function()
 main.Visible = false
 opengui.Visible = true
 end)