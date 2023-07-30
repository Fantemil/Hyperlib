--key is boomcaca (changeable)
repeat wait() until game:IsLoaded() wait()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new());
end);
pcall(function()
    for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
        v:Disable();
    end;
end);

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Workspace = game:GetService('Workspace');



local ReplicatedStorage = game:GetService('ReplicatedStorage');


local Players = game:GetService('Players');


local Client = Players.LocalPlayer;


local RunService = game:GetService('RunService');


local Workspace = game:GetService("Workspace");


local Lighting = game:GetService("Lighting");


local UIS = game:GetService("UserInputService");


local Teams = game:GetService("Teams");

local ScriptContext = game:GetService("ScriptContext");

local CoreGui = game:GetService("CoreGui");

local Camera = Workspace.CurrentCamera;

local Mouse = Client:GetMouse();

local Terrain = Workspace.Terrain;

local VirtualUser = game:GetService("VirtualUser");


local Modules = ReplicatedStorage.Modules;


local EmoteModule = Modules.EmoteModule;


local Emotes = Client.PlayerGui.MainGUI.Game:FindFirstChild("Emotes");


local EmoteList = {"headless","zombie","zen","ninja","floss","dab"};

local CanGrab 

CanGrab = false;

local Origins = {{2,0,0},{-2,0,0},{0,2,0},{0,-2,0},{0,0,1},{0,0,-1}};

local GunHighlight = Instance.new("Highlight");
local GunHandleAdornment = Instance.new("SphereHandleAdornment");

GunHighlight.FillColor = Color3.fromRGB(248, 241, 174);
GunHighlight.Adornee = Workspace:FindFirstChild("GunDrop");
GunHighlight.OutlineTransparency = 1;
GunHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
GunHighlight.RobloxLocked = true;

GunHandleAdornment.Color3 = Color3.fromRGB(248, 241, 174);
GunHandleAdornment.Transparency = 0.2;
GunHandleAdornment.Adornee = Workspace:FindFirstChild("GunDrop");
GunHandleAdornment.AlwaysOnTop = true;
GunHandleAdornment.AdornCullingMode = Enum.AdornCullingMode.Never;
GunHandleAdornment.RobloxLocked = true;

GunHighlight.Parent = CoreGui;
GunHandleAdornment.Parent = CoreGui;

local Client = game:GetService("Players").LocalPlayer -- Assuming Client is the local player
local RootPart = Client.Character.HumanoidRootPart

local lobbyPosition = CFrame.new(-99.068924, 140.449982, 43.3706665, -0.981621504, 0, 0.190838262, 0, 1, 0, -0.190838262, 0, -0.981621504)
local votePosition = CFrame.new(-110.874992, 136, 92.125, 1, 0, 0, 0, 1, 0, 0, 0, 1)


local currentPos = 1 -- variable to keep track of the current position


local function notify(title, content)
    Rayfield:Notify({
        Title = title,
        Content = content,
        Duration = 6.5,
        Image = 4483362458,
        Actions = {
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    print("The user tapped Okay!")
                end
            },
        },
    })
end

local Murderer, Sheriff = nil, nil;

function GetMurderer()
    for i,v in pairs(Players:GetChildren()) do 
        if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") and v.Name == "Tool" then
            return v.Name;
        end;
    end;
    return nil;
end;

function GetSheriff()
    for i,v in pairs(Players:GetChildren()) do 
        if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") and v.Name == "Tool" then
            return v.Name;
        end;
        return nil;
    end;
end;




local Character = nil;
local RootPart = nil;
local Humanoid = nil;

getgenv().WS = 16
getgenv().JP = 50
function SetCharVars()
	Character = Client.Character;
	Humanoid = Character:FindFirstChild("Humanoid") or Character:WaitForChild("Humanoid");
	RootPart = Character:FindFirstChild("HumanoidRootPart") or Character:WaitForChild("HumanoidRootPart");
	if getgenv().Speed then
		Humanoid.WalkSpeed = getgenv().WS;
	end;
	Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		if getgenv().Speed then
			Humanoid.WalkSpeed = getgenv().WS;
		end;
	end);
    if getgenv().Jump then
		Humanoid.WalkSpeed = getgenv().JP;
	end;
	Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		if getgenv().Jump then
			Humanoid.WalkSpeed = getgenv().JP;
		end;
	end);
end;
SetCharVars();
Client.CharacterAdded:Connect(SetCharVars);

local Ws;
Ws = hookmetamethod(game, "__index", function(self, Value)
    if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
        return 16;
    end;
    return Ws(self, Value);
end);

local Jp;
Jp = hookmetamethod(game, "__index", function(self, Value)
    if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
        return 16;
    end;
    return Jp(self, Value);
end);




local c;
local h;
local bv;
local bav;
local cam;
local flying;
local p = Client;
local buttons = {W = false, S = false, A = false, D = false, Moving = false};

local StartFly = function ()
    if not Client.Character or not Character.Head or flying then return end;
    c = Character;
    h = Humanoid;
    h.PlatformStand = true;
    cam = workspace:WaitForChild('Camera');
    bv = Instance.new("BodyVelocity");
    bav = Instance.new("BodyAngularVelocity");
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000;
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000;
    bv.Parent = c.Head;
    bav.Parent = c.Head;
    flying = true;
    h.Died:connect(function() flying = false end);
end;

local EndFly = function ()
    if not p.Character or not flying then return end
    h.PlatformStand = false;
    bv:Destroy();
    bav:Destroy();
    flying = false;
end;

game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
    if GPE then return end;
    for i, e in pairs(buttons) do
        if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
            buttons[i] = true;
            buttons.Moving = true;
        end;
    end;
end);

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
    if GPE then return end;
    local a = false;
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false;
            end;
            if buttons[i] then a = true end;
        end;
    end;
    buttons.Moving = a;
end);

local setVec = function (vec)
    return vec * ((getgenv().FlySpeed or 50) / vec.Magnitude);
end;

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position;
        local cf = cam.CFrame;
        local ax, ay, az = cf:toEulerAnglesXYZ();
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az));
        if buttons.Moving then
            local t = Vector3.new();
            if buttons.W then t = t + (setVec(cf.lookVector)) end;
            if buttons.S then t = t - (setVec(cf.lookVector)) end;
            if buttons.A then t = t - (setVec(cf.rightVector)) end;
            if buttons.D then t = t + (setVec(cf.rightVector)) end;
            c:TranslateBy(t * step);
        end;
    end;
end);





local mm2Window = Rayfield:CreateWindow({
    Name = "🔪 Murder Mystery 2 | Nexus X💫",
    LoadingTitle = "Nexus X💫",
    LoadingSubtitle = "by Flames",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "NexusX", -- Create a custom folder for your hub/game
        FileName = "Nexus Hub"
    },
    Discord = {
        Enabled = true,
        Invite = "MpY7h3WqNh", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
        Title = "NexusX - Key🔐",
        Subtitle = "Key System",
        Note = "Key Is In Discord",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"boomcaca"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22", "🔪", "|")
    }
})

local discordInvite = "https://discord.gg/MpY7h3WqNh"  -- Replace with your Discord invite link

Rayfield:Notify({
    Title = "📣 Discord Invite!",
    Content = "Would you like to copy our Discord invite link?",
    Duration = 10,
    Image = 4483362458,
    Actions = {
        CopyInvite = {
            Name = "📋 Copy Invite",
            Callback = function()
                setclipboard(discordInvite)  -- Copies the Discord invite link to the user's clipboard
                print("Copied Discord invite to clipboard!")
            end
        },
        Ignore = {
            Name = "❌ Not Now",
            Callback = function()
                print("The user chose not to copy the Discord invite.")
            end
        }
    }
})


local PlayerTab = mm2Window:CreateTab("⚜️ LocalPlayer", nil) -- Title, Image

 local Section = PlayerTab:CreateSection("🎭 Character")

 -- For WalkSpeed
local WalkSpeedSlider = PlayerTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 250},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 16,
    Flag = "walkspeedslider",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})



