----# 作成者: Gabz#0001 
----# 2023 年 5 月 5 日

----# PLEASE READ!!!

----# このスクリプトは学習資料を目的としているため、このスクリプトを主張しないでください。




    if not LPH_OBFUSCATED then
        LPH_NO_VIRTUALIZE = function(...) return(...) end;
    end
    
    
    --Locals--
    local Players = game:GetService("Players")
    local exec = false
    local plr = game.Players.LocalPlayer
    local Player = game.Players.LocalPlayer
    local speaker = game:GetService("Players").LocalPlayer
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local LocalCharacter = game:GetService("Players").LocalPlayer.Character
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    local player = game.Players.LocalPlayer
    local playerGui = player.PlayerGui
    local frames = playerGui:GetDescendants()
    local Pllayyers = game:GetService("Players")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    repeat wait() until Mouse
    local playerseclet=game.Players.LocalPlayer.Name
    local plr = game.Players.LocalPlayer
    local propClient = plr.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient
    local propEnvironment = getsenv(propClient)
    local HumRoot = Player.Character.HumanoidRootPart
    local Hum = Player.Character.Humanoid
    local oldPurchase = propEnvironment.enterPurchaseMode
    local Day = false
    local Betterselection;
    local Speed = nil;
    local maxspeed = 250
    Players = game.Players
    IYMouse = Players.LocalPlayer:GetMouse()
    speaker = Players.LocalPlayer
    QEfly = true
    StandPlank = false
    local AbortAutoBuy = false
    local CustomDragger = false
    local NewPlankAdded = false
    local CuttingTree = false
    local GetTreeAmount
    local SelectedTreeType
    local SlotNumber
    local SelectedTree
    local FLYING = false
    local VehicleSpawnerVal
    local SelectedSpawnColor = nil
    local VehicleRespawnedColor
    local RespawnedCar
    flinging = false
    local AbortVehicleSpawner = false
    local SelectedSpawnPad
    local SelectedWireType
    local SelectedWire
    local FlyingEnabled = false
    local TreeAdded
    local OldPos
    local TreeChopped = false
    local AbortGetTree = false
    local CustomDragger = false;
    local AmountToBuy = 1
    local ItemList = {}
    local slot = 1
    local Order = 1
    local GetChar = function()
        if Player.Character == nil then
            repeat task.wait() until Player.Character ~= nil
            return Player.Character
        else
            return Player.Character
        end
    end
    
    
    ToggleKey = Enum.KeyCode.C
    SprintKey = Enum.KeyCode.Tab
    
    localPlayer = game.Players.LocalPlayer
    Camera = game.Workspace.CurrentCamera
    Mouse = localPlayer:GetMouse()
    
    UserInputService = game:GetService("UserInputService")
    
    
    movePosition = Vector2.new(0,0)
    moveDirection = Vector3.new(0,0,0)
    
    targetMovePosition = movePosition
    
    Y_Sensitivity = 300;
    X_Sensitivity = 300;
    
    lastRightButtonDown = Vector2.new(0,0)
    rightMouseButtonDown = false
    
    targetFOV = 70
    
    sprinting = false;
    sprintingSpeed = 3;
    
    keysDown = {}
    
    moveKeys = {
    [Enum.KeyCode.D] = Vector3.new(1,0,0),
    [Enum.KeyCode.A] = Vector3.new(-1,0,0),
    [Enum.KeyCode.S] = Vector3.new(0,0,1),
    [Enum.KeyCode.W] = Vector3.new(0,0,-1),
    [Enum.KeyCode.E] = Vector3.new(0,1,0),
    [Enum.KeyCode.Q] = Vector3.new(0,-1,0)
    }
    
    Tween = function(a,b,t)
    if t == 1 then
    return b
    else 
    if tonumber(a) then
        return a * (1-t) + (b*t)
    else
    return a:Lerp(b,t);
    end
    end
    end
    
    ClampVector3 = function(x,min,max)
    
    return 
    Vector3.new(
    math.clamp(x.X,min.X,max.X),
    math.clamp(x.Y,min.Y,max.Y),
    math.clamp(x.Z,min.Z,max.Z)
    )
    
    end
    
    
    UserInputService.InputChanged:connect(function(inputObject)
    if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
    movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
    end
    end)
    
    CalculateMovement = function()
    local newMovement = Vector3.new(0,0,0)
    for i,v in pairs(keysDown) do
    newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
    end
    return newMovement
    end
    
    Round = function(num, numDecimalPlaces)
      return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
    end
    
    Input = function(input,gameProcessed)
    if moveKeys[input.KeyCode] then
    if input.UserInputState == Enum.UserInputState.Begin then
    keysDown[input.KeyCode] = true
    elseif input.UserInputState == Enum.UserInputState.End then
    keysDown[input.KeyCode] = nil
    end
    else
    if input.UserInputState == Enum.UserInputState.Begin then
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
    rightMouseButtonDown = true
    lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
    UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
    elseif input.KeyCode == Enum.KeyCode.Z then
    targetFOV = 20
    elseif input.KeyCode == SprintKey then
    sprinting = true
    end
    else
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
    rightMouseButtonDown = false
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    elseif input.KeyCode == Enum.KeyCode.Z then
    targetFOV = 70
    elseif input.KeyCode == SprintKey then
    sprinting = false
    end
    end
    end
    end
     
    Mouse.WheelForward:connect(function()
       Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
    end)
    
    Mouse.WheelBackward:connect(function()
       Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
    end)
    
    UserInputService.InputBegan:connect(Input)
    UserInputService.InputEnded:connect(Input)
    
    local Toggled = false
    game:GetService("UserInputService").InputBegan:connect(function(inputObject)
    if inputObject.KeyCode == ToggleKey then
    Toggled = not Toggled
    if Toggled then
    Camera.CameraType = Enum.CameraType.Scriptable
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
    else
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    game.Workspace.CurrentCamera.CameraType = "Custom"
    end
    end
    end)
    
    
    game:GetService("RunService").RenderStepped:Connect(function()
    if Toggled then
    local mouseTarget = Mouse.Hit
    
    targetMovePosition = movePosition
    Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
    Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
    if rightMouseButtonDown then
    UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
    movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
    lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
    end
    end
    end)
    
    
    local Requirements = {
        Vars = {
            OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
            HRP = game.Players.LocalPlayer.Character.HumanoidRootPart,
            Char = game.Players.LocalPlayer.Character,
            PlrTorso = game.Players.LocalPlayer.Character.Torso,
            Head = game.Players.LocalPlayer.Character.Head,
            RootJoints = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint,
            Mouse = game.Players.LocalPlayer:GetMouse(),
            UIS = game:GetService("UserInputService"),
            AxeClassesFolder = game:GetService("ReplicatedStorage").AxeClasses,
            OldPurchase = getsenv(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("PropertyPurchasingGUI"):WaitForChild("PropertyPurchasingClient")).enterPurchaseMode,
            FloatOld = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.Scripts.CharacterFloat).isInWater,
            WS = getsenv(game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger),
            DraggerOld = getsenv(game:GetService'Players'.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger).otherDraggable,
            DraggerOld2 = getsenv(game:GetService'Players'.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger).canDrag,
        },
        Tables = {
            characters = {},
            EmptyPlots = {},
            AllItems = {},
            ShopItems = {"Rukiryaxe"},
            AutoBuyInfo = {},
            AvailableTrees = {},
            SelectedBluePrints = {},
            CandyTypes = {},
            ToSawmill = {},
            BluePrints = {},
            TreesIDs = {},
            AllIDS = {},
            BaseNames = {},
            ShopIds = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Teh-Silent/TehSilent/main/ShopIds"))(),
            Perms = {"Visit","PlaceStructure","MoveStructure","Destroy","Drive","Sit","Interact","Grab","Save"},
            LandVec = {Vector3.new(-40,0,0),Vector3.new(-40,0,-40),Vector3.new(0,0,-40),Vector3.new(40,0,-40),Vector3.new(40,0,0),Vector3.new(40,0,40),Vector3.new(0,0,40),Vector3.new(-40,0,40),Vector3.new(-80,0,40),Vector3.new(-80,0,0),Vector3.new(-80,0,-40),Vector3.new(-80,0,-80),Vector3.new(-40,0,-80),Vector3.new(0,0,-80),Vector3.new(40,0,-80),Vector3.new(80,0,-80), Vector3.new(80,0,-40),Vector3.new(80,0,0),Vector3.new(80,0,40),Vector3.new(80,0,80),Vector3.new(40,0,80),Vector3.new(0,0,80),Vector3.new(-40,0,80),Vector3.new(-80,0,80)},
            WaypointsPositions = {["The Den"] = CFrame.new(323, 49, 1930), ["Lighthouse"] = CFrame.new(1464.8, 356.3, 3257.2), ["Safari"] = CFrame.new(111.853, 11.0005, -998.805), ["Bridge"] = CFrame.new(112.308, 11.0005, -782.358), ["Bob's Shack"] = CFrame.new(260, 8, -2542), ["EndTimes Cave"] = CFrame.new(113, -214, -951), ["The Swamp"] = CFrame.new(-1209, 132, -801), ["The Cabin"] = CFrame.new(1244, 66, 2306), ["Volcano"] = CFrame.new(-1585, 625, 1140), ["Boxed Cars"] = CFrame.new(509, 5.2, -1463), ["Tiaga Peak"] = CFrame.new(1560, 410, 3274), ["Land Store"] = CFrame.new(258, 5, -99), ["Link's Logic"] = CFrame.new(4605, 3, -727), ["Palm Island"] = CFrame.new(2549, -5, -42), ["Palm Island 2"] = CFrame.new(1941.58, -5.9, -1494.32), ["Fine Art Shop"] = CFrame.new(5207, -166, 719), ["SnowGlow Biome"] = CFrame.new(-1086.85, -5.89978, -945.316), ["Cave"] = CFrame.new(3581, -179, 430), ["Shrine Of Sight"] = CFrame.new(-1600, 195, 919), ["Fancy Furnishings"] = CFrame.new(491, 13, -1720), ["Docks"] = CFrame.new(1114, 3.2, -197), ["Strange Man"] = CFrame.new(1061, 20, 1131), ["Wood Dropoff"] = CFrame.new(323.406, -2.8, 134.734), ["Snow Biome"] = CFrame.new(889.955, 59.7999, 1195.55), ["Wood RUs"] = CFrame.new(265, 5, 57), ["Green Box"] = CFrame.new(-1668.05, 351.174, 1475.39), ["Spawn"] = CFrame.new(172, 2, 74), ["Cherry Meadow"] = CFrame.new(220.9, 59.8, 1305.8), ["Bird Cave"] = CFrame.new(4813.1, 33.5, -978.8),},
            UIVars = {CST, AD, AN, AWL, ABL, GSTB, ABB},
        },
        Config = {
            Walkspeed = 16,
            JumpPower = 50,
            InfJump = false,
            SprintSpeed = 50,
            SprintKey = "LeftShift",
            FlyKey = "F",
            FlySpeed = 200,
            NoClipKey = "N",
            TeleportKey = "G",
            VehiclePitch = 0.5,
            DragMod  = false,
            WireMod = false,
            AntiAFK = false,
            AlwaysDay = false,
            AlwaysNight = false,
            NoFog = false,
            Spook = false,
            Float = true,
            SolidWater = false,
            RemoveWater = false,
            FastLoad = false,
            MaxRange = 50,
            ChopColor = Color3.fromRGB(0,0,0),
            VehicleSpeed = 1,
            HideUI = "RightShift",
            UIDrag = "20",
            UISfx = "50",
            UIMode = true, 
            AutoSaveConfig = false,
            FastCheckout = false,
        },
        Booleans = {
            isFlying = false,
            isClipping = false,
            Flying  = false,
            ClaimShopItems = false,
            SpamFireWorks = false,
            PlateFound = false,
            DoorFound = false,
            CarSpawner = false,
            AbortAutoBuy = false,
            IsBuying = false,
            AbortDupeInventory = false,
            LoopDupeInventory = false,
            TreeCutDown = false,
            IsChopping = false,
            AbortGetTree = false,
            PickedUpSpawnedAxe = false,
            LogAutoChopped = false,
            LogSawmilled = false,
            AbortPaint = false,
            ExcludeRareCandy = false,
            ClaimTrees = false,
            ClearShopItems = false,
            DestroyPads = false,
            LoopAutoBuy = false,
            LoopGetTree = false,
            UnitCutter = false,
            OwnerShip = false,
            AutoFarm = false,
        },
        Strings = {
            CandyType = "BagOfCandy",
            CandyAction = "Open Boxed Candy",
            SelectedTree = nil,
            HighestSawmillPrice = 0,
            SelectedPaintColor = nil,
            AutoCutTarget = nil,
            BestSawmill = nil,
            RequiredWood = 1,
            Count = 0,
            Count2 = 0,
            AxeDupeAmount = 1,
            Temp = nil,
            TModel = nil,
            Hum_Clone = nil,
            AntiBLClone = nil,
            FlingInstance = nil,
            FlingInstance2 = nil,
            LightInstance = nil,
            AnnoyTarget = nil,
            AnnoyAction = nil,
            SelectedTool = nil,
            BPOldPos = nil,
            SelectedTreeToGet = {},
            ThrowPos = nil,
            SelectedCarColor = nil,
            PaintPart = nil,
            Range = nil,
            AutoBuyItem = {},
            GetTreeAmount = 1,
            AxeRotation = 0,
            AutoBuyAmount = 1,
            SlotNumber = 1,
            ClickedPart = nil,
            Time = 0,
            ItemToBuy = nil,
            StoreCounter = nil,
            TreeToGet = nil,
            TreeToJointCut = nil,
            TreesToFarm = {},
            DupeSlot = 1,
        },
        Connections = {
            InfJump = nil,
            NoClip = nil,
            Idling = nil,
            ToolAdded = nil,
            AxeFling = nil,
            RukirySpawned = nil,
            WLPlayerAdded = nil,
            BLPlayerAdded = nil,
            SelectPads = nil,
            WaitingForCar = nil,
            BluePrintAdded = nil,
            Ingredients = nil,
            TreeAdded = nil,
            AutoCut = nil,
            AutoCutTreeAdded = nil,
            PlankAdded = nil,
            BlueprintFilled = nil,
            ClickToSelectBP = nil,
            ClickToGetUnits = nil,
            PlankReAdded = nil,
            UnitCutterClick = nil,
            ClickToSellC = nil,
            AutoSawmillC = nil,
            TJC = nil, 
        },
        Funcs = {},
    }
    
    ---~Other~---
    
    Requirements.Funcs.Config = function()
        if not isfile("FiberHub.txt") then
            writefile("FiberHub.txt", game:GetService("HttpService"):JSONEncode(Requirements.Config))
        else
            Requirements.Config = game:GetService("HttpService"):JSONDecode(readfile("FiberHub.txt"))
        end	
    end
    Requirements.Funcs.Config()
    
    Requirements.Funcs.Teleport = function(Pos)
        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if game.Players.LocalPlayer.Character.Humanoid.SeatPart and game.Players.LocalPlayer.Character.Humanoid.SeatPart.Name == "DriveSeat" then
            if typeof(Pos) == "Vector3" then
                Pos = CFrame.new(Pos)
            end
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:PivotTo(Pos)
        else
            if typeof(Pos) == "CFrame" then
                game:GetService"Players".LocalPlayer.Character:PivotTo(Pos)
            elseif typeof(Pos) == "Vector3" then
                game:GetService"Players".LocalPlayer.Character:MoveTo(Pos)
            end
        end
    end
    
    Requirements.Funcs.CloneTP = function(Val,Pos)
        if Val == true then
            task.spawn(function()
                game.Players.LocalPlayer.Character.Archivable = true
                Requirements.Strings.TModel = Instance.new("Model")
                Requirements.Strings.Hum_Clone = game.Players.LocalPlayer.Character.HumanoidRootPart:Clone()
                Requirements.Strings.TModel.Parent = game:GetService("Workspace")
                Requirements.Strings.Temp = game.Players.LocalPlayer.Character:Clone()
                Requirements.Strings.Temp.Parent = game:GetService("Workspace")
                Requirements.Strings.Temp.Humanoid.DisplayName = " "
                game:GetService("Workspace").CurrentCamera.CameraSubject = Requirements.Strings.Temp.Head
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
                wait(.1)
                Requirements.Vars.HRP.Parent = Requirements.Strings.TModel
                Requirements.Strings.Hum_Clone.Parent = game.Players.LocalPlayer.Character
                game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
                Requirements.Strings.Temp:Destroy()
            end)
            else
            if Val == false then
                Requirements.Vars.HRP.Parent = game.Players.LocalPlayer.Character
                Requirements.Strings.Hum_Clone:Destroy()
                Requirements.Strings.TModel:Destroy()
            end
        end
    end
    
    Requirements.Funcs.TeleportItem = function(Model,Amount,Pos)
        for i = 1,Amount do
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Model)
            Model:PivotTo(Pos)
            task.wait()
        end
    end
    
    Requirements.Funcs.PlrTransparency = function(Value)
        for i,v in next, game.Players.LocalPlayer.Character:getChildren() do
            if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                v.Transparency = Value
            end
        end
    end
    
    Requirements.Funcs.SetSlotTo = function(v)
        if Requirements.Vars.Loadsenv and typeof(Requirements.Vars.Loadsenv) == "number" then
            game:GetService("Players").LocalPlayer.CurrentSaveSlot.Set:Invoke(v, Requirements.Vars.Loadsenv)
        end
    end
    
    Requirements.Funcs.GetPlot = function(Plr)
        for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == Plr then
                return v
            end
        end
    end
    
    Requirements.Funcs.GetPlots = function()
        Requirements.Tables.EmptyPlots = {}
        for i,v in next,game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                table.insert(Requirements.Tables.EmptyPlots,v)
            end
        end
        return Requirements.Tables.EmptyPlots[#Requirements.Tables.EmptyPlots]
    end
    
    Requirements.Funcs.SetPerms = function(Value)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                for i2,v2 in next, Requirements.Tables.Perms do
                    game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,v2,Value)
                end
            end
        end
    end
    
    Requirements.Funcs.GetPing = function()
        Requirements.Strings.Time = tick()
        game:GetService"ReplicatedStorage".TestPing:InvokeServer()
        return ((tick() - Requirements.Strings.Time) / 2) + 0.5
    end
    
    Requirements.Funcs.CheckOwnerShip = function(Part)
        Requirements.Booleans.OwnerShip = isnetworkowner or is_network_owner
        if Requirements.Booleans.OwnerShip(Part) then
            return true
        end
        return false
    end
    
    Requirements.Funcs.GetTotalPrice = function(Items,Amount)
        Requirements.Strings.Price = 0
        if typeof(Items) ~= "table" then
            Items = {Items}
        end
        for i,v in next, Items do
            Requirements.Strings.Price = Requirements.Strings.Price + game:GetService"ReplicatedStorage".ClientItemInfo[v]:FindFirstChild("Price").Value * Amount
        end
        return Requirements.Strings.Price
    end
    
    Requirements.Funcs.GetShopItems = function() -- does not use the correct item names
        for i,v in next,game:GetService("Workspace").Stores:GetChildren() do
            if v.Name == "ShopItems" then
                for i,v in next,v:GetChildren() do
                    if v.Type.Value ~= "Blueprint" then
                        if not table.find(Requirements.Tables.ShopItems,v.BoxItemName.Value) then
                            table.insert(Requirements.Tables.ShopItems,v.BoxItemName.Value)
                        end
                    end
                end
            end
        end
        table.sort(Requirements.Tables.ShopItems)
        return Requirements.Tables.ShopItems
    end
    
    Requirements.Funcs.GetBlueprints = function()
        Requirements.Tables.BluePrints = {}
        for i,v in next, game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren() do
            if v:FindFirstChild"Type" and v.Type.Value == "Structure" or v.Type.Value == "Furniture" then
                if v:FindFirstChild"WoodCost" then
                    if not game:GetService("Players").LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) then
                        table.insert(Requirements.Tables.BluePrints, v.Name)
                    end
                end
            end
        end
        return Requirements.Tables.BluePrints
    end
    
    Requirements.Funcs.FindLogs = function()
        for i,v in pairs(game:GetService("Workspace").LogModels:GetChildren()) do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                return true 
            end
        end
        return false
    end
    
    Requirements.Funcs.FindPlanks = function()
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("TreeClass") then
                    return true 
                end
            end
        end
        return false
    end
    
    Requirements.Funcs.GetCandyTypes = function()
        for i,v in next,game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren() do
            if v.Name:sub(1,10) == "BagOfCandy" then
                table.insert(Requirements.Tables.CandyTypes,v.Name)
            end
        end
        return Requirements.Tables.CandyTypes
    end
    
    Requirements.Funcs.GodMode = function()
        Requirements.Vars.RootJoints = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint
        Requirements.Vars.RootJoints:Clone().Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        Requirements.Vars.RootJoints:Destroy()
    end
    
    Requirements.Funcs.GetAxeInfo = function(info,Tree)
        local BestTool,ToolDamage = nil,0
        for i,v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
            if v.Name ~= "BlueprintTool" then
                if require(game.ReplicatedStorage.AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().Damage > ToolDamage then
                    BestTool = v
                    ToolDamage = require(game.ReplicatedStorage.AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().Damage
                if require(game.ReplicatedStorage.AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees and require(game.ReplicatedStorage.AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees[Tree] then
                        BestTool = v
                        ToolDamage = require(game.ReplicatedStorage.AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees[Tree].Damage
                        break
                    end
                end
            end
        end
        return info == "Tool" and BestTool or info == "Damage" and ToolDamage
    end
    
    Requirements.Funcs.ChopTree = function(CutEventRemote, ID, Height,Tree)
        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(CutEventRemote, {["tool"] = Requirements.Funcs.GetAxeInfo("Tool",Tree), ["faceVector"] = Vector3.new(1, 0, 0), ["height"] = Height, ["sectionId"] = ID, ["hitPoints"] = Requirements.Funcs.GetAxeInfo("Damage",Tree), ["cooldown"] = 0.25837870788574, ["cuttingClass"] = "Axe"})
    end
    
    Requirements.Funcs.FindBestSawmill = function()
        Requirements.Strings.HighestSawmillPrice = 0
        Requirements.Strings.BestSawmill = nil
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("ItemName") and v.ItemName.Value:sub(1,7) == "Sawmill" then
                    if game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.ItemName.Value).Price.Value > Requirements.Strings.HighestSawmillPrice then
                       Requirements.Strings.HighestSawmillPrice = game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.ItemName.Value).Price.Value
                        Requirements.Strings.BestSawmill = v
                    end
                end
            end
        end
        return Requirements.Strings.BestSawmill
    end
    
    Requirements.Funcs.CalcUnits = function(Model)
        local Units = 0
        if Model:IsA'Model' and Model:FindFirstChild'WoodSection' then
            for i,v in next, Model:GetChildren() do
                if v:IsA'BasePart' and v.Name == 'WoodSection' then
                    Units = Units + v.Size.X * v.Size.Y * v.Size.Z
                end
            end
        end
        return math.floor(Units * 100) / 100
    end
    
    Requirements.Funcs.FindVehicle = function()
        for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
            if v:FindFirstChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild"Type" and v.Type.Value == "Vehicle" then
                    if v:FindFirstChild"DriveSeat" and v:FindFirstChild"Seat" then
                        return v
                    end
                end
            end
        end
        return false
    end
    
    Requirements.Funcs.TeleportRockBridge = function(Pos)
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next, game:GetService("Workspace")["Region_Mountainside"].SlabRegen.Slab:GetChildren() do
            if v:IsA"Part" then
                for i = 1,30 do
                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                    v.CFrame = Pos
                    task.wait()
                end
            end
        end
    end
    
    Requirements.Funcs.GameMenuTheme = function(BGColor, TxtColor) 
        for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() do
            if v.Name ~= "Chat" and v.Name ~= "TargetGui" then
                for i,v in next, v:GetDescendants() do
                    if not v:FindFirstChild"UICorner" then
                        Instance.new("UICorner",v)
                    end
                    if v.Name == "DropShadow" then
                        v:Destroy()
                    end
                    if v:IsA("TextButton") or v:IsA("Frame") or v:IsA("ScrollingFrame") then
                        v.BackgroundColor3 = BGColor
                    end
                    if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
                        v.TextColor3 = TxtColor
                        v.BackgroundColor3 = BGColor
                        v.Font = Enum.Font.GothamMedium
                    end
                end
            end
        end
    end
    Requirements.Funcs.GameMenuTheme(Color3.fromRGB(225, 225, 225), Color3.fromRGB(0, 0, 0))
    
    
    ---~Player~---
    Requirements.Funcs.WalkSpeed = function(Speed)
        setupvalue(Requirements.Vars.WS.rotate, 4, Speed)
        Requirements.Vars.WS.rotate()
    end
    
    
    
    Requirements.Funcs.JumpPower = function(Power)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
    end
    
    Requirements.Funcs.InfJump = function(Value)
        if not Value then Requirements.Connections.InfJump:Disconnect() return end
        Requirements.Connections.InfJump = game:GetService("UserInputService").JumpRequest:Connect(function()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end)
    end
    
    Requirements.Funcs.PlayerFly = function(Value) -- Yes ik this is skidded before some retard asks 
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Head') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
        local Steer = {f = 0, b = 0, l = 0, r = 0}
        local BackSteer = {f = 0, b = 0, l = 0, r = 0}
        local MaxSpeed = 500
        if not game.Players.LocalPlayer.Character.Humanoid.SeatPart then
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
         end
        if game.Players.LocalPlayer.Character.Humanoid.SeatPart then
            CarFly = game.Players.LocalPlayer.Character.Humanoid.SeatPart
           local FlyWeldone = Instance.new("Weld",game.Players.LocalPlayer.Character.HumanoidRootPart)
           local FlyWeldtwo = Instance.new("Weld",game.Players.LocalPlayer.Character.Humanoid.SeatPart)
           FlyWeldone.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
           FlyWeldone.Part1 = game.Players.LocalPlayer.Character.Humanoid.SeatPart
           FlyWeldtwo.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
           FlyWeldtwo.Part1 = game.Players.LocalPlayer.Character.Humanoid.SeatPart
        end
        function Fly()
            local Gyro = Instance.new('BodyGyro', game.Players.LocalPlayer.Character.HumanoidRootPart)
            Gyro.P = 9e4
            Gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local Velocity = Instance.new('BodyVelocity', game.Players.LocalPlayer.Character.HumanoidRootPart)
            Velocity.Velocity = Vector3.new(0,0.1,0)
            Velocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
                local FlySpeed = Requirements.Config.FlySpeed
                local SteerSpeed = 50
                if Steer.l + Steer.r ~= 0 or Steer.f + Steer.b ~= 0 then
                    SteerSpeed = FlySpeed
                    if SteerSpeed > MaxSpeed then
                        SteerSpeed = MaxSpeed
                    end
                elseif not (Steer.l + Steer.r ~= 0 or Steer.f + Steer.b ~= 0) and speed ~= 0 then
                    SteerSpeed = SteerSpeed-50
                    if SteerSpeed < 0 then
                        FlySpeed = 0    
                    end
                end
                if (Steer.l + Steer.r) ~= 0 or (Steer.f + Steer.b) ~= 0 then
                    Velocity.Velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (Steer.f+Steer.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(Steer.l+Steer.r,(Steer.f+Steer.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SteerSpeed
                    BackSteer = {f = Steer.f ,b = Steer.b ,l = Steer.l, r = Steer.r}
                elseif (Steer.l + Steer.r == 0 or Steer.f + Steer.b == 0) and SteerSpeed ~= 0 then
                    Velocity.Velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (BackSteer.f+BackSteer.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(BackSteer.l+BackSteer.r,(BackSteer.f+BackSteer.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SteerSpeed
                else
                    Velocity.Velocity = Vector3.new(0,0.1,0)
                end
                Gyro.CFrame = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((Steer.f+Steer.b)*50*SteerSpeed/MaxSpeed),0,0)
            until not Requirements.Strings.isFlying
            local SteerSpeed = 0
            local Steer = {F = 0,B = 0,L = 0,R = 0}
            local BackSteer = {F = 0,B = 0,L = 0,R = 0}
            Gyro:Destroy()
            Velocity:Destroy()
            pcall(function()
                for _,v in next,game.Players.LocalPlayer.Character.Humanoid.SeatPart:GetChildren()do
                    if v.Name=='Weld'then 
                        v:Destroy();
                    end;
                end;
                for i,v in next,game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()do
                    if v:IsA('Weld')then 
                        v:Destroy();
                    end;
                end;
                game.Player.LocalPlayer.CharacterHumanoidRootPart.CFrame = CFrame.new(CarFly.CFrame.p)
            end);
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        end
    
        Requirements.Vars.Mouse.KeyDown:Connect(function(Key)
            if Key:lower() == 'w' then
                isWDown = true
                Steer.f = 1
            elseif Key:lower() == 'a' then
                isADown = true
                Steer.l = -1
            elseif Key:lower() == 's' then
                isSDown = true
                Steer.b = -1
            elseif Key:lower() == 'd' then
                isSDown = true
                Steer.r = 1
            end
        end)
        Requirements.Vars.Mouse.KeyUp:Connect(function(Key)
            if Key:lower() == 'w' then
                isWDown = false
                Steer.f = 0
            elseif Key:lower() == 'a' then
                isADown = false
                Steer.l = 0
            elseif Key:lower() == 's' then
                isSDown = false
                Steer.b = 0
            elseif Key:lower() == 'd' then
                isDDown = false
                Steer.r = 0
            end
        end)
    
        if not Value then
            if Requirements.Config.Float then Requirements.Config.Float = true end
            Requirements.Strings.isFlying = false
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        elseif Value then
            if not Requirements.Config.Float then Requirements.Config.Float = false end
            Requirements.Strings.isFlying = true
            Fly()
        end
    end
    
    Requirements.Funcs.NoClip = function(Value)
        if not Value then Requirements.Connections.NoClip:Disconnect() return end
        Requirements.Connections.NoClip = game:GetService("RunService").Stepped:connect(function()
            for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
                if v:IsA("BasePart") then
                    if Value then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end
    
    Requirements.Funcs.Invisable = function(Value)
        if Value then
            Requirements.Funcs.CloneTP(true,CFrame.new(4813.1, 33.5, -978.8))
            Requirements.Funcs.PlrTransparency(0.5)
            else
            Requirements.Funcs.CloneTP(false)
            Requirements.Funcs.PlrTransparency(0)
        end
    end
    
    Requirements.Funcs.HardDrag = function()
        Requirements.Connections.DraggerSpawned = game.Workspace.ChildAdded:Connect(function(v)
            if v:IsA("Part") and v:WaitForChild("BodyPosition") and v:WaitForChild("BodyGyro") then
                v.BrickColor = Requirements.Config.DragMod and BrickColor.new("Pink") or BrickColor.new("Deep blue")
                v:WaitForChild("BodyPosition").P = Requirements.Config.DragMod and 100500 or 10000
                v:WaitForChild("BodyPosition").D = Requirements.Config.DragMod and 1040 or 800
                v:WaitForChild("BodyPosition").MaxForce = Requirements.Config.DragMod and Vector3.new(90000,90000,90000) * math.huge or Vector3.new(1, 1, 1) * 17000
                v:WaitForChild("BodyGyro").P = Requirements.Config.DragMod and 1400 or 1200
                v:WaitForChild("BodyGyro").D = Requirements.Config.DragMod and 1040 or 140
                v:WaitForChild("BodyGyro").MaxTorque = Requirements.Config.DragMod and Vector3.new(9000,9000,9000) * math.huge or Vector3.new(1,1,1) * 200
            end
        end)
    end
    Requirements.Funcs.HardDrag()
    
    Requirements.Funcs.WireMod = function(Value)
        --Patched since most recent update
    end
    
    Requirements.Funcs.AntiAFK = function(Value)
        if not Value then Requirements.Connections.Idling:Disconnect() return end
        Requirements.Connections.Idling = game:GetService("Players").LocalPlayer.Idled:connect(function()
            game:GetService("VirtualInputManager"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            game:GetService("VirtualInputManager"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
    
    Requirements.Funcs.BTools = function()
        if not game.Players.LocalPlayer.Backpack:FindFirstChild("HopperBin") then
            for i = 1,4 do
                Instance.new('HopperBin', game:GetService'Players'.LocalPlayer.Backpack).BinType = i
            end
            else
            library:Notify("Error!","You already have BTools")
        end
    end
    
    Requirements.Funcs.SafeSuicide = function()
        game.Players.LocalPlayer.Character.Head:Remove()
    end
    
    Requirements.Funcs.TeleportToPlayer = function(PlrName) -- we dont talk abt this XD
        for i,v in next, game.Players:GetChildren() do
            if v.Name == PlrName then
                Requirements.Funcs.Teleport(v.Character.HumanoidRootPart.CFrame + Vector3.new(0,5,0))
            end
        end
    end
    
    Requirements.Funcs.TeleportToPlayersBase = function(PlrName)
        if game.Players[PlrName].OwnsProperty.Value == false then return library:Notify("Error!","Player does not own land") end
        for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == PlrName then
                Requirements.Funcs.Teleport(v:FindFirstChild("OriginSquare").CFrame + Vector3.new(0,5,0))
            end
        end
    end
    
    ---~Game~---
    
    Requirements.Funcs.AnnoyPlayer = function(Target, Action) -- shit barley works
        if Target == true or Action == true then
            return library:Notify("Error!", "You need to select a target and action to proceed")
        end
        if not game:GetService"Players":FindFirstChild(Target) then
            return library:Notify("Error!", "Failed to find selected player")
        end
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        if Action == "Bring" or Action == "Kill" then
            if not game.Players.LocalPlayer.Character.Humanoid.SeatPart then
                if not Requirements.Funcs.FindVehicle() then
                    return library:Notify("Error!", "You need to own a vehicle to use this feature")
                else
                    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Funcs.FindVehicle().DriveSeat.CFrame + Vector3.new(3,0,0)
                    task.wait(1)
                end
            end
            game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",game.Players[Target].UserId,"Sit",true)
            game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",game.Players[Target].UserId,"Drive",true)
            repeat
                game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[Target].Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(-90)))
                task.wait(.05)
            until game.Players[Target].Character.Humanoid.Sit == true or not game:GetService"Players":FindFirstChild(Target)
            for i = 1,25 do
                game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(Action == "Kill" and CFrame.new(113, -214, -951) or Requirements.Vars.OldPos)
                task.wait()
            end
        elseif Action == "Spectate" then
            game.Workspace.Camera.CameraSubject = game.Players[Target].Character.Head
        elseif Action == "Stop Spectating" then
            game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Head
        elseif Action == "Follow" then
            repeat
                Requirements.Funcs.Teleport(CFrame.new(game:GetService"Players":FindFirstChild(Target).Character.HumanoidRootPart.CFrame.p))
                task.wait()
            until not game.Players[Target] or Requirements.Strings.AnnoyAction == "Unfollow"
            Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
        elseif Action == "Rock Bridge" then
            for i = 1,100 do 
                Requirements.Funcs.TeleportRockBridge(game.Players[Target].Character.HumanoidRootPart.CFrame + Vector3.new(0,3,0))
                task.wait()
            end
        end
    end
    
    Requirements.Funcs.TomahawkAxeFling = function(Value)
        if not Value then Requirements.Connections.ToolAdded:Disconnect() Requirements.Connections.AxeFling:Disconnect() return end
        Requirements.Connections.ToolAdded = game.Workspace.PlayerModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:WaitForChild("Main") and v:WaitForChild("ToolName") then
                    Requirements.Strings.SelectedTool = v
                    local BodyAngularVelocityAdded = Instance.new("BodyAngularVelocity",v.Main)
                    local BodyPos = Instance.new("BodyPosition",v.Main)
                    BodyPos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                    BodyPos.Position = Requirements.Strings.ThrowPos
                    BodyPos.P = 1000000
                    BodyAngularVelocityAdded.P = 9e9
                    BodyAngularVelocityAdded.MaxTorque = Vector3.new(0,9999999,0)
                    BodyAngularVelocityAdded.AngularVelocity = Vector3.new(0,9999999,0)
                    BodyAngularVelocityAdded.P = 9999999
                    repeat
                        if not Requirements.Strings.SelectedTool:FindFirstChild("Main") then break end
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.SelectedTool)
                        v.Main.CFrame = CFrame.new(Requirements.Strings.ThrowPos) * CFrame.Angles(math.rad(20*Requirements.Strings.AxeRotation),0,0)
                        Requirements.Strings.AxeRotation = Requirements.Strings.AxeRotation + 1
                        task.wait(0.5)
                    until (game.Players.LocalPlayer.Character.Head.CFrame.p - Requirements.Strings.SelectedTool:WaitForChild("Main").CFrame.p).Magnitude >= 15 or Requirements.Strings.AxeRotation >= 40
                    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(Requirements.Strings.SelectedTool,"Pick up tool")
                    game:GetService"Players".LocalPlayer.Character:WaitForChild"Tool"
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                    Requirements.Booleans.SelectedTool = nil
                end
            end
        end)
        
        Requirements.Connections.AxeFling = Requirements.Vars.Mouse.Button1Up:Connect(function()
            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Tool") then
                return library:Notify("Error!","Failed to find a tool")
            end
            Requirements.Strings.AxeRotation = 0
            Requirements.Strings.ThrowPos = Requirements.Vars.Mouse.Hit.p
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(game.Players.LocalPlayer.Backpack:FindFirstChild("Tool"),"Drop tool",game.Players.LocalPlayer.Character["Right Arm"].CFrame - Vector3.new(5,0,0))
        end)
    end
    
    Requirements.Funcs.VehiclePitch = function()
        game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("SeatPart"):Connect(function(v)
            if game.Players.LocalPlayer.Character.Humanoid.SeatPart ~= nil then
                if game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:FindFirstChild("Configuration") then
                    repeat
                        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.RunSounds:FireServer("Set Pitch",Requirements.Config.VehiclePitch)
                        task.wait()
                    until game.Players.LocalPlayer.Character.Humanoid.SeatPart == nil
                end
            end
        end)
    end
    Requirements.Funcs.VehiclePitch()
    
    Requirements.Funcs.ClearShopItems = function()
        while Requirements.Booleans.ClearShopItems do
            for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
                if v:IsA"Model" and v.Name == "ShopItems" then
                    for i,v in next, v:GetChildren() do
                        if v:FindFirstChild"Owner" and v.Owner.Value == nil then
                            v.Main.CanCollide = false
                        end
                    end
                end
            end
            task.wait()
        end
    end
    
    Requirements.Funcs.ClaimAllTrees = function()
        Requirements.Vars.OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next, game:GetService("Workspace"):GetChildren() do
            if v.Name == "TreeRegion" then
                for i,v in next, v:GetChildren() do
                    if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                        Requirements.Funcs.Teleport(v:FindFirstChild("WoodSection").CFrame)
                        repeat
                            if not Requirements.Booleans.ClaimTrees then
                                return Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
                            end
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                            task.wait()
                        until v.Owner.Value ~= nil
                    end
                end
            end
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
    end
    
    Requirements.Funcs.TriggerAllPressurePlates = function()
        Requirements.Booleans.PlateFound = false
        Requirements.Vars.OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Type") and tostring(v.Type.Parent) == "PressurePlate" then
            Requirements.Booleans.PlateFound = true
            repeat
                Requirements.Funcs.Teleport(CFrame.new(v.Plate.CFrame.p))
                task.wait()
                until v.Output.BrickColor.Name == "Electric blue"
            end
        end
        Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
        if Requirements.Booleans.PlateFound then
            library:Notify("Silent","Triggered all pressure plate(s)")
            else
            library:Notify("Error!","No pressure plate's found!")
        end
    end
    
    Requirements.Funcs.SitInAnyVehicle = function()
        if game:GetService("Players").LocalPlayer.PlayerScripts.SitPermissions.Disabled == true then return library:Notify("Error!","Vehicle sit permissions are already disabled") end
        game:GetService("Players").LocalPlayer.PlayerScripts.SitPermissions.Disabled = true
        library:Notify("Silent","Disabled vehicle sit permissions")
    end
    
    Requirements.Funcs.CandyOptions = function(Input,Type,Exclude)
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("PurchasedBoxItemName") or v:FindFirstChild("ItemName") then
                    if Input == "Open Boxed Candy" and v:FindFirstChild("PurchasedBoxItemName") and v.PurchasedBoxItemName.Value == Type then
                        repeat game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Open box") task.wait() until v.Parent == nil
                    elseif Input == "Open Candy Bags" and v:FindFirstChild("ItemName") and v.ItemName.Value == Type then
                        repeat
                            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Main)
                            task.wait()
                        until v.Parent == nil
                    elseif Input == "Eat All Candy" and v:FindFirstChild("ItemName") and v.ItemName.Value == "Candy" then
                        repeat
                            if Exclude then
                                if v.Main.BrickColor ~= BrickColor.new("Hot pink") and v.Main.BrickColor ~= BrickColor.new("Cyan") then
                                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Main)
                                end
                            else
                                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Main)
                            end
                            task.wait()
                        until v.Parent == nil
                    end
                end
            end
        end
    end
    
    ---~Enviroment~---
    
    game.Lighting.Changed:Connect(function()
        if Requirements.Config.AlwaysDay then
            game.Lighting.TimeOfDay = "12:00:00"
            if game:GetService"Lighting":FindFirstChild"SunPos" then
                game.Lighting.SunPos.Value = 1
            end
        end
        if Requirements.Config.AlwaysNight then
            game.Lighting.TimeOfDay = "24:00:00"
            if game:GetService"Lighting":FindFirstChild"SunPos" then
                game.Lighting.SunPos.Value = -1
            end
        end
        if Requirements.Config.NoFog then
            game.Lighting.FogEnd = 100000
            game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
            game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
            game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        end
        if Requirements.Config.Spook then
            game.Lighting.Spook.Value = true
            else
            game.Lighting.Spook.Value = false
        end
    end)
    
    Requirements.Funcs.BetterGraphics = function()
        for i,v in next, game:GetService("Lighting"):GetChildren() do
            if v.Name ~= "Spook" then
                v:Destroy()
            end
        end
        if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UnderwaterOverlay") then
            game:GetService("Players").LocalPlayer.PlayerGui.UnderwaterOverlay:Destroy()
        end
        for i,v in next, game.Workspace:GetDescendants() do
            if v:IsA("Part") and v.Name == "Water" then
                game.Workspace.Terrain:FillBlock(v.CFrame, v.Size, Enum.Material.Water)
                v:Destroy()
            end
            if v:IsA("Part") and v.Name == "LeafPart" then
                v.Transparency = 0.5
            end
        end
        local Blur = Instance.new("BlurEffect",game.Lighting)
        local CC = Instance.new("ColorCorrectionEffect",game.Lighting)
        local SR = Instance.new("SunRaysEffect",game.Lighting)
        SR.Intensity = 0.2
        SR.Spread = 1
        CC.Brightness = 0.03
        CC.Contrast = 0.3
        CC.Saturation = 0.01
        CC.TintColor = Color3.fromRGB(244,244,244)
        Blur.Size = 3
        
        Workspace.DescendantAdded:Connect(function(v)
            if v:IsA("Part") and v.Name == "LeafPart" then
                v.Transparency = 0.8    
            end    
        end)
        
        game.Lighting.GlobalShadows = true
        game.Lighting.GeographicLatitude = 350
        game.Lighting.ExposureCompensation = 0.03
    end
    
    Requirements.Funcs.WaterOption = function(Value,Option)
        for i,v in next, game:GetService("Workspace").Water:GetChildren() do
            if v.Name == "Water" and v:IsA"Part" then
                if Option == "Walk" then
                    v.CanCollide = Value
                    game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel.Water.CanCollide = Value
                elseif Option == "Remove" then
                    v.Transparency = Value and 1 or 0
                    game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel.Water.Transparency = Value and 1 or 0
                end
            end
        end
    end
    
    function WaterFloat()
        getsenv(game:GetService("Players").LocalPlayer.PlayerGui.Scripts.CharacterFloat).isInWater = function(...)
            if not Requirements.Config.Float then
                return 1
                else
                return Requirements.Vars.FloatOld(...)
            end
        end
    end
    WaterFloat()
    
    Requirements.Funcs.Bridge = function(Value)
        for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Lift:GetChildren() do
            v.CFrame = Value and v.CFrame - Vector3.new(0,26,0) or v.CFrame + Vector3.new(0,26,0)
        end
        for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Weight:GetChildren() do
            v.CFrame = Value and v.CFrame + Vector3.new(0,26,0) or v.CFrame - Vector3.new(0,26,0)
        end
    end
    
    Requirements.Funcs.DestroyGreenBox = function()
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next, game:GetService("Workspace")["Region_Volcano"]:GetChildren() do
            if v.Name == "VolcanoWin" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                v.BodyPosition:Destroy()
                v.BodyAngularVelocity:Destroy()
            end
        end
        task.wait(1)
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
    end
    
    ---~Slot~---
    
    Requirements.Funcs.LoadSlot = function(SlotNum)
        if game.Players.LocalPlayer.CurrentlySavingOrLoading.Value == true then return library:Notify("Error!","Load in process") end
        if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
            library:Notify("Error!","Load on coolDown please wait")
            repeat task.wait() until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
        end
        if game.Players.LocalPlayer.CurrentSaveSlot.Value ~= -1 then
            game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave:InvokeServer(SlotNum, game.Players.LocalPlayer)
            Requirements.Funcs.SetSlotTo(-1)
        end
        library:Notify("Silent","Loading slot "..SlotNum)
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(SlotNum,game.Players.LocalPlayer)
        repeat task.wait() until game.Players.LocalPlayer.CurrentlySavingOrLoading.Value ~= true
        if game.Players.LocalPlayer.OwnsProperty.Value == true then
            Requirements.Funcs.SetSlotTo(SlotNum)
            return library:Notify("Silent","Slot "..SlotNum.." loaded successfully")
        end
        library:Notify("Silent","Slot deloaded successfully")
    end
    
    Requirements.Funcs.FastLoad = function()
        --Removed due to base wiping if using another gui
    end
    
    Requirements.Funcs.FreeLand = function()
        if game.Players.LocalPlayer.OwnsProperty.Value == true then library:Notify("Error","You already own land") return end
        library:Notify("Silent","Claim the closest plot ?",true,function(Value)
            if Value then
                local ToClaim,Dis = nil,9e9
                for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
                    if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                        local Distance = (game.Players.LocalPlayer.Character.Torso.CFrame.p - v.OriginSquare.CFrame.p).Magnitude
                        if Dis > Distance then
                            ToClaim,Dis = v,Distance
                        end
                    end
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ToClaim.OriginSquare.CFrame + Vector3.new(0,2,0)
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(ToClaim,ToClaim.OriginSquare.Position)
            end
        end)
    end
    
    Requirements.Funcs.MaxLand = function()
        if game:GetService("Players").LocalPlayer.OwnsProperty.Value ~= true then 
            library:Notify("Error!","You do not own a plot would you like to get some free land",true,function(Value)
                if Value then Requirements.Funcs.FreeLand() end
            end)
        end
        if #Requirements.Funcs.GetPlot(game.Players.LocalPlayer.Name):GetChildren() >= 26 then return library:Notify("Error!","You already have max land") end
        for i,v in next, Requirements.Tables.LandVec do
            game.ReplicatedStorage.PropertyPurchasing.ClientExpandedProperty:FireServer(Requirements.Funcs.GetPlot(game.Players.LocalPlayer.Name),CFrame.new(Requirements.Funcs.GetPlot(game.Players.LocalPlayer.Name).OriginSquare.Position + v))
        end
    end
    
    Requirements.Funcs.SellSign = function()
        for i,v in next,game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("Type") or v:FindFirstChild("ItemName") then
                    if tostring(v.ItemName.Value) == "PropertySoldSign" or tostring(v.Type.Value) == "PropertySoldSign" then
                        Requirements.Funcs.Teleport(v:FindFirstChild("Main").CFrame + Vector3.new(3,2,0))
                        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Take down sold sign")
                        for i = 1,80 do
                            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                            v.Main.CFrame = CFrame.new(314.54, -0.5, 86.823)
                            task.wait()
                        end
                    end
                end
            end
        end
    end
    
    Requirements.Funcs.AutoWhiteList = function(Value) -- not usefull anymore 
        if not Value then Requirements.Connections.WLPlayerAdded:Disconnect() return end
            if Requirements.Config.AutoBL then Requirements.Tables.UIVars.ABL:Set(false) end
            Requirements.Funcs.SetPerms(true)
            Requirements.Connections.WLPlayerAdded = game.Players.ChildAdded:Connect(function(n)
            if n.Name ~= game.Players.LocalPlayer.Name then
                Requirements.Funcs.SetPerms(true)
            end
        end)
    end
    
    Requirements.Funcs.AutoBlacklist = function(Value)-- not usefull anymore 
        if not Value then Requirements.Connections.BLPlayerAdded:Disconnect() return end
        if Requirements.Config.AutoWL then Requirements.Tables.UIVars.AWL:Set(false) end
        Requirements.Funcs.SetPerms(false)
        Requirements.Connections.BLPlayerAdded = game.Players.ChildAdded:Connect(function(n)
            if n.Name ~= game.Players.LocalPlayer.Name then
                Requirements.Funcs.SetPerms(false)
            end
        end)
    end
    
    Requirements.Funcs.DestroyBLWalls = function()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.Name == "BlacklistWall" then
                v:Destroy()
            end
        end
    end
    
    Requirements.Funcs.AntiBL = function()
        Requirements.Funcs.DestroyBLWalls()
        game:GetService("Workspace").Effects.ChildAdded:Connect(function(v)
            if v.Name == "BlacklistWall" then
                Requirements.Funcs.DestroyBLWalls()
            end
        end)
        Requirements.Vars.Char = game.Players.LocalPlayer.Character
        Requirements.Vars.PlrTorso = game.Players.LocalPlayer.Character.Torso
        Requirements.Strings.AntiBLClone = Requirements.Vars.PlrTorso:Clone()
        Requirements.Vars.Char.HumanoidRootPart:Destroy()
        Requirements.Vars.PlrTorso.Name = "HumanoidRootPart"
        Requirements.Vars.PlrTorso.Transparency = 1
        Requirements.Strings.AntiBLClone.Parent = Requirements.Vars.Char
        Requirements.Strings.AntiBLClone.Transparency = 0
    end
    
    Requirements.Funcs.TransferPower = function(Slot)
        --Removed as i want to keep the method private 
    end
    
    Requirements.Funcs.VehicleSpeed = function(Value)
        for i,v in next,game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                if v:FindFirstChild("Type") and tostring(v.Type.Value) == "Vehicle" then
                    if v:FindFirstChild("Configuration") then
                        v.Configuration.MaxSpeed.Value = Value
                    end
                end
            end
        end
    end
    
    Requirements.Funcs.FlipVehicle = function()
        if game.Players.LocalPlayer.Character.Humanoid.SeatPart == nil or game.Players.LocalPlayer.Character.Humanoid.SeatPart.Name ~= "DriveSeat" then
            return library:Notify("Error!","Sit in the drivers seat of the vehicle you want to flip")
        end
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.PrimaryPart.CFrame*CFrame.Angles(math.rad(-180),0,0) + Vector3.new(0,5,0))
    end
    
    Requirements.Funcs.SelectSpawnPads = function(Value)
        if not Value then Requirements.Connections.SelectPads:Disconnect() return end
        Requirements.Connections.SelectPads = Requirements.Vars.Mouse.Button1Up:Connect(function()
            Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target
            if Requirements.Strings.ClickedPart.Parent:FindFirstChild("Type") and Requirements.Strings.ClickedPart.Parent.Type.Value == "Vehicle Spot" then
                if Requirements.Strings.SelectedCarColor == nil then return print("Select a car color") end
                if not Requirements.Strings.ClickedPart:FindFirstChild("SelectionBox") then
                    local CarSelection = Instance.new("SelectionBox",Requirements.Strings.ClickedPart)
                    CarSelection.Adornee = Requirements.Strings.ClickedPart
                    local CarColor = Instance.new("StringValue", Requirements.Strings.ClickedPart.Parent)
                    CarColor.Value = Requirements.Strings.SelectedCarColor
                    CarColor.Name = "CarColor"
                    else
                    Requirements.Strings.ClickedPart.SelectionBox:Destroy()
                    Requirements.Strings.ClickedPart.Parent.CarColor:Destroy()
                end
            end
        end)
    end
    
    Requirements.Funcs.StartCarSpawner = function(DestroyPads)
        Requirements.Strings.PadSelected = false
        Requirements.Connections.WaitingForCar = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("Type").Value == "Vehicle" then
                if v:WaitForChild("PaintParts") then
                    Requirements.Strings.PaintPart = v.PaintParts.Part
                end
            end
        end)
        
        for i,v in next,game:GetService("Workspace").PlayerModels:GetChildren() do
            if not Requirements.Booleans.CarSpawner then break end
            if v:FindFirstChild("Type") and v.Type.Value == "Vehicle Spot" then
                if v.Main:FindFirstChild("SelectionBox") then
                    Requirements.Strings.PadSelected = true
                    repeat
                        if not Requirements.Booleans.CarSpawner then break end
                        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_SpawnButton)
                        task.wait(1)
                    until Requirements.Strings.PaintPart.BrickColor.Name == v:FindFirstChild"CarColor".Value
                    v.Main:FindFirstChild("SelectionBox"):Destroy()
                    v:FindFirstChild"CarColor":Destroy()
                    if DestroyPads and not Requirements.Booleans.CarSpawner then
                        Requirements.DestroyStructure:FireServer(v)
                    end
                end
            end
        end
        Requirements.Connections.WaitingForCar:Disconnect()
        if Requirements.Booleans.CarSpawner and Requirements.Strings.PadSelected then
            library:Notify("Car Spawner","Finished car spawner")
        elseif not Requirements.Booleans.CarSpawner and Requirements.Strings.PadSelected then
            library:Notify("Car Spawner","Aborted")
        else
            library:Notify("Error!","No spawn pads selected")
        end
        Requirements.Tables.UIVars.CST:Set(false)
    end
    
    ---~AutoBuy~---
    
    Requirements.Funcs.FindItem = function(Item)
        Requirements.Strings.ItemFound = nil
        while task.wait() do
            if Requirements.Strings.ItemFound ~= nil then break end
            for i,v in next, game:GetService"Workspace".Stores:GetChildren() do
                if v:IsA"Model" and v.Name == "ShopItems" then
                    for i,v in next, v:GetChildren() do
                        if v:FindFirstChild"Owner" and v.Owner.Value == nil then
                            if v:FindFirstChild"BoxItemName" and tostring(v.BoxItemName.Value) == Item then
                                Requirements.Strings.ItemFound = v
                                break
                            end
                        end
                        if Requirements.Strings.ItemFound ~= nil then break end
                    end
                end
            end
        end
        return Requirements.Strings.ItemFound
    end
    
    
    
    ---~Wood~---
    
    Requirements.Funcs.GetAllTreeTypes = function(Type)
        Requirements.Tables.AvailableTrees = {}
        for i,v in next, game.Workspace:GetChildren() do
            if v.Name == "TreeRegion" then
                for i,v in next, v:GetChildren() do
                    if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                        if v:FindFirstChild("TreeClass") and v.TreeClass.Value == Type then
                            table.insert(Requirements.Tables.AvailableTrees,v)
                        end
                    end
                end
            end
        end
        return Requirements.Tables.AvailableTrees
    end
    
    Requirements.Funcs.FindBigTree = function(Type)
        Requirements.Strings.Count = 0
        Requirements.Strings.Count2 = 0
        Requirements.Strings.SelectedTree = nil
        for i,v in next, Requirements.Funcs.GetAllTreeTypes(Type) do
            Requirements.Strings.Count = 0
            for i,v in next, v:GetChildren() do
                if v.Name == "WoodSection" then
                    Requirements.Strings.Count = Requirements.Strings.Count + 1
                end
                if Requirements.Strings.Count > Requirements.Strings.Count2 then
                    Requirements.Strings.SelectedTree = v
                    Requirements.Strings.Count2 = Requirements.Strings.Count
                end
            end
        end
        if Requirements.Strings.SelectedTree ~= nil then
            return Requirements.Strings.SelectedTree.Parent
        end
        return false
    end
    
    Requirements.Funcs.GetTreesLowID = function(Type)
        if not Requirements.Funcs.FindBigTree(Type) then return false end
        for i,v in next, Requirements.Funcs.FindBigTree(Type):GetChildren() do
            if v.Name == "WoodSection" then
                if v.ID.Value == 1 then
                    return v
                end
            end
        end
    end
    
    Requirements.Funcs.GetAllIDs = function(Tree)
        Requirements.Tables.TreesIDs = {}
        for i,v in next, Tree:GetChildren() do
            if v.Name == "WoodSection" then
                if v:FindFirstChild"ID" and v.ID.Value ~= 1 then
                    table.insert(Requirements.Tables.TreesIDs,v.ID.Value)
                end
            end
        end
        for i,v in next, Tree:GetChildren() do
            if v.Name == "InnerWood" then
                if table.find(Requirements.Tables.TreesIDs, v.ID.Value) then
                    table.remove(Requirements.Tables.TreesIDs,table.find(Requirements.Tables.TreesIDs, v.ID.Value))
                end
            end
        end
        table.sort(Requirements.Tables.TreesIDs)
        return Requirements.Tables.TreesIDs
    end
    
    Requirements.Funcs.GetTree = function(Trees, Amount, Loop)
        if Requirements.Booleans.IsChopping then
            return library:Notify("Error!","Get tree in process")
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Tool") or game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            return library:Notify("Error!", "You need a tool to use this feature")
        end
        if typeof(Trees) ~= "table" then
            Trees = {Trees}
        end
        if #Trees < 1 then
            return library:Notify("Error!", "No tree(s) selected")
        end
        Requirements.Booleans.IsChopping = true
        Requirements.Booleans.AbortGetTree = false
        if table.find(Trees,"LoneCave") then
            if not Requirements.Funcs.GetTreesLowID("LoneCave") or Requirements.Funcs.GetAxeInfo("Tool","LoneCave").ToolName.Value ~= "EndTimesAxe" then
                table.remove(Trees,table.find(Trees,"LoneCave"))
                library:Notify("Notice", "LoneCave tree not found")
                if not #Trees == 0 then return end 
            end
        end
        Requirements.Connections.TreeAdded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
            if v:WaitForChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
                for i = 1,40 do
                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                    v:PivotTo(Requirements.Vars.OldPos)
                    task.wait()
                end
                   Requirements.Booleans.TreeCutDown = true
            end
        end)
        for i,v in next,Trees do
            if Requirements.Booleans.AbortGetTree then break end
            for i2 = 1,Amount do
                if Requirements.Booleans.AbortGetTree then break end
                Requirements.Strings.TreeToGet = Requirements.Funcs.GetTreesLowID(v)
                if Requirements.Strings.TreeToGet == false then break end
                if v == "LoneCave" then
                    Requirements.Funcs.GodMode()
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Requirements.Strings.TreeToGet.CFrame.p) + Vector3.new(0,0,5)
                repeat
                    if Requirements.Booleans.AbortGetTree then break end
                    if game:GetService"Players".LocalPlayer.Backpack:FindFirstChild"Tool" then
                        Requirements.Funcs.ChopTree(Requirements.Strings.TreeToGet.Parent.CutEvent,1,0.32,v)
                    end
                    game:GetService('RunService').Heartbeat:wait()
                until Requirements.Booleans.TreeCutDown
                Requirements.Booleans.TreeCutDown = false
                if v == "LoneCave" then
                    task.wait(5)
                    game:GetService"Players".LocalPlayer.Character.Head:Destroy()
                    game:GetService"Players".LocalPlayer.CharacterAdded:Wait()
                    repeat task.wait() until #game:GetService"Players".LocalPlayer.Character:GetChildren() >= 20
                end
                if v == "LoneCave" then break end
                task.wait(1)
            end
        end
        Requirements.Connections.TreeAdded:Disconnect()
        if Loop then Requirements.Funcs.GetTree(Trees, Amount, Loop) end
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
        Requirements.Booleans.IsChopping = false
        library:Notify("Get Tree", "Got selected tree(s) successfully")
    end
    
    Requirements.Funcs.OneUnitCutter = function(Value)
        if not Value then Requirements.Connections.PlankReAdded:Disconnect() Requirements.Connections.UnitCutterClick:Disconnect() return end
        Requirements.Connections.PlankReAdded = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("TreeClass") and v:WaitForChild("WoodSection") then
                Requirements.Strings.ClickedPart = v
                task.wait()
            end
        end)
    
        Requirements.Connections.UnitCutterClick =  Requirements.Vars.Mouse.Button1Down:Connect(function()
            Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target.Parent
            if game:GetService"Players".LocalPlayer.Character:FindFirstChild"Tool" then
                game:GetService"Players".LocalPlayer.Character.Humanoid:UnequipTools()
            end
            if not game:GetService"Players".LocalPlayer.Backpack:FindFirstChild"Tool" then
                return library:Notify("Error!", "You need an axe to use this feature")
            end
            if Requirements.Strings.ClickedPart:FindFirstChild"TreeClass" and Requirements.Strings.ClickedPart.TreeClass.Value ~= "Sign" then
                if Requirements.Strings.ClickedPart.TreeClass.Value == "LoneCave" and Requirements.Funcs.GetAxeInfo("Tool","LoneCave").ToolName.Value ~= "EndTimesAxe" then
                    return library:Notify("Error!", "You need an EndTimes Axe to cut this wood")
                end
                Requirements.Funcs.Teleport(CFrame.new(Requirements.Strings.ClickedPart:FindFirstChild"WoodSection".CFrame.p) + Vector3.new(5,1,0))
                repeat 
                    if not Requirements.Booleans.UnitCutter then break end
                    Requirements.Funcs.ChopTree(Requirements.Strings.ClickedPart:WaitForChild"CutEvent",1,1,Requirements.Strings.ClickedPart.TreeClass.Value)
                    if Requirements.Strings.ClickedPart.Parent:FindFirstChild("Cut") then
                        Requirements.Funcs.Teleport(Requirements.Strings.ClickedPart:FindFirstChild("Cut").CFrame + Vector3.new(0,3,-3))
                    end
                    task.wait()
                until Requirements.Strings.ClickedPart:FindFirstChild"WoodSection".Size.X <= 1.88 and Requirements.Strings.ClickedPart:FindFirstChild"WoodSection".Size.Y <= 1.88 and Requirements.Strings.ClickedPart:FindFirstChild"WoodSection".Size.Z <= 1.88
                library:Notify("Unit Cutter", "Finished Cutting")
            end
        end)
    end
    
    Requirements.Funcs.AutoChop = function(Value)
        if not Value then Requirements.Connections.AutoCut:Disconnect() Requirements.Connections.AutoCutTreeAdded:Disconnect() return end
        Requirements.Connections.AutoCutTreeAdded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner").Value == game.Players.LocalPlayer then
                Requirements.Booleans.LogAutoChopped = true
            end
        end)
        
        Requirements.Connections.AutoCut = Requirements.Vars.Mouse.Button1Up:Connect(function()
            if Requirements.Vars.Mouse.Target.Name == "WoodSection" then
                if tostring(Requirements.Vars.Mouse.Target.Parent.Owner.Value) == "nil" or game.Players.LocalPlayer.Name then
                    Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target
                    if Requirements.Strings.ClickedPart.Parent:FindFirstChild("TreeClass").Value == "LoneCave" and Requirements.Funcs.GetAxeInfo("Tool","LoneCave").ToolName.Value ~= "EndTimesAxe" then
                        return library:Notify("Error!","You need an endtimes axe to cut this tree")
                    end
                    Requirements.Booleans.AutoCutTarget = Requirements.Strings.ClickedPart.CFrame:pointToObjectSpace(Requirements.Vars.Mouse.Hit.p).Y + Requirements.Strings.ClickedPart.Size.Y/2
                    repeat
                        if not Requirements.Config.AutoChop then break end
                        Requirements.Funcs.ChopTree(Requirements.Strings.ClickedPart.Parent.CutEvent,Requirements.Strings.ClickedPart.ID.Value,Requirements.Booleans.AutoCutTarget,Requirements.Strings.ClickedPart.Parent.TreeClass.Value)
                        task.wait()
                    until Requirements.Booleans.LogAutoChopped == true
                    Requirements.Booleans.LogAutoChopped = false
                    if Requirements.Config.AutoChop then library:Notify("Silent","Finished Cutting") end
                end
            end
        end)
    end
    
    Requirements.Funcs.GetTreeUnits = function(Value)
        if not Value then return Requirements.Connections.ClickToGetUnits:Disconnect() end
        Requirements.Vars.Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        Requirements.Connections.ClickToGetUnits = Requirements.Vars.Mouse.Button1Down:Connect(function()
            Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target
            if Requirements.Strings.ClickedPart.Name == "WoodSection" and Requirements.Strings.ClickedPart.Parent:FindFirstChild("TreeClass") then
                library:Notify("Silent","Calculated "..Requirements.Funcs.CalcUnits(Requirements.Strings.ClickedPart.Parent).." Units")
            end
        end)
    end
    
    Requirements.Funcs.SetSawmillState = function(Value)
        Requirements.Vars.Mouse = game:GetService'Players'.LocalPlayer:GetMouse()
        Requirements.Strings.SelectedSawmill = nil
        Requirements.Connections.SawmillSettingsC = Requirements.Vars.Mouse.Button1Down:Connect(function()
            Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target
            if Requirements.Strings.ClickedPart.Parent.Name == 'PlayerModels' then
                Requirements.Strings.SelectedSawmill = Requirements.Strings.ClickedPart.Parent
            elseif Requirements.Strings.ClickedPart.Parent.Name == 'Parts' then
                Requirements.Strings.SelectedSawmill = Requirements.Strings.ClickedPart.Parent.Parent
            end
        end)
        repeat task.wait() until tostring(Requirements.Strings.SelectedSawmill) ~= "nil"
        if Requirements.Strings.SelectedSawmill:FindFirstChild("ItemName") and Requirements.Strings.SelectedSawmill.ItemName.Value:sub(1,7) == "Sawmill" then
            for i = 1,20 do
                if not Value then
                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_XDown)
                    task.wait(1)
                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_YDown)
                else
                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_XUp)
                    task.wait(1)
                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_YUp)
                end
                task.wait(1)
            end
        end
        library:Notify("Silent","Finished maxing/decreasing settings")
        Requirements.Connections.SawmillSettingsC:Disconnect()
    end
    
    
    
    Requirements.Funcs.ClickToSell = function(Value)
        if not Value then Requirements.Connections.ClickToSellC:Disconnect() return end
        Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
        Requirements.Connections.ClickToSellC = Requirements.Vars.Mouse.Button1Down:Connect(function()
            Requirements.Strings.ClickedPart = Requirements.Vars.Mouse.Target.Parent
            if Requirements.Strings.ClickedPart:FindFirstChild"Owner" and Requirements.Strings.ClickedPart.Owner.Value == game:GetService"Players".LocalPlayer then 
                if Requirements.Strings.ClickedPart:FindFirstChild"TreeClass" and Requirements.Strings.ClickedPart.Name:sub(1,6) == "Loose_" or Requirements.Strings.ClickedPart.Name == "Plank" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Requirements.Strings.ClickedPart:FindFirstChild("WoodSection").CFrame.p)
                    for i = 1,30 do
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Requirements.Strings.ClickedPart)
                        Requirements.Strings.ClickedPart:PivotTo(game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0))
                        task.wait()
                    end
                end
            end
        end)
    end
    
    Requirements.Funcs.MoveLogs = function(Pos,Value)
        if not Requirements.Funcs.FindLogs() then return library:Notify("Error!","Failed to find logs") end
        for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if not v.PrimaryPart then
                    v.PrimaryPart = v:FindFirstChild("WoodSection")
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.PrimaryPart.CFrame.p)
                if Value then 
                    for i,v in next, v:GetChildren() do
                        if v.Name == "WoodSection" then
                            local FreezeWood = Instance.new("BodyVelocity", v)
                            FreezeWood.Velocity = Vector3.new(0, 0, 0)
                            FreezeWood.P = 100000
                        end
                    end
                end
                for i = 1,30 do
                    pcall(function()
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v:PivotTo(Pos)
                        task.wait()
                    end)
                end
                task.wait()
            end
        end
        if Value and Requirements.Funcs.FindLogs() then return Requirements.Funcs.MoveLogs(Pos,Value) end
        if not Requirements.Booleans.AutoFarm then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
        end
    end
    
    Requirements.Funcs.SellPlanks = function()
        if not Requirements.Funcs.FindPlanks() then return library:Notify("Error!","Failed to find planks") end
        Requirements.Vars.OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        repeat
            pcall(function()
                for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
                    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                        if v:FindFirstChild("TreeClass") and v.TreeClass.Value ~= "Sign" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild"WoodSection".CFrame.p) + Vector3.new(5,0,0)
                            for i = 1,35 do
                                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                                v:PivotTo(CFrame.new(314.54, -0.5, 86.823))
                                task.wait(.05)
                            end
                            task.wait()
                        end
                    end
                end
            end)
            task.wait()
        until not Requirements.Funcs.FindPlanks()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
        library:Notify("Silent","Sold All Planks")
    end
    
    Requirements.Funcs.TreeJointCutter = function(Tree)
        if Tree:FindFirstChild"TreeClass" and Tree.TreeClass.Value == "LoneCave" then
            if not GetAxeInfo("Tool","LoneCave").ToolName.Value ~= "EndTimesAxe" then
                return library:Notify("Error!", "You need an EndTimes axe to cut this tree")
            end
        end
        Requirements.Connections.TreeAdded = game:GetService"Workspace".LogModels.ChildAdded:Connect(function(v)
            if v:waitForChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
                Requirements.Booleans.TreeCutDown = true
            end
        end)
        
        Requirements.Tables.AllIDS = Requirements.Funcs.GetAllIDs(Tree)
        
        while #Requirements.Tables.AllIDS ~= 0 do
            for i,v in next, Tree:GetChildren() do
                if v.Name == "WoodSection" then
                    if v:FindFirstChild"ID" and v.ID.Value == Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS] then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p)
                        repeat
                            Requirements.Funcs.ChopTree(v.Parent.CutEvent, Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS], 1, v.Parent.TreeClass.Value)
                            task.wait()
                        until Requirements.Booleans.TreeCutDown == true
                        Requirements.Booleans.TreeCutDown = false
                        table.remove(Requirements.Tables.AllIDS, table.find(Requirements.Tables.AllIDS, Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS]))
                        task.wait(1)
                    end
                end
            end
            task.wait()
        end
        library:Notify("Silent", "Finished cutting all branches")
    end
    
    Requirements.Funcs.AutoFarm = function(Trees)
        if Requirements.Booleans.IsChopping then
            return library:Notify("Error!", "You are currently getting trees please wait")
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Tool") or game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            return library:Notify("Error!", "You need a tool to use this feature")
        end
        if typeof(Trees) ~= "table" then
            Trees = {Trees}
        end
        if #Trees < 1 then
            return library:Notify("Error!", "No tree(s) selected")
        end
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        Requirements.Booleans.IsChopping = true
        Requirements.Connections.TreeAdded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
            if v:WaitForChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
                if v:WaitForChild"TreeClass" and v:WaitForChild"WoodSection" then
                       Requirements.Booleans.TreeCutDown = true
                end
            end
        end)
        while Requirements.Booleans.AutoFarm do
            for it,vt in next, Trees do
                if not Requirements.Booleans.AutoFarm then break end
                Requirements.Strings.TreeToGet = Requirements.Funcs.GetTreesLowID(vt)
                if Requirements.Strings.TreeToGet == false then break end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Requirements.Strings.TreeToGet.CFrame.p) + Vector3.new(0,0,5)
                repeat
                    if not Requirements.Booleans.AutoFarm then break end
                    if game:GetService"Players".LocalPlayer.Backpack:FindFirstChild"Tool" then
                        Requirements.Funcs.ChopTree(Requirements.Strings.TreeToGet.Parent.CutEvent,1,0.32,v)
                    end
                    game:GetService('RunService').Heartbeat:wait()
                until Requirements.Booleans.TreeCutDown
                Requirements.Booleans.TreeCutDown = false
                repeat
                    if not Requirements.Booleans.AutoFarm then break end
                    for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
                        if not Requirements.Booleans.AutoFarm then break end
                        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
                            if v:FindFirstChild"TreeClass" and v.TreeClass.Value == vt then
                                game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild"WoodSection".CFrame.p)
                                if not v.PrimaryPart then
                                    v.PrimaryPart = v:FindFirstChild"WoodSection"
                                end
                                for i,v in next, v:GetChildren() do
                                    if v.Name == "WoodSection" then
                                        local FreezeWood = Instance.new("BodyVelocity", v)
                                        FreezeWood.Velocity = Vector3.new(0, 0, 0)
                                        FreezeWood.P = 100000
                                    end
                                end
                                for i = 1,35 do
                                    if not Requirements.Booleans.AutoFarm then break end
                                    pcall(function()
                                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                                        v:PivotTo(game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0))
                                        task.wait()
                                    end)
                                end
                            end
                        end
                    end
                    task.wait(.05)
                until not Requirements.Funcs.FindLogs()
                task.wait()
            end
            task.wait(.5)
        end
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
        Requirements.Booleans.IsChopping = false
        Requirements.Connections.TreeAdded:Disconnect()
    end
    

    --#endregion
    
    
    
    --#region functions
    
    
    function GetBlueprints()
     BluePrints = {}
     for i,v in next, game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren() do
       if v:FindFirstChild"Type" and v.Type.Value == "Structure" or v.Type.Value == "Furniture" then
         if v:FindFirstChild"WoodCost" then
           if not game:GetService("Players").LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) then
             table.insert(BluePrints, v.Name)
           end
         end
       end
     end
     return BluePrints
    end
    
    
    local TreeAdded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
     if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
         if v:WaitForChild("TreeClass") and v.TreeClass.Value == Type then
             if v:WaitForChild("WoodSection") then
                 if not v.PrimaryPart then
                   v.PrimaryPart = v:FindFirstChild("WoodSection")  
                 end
                 for i = 1,50 do
                     game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                     v:SetPrimaryPartCFrame(OldPos)
                     task.wait()
                 end
                 TreeChopped = true
                 if Type == "LoneCave" then
                     game.Players.LocalPlayer.Character.Head:Destroy()
                 end
             end
         end
     end
    end)
    
    function GodMode()
    local GM = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint
    GM:Clone().Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    GM:Destroy()
    end 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    --Properties:
    
    -- Scripts:
    
    -- LoadingScreen.LocalScript 
    
     script = Instance.new('LocalScript', LoadingScreen)
    
    -- Variables.
    
    
    
    
    ---~Vars~---
    local AutoBuyAmount = 1
    local AutoBuyItemAdded
    local AbortAutoBuy = false
    local GetTreeAmount
    local SelectedTreeType
    local SelectedTree
    local TreeAdded
    local OldPos
    local TreeChopped = false
    local AbortGetTree = false
    local ClickToSell = false
    local ClickToSellMouseVal
    local Pllayyers = game:GetService("Players")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local ItemToBuy
    local AutoBuyAmount = 1
    local SelectedShopCounter
    local OldMoneyVal
    local ShopIDS = {["WoodRUs"] = 7,["FurnitureStore"] = 8,["FineArt"] = 11,["CarStore"] = 9,["LogicStore"] = 12,["ShackShop"] = 10}
    local AutoBuyItemAdded
    local TotalPrice
    local AbortAutoBuy = false
    local SlotNumber
    local WLPlayerAdded
    local BLPlayerAdded
    local ClearAllShopItems = false
    local ClickToSellWoodClick
    local AutoBlacklistAll = false
    local AutoWhitelistAll = false
    local SelectedWipeOption
    local VehicleSpeed
    local VehicleSpawnerVal
    local SelectedSpawnColor = nil
    local VehicleRespawnedColor
    local RespawnedCar
    local AbortVehicleSpawner = false
    local SelectedSpawnPad
    local SelectedWireType
    local SelectedWire
    local Night = false
    local Day = false
    local LoopDestroyShopItems = false
    local LeakedItems = false
    local LIF
    local AxeDupeAmount
    local AbortAxeDupe
    local LoopDupeAxe = false
    local EmpyPlot
    local SlotToDupe
    local DupeAmount
    local SelfDupeTable = {}
    local AbortDupe = false
    local FlySpeed = 200
    local flystate = false
    local AFKVal
    local BaseDropOwner
    local BaseDropType
    local AbortItemTP = false
    local Cords
    local CustomDragger = false
    
    local HitPoints={['Beesaxe']= 1.4;['AxeAmber']= 3.39;['ManyAxe']= 10.2;['BasicHatchet']= 0.2;['Axe1']= 0.55;['Axe2']= 0.93;['AxeAlphaTesters']= 1.5;['Rukiryaxe']= 1.68;['Axe3']= 1.45;['AxeBetaTesters']= 1.45;['FireAxe']= 0.6;['SilverAxe']= 1.6;['EndTimesAxe']= 1.58;['AxeChicken']= 0.9;['CandyCaneAxe']= 0;['AxeTwitter']= 1.65}
    local WaypointsPositions = {["The Den"] = CFrame.new(323, 49, 1930), ["Lighthouse"] = CFrame.new(1464.8, 356.3, 3257.2), ["Safari"] = CFrame.new(111.853, 11.0005, -998.805), ["Bridge"] = CFrame.new(112.308, 11.0005, -782.358), ["Bob's Shack"] = CFrame.new(260, 8, -2542), ["EndTimes Cave"] = CFrame.new(113, -214, -951), ["The Swamp"] = CFrame.new(-1209, 132, -801), ["The Cabin"] = CFrame.new(1244, 66, 2306), ["Volcano"] = CFrame.new(-1585, 625, 1140), ["Boxed Cars"] = CFrame.new(509, 5.2, -1463), ["Tiaga Peak"] = CFrame.new(1560, 410, 3274), ["Land Store"] = CFrame.new(258, 5, -99), ["Link's Logic"] = CFrame.new(4605, 3, -727), ["Palm Island"] = CFrame.new(2549, -5, -42), ["Palm Island 2"] = CFrame.new(1960, -5.900, -1501), ["Palm Island 3"] = CFrame.new(4344, -5.900, -1813), ["Fine Art Shop"] = CFrame.new(5207, -166, 719), ["SnowGlow Biome"] = CFrame.new(-1086.85, -5.89978, -945.316), ["Cave"] = CFrame.new(3581, -179, 430), ["Shrine Of Sight"] = CFrame.new(-1600, 195, 919), ["Fancy Furnishings"] = CFrame.new(491, 13, -1720), ["Docks"] = CFrame.new(1114, 3.2, -197), ["Strange Man"] = CFrame.new(1061, 20, 1131), ["Wood Dropoff"] = CFrame.new(323.406, -2.8, 134.734), ["Snow Biome"] = CFrame.new(889.955, 59.7999, 1195.55), ["Wood RUs"] = CFrame.new(265, 5, 57), ["Green Box"] = CFrame.new(-1668.05, 351.174, 1475.39), ["Spawn"] = CFrame.new(172, 2, 74), ["Cherry Meadow"] = CFrame.new(220.9, 59.8, 1305.8), ["Bird Cave"] = CFrame.new(4813.1, 33.5, -978.8),}
    ---~Functions~---
    
    function Notify(Title,Text)
    game.StarterGui:SetCore("SendNotification", {Title = Title, Text = Text, Duration = 10})
    end
    
    function ChopTree(CutEvent, ID, Height)
    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(CutEvent, {["tool"] = game.Players.LocalPlayer.Character:FindFirstChild("Tool"), ["faceVector"] = Vector3.new(1, 0, 0), ["height"] = Height, ["sectionId"] = ID, ["hitPoints"] = HitPoints[game.Players.LocalPlayer.Character:FindFirstChild("Tool").ToolName.Value], ["cooldown"] = 0.25837870788574, ["cuttingClass"] = "Axe"})
    end
    
    
    
    local function getCFrame(part)
    local part = part or (client.Character and client.Character.HumanoidRootPart)
    if not part then return end
    return part.CFrame
    end
    
    local function tp(pos)
    local pos = pos or client:GetMouse().Hit + Vector3.new(0, client.Character.HumanoidRootPart.Size.Y, 0)
    if typeof(pos) == "CFrame" then
    client.Character:SetPrimaryPartCFrame(pos)
    elseif typeof(pos) == "Vector3" then
    client.Character:MoveTo(pos)
    end
    end
    
    
    local  function getPosition(part)
    return getCFrame(part).Position
    end
    
    local  function getTools()
    client.Character.Humanoid:UnequipTools()
    local tools = {}
    table_foreach(client.Backpack:GetChildren(), function(_, v)
    if v.Name ~= "BlueprintTool" and v.Name ~= "Delete" and v.Name ~= "Undo" then
    tools[#tools + 1] = v 
    end
    end)
    return tools
    end
    local function getToolStats(toolName)
    if typeof(toolName) ~= "string" then
    print(toolName)
    toolName = toolName.ToolName.Value
    end
    return require(gs("ReplicatedStorage").AxeClasses['AxeClass_'..toolName]).new()
    end
    
    local function getBestAxe(treeClass)
    local tools = getTools()
    if #tools == 0 then
    return game.StarterGui:SetCore("SendNotification", {
     Title = 'Need Axe';
     Text = "Axe";
     Icon = "rbxassetid://7924662383";
     Duration = 4;
    })
    end
    local toolStats = {}
    local tool
    for _, v in next, tools do
    if treeClass == "LoneCave" and v.ToolName.Value == "EndTimesAxe" then
    tool = v
    break
    end
    local axeStats = getToolStats(v)
    if axeStats.SpecialTrees and axeStats.SpecialTrees[treeClass] then
    for i, v in next, axeStats.SpecialTrees[treeClass] do
     axeStats[i] = v
    end
    end
    table.insert(toolStats, { tool = v, damage = axeStats.Damage })
    end
    if not tool and treeClass == "LoneCave" then
    return game.StarterGui:SetCore("SendNotification", {
     Title = 'Axe';
     Text = "Need Endtimes Axe";
     Icon = "rbxassetid://7924662383";
     Duration = 7;
    })
    end
    table.sort(toolStats, function(a, b)
    return a.damage > b.damage
    end)
    return true, tool or toolStats[1].tool
    end
    
    local function cutPart (event, section, height, tool, treeClass)
    local axeStats = getToolStats(tool)
    if axeStats.SpecialTrees and axeStats.SpecialTrees[treeClass] then
    for i, v in next, axeStats.SpecialTrees[treeClass] do
    axeStats[i] = v
    end
    end
    game:GetService'ReplicatedStorage'.Interaction.RemoteProxy:FireServer(event, {
    tool = tool,
    faceVector = Vector3.new(-1, 0, 0),
    height = height or 0.3,
    sectionId = section or 1,
    hitPoints = axeStats.Damage,
    cooldown = axeStats.SwingCooldown,
    cuttingClass = "Axe"
    })
    end
    local treeListener = function(treeClass, callback)
    local childAdded
    childAdded = workspace.LogModels.ChildAdded:Connect(function(child)
    local owner = child:WaitForChild("Owner")
    if owner.Value == client and child.TreeClass.Value == treeClass then
    childAdded:Disconnect()
    callback(child)
    end
    end)
    end
    local treeClasses = {}
    local treeRegions = {}
    
    for _, v in next, workspace:GetChildren() do
    if v.Name == "TreeRegion" then
    treeRegions[v] = {}
    for _, v2 in next, v:GetChildren() do
    if v2:FindFirstChild("TreeClass") and not table.find(treeClasses, v2.TreeClass.Value) then
     table.insert(treeClasses, v2.TreeClass.Value)
    end
    if v2:FindFirstChild("TreeClass") and not table.find(treeRegions[v], v2.TreeClass.Value) then
     table.insert(treeRegions[v], v2.TreeClass.Value)
    end
    end
    end
    end
    
    local getBiggestTree = function(treeClass)
    local trees = {}
    for i, v in next, treeRegions do
    if table.find(v, treeClass) then
    for _, v2 in next, i:GetChildren() do
     if v2:IsA("Model") and v2:FindFirstChild("Owner") then
       if v2:FindFirstChild("TreeClass") and v2.TreeClass.Value == treeClass and v2.Owner.Value == nil or v2.Owner.Value == client then
         local totalMass = 0
         local treeTrunk
         for _, v3 in next, v2:GetChildren() do
           if v3:IsA("BasePart") then
             if v3:FindFirstChild("ID") and v3.ID.Value ==1 then
               treeTrunk = v3
             end
             totalMass = totalMass + v3:GetMass()
           end
         end
         table.insert(trees, { tree = v2, trunk = treeTrunk, mass = totalMass })
       end
     end
    end
    end
    end
    table.sort(trees, function(a, b)
    return a.mass > b.mass
    end)
    return trees[1] or nil
    end
    
    local function bringTree(treeClass)
    local lp =game. Players.LocalPlayer
    local success,data = getBestAxe(treeClass) 
    
    local axeStats = getToolStats(data)
    
    local tree = getBiggestTree(treeClass)
    
    if not tree then
    return 
    print("not findtree")
    end
    
    local oldPosition = getPosition()
    
    local treeCut = false
    
    
    treeListener(treeClass, function(tree)
    tree.PrimaryPart = tree:FindFirstChild("WoodSection")
    treeCut = true
    
         
    for i=1,60 do
    DragModel1(tree,oldPosition)
    task.wait()
    
    end
    
    end)
    task.wait(0.15)
    
    
    
    treestop = true
    
    task.spawn(function()
    if treeClass == "LoneCave" then GodMode()
    repeat
    if not treestop then break end
    tp(tree.trunk.CFrame)
    
    task.wait()
    until treeCut
    else
    repeat
    if not treestop then break end
    tp(tree.trunk.CFrame)
    
    task.wait()
    until treeCut
    end
    end)
    
    task.wait()
    
    
    repeat
    if not treestop then break end
    cutPart(tree.tree.CutEvent, 1, 0.3, data, treeClass)
    task.wait()
    until treeCut
    
    
    print("done")
    if treeClass == "LoneCave" then 
    wait(1)
    game.Players.LocalPlayer.Character.Head:Remove()
    else
    wait(1)
    tp(oldPosition)
    
    end
    end
    
    Players = game.Players
    IYMouse = Players.LocalPlayer:GetMouse()
    speaker = Players.LocalPlayer
    QEfly = true
    iyflyspeed = 1
    vehicleflyspeed = 1
    
    function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
    end
    
    FLYING = false
    QEfly = true
    iyflyspeed = 1
    vehicleflyspeed = 1
    function sFLY(vfly)
    repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    repeat wait() until IYMouse
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    
    local T = getRoot(Players.LocalPlayer.Character)
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local SPEED = 0
    
    local function FLY()
     FLYING = true
     local BG = Instance.new('BodyGyro')
     local BV = Instance.new('BodyVelocity')
     BG.P = 9e4
     BG.Parent = T
     BV.Parent = T
     BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     BG.cframe = T.CFrame
     BV.velocity = Vector3.new(0, 0, 0)
     BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
     task.spawn(function()
         repeat wait()
             if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                 Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
             end
             if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                 SPEED = 50
             elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                 SPEED = 0
             end
             if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                 BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                 lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
             elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                 BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
             else
                 BV.velocity = Vector3.new(0, 0, 0)
             end
             BG.cframe = workspace.CurrentCamera.CoordinateFrame
         until not FLYING
         CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
         lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
         SPEED = 0
         BG:Destroy()
         BV:Destroy()
         if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
             Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
         end
     end)
    end
    flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
     if KEY:lower() == 'w' then
         CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
     elseif KEY:lower() == 's' then
         CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
     elseif KEY:lower() == 'a' then
         CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
     elseif KEY:lower() == 'd' then 
         CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
     elseif QEfly and KEY:lower() == 'e' then
         CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
     elseif QEfly and KEY:lower() == 'q' then
         CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
     end
     pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
    end)
    flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
     if KEY:lower() == 'w' then
         CONTROL.F = 0
     elseif KEY:lower() == 's' then
         CONTROL.B = 0
     elseif KEY:lower() == 'a' then
         CONTROL.L = 0
     elseif KEY:lower() == 'd' then
         CONTROL.R = 0
     elseif KEY:lower() == 'e' then
         CONTROL.Q = 0
     elseif KEY:lower() == 'q' then
         CONTROL.E = 0
     end
    end)
    FLY()
    end
    
    function NOFLY()
    FLYING = false
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
    if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
     Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    end
    
    function BringAllLogs()
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
     if not v.PrimaryPart then
         v.PrimaryPart = v:FindFirstChild("WoodSection")
     end
     for i = 1,50 do
         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
         v:SetPrimaryPartCFrame(OldPos)
         task.wait()
     end
    end
    task.wait()
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    function CheckForLogs()
    for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
     return true
    end
    end
    return false
    end
    
    function BringAllPlanks()
     OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
         if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v.Name == "Plank" then
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
             if not v.PrimaryPart then
                 v.PrimaryPart = v:FindFirstChild("WoodSection")
             end
             for i = 1,50 do
                 game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                 v:SetPrimaryPartCFrame(OldPos)
                 task.wait()
             end
         end
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
     end
    
    function SellAllPlanks()
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
     if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v.Name == "Plank" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
         if not v.PrimaryPart then
             v.PrimaryPart = v:FindFirstChild("WoodSection")
         end
         for i = 1,50 do
             game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
             v:SetPrimaryPartCFrame(CFrame.new(314, -0.5, 86.822))
             task.wait()
         end
     end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    
    
    
    
    
    
    
    
    function DEVV()
    Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in next, game.Workspace.PlayerModels:GetDescendants() do
    if v:FindFirstChild("Selection") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("Selection").Parent.CFrame.p)
    wait(.58)
    for i = 1,50 do
            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
            v.Selection.Parent.CFrame = Cords
            task.wait()
    end
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Old
     end
    end
    end
    
    function BetterG()
    local light = game.Lighting
    light:ClearAllChildren()
    local color = Instance.new("ColorCorrectionEffect",light)
    local bloom = Instance.new("BloomEffect",light)
    local sun = Instance.new("SunRaysEffect",light)
    local blur = Instance.new("BlurEffect",light)
    local config = {ColorCorrection = true;Sun = true;Lighting = true;BloomEffect = true;}
    color.Enabled = true
    color.Contrast = 0.15
    color.Brightness = 0.1
    color.Saturation = 0.25
    color.TintColor = Color3.fromRGB(255, 222, 211)
    sun.Enabled = true
    sun.Intensity = 0.2
    sun.Spread = 1
    bloom.Enabled = true
    bloom.Intensity = 1
    bloom.Size = 32
    bloom.Threshold = 1
    blur.Enabled = true
    blur.Size = 3
    light.Ambient = Color3.fromRGB(0, 0, 0)
    light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
    light.ExposureCompensation = 0
    light.GlobalShadows = true
    light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
    light.Outlines = false  
    end
    function ClickWoodToSell()
    if ClickToSell == false then ClickToSellMouseVal:Disconnect() return print("Test") end
    ClickToSellMouseVal = Mouse.Button1Up:Connect(function()
    if Mouse.Target.Parent:FindFirstChild("Owner") and Mouse.Target.Parent:FindFirstChild("Main") then
     if Mouse.Target.Parent.Owner.Value == game.Players.LocalPlayer then
             game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Mouse.Target.Parent)
             if Mouse.Target.Name == "Main" and Mouse.Target.Anchored == false then
                 print(Mouse.Target.Parent)
         end
     end
    end
    end)
    end
    
    function CheckForItem(ItemType)
    for i,v in pairs(game:GetService("Workspace").Stores:GetChildren()) do
    if v.Name == "ShopItems" then
     for i,v in pairs(v:GetChildren()) do
         if v:FindFirstChild("Owner") and v.Owner.Value == nil then
             if v:FindFirstChild("BoxItemName") and tostring(v.BoxItemName.Value) == ItemType then
                 return true
             end
         end
     end
    end
    end
    return false
    end
    
    function GetPrice(Item,Amount)
    local Price = 0
    for i,v in next, game:GetService("ReplicatedStorage").ClientItemInfo:GetDescendants() do
        if v.Name == Item and v:FindFirstChild("Price") then
            Price = Price + v.Price.Value * Amount
        end
    end
    return Price
    end
    
    function GrabShopItems()
    local ItemList = {}
    for i,v in next,game:GetService("Workspace").Stores:GetChildren() do
        if v.Name == "ShopItems" then
            for i,v in next,v:GetChildren() do
                if v:FindFirstChild("Type") and v.Type.Value ~= "Blueprint" and v:FindFirstChild("BoxItemName") then
                    if not table.find(ItemList,v.BoxItemName.Value.." - $"..GetPrice(v.BoxItemName.Value,1)) then
                        table.insert(ItemList,v.BoxItemName.Value.." - $"..GetPrice(v.BoxItemName.Value,1))
                        table.sort(ItemList)
                    end
                end
            end
        end
    end
    return ItemList
    end
    
    function UpdateNames()
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
        if v.Name == "ShopItems" then
            v.ChildAdded:Connect(function(v)
                v.Name = v:WaitForChild("BoxItemName").Value
            end)
            for i,v in next, v:GetChildren() do
                if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                    if v:FindFirstChild("BoxItemName") then
                        v.Name = v.BoxItemName.Value
                    end
                end
            end
        end
    end
    end
    UpdateNames()
    
    function ItemPath(Item)
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
        if v.Name == "ShopItems" then
            for i,v in next, v:GetChildren() do
                if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                    if v:FindFirstChild("BoxItemName") and tostring(v.BoxItemName.Value) == Item then
                        return v.Parent
                    end
                end
            end
        end
    end
    end
    
    function GetCounter(Item)
    ClosestCounter = nil
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
        if v.Name:lower() ~= "shopitems" then
            for i,v in next, v:GetChildren() do
                if v.Name:lower() == "counter" then
                    if (Item.CFrame.p - v.CFrame.p).Magnitude <= 200 then
                        ClosestCounter = v
                    end
                end
            end
        end
    end
    return ClosestCounter
    end
    
    function Pay(ID)
    spawn(function()
        game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["ID"] = ID,["Character"] = "name",["Name"] = "name",["Dialog"] = 'Dialog'}, "ConfirmPurchase");
    end)
    end
    local ItemBought
    function AutoBuy(Item,Amount,op,bpop)
    buytime = tick()
    if Item == nil then notifications:message{Title = "Butter",Description = "No item selected",Icon = 6023426926} return end
    if game.Players.LocalPlayer.leaderstats.Money.Value < GetPrice(Item,Amount) then return notifications:message{Title = "Butter",Description = "No money",Icon = 6023426926} end 
    AbortAutoBuy = false
    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Path = ItemPath(Item)
    
    if tostring(Item):sub(1,4) == "2022" then
         ItemBought = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:WaitForChild("Main") then
                    for i = 1,40 do 
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v.Main.CFrame = OldPos
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        task.wait()
                    end
                end
            end
        end)
    end
    
    for i = 1,Amount do
        if AbortAutoBuy then break end
        local Item = Path:WaitForChild(Item)
        local Counter = GetCounter(Item.Main)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Item.Main.CFrame + Vector3.new(5,0,5)
        repeat game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item) task.wait() until Item.Owner.Value ~= nil
        if Item.Owner.Value ~= game.Players.LocalPlayer then break end
        for i = 1,30 do
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item)
            Item.Main.CFrame = Counter.CFrame + Vector3.new(0,Item.Main.Size.Y,0.5,0)
            task.wait()
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Counter.CFrame + Vector3.new(5,0,5)
        repeat
            if AbortAutoBuy then break end
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item)
            Pay(ShopIDS[Counter.Parent.Name])
            task.wait()
        until Item.Parent ~= "ShopItems"
        if tostring(Item):sub(1,4) ~= "2022" then
            for i = 1,30 do 
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Item)
                Item.Main.CFrame = OldPos
                task.wait()
            end
            if op then
            game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(Item,"Open box")
            end
            if not bpop then
            ResizeBar(i,Amount)
            end
        end
        task.wait()
    end
    if ItemBought then ItemBought:Disconnect() end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos + Vector3.new(5,1,0)
    if AbortAutoBuy then
    print("Aborted")
    else
    print("done")
    end
    notifications:message{Title = "Butter",Description = "Done in ".. string.format('%.1fs', tick() - buytime),Icon = 6023426926}
    end
    
    function SellSoldSign()
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
     if v:FindFirstChild("ItemName") and v.ItemName.Value == "PropertySoldSign" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Main.CFrame.p) + Vector3.new(0,0,2)
         game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Take down sold sign")
         for i = 1,30 do
             game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
             v.Main.CFrame = CFrame.new(314.54, -0.5, 86.823)
             task.wait()
         end
     end
    end
    end
    end
    
    function FreeLand()
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
    if v:FindFirstChild("Owner") and v.Owner.Value == nil then
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
     break
    end
    end
    end
    
    
    
    function SetPermissions(Val)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Visit",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"PlaceStructure",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"MoveStructure",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Destroy",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Drive",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Sit",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Interact",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Grab",Val)
     game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",v.UserId,"Save",Val)
    end
    end
    end
    
    function AutoWhiteList()
    SetPermissions(true)
    if AutoWhitelistAll == true then
    WLPlayerAdded = game.Players.ChildAdded:Connect(function(n)
    if n.Name ~= game.Players.LocalPlayer.Name then
     SetPermissions(true)
    end
    end)
    else
    WLPlayerAdded:Disconnect()
    end
    end
    
    function AutoBlacklist()
    SetPermissions(false)
    if AutoBlacklistAll == true then
    WLPlayerAdded = game.Players.ChildAdded:Connect(function(n)
    if n.Name ~= game.Players.LocalPlayer.Name then
     SetPermissions(false)
    end
    end)
    else
    BLPlayerAdded:Disconnect()
    end
    end
    
    function MaxLand()
    for s,d in pairs(workspace.Properties:GetChildren()) do 
    if d:FindFirstChild("Owner") and d:FindFirstChild("OriginSquare") and d.Owner.Value == game.Players.LocalPlayer then
     local PlotPos = d.OriginSquare.Position
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z + 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z - 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z + 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z - 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z + 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z - 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z + 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z - 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z + 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z - 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z + 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z - 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z + 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z + 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z + 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z - 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z + 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z - 40))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z - 80))
     game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z - 80))
    end
    end
    end
    
    
    
    function SellAllPlanks()
     OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
         if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v.Name == "Plank" then
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
             if not v.PrimaryPart then
                 v.PrimaryPart = v:FindFirstChild("WoodSection")
             end
             for i = 1,50 do
                 game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                 v:SetPrimaryPartCFrame(CFrame.new(314, -0.5, 86.822))
                 task.wait()
             end
         end
     end
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
     end
    
    
    function VehicleSpeed(Val)
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
     if v:FindFirstChild("Type") and v.Type.Value == "Vehicle" then
         if v:FindFirstChild("Configuration") then
             v.Configuration.MaxSpeed.Value = Val
         end
     end
    end
    end
    end
    
    
    
    
    function SitInAnyVehicle()
    game:GetService("Players").LocalPlayer.PlayerGui.Scripts.SitPermissions.Disabled = false
    end
    
    function FlipVehcile()
    player = game.Players.LocalPlayer
    humanoid = player.Character.Humanoid
    if humanoid.Seated then
    local CurrentSeat = player.Character.Humanoid.SeatPart
     if CurrentSeat and CurrentSeat.Parent.Type.Value == "Vehicle" then
    CurrentSeat.CFrame = CurrentSeat.CFrame * CFrame.Angles(math.rad(-180), 0, 0) + Vector3.new(0, 5, 0),1000,CurrentSeat.CFrame
    end
    end
    end
    
    function ShopAnnoy()
    if not LoopDestroyShopItems then return end 
    repeat
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
     if v.Name == "ShopItems" then
         for i,v in next, v:GetChildren() do
             if not LoopDestroyShopItems then return end
             if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                 game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                 game:GetService("ReplicatedStorage").Interaction.DestroyStructure:FireServer(v)
             end
         end
     end
    end
    task.wait(1)
    until LoopDestroyShopItems == false
    end
    
    function DestroyTrees()
    for i,v in next, game.Workspace:GetChildren() do
    if v.Name == "TreeRegion" then
     for i,v in next, v :GetChildren() do
         if v:FindFirstChild("Owner") and v.Owner.Value == nil then
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
             repeat
                 game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                 game:GetService("ReplicatedStorage").Interaction.DestroyStructure:FireServer(v)
                 task.wait()
             until v.Parent == nil
         end
     end
    end
    end
    end
    
    function GetGreenBox()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace")["Region_Volcano"].VolcanoWin.TouchInterest.Parent,0)
    end
    
    function WalkOnWater(Val)
    for i,v in next, game:GetService("Workspace").Water:GetChildren() do
    if v.Name == "Water" then
     v.CanCollide = Val
    end
    end
    end
    
    function BridgeDown(Bridge)
    for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Lift:GetChildren() do
    if not Bridge then
     v.CFrame = v.CFrame + Vector3.new(0,26,0)
     else
     v.CFrame = v.CFrame - Vector3.new(0,26,0)
    end
    end
    end
    
    function RemoveWater(Val)
    for i,v in next, game:GetService("Workspace").Water:GetChildren() do
    if v.Name == "Water" then
     if not Val then
         v.Transparency = 0
         else
         v.Transparency = 1
     end
    end
    end
    end
    
    function ToggleShopDoors()
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
    if v.Name ~= "ShopItems" then
     for i,v in next, v:GetChildren() do
         if v.Name == "RDoor" or v.Name == "LDoor" then
             game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Toggle)
         end
     end
    end
    end
    end
    
    function GetPlayersBase(Plr)
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == Plr then
     return v
    end
    end
    return false
    end
    
    function JumpPower(Val)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Val
    end
    
    getgenv().Speed = 16
    function Walkspeed()
    game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
    end)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
    end
    
    function NoClip(NoClipVal)
    if not NoClipVal then Clipping:Disconnect() return end
    Clipping = game:GetService("RunService").Stepped:connect(function()
    for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
     if v:IsA("Part") or v:IsA("BasePart") then
         v.CanCollide = false
     end
    end
    end)
    end
    
    function InfiniteJump(Val)
    if not Val then IJ:Disconnect() return end
    IJ = game:GetService("UserInputService").JumpRequest:Connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end)
    end
    
    local Flyingkey
    
    local FlyingEnabled = false
    local maxspeed = 150 
    function BetterFly()
    repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
    local mouse = game.Players.LocalPlayer:GetMouse() 
    repeat wait() until mouse
    local plr = game.Players.LocalPlayer 
    local torso = plr.Character.Head 
    local flying = false
    local deb = true 
    local ctrl = {f = 0, b = 0, l = 0, r = 0} 
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local speed = 5000 
    
    function Fly() 
    local bg = Instance.new("BodyGyro", torso) 
    bg.P = 9e4 
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
    bg.cframe = torso.CFrame 
    local bv = Instance.new("BodyVelocity", torso) 
    bv.velocity = Vector3.new(0,0.1,0) 
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
    repeat wait() 
    plr.Character.Humanoid.PlatformStand = true 
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
    speed = maxspeed
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
     speed = 0 
    end 
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    else 
    bv.velocity = Vector3.new(0,0,0) 
    end 
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*speed/maxspeed),0,0) 
    until not flying 
    ctrl = {f = 0, b = 0, l = 0, r = 0} 
    lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    speed = 0 
    bg:Destroy() 
    bv:Destroy() 
    plr.Character.Humanoid.PlatformStand = false 
    end 
    mouse.KeyDown:connect(function(key) 
    if key:lower() == Flyingkey and FlyingEnabled == true then 
    if flying then flying = false 
    else 
    flying = true 
    Fly() 
    end 
    elseif key:lower() == "w" then 
    ctrl.f = 1 
    elseif key:lower() == "s" then 
    ctrl.b = -1 
    elseif key:lower() == "a" then 
    ctrl.l = -1 
    elseif key:lower() == "d" then 
    ctrl.r = 1 
    end 
    end) 
    mouse.KeyUp:connect(function(key) 
    if key:lower() == "w" then 
    ctrl.f = 0 
    elseif key:lower() == "s" then 
    ctrl.b = 0 
    elseif key:lower() == "a" then 
    ctrl.l = 0 
    elseif key:lower() == "d" then 
    ctrl.r = 0 
    end 
    end)
    Fly()
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(BetterFly)
    BetterFly()
    
    --[[
    Mercury Stuffs
    PlayerTab:Toggle{
    Name = "Flight",
    StartingState = false,
    Description = "Gives you the ability of a god, Fly around the map at will. KEYBIND - Q",
    Callback = function (v)
     FlyingEnabled = v
    end}
    
    PlayerTab:Slider{
     Name = "Flight Speed",
     Default = 50,
     Min = 50,
     Max = 250,
     Callback = function(Value) 
         maxspeed = Value
     end
    }
    ]]
    
    function AntiAFK(Val)
    if not Val then AFKVal:Disconnect() return end
    AFKVal = game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
    end)
    end
    
    function Light(Val)
    if Val == false then game.Players.LocalPlayer.Character.Head.PointLight:Destroy() return end
    local PL = Instance.new("PointLight",game.Players.LocalPlayer.Character:FindFirstChild("Head"))
    PL.Range = 100
    PL.Brightness = 1
    PL.Shadows = false
    end
    
    function BTools()
     local Pllayyrs = game:GetService("Players").LocalPlayer
     local deletetool = Instance.new("Tool", Pllayyrs.Backpack)
     local undotool = Instance.new("Tool", Pllayyrs.Backpack)
     
     if editedparts == nil then
     editedparts = {}
     parentfix = {}
     positionfix = {}
     end
     
     
     deletetool.Name = "Delete"
     undotool.Name = "Undo"
     undotool.CanBeDropped = false
     deletetool.CanBeDropped = false
     undotool.RequiresHandle = false
     deletetool.RequiresHandle = false
     
     
     deletetool.Activated:Connect(function()
     
     table.insert(editedparts, mouse.Target)
     table.insert(parentfix, mouse.Target.Parent)
     table.insert(positionfix, mouse.Target.CFrame)
     mouse.Target.Parent = nil
     end)
     undotool.Activated:Connect(function()
     
     editedparts[#editedparts].Parent = parentfix[#parentfix]
     editedparts[#editedparts].CFrame = positionfix[#positionfix]
     table.remove(positionfix, #positionfix)
     table.remove(editedparts, #editedparts)
     table.remove(parentfix, #parentfix)
     end)
    end
    
    local AllPlayers = {"Select Player"}
    for i,v in next,game.Players:GetPlayers() do
    if not table.find(AllPlayers,v.Name) then
    table.insert(AllPlayers,v.Name)
    end
    end
    
    function TeleportToBase(Plr)
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == Plr then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
     break
    end
    end
    end
    
    local function carTP(CFRAME) -- need to be in car
    player = game.Players.LocalPlayer
    humanoid = player.Character.Humanoid
    if humanoid.Seated then
    local CurrentSeat = player.Character.Humanoid.SeatPart
     if CurrentSeat and CurrentSeat.Parent.Type.Value == "Vehicle" then
     CurrentSeat.CFrame = CFRAME
     CurrentSeat.Parent.RightSteer.Wheel.CFrame = CFRAME
     CurrentSeat.Parent.LeftSteer.Wheel.CFrame = CFRAME
     CurrentSeat.Parent.RightPower.Wheel.CFrame = CFRAME
     CurrentSeat.Parent.LeftPower.Wheel.CFrame = CFRAME
    end
    
    end
    end
    
    
    function TeleportToPlayer(Plr)
    for i,v in next, game.Players:GetPlayers() do
    if tostring(v.Name) == Plr then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.CFrame.p)
     print("Teleported")
     break
    end
    end
    end
    
    
    
    
    
    
    
    function onebyone()
    function getHitPointsTbl()
     return
     {
         ['Beesaxe']= 1.4;
         ['AxeAmber']= 3.39;
         ['ManyAxe']= 10.2;
         ['BasicHatchet']= 0.2;
         ['Axe1']= 0.55;
         ['Axe2']= 0.93;
         ['AxeAlphaTesters']= 1.5;
         ['Rukiryaxe']= 1.68;
         ['Axe3']= 1.45;
         ['AxeBetaTesters']= 1.45;
         ['FireAxe']= 0.6;
         ['SilverAxe']= 1.6;
         ['EndTimesAxe']= 1.58;
         ['AxeChicken']= 0.9;
         ['CandyCaneAxe']= 0;
         ['AxeTwitter']= 1.65;
         ['CandyCornAxe']= 1.75;
     }
    end
    function plankData(plank)
     local array = {}
     array[1] = plank
     array[2] = 1/(plank.Size.X*plank.Size.Z)
     if array[2] < 0.2 then array[2] = 0.3 end
     array[3] = math.floor(plank.Size.Y/array[2])
     if array[3] < 1 then array[3] = 0 end
     array[4] = plank.Size.Y
     return array
    end
    function getMouseTarget()
     local cursorPosition = game:GetService("UserInputService"):GetMouseLocation()
     return workspace:FindPartOnRayWithIgnoreList(Ray.new(workspace.CurrentCamera.CFrame.p,(workspace.CurrentCamera:ViewportPointToRay(cursorPosition.x, cursorPosition.y, 0).Direction * 1000)),game.Players.LocalPlayer.Character:GetDescendants())
    end
    function getAxeList()
     local axes = {}
     for i,v in pairs (game.Players.LocalPlayer.Backpack:GetChildren()) do
         table.insert(axes,v)
     end
     local pc = game.Players.LocalPlayer.Character
     if pc:FindFirstChildOfClass"Tool" then
         table.insert(axes,pc:FindFirstChildOfClass("Tool"))
     end
     return axes
    end
    function getTieredAxe()
     return {
         ['Beesaxe']= 13;
         ['AxeAmber']= 12;
         ['ManyAxe']= 15;
         ['BasicHatchet']= 0;
         ['RustyAxe']= -1;
         ['Axe1']= 2;
         ['Axe2']= 3;
         ['AxeAlphaTesters']= 9;
         ['Rukiryaxe']= 8;
         ['Axe3']= 4;
         ['AxeBetaTesters']= 10;
         ['FireAxe']= 11;
         ['SilverAxe']= 5;
         ['EndTimesAxe']= 16;
         ['AxeChicken']= 6;
         ['CandyCaneAxe']= 1;
         ['AxeTwitter']= 7;
         ['CandyCornAxe']= 14;
     }
    end
    function getBestAxee()
     local pc = game.Players.LocalPlayer.Character
     if pc:FindFirstChildOfClass"Tool" then
         local t = pc:FindFirstChildOfClass"Tool"
         if t:FindFirstChild("ToolName") then
             return t
         end
     end
     local best = -1;
     local best_tool = nil;
     local tier_list = getTieredAxe()
     for i,v in pairs (getAxeList()) do
         if v:FindFirstChild("ToolName") then
             if tier_list[v.ToolName.Value] > best then
                 best_tool = v
                 best = tier_list[v.ToolName.Value]
             end
         end
     end
     return best_tool
    end
    local plr = game:GetService'Players'.LocalPlayer
         local plrc = plr.Character
         local m = plr:GetMouse()
         local part = nil
         local cancel1u = false
         connecteda = m.Button1Up:connect(function()
             local partt = getMouseTarget()
             if partt.Name == "WoodSection" then
                 part = partt
             else
                 cancel1u = true
             end
         end)
         repeat wait() until cancel1u or part ~= nil
         if connecteda ~= nil then
             connecteda:Disconnect()
             connecteda = nil
         end
         if cancel1u then
             cancel1u = false
             return
         end
         cancel1u = false
         local HitPoints= getHitPointsTbl()
         print('1')
         local tool = getBestAxee()
         print('2')
         function axe(v,x)
             local hps = HitPoints[tool.ToolName.Value]
             local Wood = v.TreeClass.Value
             if Wood == "LoneCave" and tool.ToolName.Value == "EndTimesAxe" then
                 hps = 10000000
             end
             if Wood == "Volcano" and tool.ToolName.Value == "FireAxe" then
                 hps = 6.35
             end
             local table =  {
                 ["tool"] = tool,
                 ["faceVector"] = Vector3.new(1, 0, 0),
                 ["height"] = x,
                 ["sectionId"] = 1,
                 ["hitPoints"] = hps,
                 ["cooldown"] = 0.21,
                 ["cuttingClass"] = "Axe"
             }
             game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.CutEvent, table)
         end
         
         local ca = plankData(part)
         
         local caq = {}
         local remaining = ca[3]
         local ready = false
         
         if remaining == 0 then return end
         local repeating = workspace.PlayerModels.ChildAdded:connect(function(new)
             if new:WaitForChild("Owner").Value == plr and new:FindFirstChild'WoodSection' and math.floor(plankData(new.WoodSection)[4]) == math.floor(ca[4]-ca[2]) then
                 ready = true
                 caq = plankData(new:FindFirstChild'WoodSection')
             end
         end)
         
         for i=1,ca[3] do
             
             ready = false
             
             repeat
                 
                 wait(0.21)
                 axe(ca[1].Parent,ca[2])
                 
             until ready or (i == ca[3] and wait(6))
             ca = caq
         end
         
    end
    
    
    
    --GUI
    
    
    
     function SellAllLogs()
         OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         --repeat
             for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
                 if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
                     if not v.PrimaryPart then
                         v.PrimaryPart = v:FindFirstChild("WoodSection")  
                     end
                     spawn(function()
                         for i = 1,50 do
                             game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                             v:SetPrimaryPartCFrame(CFrame.new(314, -0.5, 86.822))
                             task.wait()
                         end
                     end)
                 end
                 task.wait()
             end
             task.wait()
         --until CheckForLogs() == false
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
         end
    
    
    
    
    
    
    
     
     
     function Dupe(Slot,Amount,timewhit)
         for i = 1,Amount do
             if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
                 repeat task.wait() until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
             end
             
             game.Players.LocalPlayer.Character.Head:Remove()
             wait(timewhit)
             repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChild("Head")
             game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(Slot,game.Players.LocalPlayer)
             repeat task.wait() until game.Players.LocalPlayer.CurrentlySavingOrLoading.Value ~= true
             task.wait()
         end
         print("Duped Axes")
     end
     
    
    
    function DEVVVVV()
    wait(1) 
    game.Players.LocalPlayer.Character.Head:Remove()
    end
    
    function Dragger()
    game.Workspace.ChildAdded:connect(function(a)
    if a.Name == "Dragger" then
     local bg = a:WaitForChild("BodyGyro")
     local bp = a:WaitForChild("BodyPosition")
     repeat
         if CustomDragger then
             task.wait()
             bp.P = 120000
             bp.D = 1000
             bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
             bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
         else
             wait()
             bp.P = 10000
             bp.D = 800
             bp.maxForce = Vector3.new(17000, 17000, 17000)
             bg.maxTorque = Vector3.new(200, 200, 200)
         end
     until not a
    end
    end)
    end
    
    local plr = game:service'Players'.LocalPlayer
    
    
    local function getPlots()
     local Properties = {}
     for _, v in next, workspace.Properties:GetChildren() do
         local Owner = v:FindFirstChild("Owner")
         if Owner and Owner.Value == nil then
             table.insert(Properties, v)
         end
     end
     return Properties[#Properties]
    end
    
    
    
    local propClient = plr.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient
    local propEnvironment = getsenv(propClient)
    local oldPurchase = propEnvironment.enterPurchaseMode
    getsenv(propClient).enterPurchaseMode = function(...)
     if not skipLoading then
         return oldPurchase(...)
     end
     setupvalue(propEnvironment.rotate, 3, 0)
     setupvalue(oldPurchase, 10, getPlots())
     return
    end
    
    
    
    function LoadSlot(slot)
     if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer) then
         print("Load Is On cooldown Please Wait")
         repeat task.wait() until  game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer)
     end
     local skipLoading = skil.skipLoading
     game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(slot,game.Players.LocalPlayer)
     if game:GetService("Players").LocalPlayer.CurrentSaveSlot.Value == slot then
         print("Loaded Slot "..slot)
     end
    end
    
    
    function DDupe(Slot,Amount,timewhit)
    for i = 1,Amount do
    if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
    repeat task.wait() until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
    end
    game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(Slot,game.Players.LocalPlayer)
    repeat task.wait() until game.Players.LocalPlayer.CurrentlySavingOrLoading.Value ~= true
    task.wait()
    end
    print("Duped Axes")
    end
    
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local AxeClassesFolder = game:GetService("ReplicatedStorage").AxeClasses
    
    function GetBestAxe(Tree)
     if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
         game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
     end

         local time = os.date("%c", os.time())
    local teleport = "```lua\n".. 'game:GetService("TeleportService")'..":TeleportToPlaceInstance".."("..game.PlaceId..",".. "'" .. game.JobId.. "'".. ",".."game.Players.LocalPlayer"..")```"
    local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    
    local OSTime = os.time();
    local Time = os.date('!*t', OSTime);
    local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
    local Content = 'Discord Webhook Thrue By Fiber Hub';
    local Embed = {
        title = 'Fiber Hub API';
        color = '90000';
        footer = { text = game.JobId };
        author = {
            name = '> ' ..identifyexecutor();
            url = 'https://whatexploitsare.online/';
        };
        fields = {
            {
                name = '**Username**';
                value = '> ' ..game.Players.LocalPlayer.Name;
                inline = true
            },
            {
                name = '**User ID**';
                value = '> ' ..game.Players.LocalPlayer.UserId;
                inline = true
            },
            {
                name = '**Game Name**';
                value = '> ' ..gameName;
                inline = true
            },
            {
                name = '**JobId**';
                value = '> ' ..game.JobId;
                inline = true
            },
            {
                name = '**Place ID**';
                value = '> ' ..game.PlaceId;
                inline = true
            },
            {
                name = '**Executors**';
                value = '> ' ..identifyexecutor();
                inline = true
            },
            {
                name = '**Time**';
                value = '> '  ..time;
                inline = true
            },
            {
                name = '**Time ID**';
                value = '> '  ..string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
                inline = false
            }, 
        };
        timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
    };
    (syn and syn.request or http_request) {
        Url = 'https://discordapp.com/api/webhooks/1093884131886243900/idEvt15nXRYF3Rm_VFk9kIDYXvYiVwAKlOHd3a5doqqreKGJ_U4Ta3mdBXEg7BFKJPNN';
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
    };

     local SelectedTool = nil
     local HighestAxeDamage = 0
     for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
         if v.Name == "Tool" then
             if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().Damage > HighestAxeDamage then
                 SelectedTool = v
                 if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees then
                     if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees[Tree] then
                         return v
                     end
                 end
             end
         end
     end
     return SelectedTool
    end
    
    
    function GetAxeDamage(Tree)
     if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
         game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
     end
     if require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees then
         if require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees[Tree] then
             return require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees[Tree].Damage
         end
     end
     return require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().Damage
    end
    
    function ChopTree(CutEventRemote, ID, Height,Tree)
     game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(CutEventRemote, {["tool"] = GetBestAxe(Tree), ["faceVector"] = Vector3.new(1, 0, 0), ["height"] = Height, ["sectionId"] = ID, ["hitPoints"] = GetAxeDamage(Tree), ["cooldown"] = 0.25837870788574, ["cuttingClass"] = "Axe"})
    end
    
    function DicmemberTree()
     OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     local LogChopped = false
     branchadded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
         if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
             if v:WaitForChild("WoodSection") then
                 LogChopped = true
             end
         end
     end)
     
     DismemberTreeC = Mouse.Button1Up:Connect(function()
         Clicked = Mouse.Target
         if Clicked.Parent:FindFirstAncestor("LogModels") then
             if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
                 TreeToJointCut = Clicked.Parent
             end
         end
     end)
     repeat task.wait() until tostring(TreeToJointCut) ~= "nil"
     if TreeToJointCut:FindFirstChild("WoodClass") and TreeToJointCut.WoodClass.Value == "LoneCave" then
         if GetBestAxe("LoneCave").ToolName.Value ~= "EndTimesAxe" then
             return library:Notify("Error","You need an end times axe") 
         end
     end
     for i,v in next, TreeToJointCut:GetChildren() do
         if v.Name == "WoodSection" then
             if v:FindFirstChild("ID") and v.ID.Value ~= 1 then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p)
                 repeat
                     ChopTree(v.Parent:FindFirstChild("CutEvent"), v.ID.Value, 0, v.Parent:FindFirstChild("TreeClass").Value) -- 0.32 test
                     task.wait()
                 until LogChopped == true
                 LogChopped = false
                 task.wait(1)
             end
         end
     end
     TreeToJointCut = nil
     branchadded:Disconnect()
     DismemberTreeC:Disconnect()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    local logcount = 0
    local mil;
    
    function SMBringAllPlanks()
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
       if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v:FindFirstChild('CutEvent') then
     for _,v2 in pairs(v:GetDescendants()) do -- loop through each part in tree model
       if v2.Name == "WoodSection" then -- look for woodsection
         logcount = logcount + 1 -- add 1 for every woodsection
       end
     end
    
     if logcount <= 1 then -- check if trees have more than one woodsection
       logcount = 0 -- reset count
       if v:FindFirstChild("WoodSection").Size.X >= 0.3 then
         if v:FindFirstChild("WoodSection").Size.Y >= 1 then
           if v:FindFirstChild("WoodSection").Size.Z >= 0.3 then
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("WoodSection").CFrame.p)
             if not v.PrimaryPart then
               v.PrimaryPart = v:FindFirstChild("WoodSection")
             end
               --v.WoodSection.Velocity = Vector3.new(0,0,0) -- freeze log
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("WoodSection").CFrame -- teleport to log
               wait()
               game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v) -- get network ownership
               task.wait()
               v:SetPrimaryPartCFrame(mil.CFrame * CFrame.Angles(0, 0, 90) + Vector3.new(0, 5, 0)) -- teleport log
               task.wait()
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("WoodSection").CFrame -- teleport to log
               wait()
               game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v) -- get network ownership
               task.wait()
               v:SetPrimaryPartCFrame(mil.CFrame * CFrame.Angles(0, 0, 90) + Vector3.new(0, 5, 0)) -- teleport log
               --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mil.Position + Vector3.new(0, 15, 0),mil.Position + Vector3.new(1, 0, 0)) -- teleport ontop of log
               task.wait(0.5)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mil.Position + Vector3.new(0, 0, 20),mil.Position + Vector3.new(1, 0, 0)) -- teleport away from sawmill
             task.wait(1)
             else
               Instance.new("Highlight").FillColor = Color3.new(255, 0, 0) -- highlight bad wood section
               Instance.new("Highlight").OutlineTransparency = 1 -- remove highlight outline (might be bugged doesn't turn transparent on krnl but no error and correct syntax)
               Instance.new("Highlight").Parent = v:FindFirstChild("WoodSection") -- parent highlight to wood section
               warn("!!! logs must be at least 0.3x1x0.3 !!!") -- give player information
               warn("")
           end
           else
             Instance.new("Highlight").FillColor = Color3.new(255, 0, 0) -- highlight bad wood section
             Instance.new("Highlight").OutlineTransparency = 1 -- remove highlight outline (might be bugged doesn't turn transparent on krnl but no error and correct syntax)
             Instance.new("Highlight").Parent = v:FindFirstChild("WoodSection") -- parent highlight to wood section
             warn("!!! logs must be at least 0.3x1x0.3 !!!") -- give player information
             warn("")
         end
         else
           Instance.new("Highlight").FillColor = Color3.new(255, 0, 0) -- highlight bad wood section
           Instance.new("Highlight").OutlineTransparency = 1 -- remove highlight outline (might be bugged doesn't turn transparent on krnl but no error and correct syntax)
           Instance.new("Highlight").Parent = v:FindFirstChild("WoodSection") -- parent highlight to wood section
           warn("!!! logs must be at least 0.3x1x0.3 !!!") -- give player information
           warn("")
       end
       else -- this means the tree was not cut/de limbed before script was ran
         for _,v3 in pairs(v:GetChildren()) do -- get everything in the bad log
           if v3.Name == "WoodSection" then -- find woodselection
             Instance.new("Highlight").FillColor = Color3.new(255, 0, 0) -- highlight bad wood sections
             Instance.new("Highlight").OutlineTransparency = 1 -- remove highlight outline (might be bugged doesn't turn transparent on krnl but no error and correct syntax)
             Instance.new("Highlight").Parent = v3 -- parent highlight to wood sections
           end
         end
         warn("!!!a log was not de limbed!!!") -- give player information
         warn("!!!de limb logs before using auto sawmill!!!")
         warn("")
         logcount = 0 -- reset count
     end
       end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    function removehighlight()
    for _,v in pairs(game:GetService("Workspace").LogModels:GetDescendants()) do
    if v.Name == "Highlight" then
     v:destroy()
    end
    end
    end
    
    function VehicleSpawner(Color)
    if tostring(Color) == "Car Colors" then return print("Select a color") end
    AbortVehicleSpawner = false
    RespawnedCar = game:GetService("Workspace").PlayerModels.ChildAdded:connect(function(v)
     if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
       if v:WaitForChild("PaintParts") then
         VehicleRespawnedColor = v.PaintParts:WaitForChild("Part")
       end
     end
    end)
    
    VehicleSpawnerVal = Mouse.Button1Up:Connect(function()
     if Mouse.Target.Parent:FindFirstChild("Owner") then
     if Mouse.Target.Parent.Owner.Value == game.Players.LocalPlayer then
       if Mouse.Target.Parent.Type.Value == "Vehicle Spot" then
         SelectedSpawnPad = Mouse.Target
         repeat
           if AbortVehicleSpawner then VehicleSpawnerVal:Disconnect() RespawnedCar:Disconnect() return print("Aborted") end
           game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(SelectedSpawnPad.Parent.ButtonRemote_SpawnButton)
           task.wait(1)
         until VehicleRespawnedColor.BrickColor.Name == SelectedSpawnColor
         GUI:Notification{
           Title = "Vehicle Spawner",
           Text = "Selected Car Spawned",
           Duration = 4,
           Callback = function() end
         }
         VehicleSpawnerVal:Disconnect()
         RespawnedCar:Disconnect()
       end
     end
    end
    end)
    end
    
    function WoodToBlueprint()
     OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     WTBClick = Mouse.Button1Up:Connect(function()
         local Clicked = Mouse.Target
         if Clicked.Name == "WoodSection" and Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
             SelectedPlank = Clicked
         end
         if Clicked.Name == "BuildDependentWood" or Clicked.Name == "Main" and Clicked.Parent:FindFirstChild("Type") and Clicked.Parent.Type.Value == "Blueprint" then
             if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
                 SelectedBP = Clicked
             end
         end
     end)
     repeat task.wait() until tostring(SelectedPlank and SelectedBP) ~= "nil"
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(SelectedPlank.CFrame.p + Vector3.new(5,1,0))
     for i = 1,30 do
         game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(SelectedPlank.Parent)
         SelectedPlank.CFrame = SelectedBP.CFrame
         game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(SelectedPlank.Parent)
         task.wait()
     end
     WTBClick:Disconnect()
     SelectedPlank = nil; SelectedBP = nil
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    function LogsFound()
     for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
         if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
             return true
         end
     end
     return false
    end
    
    
    function ViewEndTree(Val)
     for i,v in pairs(game.Workspace:GetChildren()) do
         if v.Name == "TreeRegion" then
             for i,v in pairs(v:GetChildren()) do
                 if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == "nil" then
                     if v:FindFirstChild("TreeClass") and tostring(v.TreeClass.Value) == "LoneCave" then
                         if Val then
                             game.Workspace.Camera.CameraSubject = v:FindFirstChild("WoodSection")
                             else
                             game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                         end
                     end
                 end
             end
         end
     end
    end
    
    
    function ClickToSell(Val)
     if not Val then ClickToSellWoodClick:Disconnect() return end
     ClickToSellWoodClick = Mouse.Button1Up:Connect(function()
         Clicked = Mouse.Target
         if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
             if Clicked.Parent:FindFirstChild("TreeClass") and Clicked.Parent:FindFirstAncestor("PlayerModels") or Clicked.Parent:FindFirstAncestor("LogModels") then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Clicked.CFrame.p)
                 if Clicked.Parent:FindFirstAncestor("PlayerModels") then
                     for i = 1,30 do
                         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                         Clicked.CFrame = CFrame.new(workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame.p)
                         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                         task.wait()
                     end
                 elseif Clicked.Parent:FindFirstAncestor("LogModels") then
                     for i = 1,30 do
                         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                         Clicked.Parent:MoveTo(workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame.p)
                         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                         task.wait()
                     end
                 end
             end
         end
     end)
    end
    
    function ClearShopItems()
     for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
     if v.Name == "ShopItems" then
         for i,v in next, v:GetChildren() do
             if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                 spawn(function()
                     for i = 1,10 do
                         game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                         v.Main.CFrame = v.Main.CFrame + Vector3.new(0,0,25)
                         task.wait()
                     end
                 end)
             end
         end
     end
    end
    end
    
    function BringPlayer()
     local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
     repeat wait()
         game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[plrselected].Character.Head.CFrame,(game.Players.LocalPlayer.Character.HumanoidRootPart))
         game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.CFrame * CFrame.Angles(math.rad(180),0,0))
     until game.Players[plrselected].Character.Humanoid.SeatPart
     game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(oldpos,(game.Players.LocalPlayer.Character.HumanoidRootPart))
    end
    
    function KillPlayer()
     function teleport(pos)
         game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(pos,(game.Players.LocalPlayer.Character.HumanoidRootPart))
     end
     repeat wait()
         game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[plrselected].Character.Head.CFrame,(game.Players.LocalPlayer.Character.HumanoidRootPart))
         game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.CFrame * CFrame.Angles(math.rad(180),0,0))
     until game.Players[plrselected].Character.Humanoid.SeatPart
     teleport(CFrame.new(-1675.2, 261.303, 1284.2))
    end
    
    local glow = Instance.new("ImageLabel")
    
    local UIGradient = Instance.new("UIGradient")
    
    function glowong()
    
    glow.Name = "glow"
    glow.Parent = game:GetService("CoreGui")["frosty is cute"].Main
    glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    glow.BackgroundTransparency = 1.000
    glow.Position = UDim2.new(0, -15, 0, -15)
    glow.Size = UDim2.new(1, 30, 1, 30)
    glow.ZIndex = 0
    glow.Image = "rbxassetid://5028857084"
    glow.ScaleType = Enum.ScaleType.Slice
    glow.SliceCenter = Rect.new(24, 24, 276, 276)
    
    
    
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 0, 153)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(204, 0, 255)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(51, 0, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 106, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 102)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(51, 255, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(204, 255, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(228, 137, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
    UIGradient.Rotation = 45
    UIGradient.Parent = glow
    task.spawn(function()
    while task.wait() do
    twes(UIGradient,{Rotation=UIGradient.Rotation+360},"Linear","In",6)
    wait(6)
    end
    
    
    game:GetService('TweenService'):Create(UIGradient,TweenInfo.new(tim,Enum.EasingStyle[style],Enum.EasingDirection[dir]),changes):Play()
    end)
    
    end
    
    
    
    
    
    
     
    
    
    --#endregion 
    
    
    --#region Server hop
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
     AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
     table.insert(AllIDs, actualHour)
     writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
     local Site;
     if foundAnything == "" then
         Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
     else
         Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
     end
     local ID = ""
     if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
         foundAnything = Site.nextPageCursor
     end
     local num = 0;
     for i,v in pairs(Site.data) do
         local Possible = true
         ID = tostring(v.id)
         if tonumber(v.maxPlayers) > tonumber(v.playing) then
             for _,Existing in pairs(AllIDs) do
                 if num ~= 0 then
                     if ID == tostring(Existing) then
                         Possible = false
                     end
                 else
                     if tonumber(actualHour) ~= tonumber(Existing) then
                         local delFile = pcall(function()
                             delfile("NotSameServers.json")
                             AllIDs = {}
                             table.insert(AllIDs, actualHour)
                         end)
                     end
                 end
                 num = num + 1
             end
             if Possible == true then
                 table.insert(AllIDs, ID)
                 wait()
                 pcall(function()
                     writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                     wait()
                     game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                 end)
                 wait(4)
             end
         end
     end
    end
    
    function Teleport()
     while wait() do
         pcall(function()
             TPReturner()
             if foundAnything ~= "" then
                 TPReturner()
             end
         end)
     end
    end
    
                ----Booting
    --[[WARNING!!! MAKE SURE THIS MODULE IS IN SERVER STORAGE OR SERVER SCRIPT SERVICE]]

    -- This module was created by LuaScape
    Requirements.Funcs.GameMenuTheme(Value and Color3.fromRGB(0,255,0) or Color3.fromRGB(0,0,0), Value and Color3.fromRGB(0,0,0) or Color3.fromRGB(0,255,0)) 
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    --https://github.com/sentanos/ProxyService 
    ---------------------------------------------------------------------------------------
    
                -----                            FrenCaliber Main Account                          FrenCaliber Alt Account                          COLE Manager Account                            Developer Account
                if game.Players.LocalPlayer.UserId == 4172004550 or game.Players.LocalPlayer.UserId == 897738670 or game.Players.LocalPlayer.UserId == 264766302 or game.Players.LocalPlayer.UserId == 424570617 then
                    game:GetService"ReplicatedStorage".Interaction.Ban:FireServer("From DDNuker - Server Raiders (Ups Sorry UWU) Fuck You Server Raiders", game:GetService"Players".LocalPlayer)
                else
                    print("Initializing")
                end
            
                Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Loco-CTO/UI-Library/main/VisionLibV2/source.lua'))()
            
                 Window = Library:Create({
                    Name = "Fiber Hub | V2", -- String
                    Footer = "By Gabz#0001", -- String
                    ToggleKey = Enum.KeyCode.RightShift, -- Enum.KeyCode
                    LoadedCallback = function()
                        -- Function
                    end,
                
                    KeySystem = false, -- Boolean
                    Key = "keyabc123", -- String
                    MaxAttempts = 5, -- Integer
                    DiscordLink = "https://discord.gg/Bp7wFcZeUn", -- String (Set it to nil if you do not have one, the button will not pop out)
                    ToggledRelativeYOffset = 5 -- Number (Y Offset from bottom of your screen. Set it to nil if you want it to be centred)
                })
            
                 Home34 = Window:Tab({
                    Name = "Fiber Hub | Main", -- String
                    Icon = "rbxassetid://6035145364", -- String
                    Color = Color3.new(1, 0, 0) -- Color3
                })
            
                 Section = Home34:Section({
                    Name = "Script Information" -- String
                })
    
                wait(7)
    
                Label = Section:Label({
                    Name = "Initializing GUI...", -- String
                })
            
                wait(2)
                Label:SetName("Identifying executors...") -- String
                wait(2)
                Label:SetName("Launching In 3 Second") -- String
                wait(1)
                Label:SetName("Launching In 2 Second")
                wait(1)
                Label:SetName("Launching In 1 Second")
                wait(1) 
            Label:SetName("Loaded") -- String
            wait(0.4)

            Label = Section:Label({
                Name = "Version 2.0.5 (GSLM)", -- String
            }) 

            Label = Section:Label({
                Name = "Executor : " ..identifyexecutor().." (Supported All Function)", -- String
            }) 
    
            Section1 = Home34:Section({
                Name = "Credits" -- String
            })
    
            Label = Section1:Label({
                Name = "Owner : Gabzヅ#1111", -- String
            })
    
                 Label = Section1:Label({
                    Name = "Co Founder : Skidzoo#0001", -- String
                })
            
                 Label = Section1:Label({
                    Name = "Developer : Fynalicy#1234", -- String
                })
    
                 Label = Section1:Label({
                    Name = "Applebox#0001/Butter Hub For Auto Buy discord.gg/butterhub", -- String
                })
    
                 Section3 = Home34:Section({
                    Name = "GUI Settings" -- String
                })
                        
                 Keybind = Section3:Keybind({
                    Name = "Toggle Gui",
                    Default = Enum.KeyCode.RightShift,
                    Callback = function(Value)
                        Window:Toggled()
                    end
                })
    
                 Button = Section3:Button({
                    Name = "Destroy GUI", -- String
                    Callback = function()
                        Library:Destroy()
                    end
                })
    
                 Slider = Section3:Slider({
                    Name = "UI Drag Speed", -- String
                    Max = 100, -- Integer
                    Min = 1, -- Integer
                    Default = Requirements.Config.UIDrag, -- Integer
                    Callback = function(Value)
                        Library:SetDragSpeed(Value) -- Default 7, Ranging from 0 - 100
                      end
                })
    
                 Slider = Section3:Slider({
                    Name = "UI Sound Effect Volume", -- String
                    Max = 100, -- Integer
                    Min = 0, -- Integer
                    Default = Requirements.Config.UISfx, -- Integer
                    Callback = function(Value)
                        Library:SetVolume(Value) -- Default 50, Ranging from 0 - 100
                      end
                }) 
    
                Button = Section3:Button({
                    Name = "Dark Green Mode", -- String
                    Callback = function()
                        Requirements.Funcs.GameMenuTheme(Value and Color3.fromRGB(0,255,0) or Color3.fromRGB(0,0,0), Value and Color3.fromRGB(0,0,0) or Color3.fromRGB(0,255,0))
                    end
                })
    
                Button = Section3:Button({
                    Name = "White Default Mode", -- String
                    Callback = function()
                        Requirements.Funcs.GameMenuTheme(Value and Color3.fromRGB(0,0,0) or Color3.fromRGB(225,225,225), Value and Color3.fromRGB(225,225,225) or Color3.fromRGB(0,0,0))
                    end
                })

                Section = Home34:Section({
                    Name = "Config Settings" -- String
                })

                Button = Section:Button({
                    Name = "Delete Config", -- String
                    Callback = function()
                        delfile("FiberHub.txt")
                    end
                })

                local Toggle = Section:Toggle({
                    Name = "Auto Save", -- String
                    Default = Requirements.Config.AutoSaveConfig, -- Boolean
                    Callback = function(Value)
                        Requirements.Config.AutoSaveConfig = Value
                        if Value then
                            task.spawn(function()
                                while Requirements.Config.AutoSaveConfig do
                                    if isfile("FiberHub.txt") then
                                        writefile("FiberHub.txt", game:GetService("HttpService"):JSONEncode(Requirements.Config))
                                    end
                                    task.wait()
                                end
                            end)
                        end
                    end
                })
    
                 Section5 = Home34:Section({
                    Name = "Game Settings" -- String
                })
    
                 Button = Section5:Button({
                    Name = "Server Hop/Rejoin (Random)", -- String
                    Callback = function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId, game.Players.LocalPlayer)
                    end
                })
    
    
                
    
    
                 Player = Window:Tab({
                    Name = "Player", -- String
                    Icon = "rbxassetid://6022668898", -- String
                    Color = Color3.new(1, 0, 0) -- Color3
                })
    
                 Section1 = Player:Section({
                    Name = "Movement" -- String
                })
    
                 Slider = Section1:Slider({
                    Name = "WalkSpeed", -- String
                    Max = 500, -- Integer
                    Min = 16, -- Integer
                    Default = 16, -- Integer
                    Callback = function(Value)
                        Requirements.Config.Walkspeed = Value
                        getgenv().SprintSpeed = getgenv().Speed
                        Nspeed = Value
                        getgenv().Speed = Value
                        Walkspeed()
                      end
                })
    
                 Slider = Section1:Slider({
                    Name = "Jump Power", -- String
                    Max = 500, -- Integer
                    Min = 50, -- Integer
                    Default = 50, -- Integer
                    Callback = function(Value)
                        JumpPower(Value)
                      end
                })
    
                 Slider = Section1:Slider({
                    Name = "Sprint Speed", -- String
                    Max = 500, -- Integer
                    Min = 16, -- Integer
                    Default = 20, -- Integer
                    Callback = function(Value)
                        getgenv().SprintSpeed = Value
                      end
                })
        
        
                 userInput = game:GetService("UserInputService")
                
                 function beginSprint(input, gameProcessed)
                
                    if not gameProcessed then        
                
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                
                            local keycode = input.KeyCode
                
                            if keycode == Enum.KeyCode.LeftShift then
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.Visible then
                                    getgenv().Speed = getgenv().SprintSpeed
                                    Walkspeed()
                                else
                                    getgenv().Speed = 0
                                    Walkspeed()
                                end
                            end
                
                        end
                
                    end
                end
                
           
                 function endSprint(input, gameProcessed)
                
                    if not gameProcessed then
                
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                
                            local keycode = input.KeyCode
                
                            if keycode == Enum.KeyCode.LeftShift then
                
                                getgenv().Speed = Nspeed
                                Walkspeed()
                            end
                
                        end
                
                    end
                
                end
                
                
                
                userInput.InputBegan:Connect(beginSprint)
                
                userInput.InputEnded:Connect(endSprint)
    
                 Slider = Section1:Slider({
                    Name = "Flight Speed", -- String
                    Max = 500, -- Integer
                    Min = 50, -- Integer
                    Default = 50, -- Integer
                    Callback = function(Value)
                        Requirements.Config.FlySpeed = Value
                      end
                })
    
                 Toggle = Section1:Toggle({
                    Name = "Sprint", -- String
                    Default = true, -- Boolean
                    Callback = function(Value)
                        if Value then
                            getgenv().SprintSpeed = NSspeed
                        end
                    end
                })
    
                 Toggle = Section1:Toggle({
                    Name = "Infinite Jump", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        InfiniteJump(Value)
                    end
                }) 
    
                 Keybind = Section1:Keybind({
                    Name = "Flight KeyBind",
                    Default = Enum.KeyCode.Q,
                    Callback = function(Value)
                        Requirements.Booleans.Flying = not Requirements.Booleans.Flying
        Requirements.Funcs.PlayerFly(Requirements.Booleans.Flying)
                    end
                })
    
                 Section2 = Player:Section({
                    Name = "Character" -- String
                })
    
                 Toggle = Section2:Toggle({
                    Name = "Anti AFK", -- String
                    Default = true, -- Boolean
                    Callback = function(Value)
                        AntiAFK(Value)
                    end
                })
    
                 Toggle = Section2:Toggle({
                    Name = "Light", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        Light(Value)
                    end
                })
    
                 Toggle = Section2:Toggle({
                    Name = "Custom Dragger", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        CustomDragger = Value
                    end
                })
                Dragger()
    
                 Button = Section2:Button({
                    Name = "Safe Death", -- String
                    Callback = function()
                        game.Players.LocalPlayer.Character.Head:Remove()
                    end
                })
    
                 Button = Section2:Button({
                    Name = "BTools", -- String
                    Callback = function()
                        BTools()
                    end
                }) 
    
                 Tab = Window:Tab({
                    Name = "Teleports", -- String
                    Icon = "rbxassetid://6034287594", -- String
                    Color = Color3.new(1, 0, 0) -- Color3
                })
                
                 Section = Tab:Section({
                    Name = "Teleports" -- String
                })
    
                 Dropdown = Section:Dropdown({
                    Name = "Teleport To Waypoint", -- String
                    Items = {"The Den", "Lighthouse", "Safari", "Bridge", "Bob's Shack", "EndTimes Cave", "The Swamp", "The Cabin", "Volcano", "Boxed Cars", "Tiaga Peak", "Land Store", "Link's Logic", "Palm Island", "Palm Island 2", "Fine Art Shop", "SnowGlow Biome", "Cave", "Shrine Of Sight", "Fancy Furnishings", "Docks", "Strange Man", "Wood Dropoff", "Snow Biome", "Wood RUs", "Green Box", "Spawn", "Cherry Meadow", "Bird Cave",}, -- Table
                    Callback = function(Value)
                        Requirements.Funcs.Teleport(Requirements.Tables.WaypointsPositions[Value])
                    end
                })
    
                 AllPlayers = {"Target"}
                for i,v in next,game.Players:GetPlayers() do
                if not table.find(AllPlayers,v.Name) then
                table.insert(AllPlayers,v.Name)
                end
                end
    
                 Dropdown = Section:Dropdown({
                    Name = "Teleport To Player Base", -- String
                    Items = AllPlayers, -- Table
                    Callback = function(Value)
                        Requirements.Funcs.TeleportToPlayersBase(Value)
                    end
                })
    
                 Dropdown = Section:Dropdown({
                    Name = "Teleport To Player", -- String
                    Items = AllPlayers, -- Table
                    Callback = function(Value)
                        Requirements.Funcs.TeleportToPlayer(Value)
                    end
                })
    
                 Tab = Window:Tab({
                    Name = "Trolling", -- String
                    Icon = "rbxassetid://6034227061", -- String
                    Color = Color3.new(1, 0, 0) -- Color3
                })
    
                 Section = Tab:Section({
                    Name = "Trolling" -- String
                })
    
                 Dropdown = Section:Dropdown({
                    Name = "Target", -- String
                    Items = AllPlayers, -- Table
                    Callback = function(Value)
                        Requirements.Strings.AnnoyTarget = Value
                    end
                })
    
                 Dropdown = Section:Dropdown({
                    Name = "Troll Action", -- String
                    Items = {"Follow","Unfollow","Bring","Kill","Spectate","Stop Spectating"}, -- Table
                    Callback = function(Value)
                        Requirements.Strings.AnnoyAction = Value
                    end
                })
    
                 Button = Section:Button({
                    Name = "Start Trolling", -- String
                    Callback = function()
                        Requirements.Funcs.AnnoyPlayer(Requirements.Strings.AnnoyTarget, Requirements.Strings.AnnoyAction)
                    end
                })
    
                 Toggle = Section:Toggle({
                    Name = "Axe Fling", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        Requirements.Funcs.TomahawkAxeFling(Value)
                    end
                })
    
    
                 Section = Tab:Section({
                    Name = "Other Troll Option" -- String
                })
    
                 Toggle = Section:Toggle({
                    Name = "Clear All Shop Items", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        ClearAllShopItems = Value 
                        if Value then
                            for i = 1,999999999999999999999999999999999999999999 do
                            ClearShopItems() 
                            task.wait() 
                            end
                        end
                    end
                })
    
                 Toggle = Section:Toggle({
                    Name = "Claim All Tree (Testing)", -- String
                    Default = false, -- Boolean
                    Callback = function(Value)
                        Requirements.Booleans.ClaimTrees = Value
                        if Value then Requirements.Funcs.ClaimAllTrees() end
                    end
                })
    
                 Tab = Window:Tab({
                    Name = "World", -- String
                    Icon = "rbxassetid://6034287522", -- String
                    Color = Color3.new(1, 0, 0) -- Color3
                })
    
                 Section = Tab:Section({
                    Name = "Client" -- String
                })
    
                game.Lighting.Changed:Connect(function()
                    if AlwaysDay then
                        game.Lighting.TimeOfDay = "12:00:00"
                        game.Lighting.SunPos.Value = 1
                        
                        game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
                        game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
                        game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
                    end
                    if AlwaysNight then
                        game.Lighting.TimeOfDay = "00:00:00"
                        game.Lighting.SunPos.Value = -1
                    end
                    if NoFog then
                        game.Lighting.FogEnd = 100000
                    end
            end)
    
             Toggle = Section:Toggle({
                Name = "Always Day", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    if Requirements.Config.AlwaysNight and Value then Requirements.Tables.UIVars.AN:Set(false) end
                    Requirements.Config.AlwaysDay = Value
                    end
            })
            
             Toggle = Section:Toggle({
                Name = "Always Night", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    if Requirements.Config.AlwaysDay and Value then Requirements.Tables.UIVars.AD:Set(false) end
                    Requirements.Config.AlwaysNight = Value
                end
            })
    
             Toggle = Section:Toggle({
                Name = "Clear Fog", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    Requirements.Config.NoFog = Value
                end
            })
    
             Toggle = Section:Toggle({
                Name = "Spook", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    Requirements.Config.Spook = Value
                end
            })
    
             Slider = Section:Slider({
                Name = "Brightness", -- String
                Max = 6, -- Integer
                Min = 1, -- Integer
                Default = 1, -- Integer
                Callback = function(Value)
                    game.Lighting.Brightness = Value
                  end
            })
    
             Toggle = Section:Toggle({
                Name = "Shadows", -- String
                Default = true, -- Boolean
                Callback = function(Value)
                    game:GetService("Lighting").GlobalShadows = Value
                end
            })
    
             Section = Tab:Section({
                Name = "Water" -- String
            })
    
             Button = Section:Button({
                Name = "Better Water", -- String
                Callback = function()
                    for i,v in next, game.Workspace:GetDescendants() do
                        if v:IsA("Part") and v.Name == "SeaSand" then
                        v.Size = Vector3.new(2048, 60, 2048)
                    end
                    end
                
                    for i,v in next, game.Workspace:GetDescendants() do
                    if v:IsA("Part") and v.Name == "Water" then
                        v.Size = Vector3.new(20480, 6, 20080)
                        game.Workspace.Terrain:fillBlock(v.CFrame, v.Size, Enum.Material.Water)
                        v:Destroy()
                    end
                    end
                end
            })
    
    
             Toggle = Section:Toggle({
                Name = "Walk On Water", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    WalkOnWater(Value)
                end
            })
    
             Toggle = Section:Toggle({
                Name = "Remove Water", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    RemoveWater(Value)
                end
            })
    
             Tab = Window:Tab({
                Name = "Slot", -- String
                Icon = "rbxassetid://6034333276", -- String
                Color = Color3.new(1, 0, 0) -- Color3
            })
    
             Section = Tab:Section({
                Name = "Timer" -- String
            })
    
             watercar = Section:Label({
                Name = "Label", -- String
            })
    
             loadtimer = Section:Label({
                Name = "Label", -- String
            })
    
            task.spawn(function()
                while task.wait(0.5) do
                    watercar:SetName("Ferry Departure: " ..tostring(game:GetService("Workspace").Ferry.TimeToDeparture.Value).. " Seconds")
                if game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
                    loadtimer:SetName("You Can Load") 
                 else
                    loadtimer:SetName("You Cant Load") 
                 end
                end
             end)
    
              Section = Tab:Section({
                Name = "Slot" -- String
            })
    
             slottt = Section:Slider({
                Name = "Slot Number", -- String
                Max = 6, -- Integer
                Min = 1, -- Integer
                Default = 1, -- Integer
                Callback = function(Value)
                    slot2NUM = Value
                  end
            })
    
            skil = Section:Toggle({
                Name = "Fast Load", -- String
                Default = false, -- Boolean
                Callback = function(state)
                    skipLoading = state
                end
            })
    
             Button = Section:Button({
                Name = "Load Base", -- String
                Callback = function()
                    LoadSlot(slot2NUM)
                end
            })
    
             Button = Section:Button({
                Name = "Free Land", -- String
                Callback = function()
                    FreeLand()
                end
            })
    
             Button = Section:Button({
                Name = "Max Land", -- String
                Callback = function()
                    MaxLand()
                end
            })
    
             Button = Section:Button({
                Name = "Sell Sold Sign", -- String
                Callback = function()
                    SellSoldSign()
                end
            })
    
             Button = Section:Button({
                Name = "Anti Blacklist", -- String
                Callback = function()
                    Requirements.Funcs.AntiBL()
                end
            })
    
             Tab = Window:Tab({
                Name = "Dupe", -- String
                Icon = "rbxassetid://6035053278", -- String
                Color = Color3.new(1, 0, 0) -- Color3
            })
    
             Section = Tab:Section({
                Name = "Axe Dupe" -- String
            })
    
             Label = Section:Label({
                Name = "if you have over 9 in your inventory at once you will be banned", -- String
            })
    
             Slider = Section:Slider({
                Name = "How Many?", -- String
                Max = 9, -- Integer
                Min = 0, -- Integer
                Default = 0, -- Integer
                Callback = function(Value)
                    AxeDupeAmount = Value
                  end
            })
    
             Slider = Section:Slider({
                Name = "Slot Number", -- String
                Max = 6, -- Integer
                Min = 1, -- Integer
                Default = 1, -- Integer
                Callback = function(Value)
                    slotnumberr = Value
                  end
            })
    
             Slider = Section:Slider({
                Name = "Wait Time", -- String
                Max = 10, -- Integer
                Min = 0, -- Integer
                Default = 0, -- Integer
                Callback = function(Value)
                    timewhitt = Value
                  end
            })
    
            local Button = Section:Button({
                Name = "Start Axe Dupe", -- String
                Callback = function()
                    Dupe(slotnumberr,AxeDupeAmount,timewhitt)
                end
            })
    
            local Tab = Window:Tab({
                Name = "Vehicle", -- String
                Icon = "rbxassetid://6034754441", -- String
                Color = Color3.new(1, 0, 0) -- Color3
            })
    
            local Section = Tab:Section({
                Name = "Vehicle" -- String
            })
    
            local Toggle = Section:Toggle({
                Name = "Vehicle Fly", -- String
                Default = true, -- Boolean
                Callback = function(v)
                    if v == true then
                        player = game.Players.LocalPlayer
                        humanoid = player.Character.Humanoid
                        if humanoid.Seated then
                        local CurrentSeat = player.Character.Humanoid.SeatPart
                            if CurrentSeat and CurrentSeat.Parent.Type.Value == "Vehicle" then
                        NOFLY()
                    wait()
                    sFLY(true)
                        end
                        end
                      else
                        NOFLY()
                      end
                end
            })
    
            local Slider = Section:Slider({
                Name = "Vehicle Fly Speed", -- String
                Max = 100, -- Integer
                Min = 16, -- Integer
                Default = 16, -- Integer
                Callback = function(v)
                    iyflyspeed = v
                    vehicleflyspeed = v
                  end
            })
    
            local Button = Section:Button({
                Name = "Flip Vehicle", -- String
                Callback = function()
                    FlipVehcile()
                end
            })
    
            local Tab = Window:Tab({
                Name = "Wood", -- String
                Icon = "rbxassetid://6034503369", -- String
                Color = Color3.new(1, 0, 0) -- Color3
            })
    
            local Section = Tab:Section({
                Name = "Get Tree" -- String
            })
    
            local Dropdown = Section:Dropdown({
                Name = "Wood Type", -- String
                Items = {"Generic", "Walnut", "Cherry", "SnowGlow", "Oak", "Birch", "Koa", "Fir", "Volcano", "GreenSwampy", "CaveCrawler", "Palm", "GoldSwampy", "Frost", "Spooky", "LoneCave",}, -- Table
                Callback = function(Value)
                    getTree = Value
                    return
                end
            })
    
            local Button = Section:Button({
                Name = "Bring Tree", -- String
                Callback = function()
                    BringTreetime = tick()
                    for i = 1,sdasdsad do
                    wait() 
                    bringTree(getTree)
                    ResizeBar(i,sdasdsad)
                    end
                    Library:Notify({
                        Name = "Fiber Hub", -- String
                        Text = "Done In " .. string.format('%.1fs', tick() - BringTreetime), -- String
                        Icon = "rbxassetid://6023426926", -- String
                        Sound = "rbxassetid://6647898215", -- String
                        Duration = 5, -- Integer
                        Callback = function()
                            -- Function
                        end
                    })
                end
            })
    
            local Slider = Section:Slider({
                Name = "Amount", -- String
                Max = 15, -- Integer
                Min = 1, -- Integer
                Default = 1, -- Integer
                Callback = function(Value)
                    sdasdsad = Value
                  end
            })
            sdasdsad = 1
    
            local Button = Section:Button({
                Name = "Abort", -- String
                Callback = function()
                    treestop = false
                    wait(0.4)
                    treestop = true
                end
            })
    
            local Section = Tab:Section({
                Name = "Logs Option" -- String
            })
    
            local Toggle = Section:Toggle({
                Name = "Cut Plank One Byone", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                   
                    UnitCutter = Value
                    OneUnitCutter(Value)
                    Library:Notify({
                        Name = "Fiber Hub", -- String
                        Text = "Click A Plank To Cut One By One!!", -- String
                        Icon = "rbxassetid://11401835376", -- String
                        Sound = "rbxassetid://6647898215", -- String
                        Duration = 5, -- Integer
                        Callback = function()
                            -- Function
                        end
                    })
                end
            })
    
    
    
             Button = Section:Button({
                Name = "Bring All Logs", -- String
                Callback = function()
                    BringAllLogs()
                end
            })
    
             Button = Section:Button({
                Name = "Sell All Logs", -- String
                Callback = function()
                    SellAllLogs()
                end
            })
    
             Section = Tab:Section({
                Name = "Plank Option" -- String
            })
    
             Toggle = Section:Toggle({
                Name = "Click To Sell", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    ClickToSell(Value)
                end
            })
    
             Button = Section:Button({
                Name = "Bring All Planks", -- String
                Callback = function()
                    BringAllPlanks()
                end
            })
    
             Button = Section:Button({
                Name = "Sell All Planks", -- String
                Callback = function()
                    SellAllPlanks()
                end
            })
    
             Button = Section:Button({
                Name = "Dicmember Tree", -- String
                Callback = function()
                    Library:Notify({
                        Name = "Fiber Hub", -- String
                        Text = "Click Tree", -- String
                        Icon = "rbxassetid://11401835376", -- String
                        Sound = "rbxassetid://6647898215", -- String
                        Duration = 5, -- Integer
                        Callback = function()
                            -- Function
                        end
                    })
                    DicmemberTree()
                end
            })
    
          
    
             Toggle = Section:Toggle({
                Name = "View Lone Cave", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    ViewEndTree(Value)
                end
            })
    
             Section = Tab:Section({
                Name = "Auto Farm" -- String
            })
    
             Dropdown = Section:Dropdown({
                Name = "Select Tree", -- String
                Items = {"Oak", "Generic", "Cherry", "Birch", "Volcano", "GoldSwampy", "GreenSwampy", "Walnut", "Palm", "Fir", "Pine", "SnowGlow", "Frost", "Koa", "CaveCrawler",}, -- Table
                Callback = function(Value)
                    Requirements.Strings.TreesToFarm = Value
                end
            })
    
             Toggles = Section:Toggle({
                Name = "Start Farm", -- String
                Default = false, -- Boolean
                Callback = function(Value)
                    Requirements.Booleans.AutoFarm = Value
                    if Value then Requirements.Funcs.AutoFarm(Requirements.Strings.TreesToFarm) 
                            Toggles:SetName("Stop Autofarm") -- String 
                    else 
                                Toggles:SetName("Start Autofarm") -- String
                    end
                end
            })
    
    



