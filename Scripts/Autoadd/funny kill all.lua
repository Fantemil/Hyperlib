local plr = game:GetService'Players'.LocalPlayer; local plrs = plr.Parent

local KillAll, PushDist, PushNearby, ThrowClosestPropAtClosestPlayer, CurrentProp, kwprop, KillTarget, ksp, kspprop = false, 50, false, ThrowClosestPropAtClosestPlayer, nil, false, {}, false, false

local function GetPlayerHead(plr)
    for i, v in pairs(plr:GetChildren()) do
        if v:IsA('BasePart') then 
            if v.Name == 'Head' then
                return v
            end
        end
    end
end

local function GetClosestPlayer(range)
    local currentClosest = {}

    for i, v in next, plrs:GetPlayers() do
        if v ~= plr and plr.Character:FindFirstChild'Head' ~= nil and v.Character ~= nil then
            --if v.Team ~= plr.Team then
                local RootPart = GetPlayerHead(v.Character)
                if RootPart ~= nil then
                    pcall(function()
                        if RootPart ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                        if RootPart ~= nil and currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                    end)
                end
            --end
        end
    end

    return currentClosest
end

local function GetClosestPlayerFromTable(range, tbl)
    local currentClosest = {}

    for i,x  in next, tbl do
        local v = plrs[x]
        if v ~= plr and plr.Character:FindFirstChild'Head' ~= nil and v.Character ~= nil then
            --if v.Team ~= plr.Team then
                local RootPart = GetPlayerHead(v.Character)
                if RootPart ~= nil then
                    pcall(function()
                        if RootPart ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                        if RootPart ~= nil and currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance and not v.Character.Protection.Value then
                            currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                            currentClosest.instance = v
                        end
                    end)
                end
            --end
        end
    end

    return currentClosest
end

local function GetClosestProp(range)
    local currentClosest = {}

    for i, v in next, workspace.Furniture:GetDescendants() do
        if v.Parent.Name == "Chairs" or v.Parent.Name == "Throwable" then
            --if v.Team ~= plr.Team then
            --pcall(function()
                local RootPart = v:FindFirstChildOfClass("Part")
                if (plr.Character.Head.Position - RootPart.Position).Magnitude < range and not currentClosest.distance then
                    currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                    currentClosest.instance = v
                end
                if currentClosest.distance ~= nil and (plr.Character.Head.Position - RootPart.Position).Magnitude < currentClosest.distance then
                    currentClosest.distance = (plr.Character.Head.Position - RootPart.Position).Magnitude
                    currentClosest.instance = v
                end
            --end)
            --end
        end
    end

    return currentClosest
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/venus/source.lua", true))()

local main = library:Load({Name = "Xylite", Theme = "Dark", SizeX = 500, SizeY = 500, ColorOverrides = {
    MainFrame = Color3.fromRGB(82, 10, 124),
    TabBackground = Color3.fromRGB(68, 21, 122),
    TabToggleDisabled = Color3.fromRGB(55, 2, 136),
    ButtonMouseOver = Color3.fromRGB(151, 54, 180),
    ToggleEnabled = Color3.fromRGB(181, 84, 210),
    ToggleEnabledMouseOver = Color3.fromRGB(151, 54, 180),
    SliderMouseOver = Color3.fromRGB(130, 94, 185),
    SliderFill = Color3.fromRGB(74, 25, 148),
    SliderFillSliding = Color3.fromRGB(104, 55, 178),
    DropdownMouseOver = Color3.fromRGB(90, 68, 124),
    DropdownContent = Color3.fromRGB(70, 48, 104)
}})

local vTab = main:Tab('Remote Abusing')
local vSec = vTab:Section({Name = 'Main', column = 1})
--local experimental = main:Tab("Experimental")
--local experimentalt = experimental:Section({Name = "Main", column = 1})

local queueteleport = syn.queue_on_teleport or fluxus.queue_on_teleport or queue_on_teleport or nil

vSec:Toggle({Name = "Kill All", Callback = function(val)
    KillAll = val
end})