-- For JumpPower
local JumpPowerSlider = PlayerTab:CreateSlider({
    Name = "JumpPower",
    Range = {50, 250},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 50,
    Flag = "jumppowerslider",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})



-- For Gravity
local GravitySlider = PlayerTab:CreateSlider({
    Name = "Gravity",
    Range = {0, 500},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 196,
    Flag = "gravityslider",
    Callback = function(Value)
        workspace.Gravity = Value
    end,
})



-- For InfiniteJump
-- Note that this is a checkbox since it's a true/false value
-- For InfiniteJump
local jumpConnection
local InfJumpCheckbox = PlayerTab:CreateToggle({
    Name = "Infinite Jump",
    Flag = "INFJUMP",
    Callback = function(Value)
        _G.InfiniteJumpEnabled = Value
        if _G.InfiniteJumpEnabled then
            -- Create the connection if it doesn't exist or has been disconnected.
            jumpConnection = jumpConnection or game:GetService("UserInputService").JumpRequest:Connect(function()
                if _G.InfiniteJumpEnabled then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end)
        elseif jumpConnection then
            -- Disconnect the connection if InfiniteJump is disabled.
            jumpConnection:Disconnect()
            jumpConnection = nil
        end
    end,
})

-- For Noclip
local noclipConnection
local NoclipCheckbox = PlayerTab:CreateToggle({
    Name = "Noclip",
    Flag = "NOCLIP",
    Callback = function(Value)
        _G.NoclipEnabled = Value
        if _G.NoclipEnabled then
            -- Create the connection if it doesn't exist or has been disconnected.
            noclipConnection = noclipConnection or game:GetService('RunService').Stepped:Connect(function()
                if _G.NoclipEnabled then
                    for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end)
        elseif noclipConnection then
            -- Disconnect the connection if Noclip is disabled.
            noclipConnection:Disconnect()
            noclipConnection = nil
            -- Re-enable collision for character parts.
            for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end,
})




local Button = PlayerTab:CreateButton({
    Name = "God Mode",
    Callback = function()
        GodMode()
    end,
 })

 local Section = PlayerTab:CreateSection("⏪ Reset Stats")


 local Button = PlayerTab:CreateButton({
    Name = "Reset WalkSpeed",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
      
        -- Set the slider back to the default gravity value
        WalkSpeedSlider:Set(16)
    end,
 })

 local Button = PlayerTab:CreateButton({
    Name = "Reset JumpPower",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
      
        -- Set the slider back to the default gravity value
        JumpPowerSlider:Set(50)
    end,
 })

 local Button = PlayerTab:CreateButton({
    Name = "Reset Gravity",
    Callback = function()
        workspace.Gravity = 196.2
      
        -- Set the slider back to the default gravity value
        GravitySlider:Set(196.2)
    end,
 })

 local Section = PlayerTab:CreateSection("✈️ Flight")

 local Toggle = PlayerTab:CreateToggle({
    Name = "Flight",
    CurrentValue = false,
    Flag = "FLY", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        getgenv().Flying = state;
        if getgenv().Flying then
            StartFly();
        else
            EndFly();
        end;
    end,
 })

 local Slider = PlayerTab:CreateSlider({
    Name = "Flight Speed",
    Range = {20, 150},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 50,
    Flag = "FLYSPEED", -- A flag is the identifier ✈️ for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(val)
        getgenv().FlySpeed = tonumber(val) or 50;
    end,
 })

 local Section = PlayerTab:CreateSection("👾 Extra")

 local Toggle = PlayerTab:CreateToggle({
    Name = "Ctrl-Click TP",
    CurrentValue = false,
    Flag = "CLICKTP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        getgenv().ClickTP = state;
    end,
 })
 Mouse.Button1Down:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end;
    if not Mouse.Target then return end;
    if not getgenv().ClickTP then return end;
    Character:MoveTo(Mouse.Hit.p);
end)



local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local defaultSpeed = 16 -- replace this with the default walkspeed
local shiftSpeed = 32 -- replace this with the initial speed when shift is held

local function updateWalkSpeed(player, isShifted)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = isShifted and shiftSpeed or defaultSpeed
        end
    end
end

local shiftEnabled = false

local Toggle = PlayerTab:CreateToggle({
    Name = "Shift Sprint",
    CurrentValue = false,
    Flag = "SHIFTSPRINT",
    Callback = function(Value)
        shiftEnabled = Value
        if not Value then
            updateWalkSpeed(Players.LocalPlayer, false)
        end
    end,
})

local Slider = PlayerTab:CreateSlider({
    Name = "Sprint Speed",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Studs/Sec",
    CurrentValue = shiftSpeed,
    Flag = "Slider1",
    Callback = function(Value)
        shiftSpeed = Value
        if shiftEnabled and UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
            updateWalkSpeed(Players.LocalPlayer, true)
        end
    end,
})

UserInputService.InputBegan:Connect(function(input)
    if shiftEnabled and input.KeyCode == Enum.KeyCode.LeftShift then
        updateWalkSpeed(Players.LocalPlayer, true)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if shiftEnabled and input.KeyCode == Enum.KeyCode.LeftShift then
        updateWalkSpeed(Players.LocalPlayer, false)
    end
end)

local Player = game:GetService("Players").LocalPlayer
local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
local IsInvisible = false
RealCharacter.Archivable = true
local FakeCharacter = RealCharacter:Clone()


 local Section = PlayerTab:CreateSection("⚠️ Emergency Stop")

 local Button = PlayerTab:CreateButton({
    Name = "Force Reset",
    Callback = function()
        Character.Head:Remove();
		Humanoid.BreakJointsOnDeath = false;
		Humanoid.Health = 0;
    end,
 })



local ESPTab = mm2Window:CreateTab("👁️‍🗨️ Visuals", nil) -- Title, Image

local Section = ESPTab:CreateSection("👁️ ESP")

local folder = Instance.new("Folder",game.CoreGui);
folder.Name = "ESP Holder";

local function AddBillboard(player)
    local billboard = Instance.new("BillboardGui",folder);
    billboard.Name = player.Name;
    billboard.AlwaysOnTop = true;
    billboard.Size = UDim2.fromOffset(200,50);
    billboard.ExtentsOffset = Vector3.new(0,3,0);
    billboard.Enabled = false

    local textLabel = Instance.new("TextLabel",billboard);
    textLabel.TextSize = 20;
    textLabel.Text = player.Name;
    textLabel.Font = Enum.Font.FredokaOne;
    textLabel.BackgroundTransparency = 1;
    textLabel.Size = UDim2.fromScale(1,1);
    textLabel.TextStrokeTransparency = 0;
    textLabel.TextStrokeColor3 = Color3.new(0,0,0);

    repeat
        wait()
        pcall(function()
            billboard.Adornee = player.Character.Head;
            if player.Character:FindFirstChild("Knife") or player.Backpack:FindFirstChild("Knife") then
                textLabel.TextColor3 = Color3.new(1,0,0);
                if getgenv().MurderEsp then
                    billboard.Enabled = true
                end
            elseif player.Character:FindFirstChild("Gun") or player.Backpack:FindFirstChild("Gun") then
                textLabel.TextColor3 = Color3.new(0,0,1);
                if getgenv().SheriffEsp then
                    billboard.Enabled = true
                end
            else
                textLabel.TextColor3 = Color3.new(0,1,0);
            end;
        end);
    until not player.Parent;
end;

for _,player in pairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
        coroutine.wrap(AddBillboard)(player);
    end;
end;
game.Players.PlayerAdded:Connect(AddBillboard);

game.Players.PlayerRemoving:Connect(function(player)
    folder[player.Name]:Destroy();
end);

local Toggle = ESPTab:CreateToggle({
    Name = "All Esp",
    CurrentValue = false,
    Flag = "allesp",
    Callback = function(state)
        getgenv().AllEsp = state;
        for i, v in pairs(folder:GetChildren()) do
            if v:IsA("BillboardGui") and game.Players:FindFirstChild(v.Name) then
                v.Enabled = state;
            end;
        end;
    end,
})

