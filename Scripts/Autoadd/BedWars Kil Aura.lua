local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ICECREAMPROGAMER7473/githubfan3758329373475293859785728482/main/MainGuiLibary.lua"))()
local getasset = getsynasset or getcustomasset
local ScreenGuitwo = game:GetService("CoreGui").RektskyNotificationGui
local lplr = game:GetService("Players").LocalPlayer
local cam = game:GetService("Workspace").CurrentCamera
function runcode(func)
    func()
end

lib:CreateWindow()
local Tabs = {
    ["Combat"] = lib:CreateTab("Combat",Color3.fromRGB(252,80,68),"combat"),
    ["Blatant"] = lib:CreateTab("Blatant",Color3.fromRGB(255,148,36),"movement"),
    ["Render"] = lib:CreateTab("Render",Color3.fromRGB(59,170,222),"render"),
    ["Utility"] = lib:CreateTab("Utility",Color3.fromRGB(83,214,110),"player"),
    ["World"] = lib:CreateTab("World",Color3.fromRGB(52,28,228),"world"),
    ["Exploits"] = lib:CreateTab("Exploits",Color3.fromRGB(157,39,41),"exploit")
}
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local cam = game:GetService("Workspace").CurrentCamera
local uis = game:GetService("UserInputService")
function getremote(tab)
    for i,v in pairs(tab) do
        if v == "Client" then
            return tab[i + 1]
        end
    end
    return ""
end



