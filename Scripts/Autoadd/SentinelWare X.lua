--Enjoy SentinelWare X!
  local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("SentinelWare X", "Sentinel")
    
    -- MAIN
    local Main = Window:NewTab("Main")
    
    
    local MainSection = Main:NewSection("Aimbot")

    
    MainSection:NewButton("Aimbot", "ur already using esp now aimbot, are you really that bad bro", function()
local dwCamera = workspace.CurrentCamera
local dwRunService = game:GetService("RunService")
local dwUIS = game:GetService("UserInputService")
local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()

local settings = {
    Aimbot = true,
    Aiming = false,
    Aimbot_AimPart = "Head",
    Aimbot_TeamCheck = true,
    Aimbot_Draw_FOV = true,
    Aimbot_FOV_Radius = 200,
    Aimbot_FOV_Color = Color3.fromRGB(255,255,255)
}


dwUIS.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then
        settings.Aiming = true
    end
end)

dwUIS.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then
        settings.Aiming = false
    end
end)

dwRunService.RenderStepped:Connect(function()
    
    local dist = math.huge
    local closest_char = nil

    if settings.Aiming then

        for i,v in next, dwEntities:GetChildren() do 

            if v ~= dwLocalPlayer and
            v.Character and
            v.Character:FindFirstChild("HumanoidRootPart") and
            v.Character:FindFirstChild("Humanoid") and
            v.Character:FindFirstChild("Humanoid").Health > 0 then

                if settings.Aimbot_TeamCheck == true and
                v.Team ~= dwLocalPlayer.Team or
                settings.Aimbot_TeamCheck == false then

                    local char = v.Character
                    local char_part_pos, is_onscreen = dwCamera:WorldToViewportPoint(char[settings.Aimbot_AimPart].Position)

                    if is_onscreen then

                        local mag = (Vector2.new(dwMouse.X, dwMouse.Y) - Vector2.new(char_part_pos.X, char_part_pos.Y)).Magnitude

                        if mag < dist and mag < settings.Aimbot_FOV_Radius then

                            dist = mag
                            closest_char = char

                        end
                    end
                end
            end
        end

        if closest_char ~= nil and
        closest_char:FindFirstChild("HumanoidRootPart") and
        closest_char:FindFirstChild("Humanoid") and
        closest_char:FindFirstChild("Humanoid").Health > 0 then

            dwCamera.CFrame = CFrame.new(dwCamera.CFrame.Position, closest_char[settings.Aimbot_AimPart].Position)
        end
    end
end)
    end)
    
MainSection:NewSlider("Smoothness", "Change the aimbot smoothness", 8, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)