local ToggleMurderESP = ESPTab:CreateToggle({
    Name = "Murder Only ESP",
    CurrentValue = false,
    Flag = "MurderESP",
    Callback = function(state)
        getgenv().MurderEsp = state;
        while true do
            wait()
            pcall(function()
                for i, v in pairs(folder:GetChildren()) do
                    if v:IsA("BillboardGui") and game.Players:FindFirstChild(v.Name) then
                        if game.Players[v.Name].Character:FindFirstChild("Knife") or game.Players[v.Name].Backpack:FindFirstChild("Knife") then
                            v.Enabled = getgenv().MurderEsp;
                        end
                    end;
                end;
            end);
            if not getgenv().MurderEsp then break end;
        end;
    end,
})

local ToggleSheriffESP = ESPTab:CreateToggle({
    Name = "Sheriff Only ESP",
    CurrentValue = false,
    Flag = "SheriffESP",
    Callback = function(state)
        getgenv().SheriffEsp = state;
        while true do
            wait()
            pcall(function()
                for i, v in pairs(folder:GetChildren()) do
                    if v:IsA("BillboardGui") and game.Players:FindFirstChild(v.Name) then
                        if game.Players[v.Name].Character:FindFirstChild("Gun") or game.Players[v.Name].Backpack:FindFirstChild("Gun") then
                            v.Enabled = getgenv().SheriffEsp;
                        end
                    end;
                end;
            end);
            if not getgenv().SheriffEsp then break end;
        end;
    end,
})



local ToggleGunESP = ESPTab:CreateToggle({
    Name = "Gun ESP",
    CurrentValue = false,
    Flag = "ToggleGunESP",
    Callback = function(state)
        getgenv().GunESP = state;
    end,
})

coroutine.wrap(function()
    RunService.RenderStepped:Connect(function()
        pcall(function()
            if getgenv().GunESP then
                local gundrop = Workspace:FindFirstChild("GunDrop");
                GunHighlight.Adornee = gundrop;
                GunHandleAdornment.Adornee = gundrop;
                if gundrop then 
                    GunHandleAdornment.Size = gundrop.Size + Vector3.new(0.05, 0.05, 0.05) ;
                end;
        
                GunHighlight.Enabled = getgenv().GunESP;
                GunHandleAdornment.Visible = getgenv().GunESP;
            end;
        end);
    end);
end)();

local Section = ESPTab:CreateSection("✏️ Chams")

local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")

if holder.Name == "Folder" then
    holder.Name = "ESPHolder"
    holder.Parent = game.CoreGui
end

local Toggle = ESPTab:CreateToggle({
    Name = "Coin Cham",
    CurrentValue = false,
    Flag = "coinESP", 
    Callback = function(Value)
        if Value then
            for _,v in pairs(Workspace:GetDescendants()) do
                if v.Name == "CoinContainer" then
                    local esp = holder:FindFirstChild(v:GetFullName()) or Instance.new("Highlight")
                    esp.Name = v:GetFullName()
                    esp.Parent = holder
                    esp.FillColor = Color3.fromRGB(255, 215, 0) -- Gold color for coins
                    esp.OutlineColor = Color3.fromRGB(255, 215, 0) 
                    esp.FillTransparency = 0.8
                    esp.OutlineTransparency = 0
                    esp.Adornee = v
                    esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
            end
        else
            for _,v in pairs(holder:GetChildren()) do
                v:Destroy()
            end
        end
    end,
})

local folder = Instance.new("Folder",game.CoreGui)
folder.Name = "ESP Holder"

local function AddBox(player)
    local character = player.Character or player.CharacterAdded:Wait()
    if character then
        local humanoid = character:WaitForChild('Humanoid')
        if humanoid then
            local box = Instance.new("BoxHandleAdornment",folder)
            box.Name = player.Name .. "Box"
            box.Size = humanoid.RigType == Enum.HumanoidRigType.R15 and Vector3.new(2, 3.2, 1) or Vector3.new(2, 2.6, 1)
            box.Adornee = character
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Transparency = 0.7
            box.Visible = false

            repeat
                wait()
                pcall(function()
                    if character:FindFirstChild("Knife") or player.Backpack:FindFirstChild("Knife") then
                        box.Color3 = Color3.new(1,0,0)
                        if getgenv().MurderEsp then
                            box.Visible = true
                        else
                            box.Visible = false
                        end
                    elseif character:FindFirstChild("Gun") or player.Backpack:FindFirstChild("Gun") then
                        box.Color3 = Color3.new(0,0,1)
                        if getgenv().SheriffEsp then
                            box.Visible = true
                        else
                            box.Visible = false
                        end
                    else
                        box.Color3 = Color3.new(0,1,0)
                        if getgenv().AllEsp then
                            box.Visible = true
                        else
                            box.Visible = false
                        end
                    end
                end)
            until not player.Parent or not character
        end
    end
end

for _,player in pairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
        coroutine.wrap(AddBox)(player)
    end
end

game.Players.PlayerAdded:Connect(AddBox)

game.Players.PlayerRemoving:Connect(function(player)
    if folder:FindFirstChild(player.Name .. "Box") then
        folder[player.Name .. "Box"]:Destroy()
    end
end)

local Toggle = ESPTab:CreateToggle({
    Name = "All Players Cham",
    CurrentValue = false,
    Flag = "allespcham",
    Callback = function(state)
        getgenv().AllEsp = state;
    end,
})

local ToggleMurderESP = ESPTab:CreateToggle({
    Name = "Murder Only Cham",
    CurrentValue = false,
    Flag = "ToggleMurderESPcham",
    Callback = function(state)
        getgenv().MurderEsp = state;
    end,
})

local ToggleSheriffESP = ESPTab:CreateToggle({
    Name = "Sheriff Only Cham",
    CurrentValue = false,
    Flag = "ToggleSheriffESPcham",
    Callback = function(state)
        getgenv().SheriffEsp = state;
    end,
})


local Section = ESPTab:CreateSection("🎉 Fun")