local bedwars = {
    ["Projectile"] = Client:Get(getremote(debug.getconstants(debug.getupvalues(getmetatable(KnitClient.Controllers.ProjectileController)["launchProjectileWithValues"])[2]))),
 ["KnockbackTable"] = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
 ["CombatConstant"] = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant,
 ["SprintController"] = KnitClient.Controllers.SprintController,
 ["ShopItems"] = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop.getShopItem, 2),
 ["PickupRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.ItemDropController).checkForPickup)),
 ["DamageController"] = require(lplr.PlayerScripts.TS.controllers.global.damage["damage-controller"]).DamageController,
 ["DamageTypes"] = require(game:GetService("ReplicatedStorage").TS.damage["damage-type"]).DamageType,
    ["SwordRemote"] = getremote(debug.getconstants((KnitClient.Controllers.SwordController).attackEntity)),
    ["PingController"] = require(lplr.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,
    ["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
    ["ClientHandlerStore"] = require(lplr.PlayerScripts.TS.ui.store).ClientStore,
    ["SwordController"] = KnitClient.Controllers.SwordController,
    ["BlockCPSConstants"] = require(game:GetService("ReplicatedStorage").TS["shared-constants"]).CpsConstants,
    ["BalloonController"] = KnitClient.Controllers.BalloonController,
    ["ViewmodelController"] = KnitClient.Controllers.ViewmodelController,
}
function getQueueType()
    local state = bedwars["ClientHandlerStore"]:getState()
    return state.Game.queueType or "bedwars_test"
end
function CreateNotification(title,text,delay2)
    spawn(function()
        if ScreenGuitwo:FindFirstChild("Background") then ScreenGuitwo:FindFirstChild("Background"):Destroy() end
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 100, 0, 115)
        frame.Position = UDim2.new(0.5, 0, 0, -115)
        frame.BorderSizePixel = 0
        frame.AnchorPoint = Vector2.new(0.5, 0)
        frame.BackgroundTransparency = 0.5
        frame.BackgroundColor3 = Color3.new(0, 0, 0)
        frame.Name = "Background"
        frame.Parent = ScreenGuitwo
        local frameborder = Instance.new("Frame")
        frameborder.Size = UDim2.new(1, 0, 0, 8)
        frameborder.BorderSizePixel = 0
        frameborder.BackgroundColor3 = Color3.fromRGB(205, 64, 78)
        frameborder.Parent = frame
        local frametitle = Instance.new("TextLabel")
        frametitle.Font = Enum.Font.SourceSansLight
        frametitle.BackgroundTransparency = 1
        frametitle.Position = UDim2.new(0, 0, 0, 30)
        frametitle.TextColor3 = Color3.fromRGB(205, 64, 78)
        frametitle.Size = UDim2.new(1, 0, 0, 28)
        frametitle.Text = "          "..title
        frametitle.TextSize = 24
        frametitle.TextXAlignment = Enum.TextXAlignment.Left
        frametitle.TextYAlignment = Enum.TextYAlignment.Top
        frametitle.Parent = frame
        local frametext = Instance.new("TextLabel")
        frametext.Font = Enum.Font.SourceSansLight
        frametext.BackgroundTransparency = 1
        frametext.Position = UDim2.new(0, 0, 0, 68)
        frametext.TextColor3 = Color3.new(1, 1, 1)
        frametext.Size = UDim2.new(1, 0, 0, 28)
        frametext.Text = "          "..text
        frametext.TextSize = 24
        frametext.TextXAlignment = Enum.TextXAlignment.Left
        frametext.TextYAlignment = Enum.TextYAlignment.Top
        frametext.Parent = frame
        local textsize = game:GetService("TextService"):GetTextSize(frametitle.Text, frametitle.TextSize, frametitle.Font, Vector2.new(100000, 100000))
        local textsize2 = game:GetService("TextService"):GetTextSize(frametext.Text, frametext.TextSize, frametext.Font, Vector2.new(100000, 100000))
        if textsize2.X > textsize.X then textsize = textsize2 end
        frame.Size = UDim2.new(0, textsize.X + 38, 0, 115)
        pcall(function()
            frame:TweenPosition(UDim2.new(0.5, 0, 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.15)
            game:GetService("Debris"):AddItem(frame, delay2 + 0.15)
        end)
    end)
end
function IsAlive(plr)
    plr = plr or lplr
    if not plr.Character then return false end
    if not plr.Character:FindFirstChild("Head") then return false end
    if not plr.Character:FindFirstChild("Humanoid") then return false end
    if plr.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
    return true
end
function CanWalk(plr)
    plr = plr or lplr
    if not plr.Character then return false end
    if not plr.Character:FindFirstChild("Humanoid") then return false end
    local state = plr.Character:FindFirstChild("Humanoid"):GetState()
    if state == Enum.HumanoidStateType.Dead then
        return false
    end
    if state == Enum.HumanoidStateType.Ragdoll then
        return false
    end
    return true
end
function GetMatchState()
 return bedwars["ClientHandlerStore"]:getState().Game.matchState
end
 
runcode(function()
    local BedwarsSwords = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsSwords
    function hashFunc(vec) 
        return {value = vec}
    end
    local function GetInventory(plr)
        if not plr then 
            return {items = {}, armor = {}}
        end

        local suc, ret = pcall(function() 
            return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(plr)
        end)

        if not suc then 
            return {items = {}, armor = {}}
        end

        if plr.Character and plr.Character:FindFirstChild("InventoryFolder") then 
            local invFolder = plr.Character:FindFirstChild("InventoryFolder").Value
            if not invFolder then return ret end
            for i,v in next, ret do 
                for i2, v2 in next, v do 
                    if typeof(v2) == 'table' and v2.itemType then
                        v2.instance = invFolder:FindFirstChild(v2.itemType)
                    end
                end
                if typeof(v) == 'table' and v.itemType then
                    v.instance = invFolder:FindFirstChild(v.itemType)
                end
            end
        end

        return ret
    end
    local function getSword()
        local highest, returning = -9e9, nil
        for i,v in next, GetInventory(lplr).items do 
            local power = table.find(BedwarsSwords, v.itemType)
            if not power then continue end
            if power > highest then 
                returning = v
                highest = power
            end
        end
        return returning
    end
    local Anims = {
        ["Slow"] = {
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
        },
        ["Weird"] = {
            {CFrame = CFrame.new(0, 0, 1.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),Time = 0.25},
            {CFrame = CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),Time = 0.25},
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
        },
        ["Self"] = {
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(90)),Time = 0.25},
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
        },
        ["Butcher"] = {
            {CFrame = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)),Time = 0.3},
            {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.3}
        },
        ["VerticalSpin"] = {
   {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(8), math.rad(5)), Time = 0.25},
   {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180), math.rad(3), math.rad(13)), Time = 0.25},
   {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(-5), math.rad(8)), Time = 0.25},
   {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
  }
    }
    local VMAnim = false
    local HitRemote = Client:Get(bedwars["SwordRemote"])
    local origC0 = game:GetService("ReplicatedStorage").Assets.Viewmodel.RightHand.RightWrist.C0
    local DistVal = {["Value"] = 21}
    local Tick = {["Value"] = 0.03}
    local AttackAnim = {["Enabled"] = true}
    local CurrentAnim = {["Value"] = "Slow"}
    local Enabled = false
    local KillAura = Tabs["Combat"]:CreateToggle({
        ["Name"] = "Aura",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat task.wait() until GetMatchState() ~= 0
                    if not Enabled then return end
                    while task.wait(Tick["Value"]) do
                        if not Enabled then return end
                        for i,v in pairs(game:GetService("Players"):GetChildren()) do
                            if v.Team ~= lplr.Team and IsAlive(v) and IsAlive(lplr) and not v.Character:FindFirstChildOfClass("ForceField") then
                                local mag = (v.Character:FindFirstChild("HumanoidRootPart").Position - lplr.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                if mag < DistVal["Value"] then
                                    local sword = getSword()
                                    spawn(function()
                                        if AttackAnim["Enabled"] then
                                            local anim = Instance.new("Animation")
                                            anim.AnimationId = "rbxassetid://4947108314"
                                            local loader = lplr.Character:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                                            loader:LoadAnimation(anim):Play()
                                            if not VMAnim then
                                                VMAnim = true
                                                for i,v in pairs(Anims[CurrentAnim["Value"]]) do
                                                    game:GetService("TweenService"):Create(cam.Viewmodel.RightHand.RightWrist,TweenInfo.new(v.Time),{C0 = origC0 * v.CFrame}):Play()
                                                    task.wait(v.Time-0.01)
                                                end
                                                VMAnim = false
                                            end
                                        end
                                    end)
                                    if sword ~= nil then
                                        bedwars["SwordController"].lastAttack = game:GetService("Workspace"):GetServerTimeNow() - 0.11
                                        HitRemote:SendToServer({
                                            ["weapon"] = sword.tool,
                                            ["entityInstance"] = v.Character,
                                            ["validate"] = {
                                                ["raycast"] = {
                                                    ["cameraPosition"] = hashFunc(cam.CFrame.Position), 
                                                    ["cursorDirection"] = hashFunc(Ray.new(cam.CFrame.Position, v.Character:FindFirstChild("HumanoidRootPart").Position).Unit.Direction)
                                                },
                                                ["targetPosition"] = hashFunc(v.Character:FindFirstChild("HumanoidRootPart").Position),
                                                ["selfPosition"] = hashFunc(lplr.Character:FindFirstChild("HumanoidRootPart").Position + ((lplr.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude > 14 and (CFrame.lookAt(lplr.Character:FindFirstChild("HumanoidRootPart").Position, v.Character:FindFirstChild("HumanoidRootPart").Position).LookVector * 4) or Vector3.new(0, 0, 0))),
                                            }, 
                                            ["chargedAttack"] = {["chargeRatio"] = 1},
                                        })
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    })
    DistVal = KillAura:CreateSlider({
        ["Name"] = "Range",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 30,
        ["Default"] = 18,
        ["Round"] = 1
    })
    Tick = KillAura:CreateSlider({
        ["Name"] = "Slowness",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 1,
        ["Default"] = 0.38
    })
    CurrentAnim = KillAura:CreateDropDown({
        ["Name"] = "VMAnimation",
        ["Function"] = function(v) 
            CurrentAnim["Value"] = v
        end,
        ["List"] = {"Slow","VerticalSpin"},
        ["Default"] = "Slow"
    })
    AttackAnim = KillAura:CreateOptionTog({
        ["Name"] = "Animation",
        ["Default"] = true,
        ["Func"] = function(v)
            AttackAnim["Enabled"] = v
        end
    })
end)

local function findplayers(arg)
 for i,v in pairs(game:GetService("Players"):GetChildren()) do if v.Name:lower():sub(1, arg:len()) == arg:lower() then return v end end
 return nil
end

local PlayerCrasher = {["Enabled"] = false}
local PlayerCrasherPower = {["Value"] = 50}
local PlayerCrasherDelay = {["Value"] = 0}
local targetedplayer
local RunService = game:GetService("RunService")
runcode(function()
    local Enabled = false
    local Crash = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "PartialCrasher",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
            getgenv().FunnyCrash = true

            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name == game.Players.LocalPlayer.Name then
                    else
                        local args = {[1] = {["player"] = v}}
                        game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").inviteToParty:FireServer(unpack(args))
                    end
                end

            for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                if (v.Name:find("arty") or v.Name:find("otification"))and v:IsA("RemoteEvent") then
                    for i2,v2 in pairs(getconnections(v.OnClientEvent)) do
                        v2:Disable()
                    end
                end
            end

            spawn(function()
                while FunnyCrash == true do
                    for i = 135, 9999999  do
                    local args = {[1] = {["queueType"] = "bedwars_to1"}}
                    game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer(unpack(args))
                    game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").leaveQueue:FireServer()
                    wait()
                    end
                end
            end)
            else
            FunnyCrash = false
            end
        end
    })
