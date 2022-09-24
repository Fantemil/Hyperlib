--  services

local Players   = game:GetService("Players")
local CoreGui   = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local RunService    = game:GetService("RunService")
local HttpService   = game:GetService("HttpService")
local TweenService  = game:GetService("TweenService")
local ScriptContext = game:GetService("ScriptContext")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PathfindingService    = game:GetService("PathfindingService")

--  variables

local Map   = Workspace:WaitForChild("Map")
local NPCs  = Workspace:WaitForChild("NPCS")
local Player    = Players.LocalPlayer
local Gui   = Player:WaitForChild("PlayerGui")
local DungeonGui   = Gui:WaitForChild("DungeonClear")
local GameUI  = Gui:WaitForChild("GameUI"):WaitForChild("HUD"):WaitForChild("MainFrame")
local Mouse = Player:GetMouse()
local Stats    = Player:WaitForChild("stats")
local Remotes   = ReplicatedStorage:WaitForChild("Remotes")
local ItemData  = ReplicatedStorage:WaitForChild("ItemData")
local BowAttack   = Remotes.Action.BowAttack
local MeleeAttack   = Remotes.Action.MeleeAttack
local MagicAttack   = Remotes.Action.MagicAttack
local Projectiles   = Workspace:WaitForChild("Projectiles")
local IPDFunctions = require(ReplicatedStorage:WaitForChild("Modules").IPDFunctions)
local WeaponOneLast = tick()
local WeaponTwoLast = tick()
local WeaponOneRange    = 128
local WeaponTwoRange    = 128
local WeaponTypeOne = "Ranged"
local WeaponTypeTwo = "Ranged"
local ControlSettings  = ReplicatedStorage:WaitForChild("ControlSettings")
local forceLook = Mouse.Hit.Position
local headedTowards = Mouse.Hit.Position
local ItemTypes = {
    Melee   = {
        "Hammer",
        "Dagger",
        "Axe",
        "Spear",
        "Sword",
        "Rapier",
        "Polearm",
        "Greatsword",
        "Katana",
    },

    Bow = {
        "Bow",
        "Crossbow",
    },

    Staff   = {
        "Staff",
        "Wand",
        "Book",
    }
}
local finishedLevel = false
local nodeHolder    = Instance.new("Folder")
local mySettings    = {
    Mode  = "Walk",
    isFarming = true,
    showNodes   = true,
    killAura    = true,
    tweenSpeed  = 14,
    pathNodeGap = 4.2,
}
local SettingsController    = getsenv(Gui:WaitForChild("Settings").SettingsController)
local CreateDropdown    = SettingsController.CreateDropdown
local CreateToggle    = SettingsController.CreateToggle
local CreateSlider    = SettingsController.CreateSlider
local CreateDivider = SettingsController.CreateDivider
local possibleSettings  = Gui.Settings.SettingsFrame.Settings.Frame:GetChildren()
local myScale   = Gui:WaitForChild("UIScale").Value / 10
local uIScale   = 0

--  functions

for i,v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end
ScriptContext:SetTimeout(2)

local function createFakeSettings(type, name, value)
    local myValue   = Instance.new(type)
    myValue.Name    = name
    myValue.Value = value
    myValue.Parent    = Player

    local newLabel  = Instance.new("TextLabel")
    newLabel.Text   = tostring(value)
    newLabel.Name   = "Label"
    newLabel.Parent = myValue

    myValue:GetPropertyChangedSignal("Value"):Connect(function()
        mySettings[name]    = myValue.Value
    end)

    return myValue
end