local ButtonFakeInventory = ESPTab:CreateButton({
    Name = "Fake Inventory",
    Callback = function()
        local WeaponOwnRange = {
            min=1,
            max=5
           }
           
           local DataBase, PlayerData = getrenv()._G.Database, getrenv()._G.PlayerData
           
           local newOwned = {}
           
           for i,v in next, DataBase.Item do
            newOwned[i] = math.random(WeaponOwnRange.min, WeaponOwnRange.max) -- newOwned[Weapon]: ItemCount
           end
           
           local PlayerWeapons = PlayerData.Weapons
           
           game:GetService("RunService"):BindToRenderStep("InventoryUpdate", 0, function()
            PlayerWeapons.Owned = newOwned
           end)
           
           game.Players.LocalPlayer.Character.Humanoid.Health = 0
           
           
    end,
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local EmoteModule = Modules.EmoteModule
local EmoteList = {"headless","zombie","zen","ninja","floss","dab"}

local function setEmotes(character)
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    local Emotes = PlayerGui:WaitForChild("MainGUI"):WaitForChild("Game"):FindFirstChild("Emotes")
    
    if Emotes then
        require(EmoteModule).GeneratePage(EmoteList, Emotes, 'Free Emotes')
    else
        warn("Emotes not found.")
    end
end

local Button = ESPTab:CreateButton({
   Name = "Get All Emotes",
   Callback = function()
       setEmotes(LocalPlayer.Character)

       LocalPlayer.CharacterAdded:Connect(setEmotes)
   end,
})

local Button = ESPTab:CreateButton({
    Name = "Spawn Balls",
    Callback = function()
        local Players = game:GetService("Players")
        local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local createdBalls = {}
        
        if humanoidRootPart then
            for i = 1, 50 do
                local ball = Instance.new("Part", workspace)
                ball.Shape = "Ball"
                ball.Material = "Neon"
                ball.BrickColor = BrickColor.random()
                ball.Anchored = false
                ball.CanCollide = true
                ball.Size = Vector3.new(1, 1, 1)
                ball.Position = humanoidRootPart.Position + Vector3.new(math.random(-10, 10), 10, math.random(-10, 10))
                ball.Velocity = Vector3.new(math.random(-50, 50), math.random(50, 100), math.random(-50, 50))
                table.insert(createdBalls, ball)
            end
        end
        
        wait(10) --time when the balls will get deleted :)
        for i, ball in ipairs(createdBalls) do
            ball:Destroy()
        end
    end,
 })

 local Players = game:GetService("Players")
local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

local Toggle = ESPTab:CreateToggle({
    Name = "Loop Spawn Balls",
    CurrentValue = false,
    Flag = "loopballs",
    Callback = function(Value)
        if Value then -- if toggle is enabled
            local createdBalls = {}
            if humanoidRootPart then
                for i = 1, 50 do
                    local ball = Instance.new("Part", workspace)
                    ball.Shape = "Ball"
                    ball.Material = "Neon"
                    ball.BrickColor = BrickColor.random()
                    ball.Anchored = false
                    ball.CanCollide = true
                    ball.Size = Vector3.new(1, 1, 1)
                    ball.Position = humanoidRootPart.Position + Vector3.new(math.random(-10, 10), 10, math.random(-10, 10))
                    ball.Velocity = Vector3.new(math.random(-50, 50), math.random(50, 100), math.random(-50, 50))
                    table.insert(createdBalls, ball)
                end
            end

            wait(10) --time when the balls will get deleted
            for i, ball in ipairs(createdBalls) do
                ball:Destroy()
            end
        end
    end,
})





local Button = ESPTab:CreateButton({
    Name = "Roblox Free Emotes (Comma To Open) (wasnt made by me)",
    Callback = function()
    --keybind to open is comma
local ContextActionService = game:GetService("ContextActionService")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local Emotes = {}
local LoadedEmotes = {}
local function AddEmote(name: string, id: IntValue, price: IntValue?)
	LoadedEmotes[id] = false
	task.spawn(function()
		if not (name and id) then
			return
		end
		local success, date = pcall(function()
			local info = MarketplaceService:GetProductInfo(id)
			local updated = info.Updated
			return DateTime.fromIsoDate(updated):ToUniversalTime()
		end)
		if not success then
			task.wait(10)
			AddEmote(name, id, price)
			return
		end
		local unix = os.time({
			year = date.Year,
			month = date.Month,
			day = date.Day,
			hour = date.Hour,
			min = date.Minute,
			sec = date.Second
		})
		LoadedEmotes[id] = true
		table.insert(Emotes, {
			["name"] = name,
			["id"] = id,
			["icon"] = "rbxthumb://type=Asset&id=".. id .."&w=150&h=150",
			["price"] = price or 0,
			["lastupdated"] = unix,
			["sort"] = {}
		})
	end)
end
local CurrentSort = "recentfirst"

local FavoriteOff = "rbxassetid://10651060677"
local FavoriteOn = "rbxassetid://10651061109"
local FavoritedEmotes = {}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Emotes"
ScreenGui.DisplayOrder = 2
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false

local BackFrame = Instance.new("Frame")
BackFrame.Size = UDim2.new(0.9, 0, 0.5, 0)
BackFrame.AnchorPoint = Vector2.new(0.5, 0.5)
BackFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
BackFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackFrame.BackgroundTransparency = 1
BackFrame.BorderSizePixel = 0
BackFrame.Parent = ScreenGui

local EmoteName = Instance.new("TextLabel")
EmoteName.Name = "EmoteName"
EmoteName.TextScaled = true
EmoteName.AnchorPoint = Vector2.new(0.5, 0.5)
EmoteName.Position = UDim2.new(-0.1, 0, 0.5, 0)
EmoteName.Size = UDim2.new(0.2, 0, 0.2, 0)
EmoteName.SizeConstraint = Enum.SizeConstraint.RelativeYY
EmoteName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
EmoteName.TextColor3 = Color3.new(1, 1, 1)
EmoteName.BorderSizePixel = 0
EmoteName.Parent = BackFrame

local Corner = Instance.new("UICorner")
Corner.Parent = EmoteName

local Loading = Instance.new("TextLabel", BackFrame)
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.Text = "Loading..."
Loading.TextColor3 = Color3.new(1, 1, 1)
Loading.BackgroundColor3 = Color3.new(0, 0, 0)
Loading.TextScaled = true
Loading.BackgroundTransparency = 0.5
Loading.Size = UDim2.fromScale(0.2, 0.1)
Loading.Position = UDim2.fromScale(0.5, 0.2)
Corner:Clone().Parent = Loading

local Frame = Instance.new("ScrollingFrame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
Frame.ScrollingDirection = Enum.ScrollingDirection.Y
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundTransparency = 1
Frame.ScrollBarThickness = 5
Frame.BorderSizePixel = 0
Frame.MouseLeave:Connect(function()
	EmoteName.Text = "Select an Emote"
end)
Frame.Parent = BackFrame

local Grid = Instance.new("UIGridLayout")
Grid.CellSize = UDim2.new(0.105, 0, 0, 0)
Grid.CellPadding = UDim2.new(0.006, 0, 0.006, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.Parent = Frame

local SortFrame = Instance.new("Frame")
SortFrame.Visible = false
SortFrame.BorderSizePixel = 0
SortFrame.Position = UDim2.new(1, 5, -0.125, 0)
SortFrame.Size = UDim2.new(0.2, 0, 0, 0)
SortFrame.AutomaticSize = Enum.AutomaticSize.Y
SortFrame.BackgroundTransparency = 1
Corner:Clone().Parent = SortFrame
SortFrame.Parent = BackFrame

local SortList = Instance.new("UIListLayout")
SortList.Padding = UDim.new(0.02, 0)
SortList.HorizontalAlignment = Enum.HorizontalAlignment.Center
SortList.VerticalAlignment = Enum.VerticalAlignment.Top
SortList.SortOrder = Enum.SortOrder.LayoutOrder
SortList.Parent = SortFrame

local function SortEmotes()
	for i,Emote in pairs(Emotes) do
		local EmoteButton = Frame:FindFirstChild(Emote.id)
		if not EmoteButton then
			continue
		end
		local IsFavorited = table.find(FavoritedEmotes, Emote.id)
		EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + ((IsFavorited and 0) or #Emotes)
		EmoteButton.number.Text = Emote.sort[CurrentSort]
	end
end

local function createsort(order, text, sort)
	local CreatedSort = Instance.new("TextButton")
	CreatedSort.SizeConstraint = Enum.SizeConstraint.RelativeXX
	CreatedSort.Size = UDim2.new(1, 0, 0.2, 0)
	CreatedSort.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	CreatedSort.LayoutOrder = order
	CreatedSort.TextColor3 = Color3.new(1, 1, 1)
	CreatedSort.Text = text
	CreatedSort.TextScaled = true
	CreatedSort.BorderSizePixel = 0
	Corner:Clone().Parent = CreatedSort
	CreatedSort.Parent = SortFrame
	CreatedSort.MouseButton1Click:Connect(function()
		SortFrame.Visible = false
		CurrentSort = sort
		SortEmotes()
	end)
	return CreatedSort
end

createsort(1, "Recently Updated First", "recentfirst")
createsort(2, "Recently Updated Last", "recentlast")
createsort(3, "Alphabetically First", "alphabeticfirst")
createsort(4, "Alphabetically Last", "alphabeticlast")
createsort(5, "Highest Price", "highestprice")
createsort(6, "Lowest Price", "lowestprice")

local SortButton = Instance.new("TextButton")
SortButton.BorderSizePixel = 0
SortButton.AnchorPoint = Vector2.new(0.5, 0.5)
SortButton.Position = UDim2.new(0.925, -5, -0.075, 0)
SortButton.Size = UDim2.new(0.15, 0, 0.1, 0)
SortButton.TextScaled = true
SortButton.TextColor3 = Color3.new(1, 1, 1)
SortButton.BackgroundColor3 = Color3.new(0, 0, 0)
SortButton.BackgroundTransparency = 0.3
SortButton.Text = "Sort"
SortButton.MouseButton1Click:Connect(function()
	SortFrame.Visible = not SortFrame.Visible
end)
Corner:Clone().Parent = SortButton
SortButton.Parent = BackFrame

local CloseButton = Instance.new("TextButton")
CloseButton.BorderSizePixel = 0
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.Position = UDim2.new(0.075, 0, -0.075, 0)
CloseButton.Size = UDim2.new(0.15, 0, 0.1, 0)
CloseButton.TextScaled = true
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton.BackgroundTransparency = 0.3
CloseButton.Text = "Close"
CloseButton.MouseButton1Click:Connect(function()
	ScreenGui.Enabled = false
end)
Corner:Clone().Parent = CloseButton
CloseButton.Parent = BackFrame

local SearchBar = Instance.new("TextBox")
SearchBar.BorderSizePixel = 0
SearchBar.AnchorPoint = Vector2.new(0.5, 0.5)
SearchBar.Position = UDim2.new(0.5, 0, -0.075, 0)
SearchBar.Size = UDim2.new(0.55, 0, 0.1, 0)
SearchBar.TextScaled = true
SearchBar.PlaceholderText = "Search"
SearchBar.TextColor3 = Color3.new(1, 1, 1)
SearchBar.BackgroundColor3 = Color3.new(0, 0, 0)
SearchBar.BackgroundTransparency = 0.3
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
	local text = SearchBar.Text:lower()
	local buttons = Frame:GetChildren()
	if text ~= text:sub(1,50) then
		SearchBar.Text = SearchBar.Text:sub(1,50)
		text = SearchBar.Text:lower()
	end
	if text ~= ""  then
		for i,button in pairs(buttons) do
			if button:IsA("GuiButton") then
				local name = button:GetAttribute("name"):lower()
				if name:match(text) then
					button.Visible = true
				else
					button.Visible = false
				end
			end
		end
	else
		for i,button in pairs(buttons) do
			if button:IsA("GuiButton") then
				button.Visible = true
			end
		end
	end
end)
Corner:Clone().Parent = SearchBar
SearchBar.Parent = BackFrame

local function openemotes(name, state, input)
	if state == Enum.UserInputState.Begin then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end

ContextActionService:BindCoreActionAtPriority(
	"Emote Menu",
	openemotes,
	true,
	2001,
	Enum.KeyCode.Comma
)

local inputconnect
ScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
	if ScreenGui.Enabled == true then
		EmoteName.Text = "Select an Emote"
		SearchBar.Text = ""
		SortFrame.Visible = false
		GuiService:SetEmotesMenuOpen(false)
		inputconnect = UserInputService.InputBegan:Connect(function(input, processed)
			if not processed then
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					ScreenGui.Enabled = false
				end
			end
		end)
	else
		inputconnect:Disconnect()
	end
end)

GuiService.EmotesMenuOpenChanged:Connect(function(isopen)
	if isopen then
		ScreenGui.Enabled = false
	end
end)

GuiService.MenuOpened:Connect(function()
	ScreenGui.Enabled = false
end)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

--thanks inf yield
local SynV3 = syn and DrawingImmediate
if (not is_sirhurt_closure) and (not SynV3) and (syn and syn.protect_gui) then
	syn.protect_gui(ScreenGui)
	ScreenGui.Parent = CoreGui
elseif get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	ScreenGui.Parent = hiddenUI()
else
	ScreenGui.Parent = CoreGui
end

local function SendNotification(title, text)
	if syn and syn.toast_notification then
		syn.toast_notification({
			Type = ToastType.Error,
			Title = title,
			Content = text
		})
	else
		StarterGui:SetCore("SendNotification", {
			Title = title,
			Text = text
		})
	end
end

local LocalPlayer = Players.LocalPlayer

local function PlayEmote(name: string, id: IntValue)
	ScreenGui.Enabled = false
	SearchBar.Text = ""
	local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local Description = Humanoid and Humanoid:FindFirstChildOfClass("HumanoidDescription")
	if not Description then
		return
	end
	if LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		local succ, err = pcall(function()
			Humanoid:PlayEmoteAndGetAnimTrackById(id)
		end)
		if not succ then
			Description:AddEmote(name, id)
			Humanoid:PlayEmoteAndGetAnimTrackById(id)
		end
	else
		SendNotification(
			"r6? lol",
			"you gotta be r15 dude"
		)
	end
end

local function WaitForChildOfClass(parent, class)
	local child = parent:FindFirstChildOfClass(class)
	while not child or child.ClassName ~= class do
		child = parent.ChildAdded:Wait()
	end
	return child
end

local Cursor = ""
while true do
	local function Request()
		local success, Response = pcall(function()
			return game:HttpGetAsync("https://catalog.roblox.com/v1/search/items/details?Category=12&Subcategory=39&SortType=1&SortAggregation=&limit=30&IncludeNotForSale=true&cursor=".. Cursor)
		end)
		if not success then
			task.wait(10)
			return Request()
		end
		return Response
	end
	local Response = Request()
	local Body = HttpService:JSONDecode(Response)
	for i,v in pairs(Body.data) do
		AddEmote(v.name, v.id, v.price)
	end
	if Body.nextPageCursor ~= nil then
		Cursor = Body.nextPageCursor
	else
		break
	end
end

--unreleased emotes
AddEmote("Arm Wave", 5915773155)
AddEmote("Head Banging", 5915779725)
AddEmote("Face Calisthenics", 9830731012)

--wait for emotes to finish loading

local function EmotesLoaded()
	for i, loaded in pairs(LoadedEmotes) do
		if not loaded then
			return false
		end
	end
	return true
end
while not EmotesLoaded() do
	task.wait()
end
Loading:Destroy()

--sorting options setup
table.sort(Emotes, function(a, b)
	return a.lastupdated > b.lastupdated
end)
for i,v in pairs(Emotes) do
	v.sort.recentfirst = i
end

table.sort(Emotes, function(a, b)
	return a.lastupdated < b.lastupdated
end)
for i,v in pairs(Emotes) do
	v.sort.recentlast = i
end

table.sort(Emotes, function(a, b)
	return a.name:lower() < b.name:lower()
end)
for i,v in pairs(Emotes) do
	v.sort.alphabeticfirst = i
end

table.sort(Emotes, function(a, b)
	return a.name:lower() > b.name:lower()
end)
for i,v in pairs(Emotes) do
	v.sort.alphabeticlast = i
end

table.sort(Emotes, function(a, b)
	return a.price < b.price
end)
for i,v in pairs(Emotes) do
	v.sort.lowestprice = i
end

table.sort(Emotes, function(a, b)
	return a.price > b.price
end)
for i,v in pairs(Emotes) do
	v.sort.highestprice = i
end

if isfile("FavoritedEmotes.txt") then
	if not pcall(function()
		FavoritedEmotes = HttpService:JSONDecode(readfile("FavoritedEmotes.txt"))
	end) then
		FavoritedEmotes = {}
	end
else
	writefile("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
end

local UpdatedFavorites = {}
for i,name in pairs(FavoritedEmotes) do
	if typeof(name) == "string" then
		for i,emote in pairs(Emotes) do
			if emote.name == name then
				table.insert(UpdatedFavorites, emote.id)
				break
			end
		end
	end
end
if #UpdatedFavorites ~= 0 then
	FavoritedEmotes = UpdatedFavorites
	writefile("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
end

local function CharacterAdded(Character)
	for i,v in pairs(Frame:GetChildren()) do
		if not v:IsA("UIGridLayout") then
			v:Destroy()
		end
	end
	local Humanoid = WaitForChildOfClass(Character, "Humanoid")
	local Description = Humanoid:WaitForChild("HumanoidDescription", 5) or Instance.new("HumanoidDescription", Humanoid)
	local random = Instance.new("TextButton")
	local Ratio = Instance.new("UIAspectRatioConstraint")
	Ratio.AspectType = Enum.AspectType.ScaleWithParentSize
	Ratio.Parent = random
	random.LayoutOrder = 0
	random.TextColor3 = Color3.new(1, 1, 1)
	random.BorderSizePixel = 0
	random.BackgroundTransparency = 0.5
	random.BackgroundColor3 = Color3.new(0, 0, 0)
	random.TextScaled = true
	random.Text = "Random"
	random:SetAttribute("name", "")
	Corner:Clone().Parent = random
	random.MouseButton1Click:Connect(function()
		local randomemote = Emotes[math.random(1, #Emotes)]
		PlayEmote(randomemote.name, randomemote.id)
	end)
	random.MouseEnter:Connect(function()
		EmoteName.Text = "Random"
	end)
	random.Parent = Frame
	for i,Emote in pairs(Emotes) do
		Description:AddEmote(Emote.name, Emote.id)
		local EmoteButton = Instance.new("ImageButton")
		local IsFavorited = table.find(FavoritedEmotes, Emote.id)
		EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + ((IsFavorited and 0) or #Emotes)
		EmoteButton.Name = Emote.id
		EmoteButton:SetAttribute("name", Emote.name)
		Corner:Clone().Parent = EmoteButton
		EmoteButton.Image = Emote.icon
		EmoteButton.BackgroundTransparency = 0.5
		EmoteButton.BackgroundColor3 = Color3.new(0, 0, 0)
		EmoteButton.BorderSizePixel = 0
		Ratio:Clone().Parent = EmoteButton
		local EmoteNumber = Instance.new("TextLabel")
		EmoteNumber.Name = "number"
		EmoteNumber.TextScaled = true
		EmoteNumber.BackgroundTransparency = 1
		EmoteNumber.TextColor3 = Color3.new(1, 1, 1)
		EmoteNumber.BorderSizePixel = 0
		EmoteNumber.AnchorPoint = Vector2.new(0.5, 0.5)
		EmoteNumber.Size = UDim2.new(0.2, 0, 0.2, 0)
		EmoteNumber.Position = UDim2.new(0.1, 0, 0.9, 0)
		EmoteNumber.Text = Emote.sort[CurrentSort]
		EmoteNumber.TextXAlignment = Enum.TextXAlignment.Center
		EmoteNumber.TextYAlignment = Enum.TextYAlignment.Center
		local UIStroke = Instance.new("UIStroke")
		UIStroke.Transparency = 0.5
		UIStroke.Parent = EmoteNumber
		EmoteNumber.Parent = EmoteButton
		EmoteButton.Parent = Frame
		EmoteButton.MouseButton1Click:Connect(function()
			PlayEmote(Emote.name, Emote.id)
		end)
		EmoteButton.MouseEnter:Connect(function()
			EmoteName.Text = Emote.name
		end)
		local Favorite = Instance.new("ImageButton")
		Favorite.Name = "favorite"
		if table.find(FavoritedEmotes, Emote.id) then
			Favorite.Image = FavoriteOn
		else
			Favorite.Image = FavoriteOff
		end
		Favorite.AnchorPoint = Vector2.new(0.5, 0.5)
		Favorite.Size = UDim2.new(0.2, 0, 0.2, 0)
		Favorite.Position = UDim2.new(0.9, 0, 0.9, 0)
		Favorite.BorderSizePixel = 0
		Favorite.BackgroundTransparency = 1
		Favorite.Parent = EmoteButton
		Favorite.MouseButton1Click:Connect(function()
			local index = table.find(FavoritedEmotes, Emote.id)
			if index then
				table.remove(FavoritedEmotes, index)
				Favorite.Image = FavoriteOff
				EmoteButton.LayoutOrder = Emote.sort[CurrentSort] + #Emotes
			else
				table.insert(FavoritedEmotes, Emote.id)
				Favorite.Image = FavoriteOn
				EmoteButton.LayoutOrder = Emote.sort[CurrentSort]
			end
			writefile("FavoritedEmotes.txt", HttpService:JSONEncode(FavoritedEmotes))
		end)
	end
	for i=1,9 do
		local EmoteButton = Instance.new("Frame")
		EmoteButton.LayoutOrder = 2147483647
		EmoteButton.Name = "filler"
		EmoteButton.BackgroundTransparency = 1
		EmoteButton.BorderSizePixel = 0
		Ratio:Clone().Parent = EmoteButton
		EmoteButton.Visible = true
		EmoteButton.Parent = Frame
		EmoteButton.MouseEnter:Connect(function()
			EmoteName.Text = "Select an Emote"
		end)
	end
end

if LocalPlayer.Character then
	CharacterAdded(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(CharacterAdded)

    end,
 })




local Section = ESPTab:CreateSection("🌌 Effects")


 local Toggle = ESPTab:CreateToggle({
    Name = "2022 Materials",
    CurrentValue = false,
    Flag = "Toggle1", 
    Callback = function(Value)
        local MaterialService = game:GetService("MaterialService")
        
        if Value then
            MaterialService.Use2022Materials = true -- Enable the 2022 materials
            Rayfield:Notify({
                Title = "2022 Materials Activated",
                Content = "The 2022 Materials are now active.",
                Duration = 6.5,
                Image = 4483362458,
                Actions = { 
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                            print("2022 Materials are active!")
                        end
                    }
                },
            })
        else
            MaterialService.Use2022Materials = false -- Disable the 2022 materials
            Rayfield:Notify({
                Title = "2022 Materials Deactivated",
                Content = "The 2022 Materials are now inactive.",
                Duration = 6.5,
                Image = 4483362458,
                Actions = { 
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                            print("2022 Materials are deactivated!")
                        end
                    }
                },
            })
        end
    end,
 })
 


local MiscTab = mm2Window:CreateTab("⚙️ Misc", nil) -- Title, Image
local Section = MiscTab:CreateSection("🌐 World")

--<>----<>----<>----<>----<>----<>----<>--
--<>----<>----<>----<>----<>----<>----<>--

function XrayOn(obj)
    for _,v in pairs(obj:GetChildren()) do
        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
            v.LocalTransparencyModifier = 0.75;
        end;
        XrayOn(v);
    end;
end;

function XrayOff(obj)
    for _,v in pairs(obj:GetChildren()) do
        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
            v.LocalTransparencyModifier = 0;
        end ;
        XrayOff(v);
    end;
end;

local FP = MiscTab:CreateLabel("")
spawn(function()
    while game:GetService("RunService").RenderStepped:wait() do
        FP:Set("FPS : "..tostring(game:GetService("Stats").Workspace.FPS:GetValueString()))
    end
end)

local Time = MiscTab:CreateLabel("")
spawn(function()
    while task.wait() do
        local Data = os.date("*t")
        Time:Set("IRL Time : "..Data.hour..":"..Data.min..":"..Data.sec)
    end
end)

-- Player Teleport Dropdown
local players = game:GetService("Players"):GetPlayers()
local playerNames = {}
for i, player in ipairs(players) do
    table.insert(playerNames, player.Name)
end
local dropdown = MiscTab:CreateDropdown({
     Name = "Player Teleport",
     Options = playerNames,
     CurrentOption = {playerNames[1]},
     MultipleOptions = false,
     Flag = "playerTeleport",
     Callback = function(Option)
         local selectedPlayer = game:GetService("Players"):FindFirstChild(Option[1])
         if selectedPlayer and selectedPlayer.Character then
             local position = selectedPlayer.Character:WaitForChild("HumanoidRootPart").Position
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position)
         end
     end,
})

local Button = MiscTab:CreateButton({
    Name = "Teleport to Lobby",
    Callback = function()
        pcall(function()
            RootPart.CFrame = lobbyPosition
            Rayfield:Notify({
                Title = "Teleportation",
                Content = "Teleported successfully to Lobby",
                Duration = 3,
            })
        end)
    end,
})

local Button = MiscTab:CreateButton({
    Name = "Teleport to VotingArea",
    Callback = function()
        pcall(function()
            RootPart.CFrame = votePosition
            Rayfield:Notify({
                Title = "Teleportation",
                Content = "Teleported successfully to VotingArea",
                Duration = 3,
            })
        end)
    end,
})


local Button1 = MiscTab:CreateButton({
    Name = "Teleport to Murder",
    Callback = function()
        local players = game:GetService("Players"):GetPlayers()
        for _, player in ipairs(players) do
            if player.Character and (player.Backpack:FindFirstChild("Knife") or player.Character:FindFirstChild("Knife")) then
                print("Found a player with a Knife: ", player.Name)  -- Debug print
                local position = player.Character.HumanoidRootPart.Position
                print("Teleporting to position: ", position)  -- Debug print
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                return  -- If teleportation is successful, no need to continue the loop
            end
        end
        Rayfield:Notify({
            Title = "Teleport Unsuccessful",
            Content = "No player with a Knife was found.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        print("The user acknowledged the unsuccessful teleportation.")
                    end
                },
            },
        })
    end,
})

local Button2 = MiscTab:CreateButton({
    Name = "Teleport to Sheriff",
    Callback = function()
        local players = game:GetService("Players"):GetPlayers()
        for _, player in ipairs(players) do
            if player.Character and (player.Backpack:FindFirstChild("Gun") or player.Character:FindFirstChild("Gun")) then
                print("Found a player with a Gun: ", player.Name)  -- Debug print
                local position = player.Character.HumanoidRootPart.Position
                print("Teleporting to position: ", position)  -- Debug print
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                return  -- If teleportation is successful, no need to continue the loop
            end
        end
        Rayfield:Notify({
            Title = "Teleport Unsuccessful",
            Content = "No player with a Gun was found.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        print("The user acknowledged the unsuccessful teleportation.")
                    end
                },
            },
        })
    end,
})



local Toggle = MiscTab:CreateToggle({
    Name = "Xray",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(state)
        getgenv().Xray = state;
        if getgenv().Xray then
            XrayOn(Workspace);
        else
            XrayOff(Workspace);
        end;
    end,
 })

 

local Section = MiscTab:CreateSection("🔫 SherrifSection")

local Toggle = MiscTab:CreateToggle({
    Name = "Silent aim",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().SheriffAim = state;
        print(getgenv().SheriffAim);
    end,
 })

local Slider = MiscTab:CreateSlider({
    Name = "Accuracy",
    Range = {0, 200},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 25,
    Flag = "Slider1",
    Callback = function(val)
        getgenv().GunAccuracy = tonumber(val) or 25;
    end,
})


 local Section = MiscTab:CreateSection("🔪 MurdererSection")

 local Toggle = MiscTab:CreateToggle({
    Name = "Kill aura",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(state)
        getgenv().KnifeAura = state;
    end,
})

local Slider = MiscTab:CreateSlider({
    Name = "Knife Range",
    Range = {5, 100},
    Increment = 1,
    Suffix = " studs",
    CurrentValue = 25,
    Flag = "Slider1",
    Callback = function(val)
        getgenv().KnifeRange = tonumber(val) or 25;
    end,
})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

local RATE_LIMIT = 1

local client = Players.LocalPlayer
local lastAttack = tick()

RunService.Heartbeat:Connect(function()
    if (tick() - lastAttack) >= RATE_LIMIT and getgenv().KnifeAura then
        local knife = client.Backpack:FindFirstChild("Knife") or client.Character:FindFirstChild("Knife")

        if knife and knife:IsA("Tool") then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= client and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not table.find(getgenv().Whitelisted, player.Name) then
                    local distance = (player.Character.HumanoidRootPart.Position - client.Character.HumanoidRootPart.Position).Magnitude

                    if distance <= getgenv().KnifeRange then
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton1(Vector2.new())
                        firetouchinterest(player.Character.HumanoidRootPart, knife.Handle, 1)
                        wait(RATE_LIMIT)
                        firetouchinterest(player.Character.HumanoidRootPart, knife.Handle, 0)
                        lastAttack = tick()
                    end
                end
            end
        end
    end
end)


local GameOver = nil;
local Blocked = nil;

local Keybind = MiscTab:CreateKeybind({
    Name = "Kill All",
    CurrentKeybind = "K",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
        local Knife = Client.Backpack:FindFirstChild("Knife") or Client.Character:FindFirstChild("Knife")
        if Knife then
            Humanoid:EquipTool(Knife)
            for i, v in ipairs(Players:GetPlayers()) do
                -- Modify the condition to only attack the targeted player
                if v ~= Client and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Name == getgenv().TargetPlayer then
                    VirtualUser:ClickButton1(Vector2.new())
                    firetouchinterest(v.Character.HumanoidRootPart, Knife.Handle, 1)
                    firetouchinterest(v.Character.HumanoidRootPart, Knife.Handle, 0)
                    lastAttack = tick()
                end
            end
        end
    end,
})



local Button = MiscTab:CreateButton({
    Name = "See",
    Callback = function()
        print("----------WHITELISTED----------");
        for _,v in pairs(getgenv().Whitelisted) do
            print(v);
        end;
        print("-------------------------------");
    end,
})


--<>----<>----<>----<>----<>----<>----<>--
--<>----<>----<>----<>----<>----<>----<>--
ReplicatedStorage.UpdatePlayerData.OnClientEvent:Connect(function()
    CanGrab = false;
end);

local function findKnifeHolder()
    for _, player in pairs(game:GetService('Players'):GetPlayers()) do
        if player ~= game:GetService('Players').LocalPlayer then
            -- If a player is holding a knife
            if player.Character and player.Character:FindFirstChildOfClass('Tool') and player.Character:FindFirstChildOfClass('Tool').Name == 'Knife' then
                return player
            end
            -- If a player has a knife in their backpack
            if player:FindFirstChild('Backpack') then
                for _, item in pairs(player.Backpack:GetChildren()) do
                    if item:IsA('Tool') and item.Name == 'Knife' then
                        return player
                    end
                end
            end
        end
    end
    return nil
end

local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
	local method = getnamecallmethod();
	local args = { ... };
	if not checkcaller() then
        if tostring(method) == "InvokeServer" and tostring(self) == "GetChance" then
            wait(13);
            Murderer = GetMurderer();
            Sheriff = GetSheriff();
            CanGrab = true;
        end;
	end;
	return __namecall(self, unpack(args));
end);