end)
    
        local MainSection = Main:NewSection("Fov Circle")

    MainSection:NewButton("Fov Circle", "Funny circol :>", function()
    -- // New version: See ./Aiming/SilentAim.lua

if getgenv().ValiantAimHacks then return getgenv().ValiantAimHacks end

-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

-- // Vars
local Heartbeat = RunService.Heartbeat
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- // Optimisation Vars (ugly)
local Drawingnew = Drawing.new
local Color3fromRGB = Color3.fromRGB
local Vector2new = Vector2.new
local GetGuiInset = GuiService.GetGuiInset
local Randomnew = Random.new
local mathfloor = math.floor
local CharacterAdded = LocalPlayer.CharacterAdded
local CharacterAddedWait = CharacterAdded.Wait
local WorldToViewportPoint = CurrentCamera.WorldToViewportPoint
local RaycastParamsnew = RaycastParams.new
local EnumRaycastFilterTypeBlacklist = Enum.RaycastFilterType.Blacklist
local Raycast = Workspace.Raycast
local GetPlayers = Players.GetPlayers
local Instancenew = Instance.new
local IsDescendantOf = Instancenew("Part").IsDescendantOf
local FindFirstChildWhichIsA = Instancenew("Part").FindFirstChildWhichIsA
local FindFirstChild = Instancenew("Part").FindFirstChild

-- // Silent Aim Vars
getgenv().ValiantAimHacks = {
    SilentAimEnabled = true,
    ShowFOV = true,
    FOVSides = 50,
    VisibleCheck = true,
    TeamCheck = true,
    FOV = 35,
    HitChance = 100,
    Selected = LocalPlayer,
    SelectedPart = nil,
    TargetPart = {"Head", "HumanoidRootPart"},
    BlacklistedTeams = {
        {
            Team = LocalPlayer.Team,
            TeamColor = LocalPlayer.TeamColor,
        },
    },
    BlacklistedPlayers = {LocalPlayer},
    WhitelistedPUIDs = {91318356},
}
local ValiantAimHacks = getgenv().ValiantAimHacks

-- // Show FOV
local circle = Drawingnew("Circle")
circle.Transparency = 1
circle.Thickness = 2
circle.Color = Color3fromRGB(255, 255, 255)
circle.Filled = false
function ValiantAimHacks.updateCircle()
    if (circle) then
        -- // Set Circle Properties
        circle.Visible = ValiantAimHacks.ShowFOV
        circle.Radius = (ValiantAimHacks.FOV * 3)
        circle.Position = Vector2new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
        circle.NumSides = ValiantAimHacks.FOVSides

        -- // Return circle
        return circle
    end
end

-- // Custom Functions
local calcChance = function(percentage)
    percentage = mathfloor(percentage)
    local chance = mathfloor(Randomnew().NextNumber(Randomnew(), 0, 1) * 100) / 100
    return chance <= percentage / 100
end

-- // Customisable Checking Functions: Is a part visible
function ValiantAimHacks.isPartVisible(Part, PartDescendant)
    -- // Vars
    local Character = LocalPlayer.Character or CharacterAddedWait(CharacterAdded)
    local Origin = CurrentCamera.CFrame.Position
    local _, OnScreen = WorldToViewportPoint(CurrentCamera, Part.Position)

    -- // If Part is on the screen
    if (OnScreen) then
        -- // Vars: Calculating if is visible
        local raycastParams = RaycastParamsnew()
        raycastParams.FilterType = EnumRaycastFilterTypeBlacklist
        raycastParams.FilterDescendantsInstances = {Character, CurrentCamera}

        local Result = Raycast(Workspace, Origin, Part.Position - Origin, raycastParams)
        if (Result) then
            local PartHit = Result.Instance
            local Visible = (not PartHit or IsDescendantOf(PartHit, PartDescendant))

            -- // Return
            return Visible
        end
    end

    -- // Return
    return false
end

-- // Check teams
function ValiantAimHacks.checkTeam(targetPlayerA, targetPlayerB)
    -- // If player is not on your team
    if (targetPlayerA.Team ~= targetPlayerB.Team) then

        -- // Check if team is blacklisted
        for i = 1, #ValiantAimHacks.BlacklistedTeams do
            local v = ValiantAimHacks.BlacklistedTeams

            if (targetPlayerA.Team ~= v.Team and targetPlayerA.TeamColor ~= v.TeamColor) then
                return true
            end
        end
    end

    -- // Return
    return false
end

-- // Check if player is blacklisted
function ValiantAimHacks.checkPlayer(targetPlayer)
    for i = 1, #ValiantAimHacks.BlacklistedPlayers do
        local v = ValiantAimHacks.BlacklistedPlayers[i]

        if (v ~= targetPlayer) then
            return true
        end
    end

    -- // Return
    return false
end

-- // Check if player is whitelisted
function ValiantAimHacks.checkWhitelisted(targetPlayer)
    for i = 1, #ValiantAimHacks.WhitelistedPUIDs do
        local v = ValiantAimHacks.WhitelistedPUIDs[i]

        if (targetPlayer.UserId == v) then
            return true
        end
    end

    -- // Return
    return false
end

-- // Blacklist player
function ValiantAimHacks.BlacklistPlayer(Player)
    local BlacklistedPlayers = ValiantAimHacks.BlacklistedPlayers

    -- // Find player in table
    for i = 1, #BlacklistedPlayers do
        local BlacklistedPlayer = BlacklistedPlayers[i]

        if (BlacklistedPlayer == Player) then
            return false
        end
    end

    -- // Blacklist player
    BlacklistedPlayers[#BlacklistedPlayers + 1] = Player
    return true
end

-- // Unblacklist Player
function ValiantAimHacks.UnblacklistPlayer(Player)
    local BlacklistedPlayers = ValiantAimHacks.BlacklistedPlayers

    -- // Find player in table
    for i = 1, #BlacklistedPlayers do
        local BlacklistedPlayer = BlacklistedPlayers[i]

        if (BlacklistedPlayer == Player) then
            table.remove(BlacklistedPlayer, i)
            return true
        end
    end

    -- //
    return false
end

-- // Whitelist player
function ValiantAimHacks.WhitelistPlayer(PlayerId)
    local WhitelistedPUIDs = ValiantAimHacks.WhitelistedPUIDs

    -- // Find player in table
    for i = 1, #WhitelistedPUIDs do
        local WhitelistedPUID = WhitelistedPUIDs[i]

        if (WhitelistedPUID == PlayerId) then
            return false
        end
    end

    -- // Whitelist player
    WhitelistedPUIDs[#WhitelistedPUIDs + 1] = PlayerId
    return true
end

-- // Unwhitelist Player
function ValiantAimHacks.UnwhitelistPlayer(PlayerId)
    local WhitelistedPUIDs = ValiantAimHacks.WhitelistedPUIDs

    -- // Find player in table
    for i = 1, #WhitelistedPUIDs do
        local WhitelistedPUID = WhitelistedPUIDs[i]

        if (WhitelistedPUID == PlayerId) then
            table.remove(WhitelistedPUID, i)
            return true
        end
    end

    -- //
    return false
end

-- // Get the Direction, Normal and Material
function ValiantAimHacks.findDirectionNormalMaterial(Origin, Destination, UnitMultiplier)
    if (typeof(Origin) == "Vector3" and typeof(Destination) == "Vector3") then
        -- // Handling
        if (not UnitMultiplier) then UnitMultiplier = 1 end

        -- // Vars
        local Direction = (Destination - Origin).Unit * UnitMultiplier
        local RaycastResult = Raycast(Workspace, Origin, Direction)

        if (RaycastResult ~= nil) then
            local Normal = RaycastResult.Normal
            local Material = RaycastResult.Material

            return Direction, Normal, Material
        end
    end

    -- // Return
    return nil
end

-- // Get Character
function ValiantAimHacks.getCharacter(Player)
    return Player.Character
end

-- // Check Health
function ValiantAimHacks.checkHealth(Player)
    local Character = ValiantAimHacks.getCharacter(Player)
    local Humanoid = FindFirstChildWhichIsA(Character, "Humanoid")

    local Health = (Humanoid and Humanoid.Health or 0)
    return Health > 0
end

-- // Check if silent aim can used
function ValiantAimHacks.checkSilentAim()
    return (ValiantAimHacks.SilentAimEnabled == true and ValiantAimHacks.Selected ~= LocalPlayer and ValiantAimHacks.SelectedPart ~= nil)
end

-- // Get Closest Target Part
function ValiantAimHacks.getClosestTargetPartToCursor(Character)
    local TargetParts = ValiantAimHacks.TargetPart

    -- // Vars
    local ClosestPart = nil
    local ClosestPartPosition = nil
    local ClosestPartOnScreen = false
    local ClosestPartMagnitudeFromMouse = nil
    local ShortestDistance = 1/0

    -- //
    local function checkTargetPart(TargetPartName)
        local TargetPart = FindFirstChild(Character, TargetPartName)

        if (TargetPart) then
            local PartPos, onScreen = WorldToViewportPoint(CurrentCamera, TargetPart.Position)
            local Magnitude = (Vector2new(PartPos.X, PartPos.Y) - Vector2new(Mouse.X, Mouse.Y)).Magnitude

            if (Magnitude < ShortestDistance) then
                ClosestPart = TargetPart
                ClosestPartPosition = PartPos
                ClosestPartOnScreen = onScreen
                ClosestPartMagnitudeFromMouse = Magnitude
                ShortestDistance = Magnitude
            end
        end
    end

    -- // String check
    if (typeof(TargetParts) == "string") then
        checkTargetPart(TargetParts)
    end

    -- // Loop through all target parts
    if (typeof(TargetParts) == "table") then
        for i = 1, #TargetParts do
            local TargetPartName = TargetParts[i]
            checkTargetPart(TargetPartName)
        end
    end

    -- //
    return ClosestPart, ClosestPartPosition, ClosestPartOnScreen, ClosestPartMagnitudeFromMouse
end

-- // Silent Aim Function
function ValiantAimHacks.getClosestPlayerToCursor()
    -- // Vars
    local TargetPart = nil
    local ClosestPlayer = nil
    local Chance = calcChance(ValiantAimHacks.HitChance)
    local ShortestDistance = 1/0

    -- // Chance
    if (not Chance) then
        ValiantAimHacks.Selected = LocalPlayer
        ValiantAimHacks.SelectedPart = nil

        return LocalPlayer
    end

    -- // Loop through all players
    local AllPlayers = GetPlayers(Players)
    for i = 1, #AllPlayers do
        local Player = AllPlayers[i]
        local Character = ValiantAimHacks.getCharacter(Player)

        if (not ValiantAimHacks.checkWhitelisted(Player) and ValiantAimHacks.checkPlayer(Player) and Character) then
            local TargetPartTemp, PartPos, onScreen, Magnitude = ValiantAimHacks.getClosestTargetPartToCursor(Character)

            if (TargetPartTemp and ValiantAimHacks.checkHealth(Player)) then
                -- // Team Check
                if (ValiantAimHacks.TeamCheck and not ValiantAimHacks.checkTeam(Player, LocalPlayer)) then continue end

                -- // Check if is in FOV
                if (circle.Radius > Magnitude and Magnitude < ShortestDistance) then
                    -- // Check if Visible
                    if (ValiantAimHacks.VisibleCheck and not ValiantAimHacks.isPartVisible(TargetPartTemp, Character)) then continue end

                    -- //
                    ClosestPlayer = Player
                    ShortestDistance = Magnitude
                    TargetPart = TargetPartTemp
                end
            end
        end
    end

    -- // End
    ValiantAimHacks.Selected = ClosestPlayer
    ValiantAimHacks.SelectedPart = TargetPart
end

-- // Heartbeat Function
Heartbeat:Connect(function()
    ValiantAimHacks.updateCircle()
    ValiantAimHacks.getClosestPlayerToCursor()
end)

return ValiantAimHacks

--[[
Examples:

--// Namecall Version // --
-- // Metatable Variables
local mt = getrawmetatable(game)
local backupindex = mt.__index
setreadonly(mt, false)

-- // Load Silent Aim
local ValiantAimHacks = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/Experimental%20Silent%20Aim%20Module.lua"))()

-- // Hook
mt.__namecall = newcclosure(function(...)
    -- // Vars
    local args = {...}
    local method = getnamecallmethod()

    -- // Checks
    if (method == "FireServer") then
        if (args[1].Name == "RemoteNameHere") then
            -- change args

            -- // Return changed arguments
            return backupnamecall(unpack(args))
        end
    end

    -- // Return
    return backupnamecall(...)
end)

-- // Revert Metatable readonly status
setreadonly(mt, true)

-- // Index Version // --
-- // Metatable Variables
local mt = getrawmetatable(game)
local backupindex = mt.__index
setreadonly(mt, false)

-- // Load Silent Aim
local ValiantAimHacks = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/Experimental%20Silent%20Aim%20Module.lua"))()

-- // Hook
mt.__index = newcclosure(function(t, k)
    -- // Check if it trying to get our mouse's hit or target
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target")) then
        -- // If we can use the silent aim
        if (ValiantAimHacks.checkSilentAim()) then
            -- // Vars
            local TargetPart = ValiantAimHacks.SelectedPart

            -- // Return modded val
            return (k == "Hit" and TargetPart.CFrame or TargetPart)
        end
    end

    -- // Return
    return backupindex(t, k)
end)

-- // Revert Metatable readonly status
setreadonly(mt, true)
]]
    end)
    
   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        local MainSection = Main:NewSection("Esp")
    
    
    MainSection:NewButton("Box Esp", "why u using esp nerd", function()
---Created By 0x83

local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(3000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(3000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(3000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(3000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        BoxOutline.Visible = false
                        Box.Visible = false
                    else
                        BoxOutline.Visible = true
                        Box.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)

---Created By 0x83
    end)
    
    MainSection:NewButton("Tracers", "Funni line thing :3", function()
        local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

_G.TeamCheck = true -- Use True or False to toggle TeamCheck

for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)
    end)
    
    
    
    

	local Settings = Window:NewTab("Gui")
    local SettingsSection = Settings:NewSection("Gui")


SettingsSection:NewKeybind("Gui", "Gui", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)