pcall(function()
    CreateDivider("Scapters AutoFarm")
    for i,v in pairs(mySettings) do
        if type(v) == "boolean" then
            local realSetting   = createFakeSettings("BoolValue", i, v)
            CreateToggle(realSetting, i)
        elseif type(v) == "string" then
            local realSetting   = createFakeSettings("StringValue", i, v)
            CreateDropdown(realSetting, "Mode", {"Walk", "Tween", "SmartTween"}, 3)
        elseif type(v) == "number" then
            local realSetting   = createFakeSettings("IntValue", i, v)
            CreateSlider(realSetting, i, 0.01, 1, 16)
        end
    end

    possibleSettings    = Gui.Settings.SettingsFrame.Settings.Frame:GetChildren()
    for _,v in pairs(possibleSettings) do
        if v.Name ~= "UIPadding" then
            if v:FindFirstChild("Label") and (mySettings[v.Label.Text] ~= nil or v.Label.Text == "Scapters AutoFarm") then
                v.Position  =  v.Position+UDim2.new(0, 0, 0, 80 * 28)

                if v.Label.Text == "Mode" then
                    v.Frame.DropdownButton.Option:GetPropertyChangedSignal("Text"):Connect(function()
                        Player.Mode.Value   = v.Frame.DropdownButton.Option.Text
                    end)
                end
            end
            uIScale += 80
        end
    end
    Gui.Settings.SettingsFrame.Settings.Frame.CanvasSize    = UDim2.new(0, 0, 0, uIScale * myScale)
end)

nodeHolder.Name = "Nodes"
nodeHolder.Parent   = Map

local function getWeaponType()
    local myRemoteCalls = {}
    local toCheck   = {
        Stats.Equipped:FindFirstChild("Wep1"),
        Stats.Equipped:FindFirstChild("Wep2"),
    }

    for i,v in pairs(toCheck) do
        if v then
            local myBow = v and table.find(ItemTypes.Bow, v.ItemType.Value)
            local myStaff   = v and table.find(ItemTypes.Staff, v.ItemType.Value)
            local myMelee  = v and table.find(ItemTypes.Melee, v.ItemType.Value)
            local myWeapon  = myMelee or myStaff or myBow
            local myRemote  = myStaff and MagicAttack or myMelee and MeleeAttack or myBow and BowAttack
    
            if myWeapon and myRemote then
                local realItem  = ItemData[v.ItemType.Value][v.ItemID.Value]
                local myBoost   = IPDFunctions:GetBoostValue(Player.Character, "AttackSpeedBoost")
                local myTags = realItem:FindFirstChild("Tags")

                if myTags then
                    for q, c in pairs(myTags:GetChildren()) do
                        myBoost = myBoost + IPDFunctions:GetBoostValue(Player.Character, c.Name .. "AttackSpeedBoost")
                    end
                end

                local realSpeed = realItem:FindFirstChild("AttackSpeed") and realItem.AttackSpeed.Value or 1
                local attackSpeed   = 1 / (realSpeed * 1.03 ^ (v.Rarity.Value - realItem.BaseRarity.Value) * (1 + myBoost / 100))
                local weaponIndex   = v.Name:gsub("Wep", "")

                if tonumber(weaponIndex) == 1 and (myRemote == MagicAttack or myRemote == BowAttack) then
                    WeaponTypeOne   = "Ranged"
                elseif tonumber(weaponIndex) == 2 and (myRemote == MagicAttack or myRemote == BowAttack) then
                    WeaponTypeTwo   = "Ranged"
                end

                if realItem:FindFirstChild("Range") then
                    if tonumber(weaponIndex) == 1 then 
                        WeaponOneRange   = realItem.Range.Value+2.5
                    else 
                        WeaponTwoRange    = realItem.Range.Value+2.5
                    end
                end
                table.insert(myRemoteCalls, {myRemote, tonumber(weaponIndex), attackSpeed})
            end
        end
    end

    return myRemoteCalls
end

local function checkHumanoid(character)
    if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 and not character.Name:find("Watermelon") then
        return true
    end

    return false
end

local function getClosestEnemy(point)
    local closestEnemy  = nil
    local closestDistance   = math.huge

    for _,v in pairs(NPCs:GetChildren()) do
        if checkHumanoid(v) and checkHumanoid(Player.Character) then
            local theirDistance = (point-v.HumanoidRootPart.CFrame.Position).magnitude

            if theirDistance <= closestDistance then
                closestEnemy    = v.HumanoidRootPart
                closestDistance = theirDistance
            end
        end
    end

    return closestEnemy