local Section = MiscTab:CreateSection("😇 InnocentSection")

local GunLabel = MiscTab:CreateLabel("Gun Not Dropped")
coroutine.wrap(function()
    local gunDropped = false
    while wait(1) do
        local gunExists = Workspace:FindFirstChild("GunDrop")
        
        if gunExists then
            GunLabel:Set("Gun Dropped")
            
            -- Only send notification if the gun has been dropped since last check
            if not gunDropped then
                gunDropped = true
                Rayfield:Notify({
                    Title = "Gun Status",
                    Content = "Gun Dropped",
                    Duration = 6.5,
                    Image = 5578470911,
                    Actions = {
                        Ignore = {
                            Name = "Okay!",
                            Callback = function()
                                print("The user tapped Okay!")
                            end
                        },
                    },
                })
            end
        else
            GunLabel:Set("Gun Not Dropped")
            gunDropped = false
        end
    end
end)()


local Toggle = MiscTab:CreateToggle({
    Name = "View Dropped Gun",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
         if Value then
             local gunDrop = Workspace:FindFirstChild("GunDrop")
             if gunDrop then
                 local oldCameraSubject = game.Workspace.CurrentCamera.CameraSubject
                 game.Workspace.CurrentCamera.CameraSubject = gunDrop
                 wait(3)
                 game.Workspace.CurrentCamera.CameraSubject = oldCameraSubject
             end
         end
    end,
 })

 local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Player = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")

