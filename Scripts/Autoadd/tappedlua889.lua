-- // tapped.lua | steroids for da hood -- \\

local Settings = {
    AimLock = {
        Enabled = true,
        Aimlockkey = "q",
        Prediction = 0.1229,
        Aimpart = 'HumanoidRootPart',
        Notifications = true, --change to true if u  want notifs//
        AutoPrediction = true,
    },
    Settings = {
        Thickness = 2,
        Transparency = 1,
        Color = Color3.fromRGB(106, 13, 173),
        FOV = true
    }
}

-- // DONT EDIT ANYTHING UNDER THIS \\ --
plr = game:GetService('Players').LocalPlayer

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();

local Notify = AkaliNotif.Notify;

Notify({
Description = "Loading..";
Title = "tap.lua";
Duration = 0.9;
});
wait(1)
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();

local Notify = AkaliNotif.Notify;

Notify({
Description = "Loaded! Prediction: "..  Settings.AimLock.Prediction;"Ping: "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
Title = "tap.lua";
Duration = 2.5;
});

Notify({
Description = "Ping: "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
Title = "tap.lua";
Duration = 2.5;
});



local CurrentCamera = game:GetService("Workspace").CurrentCamera
local Inset = game:GetService("GuiService"):GetGuiInset().Y
local RunService = game:GetService("RunService")

local Mouse = game.Players.LocalPlayer:GetMouse()
local LocalPlayer = game.Players.LocalPlayer

local Line = Drawing.new("Line")
local Circle = Drawing.new("Circle")

local Plr

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (Settings.AimLock.Aimlockkey) then
        if Settings.AimLock.Enabled == true then
            Settings.AimLock.Enabled = false
            if Settings.AimLock.Notifications == true then
                Plr = FindClosestPlayer()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();

local Notify = AkaliNotif.Notify;

Notify({
Description = "Unlocked";
Title = "tap.lua";
Duration = 0.5;
});

            end
        else
            Plr = FindClosestPlayer()
            Settings.AimLock.Enabled = true
            if Settings.AimLock.Notifications == true then
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();

local Notify = AkaliNotif.Notify;

Notify({
Description = "Locked on:"..tostring(Plr.Character.Humanoid.DisplayName);
Title = "tap.lua";
Duration = 0.5;
});

            end
        end
    end
end)

function FindClosestPlayer()
    local ClosestDistance, ClosestPlayer = math.huge, nil;
    for _, Player in next, game:GetService("Players"):GetPlayers() do
        local ISNTKNOCKED = Player.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart
                                                                                             .Position)
                if IsVisibleOnViewPort then
                    local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end

RunService.Heartbeat:connect(function()
    if Settings.AimLock.Enabled == true then
        local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position +
                                                              (Plr.Character[Settings.AimLock.Aimpart].Velocity *
                                                              Settings.AimLock.Prediction))
        Line.Color = Settings.Settings.Color
        Line.Transparency = Settings.Settings .Transparency
        Line.Thickness = Settings.Settings .Thickness
        Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Line.To = Vector2.new(Vector.X, Vector.Y)
        Line.Visible = true
        Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Circle.Visible = Settings.Settings.FOV
        Circle.Thickness = 1.5
        Circle.Thickness = 2
        Circle.Radius = 60
        Circle.Color = Settings.Settings.Color
    elseif Settings.AimLock.FOV == true then
        Circle.Visible = true
    else
        Circle.Visible = false
        Line.Visible = false
    end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character[Settings.AimLock.Aimpart].Position +
                      (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)

        return old(unpack(args))
    end
    return old(...)

      
end)

            if Settings.AimLock.AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
Settings.AimLock.Prediction = 0.151
        elseif ping < 120 then
Settings.AimLock.Prediction = 0.149
        elseif ping < 110 then
Settings.AimLock.Prediction = 0.146
        elseif ping < 105 then
Settings.AimLock.Prediction = 0.138
        elseif ping < 90 then
Settings.AimLock.Prediction = 0.136
        elseif ping < 80 then
Settings.AimLock.Prediction = 0.134
        elseif ping < 70 then
Settings.AimLock.Prediction = 0.131
        elseif ping < 60 then
Settings.AimLock.Predictionn = 0.1229
        elseif ping < 50 then
Settings.AimLock.Prediction = 0.1225
        elseif ping < 40 then
Settings.AimLock.Prediction = 0.1256
        end
            end