end

local function buildCharacter(character)
    local myGyro    = character:WaitForChild("HumanoidRootPart"):WaitForChild("BodyGyro")
    local myTurn    = character:WaitForChild("BodyTurning"):WaitForChild("BodyTurning")
    myTurn  = getsenv(myTurn)

    repeat task.wait() until myTurn.GetMousePoint
    myTurn.GetMousePoint    = function() return forceLook end

    myGyro:GetPropertyChangedSignal("CFrame"):Connect(function()
        myGyro.CFrame   = CFrame.new(headedTowards)
    end)
end

local function flyTo(newMove)
    local moveSpeed = mySettings.tweenSpeed
    local flySpeed  = math.clamp((Player.Character.HumanoidRootPart.CFrame.Position-newMove).magnitude/moveSpeed, 0, 4)
    local flyTweenGlide  = TweenService:Create(Player.Character.HumanoidRootPart, TweenInfo.new(flySpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
        CFrame  = CFrame.new(newMove)
    })

    flyTweenGlide:Play()
    task.wait(flySpeed)
    flyTweenGlide:Destroy()
end

if Player.Character then
    buildCharacter(Player.Character)
end
Player.CharacterAdded:Connect(function(character)
    buildCharacter(character)
end)

Gui.ChildAdded:Connect(function(child)
    if child.Name == "GameUI" then
        GameUI  = Gui:WaitForChild("GameUI"):WaitForChild("HUD"):WaitForChild("MainFrame")
    end
end)

DungeonGui:WaitForChild("DungeonClearLabel"):GetPropertyChangedSignal("Visible"):Connect(function()
    if DungeonGui.DungeonClearLabel.Visible then
        Remotes.UI.EndDungeon.EndOfDungeonVote:FireServer("ReplayDungeon")
    end
end)

oldNamecall = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
    local myArgs    = {...}
    local callMethod    = getnamecallmethod()

    if callMethod == "FireServer" and self.Name == "UpdateMouseDirection" then
        myArgs[1]  = forceLook
    end
    return oldNamecall(self, unpack(myArgs))
end))

Player.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/ObscureScapter/Roblox/main/VTAF"))()]])
    end
end)

RunService.RenderStepped:Connect(function()
    if checkHumanoid(Player.Character) and mySettings.killAura then
        local myTargets = {
            Targets = {},
            Time    = tick(),
        }

        for _,v in pairs(NPCs:GetChildren()) do
            if checkHumanoid(v) then
                local distance  = (Player.Character.HumanoidRootPart.CFrame.Position-v.HumanoidRootPart.CFrame.Position).magnitude
                if distance <= WeaponOneRange or distance <= WeaponTwoRange then
                    table.insert(myTargets.Targets, {
                        KnockbackDirection  = Player.Character.HumanoidRootPart.CFrame.lookVector*-2,
                        TargetCharacter = v,
                    })
                end
            end
        end
        
        if Player.Character.Humanoid.Health <= Player.Character.Humanoid.MaxHealth/2 and GameUI:FindFirstChild("Item4") and not GameUI["Item4"].CooldownLabel.Visible then
            Remotes.Action.ActivateAbility:FireServer(6)
        end

        if #myTargets.Targets >= 1 then
            local myClosest = getClosestEnemy(Player.Character.HumanoidRootPart.CFrame.Position)
            forceLook   = myClosest and myClosest.Position or Mouse.Hit.Position
            local myRemotes = getWeaponType()

            if #myRemotes >= 1 then
                for _,v in pairs(myRemotes) do
                    if v[2] == 1 and tick()-WeaponOneLast >= v[3] or v[2] == 2 and tick()-WeaponTwoLast >= v[3] then
                        if v[2] == 1 then
                            WeaponOneLast   = tick()
                        else
                            WeaponTwoLast   = tick()
                        end
                        v[1]:FireServer(v[2], myTargets)

                        for _,v in pairs(GameUI:GetChildren()) do
                            if (v.Name:find("Item") and v.Name ~= "Item4" or v.Name:find("Skill")) and not v.CooldownLabel.Visible and v.Obj.Value then
                                local myItem    = v.Name:gsub("Item", ""):gsub("Skill", "")
                                myItem  = tonumber(myItem)

                                if v.Name:find("Item") then
                                    myItem  += 1
                                end
                                Remotes.Action.ActivateAbility:FireServer(myItem)
                            end
                        end
                    end
                end
            end
        end
    end
end)