local maxPlayerDistance = 20 -- Maximum distance a player can be to prevent teleporting to the GunDrop

local function playerHasKnife(player)
    for _, item in ipairs(player.Backpack:GetChildren()) do
        if item.Name == "Knife" then
            return true
        end
    end

    local character = player.Character
    if character then
        for _, item in ipairs(character:GetChildren()) do
            if item.Name == "Knife" then
                return true
            end
        end
    end

    return false
end

local function shouldTeleportToGunDrop()
    local gundrop = Workspace:FindFirstChild("GunDrop")
    if gundrop then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Player and player.Character then
                local playerRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                if playerRootPart and playerHasKnife(player) then
                    local distance = (playerRootPart.Position - gundrop.Position).Magnitude
                    if distance < getgenv().maxPlayerDistance then
                        return false
                    end
                end
            end
        end

        return true
    end

    return false
end


local Keybind = MiscTab:CreateKeybind({
    Name = "Get gun",
    CurrentKeybind = "Y",
    HoldToInteract = false,
    Flag = "Keybind1", 
    Callback = function(Keybind)
        if shouldTeleportToGunDrop() then
            local gundrop = Workspace:FindFirstChild("GunDrop")
            if gundrop then
                local player = game.Players.LocalPlayer
                local RootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if RootPart then
                    local lastCFrame = RootPart.CFrame
                    
                    pcall(function()
                        repeat
                            RootPart.CFrame = gundrop.CFrame
                            game:GetService("RunService").Stepped:Wait()
                        until not gundrop:IsDescendantOf(Workspace)

                        -- Re-obtain RootPart here, as it may have changed or been destroyed
                        RootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                        if RootPart then
                            RootPart.CFrame = lastCFrame
                        else
                            print("HumanoidRootPart does not exist or has been destroyed.")
                        end
                    end)
                else
                    print("HumanoidRootPart does not exist. Cannot perform the teleportation.")
                end
            end
        end
    end
})