end)

 
runcode(function()
    local Enabled = false
    local Sprint = Tabs["Combat"]:CreateToggle({
        ["Name"] = "Sprint",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat
                        task.wait()
                        if not bedwars["SprintController"].sprinting then
                            bedwars["SprintController"]:startSprinting()
                        end
                    until not Enabled
                end)
            else
                bedwars["SprintController"]:stopSprinting()
            end
        end
    })
end)
 
runcode(function()
    local Value = {["Value"] = 18}
    local Enabled = false
    local Reach = Tabs["Combat"]:CreateToggle({
        ["Name"] = "Reach",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = Value["Value"] - 0.001
            else
                bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4
            end
        end
    })
    Value = Reach:CreateSlider({
        ["Name"] = "Amount",
        ["Function"] = function() end,
        ["Min"] = 1,
        ["Max"] = 25,
        ["Default"] = 25,
    })
end)
 
runcode(function()
    local Value = {["Value"] = 0}
    local Enabled = false
    local Velocity = Tabs["Combat"]:CreateToggle({
        ["Name"] = "Velocity",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                bedwars["KnockbackTable"]["kbDirectionStrength"] = 0
    bedwars["KnockbackTable"]["kbUpwardStrength"] = 0
            else
                bedwars["KnockbackTable"]["kbDirectionStrength"] = 100
    bedwars["KnockbackTable"]["kbUpwardStrength"] = 100
            end
        end
    })
end)
 
runcode(function()
    local Enabled = false
    local NoFall = Tabs["Combat"]:CreateToggle({
        ["Name"] = "NoFall",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat
                        task.wait(0.5)
                        Client:Get("GroundHit"):SendToServer()
                    until not Enabled
                end)
            end
        end
    })
end)
 
 runcode(function()
    local Enabled = false
    local NoFall = Tabs["World"]:CreateToggle({
        ["Name"] = "Lighting",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                game.Lighting.Ambient = Color3.fromRGB(170, 0, 255)
       local tint = Instance.new("ColorCorrectionEffect", game.Lighting)
       tint.TintColor = Color3.fromRGB(225, 200, 255)
       local newsky = Instance.new("Sky", game.Lighting)
       newsky.SkyboxBk = "rbxassetid://8539982183"
       newsky.SkyboxDn = "rbxassetid://8539981943"
       newsky.SkyboxFt = "rbxassetid://8539981721"
       newsky.SkyboxLf = "rbxassetid://8539981424"
       newsky.SkyboxRt = "rbxassetid://8539980766"
       newsky.SkyboxUp = "rbxassetid://8539981085"
       newsky.MoonAngularSize = 0
       newsky.SunAngularSize = 0
       newsky.StarCount = 3e3
       table.insert(TempAssets, newsky)
       table.insert(TempAssets, tint)
                else
                print("Disabled next round")
            end
        end
    })
end)
 
runcode(function()
    local Connection
    local FOV = {["Value"] = 120}
    local Enabled = false
    local FOVChanger = Tabs["Render"]:CreateToggle({
        ["Name"] = "FOVChanger",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                cam.FieldOfView = FOV["Value"]
                Connection = cam:GetPropertyChangedSignal("FieldOfView"):Connect(function()
                    cam.FieldOfView = FOV["Value"]
                end)
            else
                Connection:Disconnect()
                cam.FieldOfView = 80
            end
        end
    })
    FOV = FOVChanger:CreateSlider({
        ["Name"] = "FOV",
        ["Function"] = function() end,
        ["Min"] = 30,
        ["Max"] = 120,
        ["Default"] = 100,
        ["Round"] = 1
    })
end)

runcode(function()
    local Enabled = false
    local TexturePack = Tabs["Render"]:CreateToggle({
        ["Name"] = "TexturePack",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                local obj = game:GetObjects("rbxassetid://11144793662")[1]
                obj.Name = "Part"
                obj.Parent = game:GetService("ReplicatedStorage")
                for i,v in pairs(obj:GetChildren()) do
                    if string.lower(v.Name):find("cross") then
                        for i2,b in pairs(v:GetChildren()) do
                            b:Destroy()
                        end
                    end
                end
                shared.con = game:GetService("ReplicatedStorage").ChildAdded:Connect(function(v)
                    for i,x in pairs(obj:GetChildren()) do
                        x:Clone().Parent = v
                    end
                    shared.con:Disconnect()
                end)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/eLeCtRaDoMiNuS/milkwareclient/main/texture.lua"))()
            end
        end
    })
end)

runcode(function()
    local Messages = {"Pow!","Thump!","Wham!","Hit!","Smack!","Bang!","Pop!","Boom!"}
    local old
    local Enabled = false
    local FunnyIndicator = Tabs["Render"]:CreateToggle({
        ["Name"] = "MeteorIndicator",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                old = debug.getupvalue(bedwars["DamageIndicator"],10,{Create})
                debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = function(self,obj,...)
                        spawn(function()
                            pcall(function()
                                obj.Parent.Text = Messages[math.random(1,#Messages)]
                                obj.Parent.TextColor3 =  Color3.fromHSV(tick()%5/5,1,1)
                            end)
                        end)
                        return game:GetService("TweenService"):Create(obj,...)
                    end
                })
            else
                debug.setupvalue(bedwars["DamageIndicator"],10,{
                    Create = old
                })
                old = nil
            end
        end
    })
end)