vSec:Toggle({Name = "Push All in Radius", Callback = function(val)
    PushNearby = val
end})

vSec:Slider({Name = "Push Radius", Min = 10, Max = 300, Default = 50, Callback = function(val)
    PushDist = val
end})

vSec:Toggle({Name = "Throw Nearby Prop At Nearby Player", Callback = function(val)
    ThrowClosestPropAtClosestPlayer = val
end})

vSec:Button({Name = "Drop Prop", Callback = function()
    if CurrentProp then
        local ohInstance1 = CurrentProp
        local ohString2 = "drop"
        local ohTable3 = {
            ["BreakGrip"] = false
        }

        game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
    end
end})

vSec:Toggle({Name = "Kill All with Props", Callback = function(val)
    kwprop = val
end})

vSec:Label("Players To Kill")

local PlayerDropdown = vSec:Dropdown({Default = "", Content = {}, MultiChoice = true, Callback = function(chosen)
    KillTarget = chosen
end})

vSec:Toggle({Name = "Kill Specified Players", Callback = function(val)
    ksp = val
end})

vSec:Toggle({Name = "Kill Specified Players with Props", Callback = function(val)
    kspprop = val
end})

vSec:Button({Name = "Clear Specified Players", Callback = function()
    PlayerDropdown:Set({})
    KillTarget = {}
end})

vSec:Button({Name = "Rejoin", Callback = function()
    if queueteleport then queueteleport('task.wait(5) loadstring(game:HttpGet("https://rawscripts.net/raw/Chaos-at-the-Bistro-funny-popular-no-antiche-game-10661"))()') end
    task.wait(1)
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId)
end})

if game:GetService("Workspace"):FindFirstChild("WorldLimit") then
    local WorldFallPrevention = Instance.new("Part", workspace)
    WorldFallPrevention.Position = game:GetService("Workspace"):FindFirstChild("WorldLimit").Position - Vector3.new(0, 20, 0)
    WorldFallPrevention.Anchored = true
    WorldFallPrevention.Size = Vector3.new(1000, 15, 1000)

    game:GetService("Workspace"):FindFirstChild("WorldLimit"):Destroy()
end

plrs.PlayerAdded:Connect(function(player)
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end

    local backup = KillTarget
    KillTarget = {}
    local exists = {}
    local new = {}

    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
    for _, v in next, backup do
        if players[v] then exists[v] = true table.insert(KillTarget, v) else exists[v] = false end
    end
    for i, v in next, exists do
        if v == true then table.insert(new, i) end
    end

    PlayerDropdown:Set(new)
end)

plrs.PlayerRemoving:Connect(function()
    task.wait(1)
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    local backup = KillTarget
    KillTarget = {}
    local exists = {}
    local new = {}

    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
    for _, v in next, backup do
        if players[v] then exists[v] = true table.insert(KillTarget, v) else exists[v] = false end
    end
    for i, v in next, exists do
        if v == true then table.insert(new, i) end
    end

    PlayerDropdown:Set(new)
end)

do
    local players = game.Players:GetChildren()
    local PlayerList = {}

    for i,v in pairs(players) do
        table.insert(PlayerList,v.Name)
    end
    PlayerDropdown:Refresh(PlayerList)
    PlayerDropdown:Set({})
end