local function autoGetGun()
    while getgenv().AutoGetGun do
        task.wait()
        if shouldTeleportToGunDrop() then
            local gundrop = Workspace:FindFirstChild("GunDrop")
            if gundrop then
                local RootPart = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
                if RootPart then
                    pcall(function()
                        -- Check if GunDrop still exists and the toggle is still on
                        while gundrop:IsDescendantOf(Workspace) and getgenv().AutoGetGun do
                            RootPart.CFrame = gundrop.CFrame
                            RunService.Stepped:Wait()
                        end
                    end)
                end
            end
        end
    end
end

local ToggleAutoGetGun = MiscTab:CreateToggle({
    Name = "Auto Grab Gun",
    CurrentValue = false,
    Flag = "ToggleAutoGetGun",
    Callback = function(Value)
        getgenv().AutoGetGun = Value
        if Value then
            autoGetGun()
        end
    end,
})

getgenv().maxPlayerDistance = 20 -- Maximum distance a player can be to prevent teleporting to the GunDrop

local Slider = MiscTab:CreateSlider({
   Name = "Grab Gun Max Distance",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Studs",
   CurrentValue = getgenv().maxPlayerDistance,
   Flag = "SliderMaxPlayerDistance",
   Callback = function(Value)
       getgenv().maxPlayerDistance = Value
   end,
})