runcode(function()
    local Enabled = false
    function texturemainfunction()
        local blocks = game:GetService("CollectionService"):GetTagged("block")
        for i,v in pairs(blocks) do
            if v:GetAttribute("PlacedByUserId") == 0 then
                v.Material = (Enabled and Enum.Material.SmoothPlastic or (v.Name:find("glass") and enum.Material.SmoothPlastic or Enum.Material.Fabric))
                for i2,v2 in pairs(v:GetChildren()) do
                    if v2:IsA("Texture") then
                        v2.Transparency = (Enabled and 1) or 0
                    end
                end
            end
        end
    end
    local FPSBoost = Tabs["World"]:CreateToggle({
        ["Name"] = "FPSBoost",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                texturemainfunction()
            else
                texturemainfunction()
            end
        end
    })
end)

runcode(function()
    local Enabled = false
    local CameraFix = Tabs["Render"]:CreateToggle({
        ["Name"] = "CameraFix",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat
                        task.wait()
                        UserSettings():GetService("UserGameSettings").RotationType = ((cam.CFrame.Position - cam.Focus.Position).Magnitude <= 0.5 and Enum.RotationType.CameraRelative or Enum.RotationType.MovementRelative)
                    until not Enabled
                end)
            end
        end
    })
end)
 
runcode(function()
    local Connection
    local Enabled = false
    local Smaller = {["Value"] = 3}
    local SmallItems = Tabs["Render"]:CreateToggle({
        ["Name"] = "SmallWeapons",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                Connection = cam.Viewmodel.ChildAdded:Connect(function(v)
                    if v:FindFirstChild("Handle") then
                        pcall(function()
                            v:FindFirstChild("Handle").Size = v:FindFirstChild("Handle").Size / tostring(Smaller["Value"])
                        end)
                    end
                end)
            else
                Connection:Disconnect()
            end
        end
    })
    Smaller = SmallItems:CreateSlider({
        ["Name"] = "Value",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 10,
        ["Default"] = 3,
        ["Round"] = 1
    })
end)
 
runcode(function()
    local SpeedVal = {["Value"] = 0.11}
    local Enabled = false
    local Mode = {["Value"] = "CFrame"}
    local Speed = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "Speed",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat task.wait() until GetMatchState() ~= 0
                    while task.wait() do
                        if not Enabled then return end
                        if IsAlive(lplr) and isnetworkowner(lplr.Character:FindFirstChild("HumanoidRootPart")) then
                            local hum = lplr.Character:FindFirstChild("Humanoid")
                            if hum.MoveDirection.Magnitude > 0 then
                                lplr.Character:TranslateBy(hum.MoveDirection * SpeedVal["Value"])
                            end
                        end
                    end
                end)
            end
        end
    })
    SpeedVal = Speed:CreateSlider({
        ["Name"] = "Speed",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 0.1,
        ["Default"] = 0.08,
    })
end)
 
runcode(function()
    local Connection
    local Connection2
    local flydown = false
    local flyup = false
    local usedballoon = false
    local usedfireball = false
    local olddeflate
    local velo
    local Enabled = false
    local Mode = {["Value"] = "Normal", "Long"}
    local Fly = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "Fly",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    if lplr.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild("balloon") then
                        usedballoon = true
                        olddeflate = bedwars["BalloonController"].deflateBalloon
                        bedwars["BalloonController"].inflateBalloon()
                        bedwars["BalloonController"].deflateBalloon = function() end
                    end
                    
                    velo = Instance.new("BodyVelocity")
                    velo.MaxForce = Vector3.new(0,9e9,0)
                    velo.Parent = lplr.Character:FindFirstChild("HumanoidRootPart")
                    Connection = uis.InputBegan:Connect(function(input)
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyup = true
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flydown = true
                        end
                    end)
                    Connection2 = uis.InputEnded:Connect(function(input)
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyup = false
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flydown = false
                        end
                    end)
                    spawn(function()
                        while task.wait() do
                            if not Enabled then return end
                            if Mode["Value"] == "Long" then
                                for i = 1,7 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,i*1.25+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                                for i = 1,7 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,-i*1+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                            elseif Mode["Value"] == "FunnyOld" then
                                for i = 1,15 do
                                    task.wait(0.01)
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,i*1,0)
                                end
                            elseif Mode["Value"] == "Funny" then
                                for i = 2,30,2 do
                                    task.wait(0.01)
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,25 + i,0)
                                end
                            elseif Mode["Value"] == "Moonsoon" then
                                for i = 1,10 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,-i*0.7,0)
                                end
                            elseif Mode["Value"] == "Bounce" then
                                for i = 1,15 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,i*1.25+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                                for i = 1,15 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,-i*1+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                            elseif Mode["Value"] == "Bounce2" then
                                for i = 1,15 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,i*1.25+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                                velo.Velocity = Vector3.new(0,0,0)
                                task.wait(0.05)
                                for i = 1,15 do
                                    task.wait()
                                    if not Enabled then return end
                                    velo.Velocity = Vector3.new(0,-i*1+(flyup and 40 or 0)+(flydown and -40 or 0),0)
                                end
                                task.wait(0.05)
                                velo.Velocity = Vector3.new(0,0,0)
                            else
                                Mode["Value"] = "Long"
                                lib["ToggleFuncs"]["Fly"](true)
                                task.wait(0.1)
                                lib["ToggleFuncs"]["Fly"](true)
                            end
                        end
                    end)
                end)
            else
                velo:Destroy()
                Connection:Disconnect()
                Connection2:Disconnect()
                flyup = false
                flydown = false
                if usedballoon == true then
                    usedballoon = false
                    bedwars["BalloonController"].deflateBalloon = olddeflate
                    bedwars["BalloonController"].deflateBalloon()
                    olddeflate = nil
                end
            end
        end
    })
end)