task.spawn(function()
    while task.wait(0.1) do
        if KillAll then
            workspace.Gravity = 0
            for _,v in next, plrs:GetPlayers() do
                pcall(function()
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        while v.Character.Humanoid.Health > 0 do
                            task.wait(0.1)
                            workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                            workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                            workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohString1 = "right"

                            game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohInstance1 = v.Character.Torso
                            local ohString2 = "player"
                            local ohNumber3 = 1

                            game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if ksp and KillTarget[1] then
            workspace.Gravity = 0
            for _,pl in next, KillTarget do
                pcall(function()
                    local v = plrs[pl]
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        while v.Character.Humanoid.Health > 0 do
                            task.wait(0.1)
                            workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                            workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                            workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohString1 = "right"

                            game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                            local ohInstance1 = v.Character.Torso
                            local ohString2 = "player"
                            local ohNumber3 = 1

                            game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)

task.spawn(function()
    while game:GetService"RunService".RenderStepped:Wait() do
        if PushNearby then
            local closest = GetClosestPlayer(PushDist)
            if closest.distance then
                local ohString1 = "push"
                game:GetService("ReplicatedStorage").Events.Swing:FireServer(ohString1)
                local ohInstance1 = closest.instance.Character.Torso
                local ohString2 = "push"
                local ohNumber3 = 1
                game:GetService("ReplicatedStorage").Events.Hit:FireServer(ohInstance1, ohString2, ohNumber3)
            end
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if ThrowClosestPropAtClosestPlayer then
            local ClosestProp, ClosestPlayer = GetClosestProp(25), GetClosestPlayer(25)
            if ClosestProp.instance and ClosestPlayer.instance then
                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                CurrentProp = ClosestProp.instance
                local ohInstance1 = ClosestProp.instance
                local ohString2 = "pickup"

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)
                
                task.wait(0.5)

                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                local ohInstance1 = ClosestProp.instance
                local ohString2 = "throw"

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)

                task.wait(0.25)

                local ohInstance1 = ClosestProp.instance
                local ohString2 = "hit"
                local ohTable3 = {
                    ["Hit"] = ClosestPlayer.instance.Character,
                    ["Life"] = 0
                }

                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
            
            end
        end
    end
end)

task.spawn(function()
    while task.wait(0.2) do
        if kspprop and KillTarget[1] then
            workspace.Gravity = 0
            for _,pl in next, KillTarget do
                pcall(function()
                    local v = plrs[pl]
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        local ClosestProp = GetClosestProp(500)
                        if ClosestProp.instance then
                            while v.Character.Humanoid.Health > 0 do
                                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                                workspace[plr.Name].HumanoidRootPart.CFrame = ClosestProp.instance:FindFirstChildOfClass("Part").CFrame + (Vector3.new(0, -4.5, 0))
                                workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                                workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                                task.wait(0.1)
                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "pickup"

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)
                                
                                task.wait(0.1)

                                workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                                workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                                workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero

                                task.wait(0.1)

                                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "throw"

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)

                                task.wait(0.1)

                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "hit"
                                local ohTable3 = {
                                    ["Hit"] = v.Character,
                                    ["Life"] = 0
                                }

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
                            end
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)

task.spawn(function()
    while task.wait(0.2) do
        if kwprop then
            workspace.Gravity = 0
            for _,v in next, plrs:GetPlayers() do
                pcall(function()
                    if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr and not v.Character.Protection.Value then
                        local ClosestProp = GetClosestProp(500)
                        if ClosestProp.instance then
                            while v.Character.Humanoid.Health > 0 do
                                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                                workspace[plr.Name].HumanoidRootPart.CFrame = ClosestProp.instance:FindFirstChildOfClass("Part").CFrame + (Vector3.new(0, -4.5, 0))
                                workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                                workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero
                                task.wait(0.1)
                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "pickup"

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)
                                
                                task.wait(0.1)

                                workspace[plr.Name].HumanoidRootPart.CFrame = v.Character.Torso.CFrame + (Vector3.new(0, -4.5, 0))
                                workspace[plr.Name].PrimaryPart.AssemblyLinearVelocity  = Vector3.zero
                                workspace[plr.Name].PrimaryPart.AssemblyAngularVelocity = Vector3.zero

                                task.wait(0.1)

                                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "throw"

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2)

                                task.wait(0.1)

                                local ohInstance1 = ClosestProp.instance
                                local ohString2 = "hit"
                                local ohTable3 = {
                                    ["Hit"] = v.Character,
                                    ["Life"] = 0
                                }

                                game:GetService("ReplicatedStorage").Events.PickUp:FireServer(ohInstance1, ohString2, ohTable3)
                            end
                        end
                    end
                end)
            end
        else
            workspace.Gravity = 192
        end
    end
end)