-- Find a player who is carrying a tool named "Knife"
local function findKnifeWieldingPlayer()
    for _, player in ipairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character then
            for _, tool in ipairs(character:GetChildren()) do
                if tool:IsA('Tool') and tool.Name == 'Knife' then
                    return player
                end
            end
        end
    end
    return nil
end

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

-- Variables
local SpectatingPlayer
getgenv().SpectateWithKnife = false

-- Function to check if a player is holding or has a Knife in their Backpack
local function IsHoldingKnife(player)
    if player.Character then
        for _, item in pairs(player.Character:GetChildren()) do
            if item:IsA("Tool") and item.Name == "Knife" then
                return true
            end
        end
    end

    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "Knife" then
            return true
        end
    end

    return false
end

-- Function to update who we are spectating
local function UpdateSpectating()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and IsHoldingKnife(player) then
            SpectatingPlayer = player
            return
        end
    end
    SpectatingPlayer = nil
end

-- Connect a function to RunService's Heartbeat event
RunService.Heartbeat:Connect(function()
    -- If spectate toggle is enabled
    if getgenv().SpectateWithKnife then
        -- Update who we are spectating
        UpdateSpectating()

        -- If we found a player to spectate, change the camera's focus
        if SpectatingPlayer and SpectatingPlayer.Character then
            CurrentCamera.CameraSubject = SpectatingPlayer.Character:FindFirstChildOfClass('Humanoid')
        else
            CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        end
    end
end)

-- Add toggle to your PlayerTab
local Toggle = MiscTab:CreateToggle({
    Name = "View Murderer",
    CurrentValue = getgenv().SpectateWithKnife,
    Flag = "viewmurder",
    Callback = function(value)
        getgenv().SpectateWithKnife = value
    end,
})

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

-- Variables
local SpectatingPlayer
getgenv().SpectateWithGun = false

-- Function to check if a player is holding or has a Gun in their Backpack
local function IsHoldingGun(player)
    if player.Character then
        for _, item in pairs(player.Character:GetChildren()) do
            if item:IsA("Tool") and item.Name == "Gun" then
                return true
            end
        end
    end

    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "Gun" then
            return true
        end
    end

    return false
end

-- Function to update who we are spectating
local function UpdateSpectating()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and IsHoldingGun(player) then
            SpectatingPlayer = player
            return
        end
    end
    SpectatingPlayer = nil
end

-- Connect a function to RunService's Heartbeat event
RunService.Heartbeat:Connect(function()
    -- If spectate toggle is enabled
    if getgenv().SpectateWithGun then
        -- Update who we are spectating
        UpdateSpectating()

        -- If we found a player to spectate, change the camera's focus
        if SpectatingPlayer and SpectatingPlayer.Character then
            CurrentCamera.CameraSubject = SpectatingPlayer.Character:FindFirstChildOfClass('Humanoid')
        else
            CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        end
    end
end)

-- Add toggle to your PlayerTab
local Toggle = MiscTab:CreateToggle({
    Name = "View Sheriff",
    CurrentValue = getgenv().SpectateWithGun,
    Flag = "viewsheriff",
    Callback = function(value)
        getgenv().SpectateWithGun = value
    end,
})




local Button = MiscTab:CreateButton({
    Name = "Notify Roles",
    Callback = function()
         local knifeUserFound = false
         local gunUserFound = false
         for i, player in ipairs(game.Players:GetPlayers()) do
             if player.Backpack:FindFirstChild("Knife") then
                 knifeUserFound = true
                 Rayfield:Notify({
                     Title = "Notification",
                     Content = player.Name .. " has a Knife!",
                     Duration = 6.5,
                     Image = 5578470911,
                     Actions = {
                         Ignore = {
                             Name = "Okay!",
                             Callback = function()
                                 print(player.Name .. " has a Knife!")
                             end
                         },
                     },
                 })
             end
             if player.Backpack:FindFirstChild("Gun") then
                 gunUserFound = true
                 Rayfield:Notify({
                     Title = "Notification",
                     Content = player.Name .. " has a Gun!",
                     Duration = 6.5,
                     Image = 5578470911,
                     Actions = {
                         Ignore = {
                             Name = "Okay!",
                             Callback = function()
                                 print(player.Name .. " has a Gun!")
                             end
                         },
                     },
                 })
             end
         end
         if not knifeUserFound and not gunUserFound then
             Rayfield:Notify({
                 Title = "Notification",
                 Content = "The game hasn't started. Please wait.",
                 Duration = 6.5,
                 Image = 5578470911,
                 Actions = {
                     Ignore = {
                         Name = "Okay!",
                         Callback = function()
                             print("The game hasn't started. Please wait.")
                         end
                     },
                 },
             })
         end
    end,
 })

 local Section = MiscTab:CreateSection("⚙️ Extra")

 local Button = MiscTab:CreateButton({
    Name = "Regoin Server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        
        Rayfield:Notify({
           Title = "Rejoining Server",
           Content = "Attempting to rejoin the current server...",
           Duration = 3,
           Image = 4483362458,
           Actions = {
              Ignore = {
                 Name = "Okay!",
                 Callback = function()
                    print("The user acknowledged rejoin attempt")
                 end
              },
           },
        })
        
        wait(1)
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
        

    end,
})

local Button = MiscTab:CreateButton({
    Name = "Switch Server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Rayfield:Notify({
   Title = "Switching Servers",
   Content = "Attempting to switch to a new server...",
   Duration = 3,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user acknowledged server switch attempt")
         end
      },
   },
})

wait(1)
TeleportService:Teleport(game.PlaceId, LocalPlayer)

    end,
})

Rayfield:LoadConfiguration()