local function drawPath(count, node)
    if not mySettings.showNodes then return end

    local myNode    = nodeHolder:FindFirstChild(count) or Instance.new("Part")
    myNode.Anchored = true
    myNode.CanCollide   = false
    myNode.Name = count
    myNode.Size = Vector3.new(1, 1, 1)
    myNode.CFrame   = CFrame.new(node.Position)*CFrame.new(0, 2.5, 0)
    myNode.Transparency = 0.75
    myNode.Material = "Neon"
    myNode.BrickColor   = BrickColor.Random()
    myNode.Parent   = nodeHolder
end

while RunService.RenderStepped:Wait() do
    pcall(function()
        if Player.Character:FindFirstChild("HumanoidRootPart") and mySettings.isFarming then
            local myTarget  = getClosestEnemy(Player.Character.HumanoidRootPart.CFrame.Position)

            if Projectiles:FindFirstChild("WaitingForPlayers") or Projectiles:FindFirstChild("BossWaitingForPlayers") or Map:FindFirstChild("LootChest") or Map:FindFirstChild("RaidLootChest") and not DungeonGui.LootContainer.Visible then
                myTarget    = Projectiles:FindFirstChild("WaitingForPlayers") and Projectiles["WaitingForPlayers"] or Projectiles:FindFirstChild("BossWaitingForPlayers") and Projectiles["BossWaitingForPlayers"] or Map:FindFirstChild("LootChest") and Map["LootChest"].PrimaryPart or Map["RaidLootChest"].PrimaryPart
            
                if myTarget and myTarget.Parent and (myTarget.Parent.Name == "LootChest" or myTarget.Parent.Name == "RaidLootChest") then
                    Remotes.UI.EndDungeon.EndOfDungeonVote:FireServer("ReplayDungeon")
                    repeat RunService.RenderStepped:Wait() until Projectiles:FindFirstChild("WaitingForPlayers")

                    myTarget    = Projectiles:FindFirstChild("WaitingForPlayers") and Projectiles["WaitingForPlayers"] or Projectiles:FindFirstChild("BossWaitingForPlayers") and Projectiles["BossWaitingForPlayers"] or Map:FindFirstChild("LootChest") and Map["LootChest"].PrimaryPart or Map["RaidLootChest"].PrimaryPart
                end
            end

            if myTarget and checkHumanoid(Player.Character) and myTarget.Parent then
                for _,v in pairs(Map:GetChildren()) do
                    if v.Name:find("Gate") then
                        v:Destroy()
                    end
                end

                for _,v in pairs(Map.Segments:GetDescendants()) do
                    if v:IsA("BasePart") and v.Transparency < 1 and (v.Parent.Name == "Balustrade1_Angled_Variant1" or v.Parent.Name == "Balustrade1_Straight_Variant2" or not v.Name:find("Wall") and not v.Name:find("Bricks") and not v.Name:find("Floor") and not v.Parent.Name:find("Floor") and not v.Name:lower():find("coin")) then
                        v.CanCollide    = false
                    end
                end

                if Map:FindFirstChild("Forcefield") then
                    for _,v in pairs(Map.Forcefield:GetChildren()) do
                        v:Destroy()
                    end
                end

                local myPath    = PathfindingService:CreatePath({
                    AgentRadius = 2,
                    AgentHeight = 4,
                    AgentCanJump = true,
                    WaypointSpacing = mySettings.pathNodeGap,
                })
                local originPath    = myTarget.CFrame.Position

                if myTarget.Parent:FindFirstChild("WaitingGiantSpider") then
                    originPath  = Vector3.new(originPath.X, Player.Character.HumanoidRootPart.CFrame.Y, originPath.Z)
                end
                --[[if WeaponTypeOne == "Ranged" or WeaponTypeTwo == "Ranged" then
                    local rayParams = RaycastParams.new()
                    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
                    rayParams.FilterDescendantsInstances = {Player.Character, myTarget.Parent, Projectiles, NPCs}
                    rayParams.IgnoreWater = true
                    
                    local endGoal   = myTarget.CFrame*CFrame.new(0, 0, -20).Position
                    local rayCast = Workspace:Raycast(originPath, (originPath-endGoal).unit*20, rayParams)

                    if rayCast and rayCast.Position then
                        originPath  = rayCast.Position
                    end
                end]]

                if mySettings.Mode:lower() == "walk" or mySettings.Mode:lower() == "smarttween" then
                    myPath:ComputeAsync(Player.Character.HumanoidRootPart.CFrame.Position, originPath)

                    if myPath.Status and myPath.Status == Enum.PathStatus.Success then
                        myPath  = myPath:GetWaypoints()

                        for _,v in pairs(nodeHolder:GetChildren()) do
                            if tonumber(v.Name) >= #myPath then
                                v.Transparency  = 1
                            elseif myPath[tonumber(v.Name)] then
                                drawPath(tonumber(v.Name), myPath[tonumber(v.Name)])
                            end
                        end

                        for i,v in pairs(myPath) do
                            if i > 1 then
                                drawPath(i, v)
                                local newMove   = v.Position+Vector3.new(0, 2.5, 0)
                                local attempts  = 0
                                local maxAttempts   = 18
                                local jumpDeb   = tick()
                                
                                if mySettings.Mode:lower() == "walk" then
                                    repeat
                                        task.wait(0.05)
                                        attempts    += 1

                                        if myPath[i+2] then
                                            headedTowards   = myPath[i+2].Position
                                        else
                                            headedTowards   = newMove
                                        end
                                        if (v.Action == Enum.PathWaypointAction.Jump or attempts >= math.floor(maxAttempts/1.25)) and tick()-jumpDeb >= 0.3 then
                                            jumpDeb = tick()
                                            Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                        Player.Character.Humanoid.MaxSlopeAngle = 89.9
                                        Player.Character.Humanoid:MoveTo(newMove)

                                        if not GameUI.Dash.CooldownLabel.Visible and math.random(1, 25) == 1 then
                                            Remotes.Action.ActivateAbility:FireServer(999)
                                        end
                                    until not mySettings.isFarming or attempts >= maxAttempts or (Player.Character.HumanoidRootPart.CFrame.Position-newMove).magnitude <= 3 or not myTarget or not myTarget.Parent or myTarget.Parent:FindFirstChild("Humanoid") and myTarget.Parent.Humanoid.Health <= 0 or (myTarget.CFrame.Position-originPath).magnitude >= 5
                                else
                                    flyTo(newMove)
                                end
                                
                                if not mySettings.isFarming or myTarget and myTarget.Parent and myTarget.Parent:FindFirstChild("Humanoid") and myTarget ~= getClosestEnemy(Player.Character.HumanoidRootPart.CFrame.Position) or not myTarget or not myTarget.Parent or myTarget.Parent:FindFirstChild("Humanoid") and myTarget.Parent.Humanoid.Health <= 0 or attempts >= maxAttempts or (myTarget.CFrame.Position-originPath).magnitude >= 5 or i >= 3 then
                                    break
                                end
                            end
                        end
                    end
                elseif Player.Character and Player.Character:FindFirstChild("Humanoid") and myTarget and myTarget.Parent then
                    if mySettings.Mode:lower() == "walk" then
                        Player.Character.Humanoid:MoveTo(myTarget.CFrame.Position)
                    else
                        flyTo(myTarget.CFrame.Position)
                    end
                end
            end
        end
    end)
end