runcode(function()
    local Expand = {["Value"] = 1}
    local function getwool()
        for i,v in pairs(lplr.Character:FindFirstChild("InventoryFolder").Value:GetChildren()) do
            if string.lower(v.Name):find("wool") then
                return {
                    Obj = v,
                    Amount = v:GetAttribute("Amount")
                }
            end
        end
        return nil
    end
    local function getwoolamount()
        local value = 0
        for i,v in pairs(lplr.Character:FindFirstChild("InventoryFolder").Value:GetChildren()) do
            if string.lower(v.Name):find("wool") then
                value = value + v:GetAttribute("Amount")
            end
        end
        return value
    end
    local function getpos()
        local primpart = lplr.Character.PrimaryPart
        local x = math.round(primpart.Position.X/3)
        local y = math.round(primpart.Position.Y/3)
        local z = math.round(primpart.Position.Z/3)
        local realexpand = Expand["Value"] + 1
        return Vector3.new(x,y-1,z) + (lplr.Character:FindFirstChild("HumanoidRootPart").CFrame.LookVector * math.round(Expand["Value"]))
    end
    local ui
    spawn(function()
        ui = Instance.new("ScreenGui",game:GetService("CoreGui"))
        ui.Name = "ScaffoldUI"
        ui.Enabled = false
        if syn then syn.protect_gui(ui) end
        local label = Instance.new("TextLabel")
        label.TextSize = 16
        label.Position = UDim2.new(0.4404,0,0.4700,0)
        label.Size = UDim2.new(0.1181,0,0.1374,0)
        label.BackgroundColor3 = Color3.fromRGB(255,255,255)
        label.BackgroundTransparency = 1
        label.Text = "Blocks Left: 0"
        label.TextColor3 = Color3.fromRGB(65,65,255)
        label.Parent = ui
    end)
    local old
    local Enabled = false
    local ShowAmount = {["Enabled"] = false}
    local Scaffold = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "Scaffold",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                ui.Enabled = true
                spawn(function()
                    old = bedwars["BlockCPSConstants"].BLOCK_PLACE_CPS
                    bedwars["BlockCPSConstants"].BLOCK_PLACE_CPS = 9999
                    while task.wait() do
                        if not Enabled then return end
                        if IsAlive(lplr) then
                            spawn(function()
                                ui.TextLabel.Text = "BlocksLeft: "..getwoolamount()
                            end)
                            if getwool() ~= nil then
                                game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PlaceBlock:InvokeServer({
                                    ["position"] = getpos(),
                                    ["blockType"] = getwool().Obj.Name
                                })
                            end
                        end
                    end
                end)
            else
                ui.Enabled = false
                bedwars["BlockCPSConstants"].BLOCK_PLACE_CPS = old
            end
        end
    })
    ShowAmount = Scaffold:CreateOptionTog({
        ["Name"] = "ShowAmount",
        ["Default"] = true,
        ["Func"] = function(v)
            ShowAmount["Enabled"] = v
            if Enabled then
                ui.Enabled = v
            end
        end
    })
end)

runcode(function()
    local velo
    local Enabled = false
    local HighJump = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "HighJump",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                local hrp = lplr.Character:FindFirstChild("HumanoidRootPart")
                velo = Instance.new("BodyVelocity")
                velo.Velocity = Vector3.new(0,0,0)
                velo.MaxForce = Vector3.new(0,9e9,0)
                velo.Parent = hrp
                spawn(function()
                    while task.wait() do
                        if not Enabled then return end
                        for i = 1,30 do
                            task.wait()
                            if not Enabled then return end
                            velo.Velocity = velo.Velocity + Vector3.new(0,i*0.25,0)
                        end
                    end
                end)
            else
                if velo then
                    velo:Destroy()
                    velo = nil
                end
            end
        end
    })
end)

 runcode(function()
    local ui
    spawn(function()
        ui = Instance.new("ScreenGui",game:GetService("CoreGui"))
        ui.Name = "BetterFlyUI"
        ui.Enabled = false
        if syn then syn.protect_gui(ui) end
        local label = Instance.new("TextLabel")
        label.TextSize = 16
        label.Position = UDim2.new(0.4404,0,0.4700,0)
        label.Size = UDim2.new(0.1181,0,0.1374,0)
        label.BackgroundColor3 = Color3.fromRGB(255,255,255)
        label.BackgroundTransparency = 1
        label.Text = "Safe\nStuds: 0\nY: 0\nTime: 0"
        label.TextColor3 = Color3.fromRGB(65,255,65)
        label.Parent = ui
    end)
    local velo
    local part
    local clone
    local Enabled = false
    local BetterFly = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "GhostFly",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    local char = lplr.Character
                    local starttick = tick()
                    local startpos = char:FindFirstChild("HumanoidRootPart").Position
                    ui.Enabled = true
                    char.Archivable = true
                    clone = char:Clone()
                    velo = Instance.new("BodyVelocity")
                    velo.MaxForce = Vector3.new(9e9,9e9,9e9)
                    velo.Parent = char:FindFirstChild("HumanoidRootPart")
                    clone.Parent = game:GetService("Workspace")
                    cam.CameraSubject = clone:FindFirstChild("Humanoid")
                    part = Instance.new("Part")
                    part.Anchored = true
                    part.Size = Vector3.new(10,1,10)
                    part.Transparency = 1
                    part.CFrame = clone:FindFirstChild("HumanoidRootPart").CFrame - Vector3.new(0,5,0)
                    part.Parent = game:GetService("Workspace")
                    for i,v in pairs(char:GetChildren()) do
                        if string.lower(v.ClassName):find("part") and v.Name ~= "HumanoidRootPart" then
                            v.Transparency = 1
                        end
                        if v:IsA("Accessory") then
                            v:FindFirstChild("Handle").Transparency = 1
                        end
                    end
                    char:FindFirstChild("Head"):FindFirstChild("face").Transparency = 1
                    spawn(function()
                        while task.wait() do
                            if not Enabled then
                                local studs = (startpos - char:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                local time_ = math.abs(starttick - tick())
                                
                                return
                            end
                            local studs = (startpos - char:FindFirstChild("HumanoidRootPart").Position).Magnitude
                            local Y = char:FindFirstChild("HumanoidRootPart").Position.Y
                            local calctime = math.abs(starttick - tick())
                            if isnetworkowner(char:FindFirstChild("HumanoidRootPart")) then
                                ui.TextLabel.TextColor3 = Color3.fromRGB(65,255,65)
                                ui.TextLabel.Text = "Safe\nStuds: "..math.floor(studs).."\nY: "..math.floor(Y).."\nTime: "..math.floor(calctime)
                            else
                                ui.TextLabel.TextColor3 = Color3.fromRGB(255,65,65)
                                ui.TextLabel.Text = "Unsafe\nStuds: "..math.floor(studs).."\nY: "..math.floor(Y).."\nTime: "..math.floor(calctime)
                            end
                        end
                    end)
                    spawn(function()
                        while task.wait() do
                            if not Enabled then return end
                            for i = 2,30,2 do
                                task.wait(0.01)
                                if not Enabled then return end
                                part.CFrame = CFrame.new(clone:FindFirstChild("HumanoidRootPart").CFrame.X,part.CFrame.Y,clone:FindFirstChild("HumanoidRootPart").CFrame.Z)
                                clone:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(char:FindFirstChild("HumanoidRootPart").CFrame.X,clone:FindFirstChild("HumanoidRootPart").CFrame.Y,char:FindFirstChild("HumanoidRootPart").CFrame.Z)
                                clone:FindFirstChild("HumanoidRootPart").Rotation = char:FindFirstChild("HumanoidRootPart").Rotation
                                if char:FindFirstChild("Humanoid").MoveDirection.Magnitude > 0 then
                                    velo.Velocity = lplr.Character:FindFirstChild("HumanoidRootPart").CFrame.LookVector * char:FindFirstChild("Humanoid").WalkSpeed + Vector3.new(0,150 + i,0)
                                else
                                    velo.Velocity = Vector3.new(0,150 + i,0)
                                end
                            end
                        end
                    end)
                end)
            else
                for i,v in pairs(lplr.Character:GetChildren()) do
                    if string.lower(v.ClassName):find("part") and v.Name ~= "HumanoidRootPart" then
                        v.Transparency = 0
                    end
                    if v:IsA("Accessory") then
                        v:FindFirstChild("Handle").Transparency = 0
                    end
                end
                lplr.Character:FindFirstChild("Head"):FindFirstChild("face").Transparency = 0
                cam.CameraSubject = lplr.Character:FindFirstChild("Humanoid")
                task.delay(0.1, function() velo:Destroy() end)
                velo.Velocity = Vector3.new(0,-100,0)
                velo:Destroy()
                part:Destroy()
                clone:Destroy()
                ui.Enabled = false
            end
        end
    })
