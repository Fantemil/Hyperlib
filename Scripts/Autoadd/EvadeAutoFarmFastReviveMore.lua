local WorkspacePlayers = game:GetService("Workspace").Game.Players
local Players = game:GetService('Players')
local localplayer = Players.LocalPlayer

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/jans"))()
local Esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/kiriotesp"))()
Esp.Enabled = false
Esp.Tracers = false
Esp.Boxes = false

local Window = Library:CreateWindow("Evade 💀", Vector2.new(500, 300), Enum.KeyCode.RightShift)
local Evade = Window:CreateTab("General")
local Gamee = Window:CreateTab("Game")
local Configs = Window:CreateTab("Settings")

local EvadeSector = Evade:CreateSector("Character", "left")
local Visuals = Evade:CreateSector("Visuals", "right")
local Credits = Evade:CreateSector("Credits", "left")
local Farms = Evade:CreateSector("Farms", "right")

local Gamesec = Gamee:CreateSector("Utils", "right")
local World = Gamee:CreateSector("World", "left")

getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Downedplayeresp = false,
    AutoRespawn = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    DownedColor = Color3.fromRGB(255,0,0),
    PlayerColor = Color3.fromRGB(255,170,0),
}



local WalkSpeed = EvadeSector:AddSlider("Speed", 1450, 1450, 12000, 100, function(Value)
    Settings.Speed = Value
end)


local JumpPower = EvadeSector:AddSlider("JumpPower", 3, 3, 20, 1, function(Value)
    Settings.Jump = Value
end)


World:AddButton('Full Bright', function()
    Game.Lighting.Brightness = 4
 Game.Lighting.FogEnd = 100000
 Game.Lighting.GlobalShadows = false
    Game.Lighting.ClockTime = 12
end)

World:AddToggle('No Camera Shake', false, function(State)
    Settings.NoCameraShake = State
end)

Gamesec:AddToggle('Fast Revive', false, function(State)
    if State then
        workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", Settings.reviveTime)
    end
end)

EvadeSector:AddToggle('Auto Respawn', false, function(State)
    Settings.AutoRespawn = State
end)

EvadeSector:AddButton('Respawn',function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end)

Farms:AddToggle('Money Farm', false, function(State)
    Settings.moneyfarm = State
end)

Farms:AddToggle('Afk Farm', false, function(State)
    Settings.afkfarm = State
end)


Visuals:AddToggle('Enable Esp', false, function(State)
    Esp.Enabled = State
end)

Visuals:AddToggle('Bot Esp', false, function(State)
    Esp.NPCs = State
end)

Visuals:AddToggle('Downed Player Esp', false, function(State)
    Settings.Downedplayeresp = State
end)

Visuals:AddToggle('Boxes', false, function(State)
    Esp.Boxes = State
end)

Visuals:AddToggle('Tracers', false, function(State)
    Esp.Tracers = State
end)

Visuals:AddToggle('Players', false, function(State)
    Esp.Players = State
end)

Visuals:AddToggle('Distance', false, function(State)
    Esp.Distance = State
end)

Visuals:AddColorpicker("Player Color", Color3.fromRGB(255,170,0), function(Color)
    Settings.PlayerColor = Color
end)

Visuals:AddColorpicker("Downed Player Color", Color3.fromRGB(255,255,255), function(Color)
    Settings.DownedColor = Color
end)


Credits:AddLabel("Developed By xCLY And batusd")
Credits:AddLabel("UI Lib: Jans Lib")
Credits:AddLabel("ESP Lib: Kiriot")
Configs:CreateConfigSystem()

local FindAI = function()
    for _,v in pairs(WorkspacePlayers:GetChildren()) do
        if not Players:FindFirstChild(v.Name) then
            return v
        end
    end
end


local GetDownedPlr = function()
    for i,v in pairs(WorkspacePlayers:GetChildren()) do
        if v:GetAttribute("Downed") then
            return v
        end
    end
end

--Shitty Auto farm 🥶💀🤡💀🤡💀🤡
local revive = function()
    local downedplr = GetDownedPlr()
    if downedplr ~= nil and downedplr:FindFirstChild('HumanoidRootPart') then
        task.spawn(function()
            while task.wait() do
                if localplayer.Character then
                    workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
                    localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(downedplr:FindFirstChild('HumanoidRootPart').Position.X, downedplr:FindFirstChild('HumanoidRootPart').Position.Y + 3, downedplr:FindFirstChild('HumanoidRootPart').Position.Z)
                    task.wait()
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), false)
                    task.wait(4.5)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    break
                end
            end
        end)
    end
end

--Kiriot
Esp:AddObjectListener(WorkspacePlayers, {
    Color =  Color3.fromRGB(255,0,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild('HRP')
        while not hrp do
            wait()
            hrp = obj:FindFirstChild('HRP')
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    CustomName = function(obj)
        return '[AI] '..obj.Name
    end,
    IsEnabled = "NPCs",
})

--Tysm CJStylesOrg
Esp.Overrides.GetColor = function(char)
   local GetPlrFromChar = Esp:GetPlrFromChar(char)
   if GetPlrFromChar then
       if Settings.Downedplayeresp and GetPlrFromChar.Character:GetAttribute("Downed") then
           return Settings.DownedColor
       end
   end
   return Settings.PlayerColor
end

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))

task.spawn(function()
    while task.wait() do
        if Settings.AutoRespawn then
             if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
             end
        end

        if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
        end
        if Settings.moneyfarm then
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(3)
            else
                revive()
                task.wait(1)
            end
        end
        if Settings.moneyfarm == false and Settings.afkfarm and localplayer.Character:FindFirstChild('HumanoidRootPart') ~= nil then
            localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(6007, 7005, 8005)
        end
    end
end)

local GC = getconnections or get_signal_cons
 if GC then
  for i,v in pairs(GC(localplayer.Idled)) do
   if v["Disable"] then
    v["Disable"](v)
   elseif v["Disconnect"] then
    v["Disconnect"](v)
   end
  end
 else
  localplayer.Idled:Connect(function()
   local VirtualUser = game:GetService("VirtualUser")
   VirtualUser:CaptureController()
   VirtualUser:ClickButton2(Vector2.new())
  end)
 end
print("Infinite yield's Anti afk")