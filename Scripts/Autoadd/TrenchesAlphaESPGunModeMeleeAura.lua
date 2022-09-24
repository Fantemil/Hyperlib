--//Declarations
local SilentAim = {
    Enabled = false,
    FOV = false,
    FOVSize = 100,
    Accuracy = 100,
    Target = "Head"
}
local players = game:GetService("Players")
local plr = players.LocalPlayer
local mouse = plr:GetMouse()
local camera = game.Workspace.CurrentCamera


local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(0, 0)
FOVCircle.Radius = 100
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Thickness = 1
FOVCircle.Filled = false
FOVCircle.Visible = false
FOVCircle.Transparency = 1
FOVCircle.NumSides = 50

--//ESP
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Anomaly-hub/Anomalies-Scripts/main/kiriots%20esp", true))()
ESP.Players = true
ESP.Tracers = false
ESP.Boxes = true
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Libraries/Jan's%20UI%20Copy.lua", true))();
local window = Lib:CreateWindow("Trenches - Alpha", Vector2.new(492, 440), Enum.KeyCode.RightShift)

local Main = window:CreateTab("Main")
local MS = Main:CreateSector("Silent Aim", "left")

MS:AddToggle("Enabled", SilentAim.Enabled, function(state)
    SilentAim.Enabled = state
end)

MS:AddSlider("Accuracy", 1, 100, 100, 1, function(s)
    SilentAim.Accuracy = s
end)

local bodyParts = {"Head", "HumanoidRootPart"}
MS:AddDropdown("Target", {"Random", "Head", "HumanoidRootPart"}, "Random", false, function(selected)
    SilentAim.Target = selected
end)

MS:AddToggle("FOV Circle", false, function(s)
    SilentAim.FOV = s
    FOVCircle.Visible = s
end)

MS:AddSlider("Size", 10, 100, 500, 1, function(v)
    FOVCircle.Radius = v
    SilentAim.FOVSize = v
end)

function updateFOV()
    FOVCircle.Position = Vector2.new(mouse.X, mouse.Y+36)
end

MS:AddButton("Mod Guns", function()
    for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA("NumberValue") then
            if v.Name == "FireRate" then
                v.Value = 0.01
            elseif v.Name == "ReloadingTime" then
                v.Value = 0.01
            elseif v.Name == "Spread" then
                v.Value = 0
            elseif v.Name == "CameraShake" then
                v.Value = false
            end
        end
    end
end)

local AuraDist = 6
MS:AddSlider("Melee Aura Distance", 1,6,6,1, function(s)
    AuraDist = s
end)

local Meele = false
MS:AddToggle("Melee Aura", false, function(s)
    Meele = s 
    while s and Meele and wait() do
        local plr = game.Players.LocalPlayer
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Name ~= plr.Name and v.TeamColor ~= plr.TeamColor then
                print("Sh")
                local check = (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if check <= AuraDist then
                    print("SH")
                    game:GetService("ReplicatedStorage").MeleeEvent:FireServer(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"))
                end
            end
        end
    end
end)
MS:AddLabel("Created by Anomaly#2000")

local ES = Main:CreateSector("ESP", "right")
ES:AddToggle("Enabled", false, function(s)
    ESP:Toggle(s)
end)

ES:AddToggle("Boxes", true, function(s)
    ESP.Boxes = s
end)

ES:AddToggle("Tracers", false, function(s)
    ESP.Tracers = s
end)

ES:AddToggle("Names", true, function(s)
    ESP.Names = s
end)

local GPS = Main:CreateSector("Gameplay", "left")
GPS:AddButton("Faster Building", function()
    game.Players.LocalPlayer.Backpack:FindFirstChild("Build"):FindFirstChild("BuildMain"):FindFirstChild("Variables"):FindFirstChild("WorkDelay").Value = 0.01
end)

local BuildAura = false
local work = function()
    local dist = math.huge
    local targ
    local lPlr = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    for _,v in pairs(game:GetService("Workspace"):FindFirstChild("Structures"):GetChildren()) do
        if string.find(v.Name, "Construction") then
            local check = (v:FindFirstChildWhichIsA("Part").Position - lPlr).Magnitude
            if check < dist then
                targ = v 
                dist = check
            end
        end
    end
    if targ then
        game:GetService("Players").LocalPlayer.Character.Build.Work:FireServer(targ)
    end
end
GPS:AddToggle("Construct Aura", false, function(s)
    BuildAura = s
    if BuildAura then
        while wait(0.2) and BuildAura do
            local buildChar = game.Players.LocalPlayer.Character
            if buildChar then
                if buildChar:FindFirstChild("Build") then
                    work()
                end
            end
        end
    end
end)

local Lag = false
GPS:AddToggle("Lag Server", false, function(s)
    Lag = s
    while wait(1) and Lag do
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character then
                for s,y in pairs(v.Character:GetDescendants()) do
                    pcall(function()
                        game:GetService("ReplicatedStorage").VisualizeStar:FireServer(v.Character:FindFirstChild("Head"), true)
                    end)
                end
            end
        end
    end
end)

GPS:AddLabel("This will lag you more")
GPS:AddLabel("than it does others")




local MiS = Main:CreateSector("Misc", "right")
MiS:AddButton("Join Discord", function()
    local request = request or http_request or (syn and syn.request)
    if not request then return end
    local start = 6463
    local invCode = 'ceE7jGFgkg'
    for i = start-10, start+1 do
        spawn(function()
            pcall(function()
                request({Url = "http://127.0.0.1:"..tostring(i).."/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({["cmd"] = "INVITE_BROWSER",["nonce"] = game:GetService("HttpService"):GenerateGUID(false),["args"] = {["invite"] = {["code"] = invCode,},["code"] = invCode}})})
            end)
        end)
    end
end)

MiS:AddButton("Copy Invite", function()
    setclipboard("https://discord.gg/ceE7jGFgkg")
end)

MiS:AddButton("ServerHop", function()
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
        end
    end
    if #x > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
        print("Serverhop failed")
    end
end)

MiS:AddButton("Rejoin", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MiS:AddButton("Fullbright", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/External/fullbright.lua", true))()
end)

MiS:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function(v) window.hidebutton = v end, function()end)





--//Silent Aim
local function ClosestPlayerToMouse()
    local target = nil
    local dist = math.huge
    for i,v in pairs(players:GetPlayers()) do
        if v.Name ~= plr.Name then
            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.TeamColor ~= plr.TeamColor then
                local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
                if check < dist then
                    if SilentAim.FOV then
                        if check <= SilentAim.FOVSize then
                            target  = v
                            dist = check
                        end
                    else
                        target = v
                        dist = check
                    end
                end
            end
        end
    end
    return target 
end

local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)

local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if tostring(self) == "ShootEvent" and method == "FireServer" then
        local player = ClosestPlayerToMouse()
        if player and SilentAim.Enabled and SilentAim.Accuracy >= math.random(1,100) then
            local targ
            if SilentAim.Target == "Random" then
                targ = bodyParts[math.random(1,2)]
            else 
                targ = SilentAim.Target
            end
            args[5] = player.Character[targ]
            args[6] = player.Character[targ].Position
        end
        return self.FireServer(self, unpack(args))
    end 
return OldNamecall(self, ...)
end)

game:GetService("RunService").Heartbeat:Connect(updateFOV)