end)

runcode(function()
    local Speed = {["Value"] = 30}
    local Enabled = false
    local Spider = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "Spider",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    while task.wait() do
                        if not Enabled then return end
                        if IsAlive(lplr) then
                            local param = RaycastParams.new()
                            param.FilterDescendantsInstances = {game:GetService("CollectionService"):GetTagged("block")}
                            param.FilterType = Enum.RaycastFilterType.Whitelist
                            local ray = game:GetService("Workspace"):Raycast(lplr.Character:FindFirstChild("Head").Position-Vector3.new(0,3,0),lplr.Character:FindFirstChild("Humanoid").MoveDirection*3,param)
                            local ray2 = game:GetService("Workspace"):Raycast(lplr.Character:FindFirstChild("Head").Position,lplr.Character:FindFirstChild("Humanoid").MoveDirection*3,param)
                            if ray or ray2 then
                                local velo = Vector3.new(0,Speed["Value"]/100,0)
                                lplr.Character:TranslateBy(velo)
                                local old = lplr.Character:FindFirstChild("HumanoidRootPart").Velocity
                                lplr.Character:FindFirstChild("HumanoidRootPart").Velocity = Vector3.new(old.X,velo.Y*70,old.Z)
                            end
                        else
                            task.wait()
                        end
                    end
                end)
            end
        end
    })
    Speed = Spider:CreateSlider({
        ["Name"] = "Speed",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 30,
        ["Default"] = 30,
        ["Round"] = 1
    })
end)
 
runcode(function()
    local Enabled = false
    local AutoPlayAgain = Tabs["Utility"]:CreateToggle({
        ["Name"] = "AutoPlay",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    repeat task.wait(3) until GetMatchState() == 2 or not Enabled
                    if not Enabled then return end
                    game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = getQueueType()})
                    return
                end)
            end
        end
    })
end)

runcode(function()
    local Connection
    local Enabled = false
    local NoClickDelay = Tabs["Utility"]:CreateToggle({
        ["Name"] = "RemoveName",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                lplr.Character:WaitForChild("Head"):WaitForChild("NameTag"):Destroy()
                Connection = lplr.CharacterAdded:Connect(function(v)
                    v:WaitForChild("Head"):WaitForChild("NameTag"):Destroy()
                end)
            else
                Connection:Disconnect()
            end
        end
    })
end)

runcode(function()
    local Enabled = false
    local Skywars = Tabs["Utility"]:CreateToggle({
        ["Name"] = "AutoFish",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
    oldfish = bedwars["FishermanTable"].startMinigame
   bedwars["FishermanTable"].startMinigame = function(Self, dropdata, func) func({win = true}) end
            else
               bedwars["FishermanTable"].startMinigame = oldfish
   oldfish = nil
            end
        end
    })
end)

runcode(function()
    local Connection
    local Enabled = false
    local ShopTierBypass = Tabs["Utility"]:CreateToggle({
        ["Name"] = "ShopTierBypass",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
    for i,v in pairs(bedwars["ShopItems"]) do
     v["tiered"] = nil
     v["nextTier"] = nil
    end
            end
        end
    })
end)

runcode(function()
    local AntiVoiding = false
    local Connection
    local part
    local YPos
    local Enabled = false
    local Mode = {["Value"] = "VeloHop"}
    local AntiVoid = Tabs["World"]:CreateToggle({
        ["Name"] = "AntiVoid",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                if not YPos then
                    local blocks = game:GetService("CollectionService"):GetTagged("block")
                    local blockraycast = RaycastParams.new()
                    blockraycast.FilterType = Enum.RaycastFilterType.Whitelist
     blockraycast.FilterDescendantsInstances = blocks
                    local lowestpos = 99999
                    for i,v in pairs(blocks) do
                        local newray = game:GetService("Workspace"):Raycast(v.Position+Vector3.new(0,800,0),Vector3.new(0,-1000,0),blockraycast)
                        if i % 200 == 0 then
                            task.wait(0.06)
                        end
                        if newray and newray.Position.Y < lowestpos then
                            lowestpos = newray.Position.Y
                        end
                    end
                    YPos = lowestpos - 8
                end
                part = Instance.new("Part")
                part.Anchored = true
                part.Size = Vector3.new(5000,3,5000)
                part.Material = Enum.Material.Neon
                part.Color = Color3.fromRGB(191, 64, 191)
                part.Transparency = 0.5
                part.Position = Vector3.new(0,YPos,0)
                part.Parent = game:GetService("Workspace")
                Connection = part.Touched:Connect(function(v)
                    if v.Parent.Name == lplr.Name and IsAlive(lplr) and not AntiVoiding then
                        AntiVoiding = true
                        if Mode["Value"] == "Velocity" then
                            for i = 1,25 do
                                task.wait()
                                lplr.Character:FindFirstChild("HumanoidRootPart").Velocity = lplr.Character:FindFirstChild("HumanoidRootPart").Velocity + Vector3.new(0,7,0)
                            end
                        elseif Mode["Value"] == "Normal" then
                            for i = 1,3 do
                                task.wait(0.3)
                                lplr.Character:FindFirstChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end
                        task.wait(0.25)
                        AntiVoiding = false
                    end
                end)
            else
                part:Destroy()
                Connection:Disconnect()
                AntiVoiding = false
            end
        end
    })
    Mode = AntiVoid:CreateDropDown({
        ["Name"] = "Mode",
        ["Function"] = function() end,
        ["List"] = {"Normal"},
        ["Default"] = "Normal"
    })
end)

runcode(function()
    local MaxStuds = {["Value"] = 30}
    local function ChestStealerFunc()
        for i,v in pairs(game:GetService("CollectionService"):GetTagged("chest")) do
            local mag = (lplr.Character:FindFirstChild("HumanoidRootPart").Position - v.Position).Magnitude
            if mag < MaxStuds["Value"] then
                local chest = v:FindFirstChild("ChestFolderValue")
                chest = chest and chest.Value or nil
                local chestitems = chest and chest:GetChildren() or {}
                if #chestitems > 0 then
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(chest)
                    for i3,v3 in pairs(chestitems) do
                        if v3:IsA("Accessory") then
                            pcall(function()
                                Client:GetNamespace("Inventory"):Get("ChestGetItem"):CallServer(v.ChestFolderValue.Value,v3)
                            end)
                        end
                    end
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(nil)
                end
            end
        end
    end
    local Enabled = false
    local ChestStealer = Tabs["World"]:CreateToggle({
        ["Name"] = "ChestStealer",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    while task.wait(0.01) do
                        if Enabled == false then return end
                        if IsAlive(lplr) then
                            ChestStealerFunc()
                        end
                    end
                end)
            end
        end
    })
    MaxStuds = ChestStealer:CreateSlider({
        ["Name"] = "Distance",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 30,
        ["Default"] = 30,
        ["Round"] = 1
    })
end)
 
runcode(function()
    local Enabled = false
    local StoneExploit = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "SwordExploit",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    if GetMatchState() ~= 0 then
                        return
                    end
                    lplr.Character:WaitForChild("InventoryFolder").Value:WaitForChild("stone_sword")
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal"))
                    Client:GetNamespace("Inventory"):Get("ChestGiveItem"):CallServer(
                        game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal"),
                        lplr.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild("stone_sword")
                    )
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(nil)
                    repeat task.wait() until GetMatchState() == 1
                    task.wait(1)
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal"))
                    Client:GetNamespace("Inventory"):Get("ChestGetItem"):CallServer(
                        game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal"),
                        game:GetService("ReplicatedStorage").Inventories:FindFirstChild(lplr.Name.."_personal").stone_sword
                    )
                    Client:GetNamespace("Inventory"):Get("SetObservedChest"):SendToServer(nil)
                end)
            end
        end
    })
end)
 
 runcode(function()
    local BreakingMsg = false
    local params = RaycastParams.new()
    params.IgnoreWater = true
    function NukerFunction(part)
        local raycastResult = game:GetService("Workspace"):Raycast(part.Position + Vector3.new(0,24,0),Vector3.new(0,-27,0),params)
        if raycastResult then
            local targetblock = raycastResult.Instance
            for i,v in pairs(targetblock:GetChildren()) do
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
            targetblock.Color = Color3.fromRGB(255,65,65)
            targetblock.Material = Enum.Material.Neon
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
                ["blockRef"] = {
                    ["blockPosition"] = Vector3.new(math.round(targetblock.Position.X/3),math.round(targetblock.Position.Y/3),math.round(targetblock.Position.Z/3))
                },
                ["hitPosition"] = Vector3.new(math.round(targetblock.Position.X/3),math.round(targetblock.Position.Y/3),math.round(targetblock.Position.Z/3)),
                ["hitNormal"] = Vector3.new(math.round(targetblock.Position.X/3),math.round(targetblock.Position.Y/3),math.round(targetblock.Position.Z/3))
            })
            if BreakingMsg == false then
                BreakingMsg = true
                print("Breaking bed")
                spawn(function()
                    task.wait(3)
                    BreakingMsg = false
                end)
            end
        end
    end
    function GetBeds()
        local beds = {}
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if string.lower(v.Name) == "bed" and v:FindFirstChild("Covers") ~= nil and v:FindFirstChild("Covers").BrickColor ~= lplr.Team.TeamColor then
                table.insert(beds,v)
            end
        end
        return beds
    end
    local Enabled = false
    local Distance = {["Value"] = 30}
    local Animation = {["Enabled"] = false}
    local Nuker = Tabs["World"]:CreateToggle({
        ["Name"] = "Nuker",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    while task.wait(0.1) do
                        if not Enabled then return end
                        spawn(function()
                            if lplr:GetAttribute("DenyBlockBreak") == true then
                                lplr:SetAttribute("DenyBlockBreak",nil)
                            end
                        end)
                        if IsAlive(lplr) then
                            local beds = GetBeds()
                            for i,v in pairs(beds) do
                                local mag = (v.Position - lplr.Character.PrimaryPart.Position).Magnitude
                                if mag < Distance["Value"] then
                                    NukerFunction(v)
                                end
                            end
                        end
                    end
                end)
            end
        end
    })
    Distance = Nuker:CreateSlider({
        ["Name"] = "Distance",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 30,
        ["Default"] = 30,
        ["Round"] = 1
    })
end)

runcode(function()
    function GetBeds()
        local beds = {}
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if string.lower(v.Name) == "bed" and v:FindFirstChild("Covers") ~= nil and v:FindFirstChild("Covers").BrickColor ~= lplr.Team.TeamColor then
                table.insert(beds,v)
            end
        end
        return beds
    end
    function GetPlayers()
        local players = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Team ~= lplr.Team and IsAlive(v) then
                table.insert(players,v)
            end
        end
        return players
    end
    local Enabled = false
    local AutoWin = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "SlowAutoWin",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                    if GetMatchState() ~= 1 then
                        repeat task.wait() until GetMatchState() == 1 or not Enabled
                        if not Enabled then return end
                    end
                    local start = tick()
                    local beds = GetBeds()
                    for i,v in pairs(beds) do
                        repeat
                            task.wait(0.01)
                            if lplr:GetAttribute("DenyBlockBreak") == true then
                                lplr:SetAttribute("DenyBlockBreak",nil)
                            end
                            lplr.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame + Vector3.new(0,3,0)
                            local x = math.round(v.Position.X/3)
                            local y = math.round(v.Position.Y/3)
                            local z = math.round(v.Position.Z/3)
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
                                ["blockRef"] = {
                                    ["blockPosition"] = Vector3.new(x,y,z)
                                },
                                ["hitPosition"] = Vector3.new(x,y,z),
                                ["hitNormal"] = Vector3.new(x,y,z)
                            })
                        until not v:FindFirstChild("Covers") or not v or not Enabled
                        if not Enabled then return end
                    end
                    local players = GetPlayers()
                    for i,v in pairs(players) do
                        repeat
                            task.wait(0.01)
                            lplr.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Character:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(0,3,0)
                        until not IsAlive(v)
                    end
                    CreateNotification("AutoWin","Took "..math.abs(start - tick()).." Seconds/Ticks to win Game",5)
                end)
            end
        end
    })
end)

runcode(function()
    local Enabled = false
    local Skywars = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "TrumpetAura",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
               getgenv().Aura = true
               spawn(function()
                   while Aura == true do
                       local args = {[1] = "TRUMPET_PLAY"}
                       game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events").useAbility:FireServer(unpack(args))
                       game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ldzwbijyvmlYiTzzalrcvgOmClbeekhiDc:InvokeServer()
                       wait()
                   end
               end)
            else
               getgenv().Aura = false
            end
        end
    })
end)

runcode(function()
    local Enabled = false
    local EmeraldsExploit = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "PickUpEmeralds",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ItemDrops.emerald.CFrame
                end)
            end
        end
    })
end)
 
 runcode(function()
    local Enabled = false
    local DiamondsExploit = Tabs["Exploits"]:CreateToggle({
        ["Name"] = "PickupDiamonds",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                spawn(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ItemDrops.diamond.CFrame
                end)
            end
        end
    })
end)
 

runcode(function()
    function HasTNT()
        if IsAlive(lplr) and lplr.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild("tnt") then
            return true
        end
        return false
    end
    function getpos()
        local x = math.round(lplr.Character.PrimaryPart.Position.X/3)
        local y = math.round(lplr.Character.PrimaryPart.Position.Y/3)
        local z = math.round(lplr.Character.PrimaryPart.Position.Z/3)
        return Vector3.new(x,y,z)
    end
    local Speed = {["Value"] = 90}
    local Up = {["Value"] = 5}
    local velo
    local Enabled = false
    local TNTFly = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "TNTFly",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                velo = Instance.new("BodyVelocity")
                velo.MaxForce = Vector3.new(9e9,9e9,9e9)
                velo.Velocity = Vector3.new(0,0.5,0)
                velo.Parent = lplr.Character:FindFirstChild("HumanoidRootPart")
                if not HasTNT() then
                    lib["ToggleFuncs"]["TNTFly"](true)
                    return
                end
                game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PlaceBlock:InvokeServer({
                    ["position"] = getpos(),
                    ["blockType"] = "tnt"
                })
                task.wait(3)
                lplr.Character:FindFirstChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                velo.Velocity = lplr.Character:FindFirstChild("HumanoidRootPart").CFrame.LookVector * Speed["Value"] + Vector3.new(0,Up["Value"],0)
                lplr.Character:FindFirstChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
            else
                velo:Destroy()
            end
        end
    })
    Speed = TNTFly:CreateSlider({
        ["Name"] = "Speed",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 125,
        ["Default"] = 80,
        ["Round"] = 1
    })
    Up = TNTFly:CreateSlider({
        ["Name"] = "Height",
        ["Function"] = function() end,
        ["Min"] = 10,
        ["Max"] = 100,
        ["Default"] = 25,
        ["Round"] = 1
    })
end)

 runcode(function()
    local Enabled = false
    local vulflyys = Tabs["Blatant"]:CreateToggle({
        ["Name"] = "VulcanFly",
        ["Callback"] = function(Callback)
            Enabled = Callback
            if Enabled then
                velo = Instance.new("BodyVelocity")

                velo.MaxForce = Vector3.new(0,9e9,0)
                velo.Parent = lplr.Character:FindFirstChild("HumanoidRootPart")
                spawn(function()
                    repeat
                        task.wait(0.1)
                        
                            velo.Velocity = Vector3.new(0,1,0)
                            task.wait(0.15)
                            velo.Velocity = Vector3.new(0,0.1,0)
                        
                            task.wait(0.15)
                            velo.Velocity = Vector3.new(1,0,0)
                            task.wait(0.15)
                            velo.Velocity = Vector3.new(0.1,0,0)
                            task.wait(0.15)
                            velo.Velocity = Vector3.new(0,0,1)
                            task.wait(0.15)
                            velo.Velocity = Vector3.new(0,0,0.1)
                            
                        
                        
                    until not Enabled
                end)
            else
                velo:Destroy()
                for i,v in pairs(lplr.Character:FindFirstChild("HumanoidRootPart"):GetChildren()) do
                    if v:IsA("BodyVelocity") then
                        v:Destroy()
                    end
                end
                end


                
            end
        
    })
end)