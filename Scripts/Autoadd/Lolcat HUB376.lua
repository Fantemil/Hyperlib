if game.CoreGui:FindFirstChild("FluxLib") or game.CoreGui:FindFirstChild("Message") then return end
 
local Flux = loadstring(game:HttpGet("https://lolcat.boo/assets/flux-fixed"))()
local Window = Flux:Window("Lolcat script [paid]", "Doors", Color3.new(0,0.8), Enum.KeyCode.RightControl)
local Tab = Window:Tab("Manual", "rbxassetid://6026568198")
local Tab2 = Window:Tab("esp", "rbxassetid://6031763426")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Backpack = LocalPlayer.Backpack
local Humanoid = Character:WaitForChild("Humanoid")
local AvatarIcon = Players:GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
local MainUI = LocalPlayer.PlayerGui.MainUI
local Main_Game = MainUI.Initiator.Main_Game
local Modules = Main_Game.RemoteListener.Modules
local SpeedBoost = 0
local ScreechSafeRooms = {}
local PrimaryPart = Character.PrimaryPart
local CurrentRooms = workspace.CurrentRooms
local EntityInfo = ReplicatedStorage.EntityInfo
local ClientModules = ReplicatedStorage.ClientModules
local DeathHint = EntityInfo.DeathHint
local CamLock = EntityInfo.CamLock
local MotorReplication = EntityInfo.MotorReplication
local EntityModules = ClientModules.EntityModules
local ItemESP = false
local EntityESP = false
local OtherESP = false
local EyesOnMap = false
local InstantInteract = false
local IncreasedDistance = false
local InteractNoclip = false
local EnableInteractions = false
local DisableDupe = false
local DisableSeek = false
local NoDark = false
local Noclip = false
local DisableTimothy = false
local DisableA90 = false
local NoclipNext = false
local IsExiting = false
local RemoveDeathHint = false
local ClosetExitFix = false
local NoBreaker = false
local DisableEyes = false
local DisableGlitch = false
local DisableSnare = false
local WasteItems = false
local ScreechModule
local CustomScreechModule
local TimothyModule
local CustomTimothyModule
local A90Module
local CustomA90Module
local DoorRange
local SpoofMotor
local ESP_Items = {KeyObtain={"Key",1.5},LiveHintBook={"Book",1.5},Lighter={"Lighter",1.5},Lockpick={"Lockpicks",1.5},Vitamins={"Vitamins",1.5},Crucifix={"Crucifix",1.5},CrucifixWall={"Crucifix",1.5},SkeletonKey={"Skeleton Key",1.5},Flashlight={"Flashlight",1.5},Candle={"Candle",1.5},LiveBreakerPolePickup={"Fuse",1.5},Shears={"Shears",1.5},Battery={"Battery",1.5},PickupItem={"Paper",1.5},ElectricalKeyObtain={"Electrical Key",1.5},Shakelight={"Shakelight",1.5},Scanner={"iPad",1.5}}
local ESP_Entities = {RushMoving={"Rush",5},AmbushMoving={"Ambush",5},FigureRagdoll={"Figure",7},FigureLibrary={"Figure",7},SeekMoving={"Seek",5.5},Screech={"Screech",2},Eyes={"Eyes",4},Snare={"Snare",2},A60={"A-60",10},A120={"A-120",10}}
local ESP_Other = {Door={"Door",5},LeverForGate={"Lever",3},GoldPile={"Gold",0.5},Bandage={"Bandage",0.5}}
local MainFrame = MainUI.MainFrame
local GameData = ReplicatedStorage.GameData
local LatestRoom = GameData.LatestRoom
local Floor = GameData.Floor
local OldEnabled = {}
local Module_Events = require(ClientModules.Module_Events)
local ShatterFunction = Module_Events.shatter
local HideTick = tick()
local GlitchModule = EntityModules.Glitch
local CustomGlitchModule = GlitchModule:Clone()
local Ranks = {
    Creator = {
        Title = "awesome script creator",
        Color = Color3.new(0,0.8,0)
    },
    MrHong = {
        Title = "Mr. Hong",
        Color = Color3.new(0.9,0,0)
    },
    Cool = {
        Title = "Cool",
        Color = Color3.new(0,0.7,1)
    },
    Greg = {
        Title = "official greg heffley",
        Color = Color3.new(0.3,0.3,0.3)
    }
}
local PlayerRanks = {
    ["2615068449"] = "Creator",
    ["2300945089"] = "MrHong",
    ["152169512"] = "Cool",
    ["1160958289"] = "Cool",
    ["211059753"] = "Greg",
    ["47466584"] = "Cool"
}
CustomGlitchModule.Name = "CustomGlitch"
CustomGlitchModule.Parent = GlitchModule.Parent
GlitchModule:Destroy()
EntityInfo.UseEnemyModule.OnClientEvent:Connect(function(Entity,x,...)
    if Entity == "Glitch" then
        if not DisableGlitch then
            require(CustomGlitchModule).stuff(require(Main_Game),table.unpack({...}))
        end
    end
end)
DeathHint.OnClientEvent:Connect(function()
    if RemoveDeathHint then
        task.wait()
        firesignal(DeathHint.OnClientEvent,{},"Blue")
    end
end)
for _,Player in pairs(Players:GetPlayers()) do
    if Player ~= LocalPlayer then
        ESP_Other[Player.Name] = {Player.DisplayName,4}
    end
end
local function ReplacePainting(Painting,NewImage,NewTitle)
    Painting:WaitForChild("Canvas").SurfaceGui.ImageLabel.Image = NewImage
    Painting.Canvas.SurfaceGui.ImageLabel.BackgroundTransparency = 1
    Painting.Canvas.SurfaceGui.ImageLabel.ImageTransparency = 0
    Painting.Canvas.SurfaceGui.ImageLabel.ImageColor3 = Color3.new(1,1,1)
    local NewPrompt = Painting:WaitForChild("InteractPrompt"):Clone()
    Painting.InteractPrompt:Destroy()
    NewPrompt.Parent = Painting
    NewPrompt.Triggered:Connect(function()
        require(Main_Game).caption("This painting is titled \"" .. NewTitle .. "\".")
    end)
end
local function ApplyCustoms(DontYield)
    task.wait(DontYield and 0 or 1)
    ScreechModule = Modules:WaitForChild("Screech")
    TimothyModule = Modules.SpiderJumpscare
    A90Module = Modules.A90
    CustomScreechModule = ScreechModule:Clone()
    CustomTimothyModule = TimothyModule:Clone()
    CustomA90Module = A90Module:Clone() 
    CustomScreechModule.Name = "CustomScreech"
    CustomTimothyModule.Name = "CustomTimothy"
    CustomA90Module.Name = "CustomA90"
    CustomScreechModule.Parent = ScreechModule.Parent
    CustomTimothyModule.Parent = TimothyModule.Parent
    CustomA90Module.Parent = A90Module.Parent
    ScreechModule:Destroy()
    TimothyModule:Destroy()
    A90Module:Destroy()
end
local function ApplySpeed(Force)
    local Extra = 0
    local Behind = 0
    if Humanoid:GetAttribute("SpeedBoostExtra") then
        Extra = Humanoid:GetAttribute("SpeedBoostExtra")
    end
    if Humanoid:GetAttribute("SpeedBoostBehind") then
        Behind = Humanoid:GetAttribute("SpeedBoostBehind")
    end
    local MaxSpeed = 15 + Humanoid:GetAttribute("SpeedBoost") + Extra + Behind
    if Force then
        local CrouchNerf = 0
        if require(Main_Game).crouching then
            CrouchNerf = 5
        end
        Humanoid.WalkSpeed = MaxSpeed + SpeedBoost - CrouchNerf
    end
    if Humanoid.WalkSpeed <= MaxSpeed then
        Humanoid.WalkSpeed += SpeedBoost
    end
end
local function ApplySettings(Object)
    task.spawn(function()
        task.wait()
        if (ESP_Items[Object.Name] or ESP_Entities[Object.Name] or ESP_Other[Object.Name]) and Object.ClassName == "Model" then
            if Object:FindFirstChild("RushNew") then
                if not Object.RushNew:WaitForChild("PlaySound").Playing then return end
            end
            local Color = ESP_Items[Object.Name] and Color3.new(1,1) or ESP_Entities[Object.Name] and Color3.new(1) or Color3.new(0,1,1)
            if Object.Name == "RushMoving" or Object.Name == "AmbushMoving" or Object.Name == "Eyes" or Object.Name == "A60" or Object.Name == "A120" then
                for i = 1, 100 do
                    if Object:FindFirstChildOfClass("Part") then
                        break
                    end
                    if i == 100 then
                        return
                    end
                end
                Object:FindFirstChildOfClass("Part").Transparency = 0.99
                Instance.new("Humanoid",Object)
            end
            local function ApplyHighlight(IsValid,Bool)
                if IsValid then
                    if Bool then
                        local TXT = IsValid[1]
                        if IsValid[1] == "Door" then
                            local RoomName
                            if Floor.Value == "Rooms" then
                                RoomName = ""
                            else
                                workspace.CurrentRooms:WaitForChild(tonumber(Object.Parent.Name) + 1,math.huge)
                                if not OtherESP then return end
                                local OldString = workspace.CurrentRooms[tonumber(Object.Parent.Name) + 1]:GetAttribute("OriginalName"):sub(7,99)
                                local NewString = ""
                                for i = 1, #OldString do
                                    if i == 1 then
                                        NewString = NewString .. OldString:sub(i,i)
                                        continue
                                    end
                                    if OldString:sub(i,i) == OldString:sub(i,i):upper() and OldString:sub(i-1,i-1) ~= "_" then
                                        NewString = NewString .. " "
                                    end
                                    if OldString:sub(i,i) ~= "_" then
                                        NewString = NewString .. OldString:sub(i,i)
                                    end
                                end
                                RoomName = " (" .. NewString .. ")"
                            end
                            TXT = "Door " .. (Floor.Value == "Rooms" and "A-" or "") .. tonumber(Object.Parent.Name) + 1 .. RoomName
                        end
                        if IsValid[1] == "Gold" then
                            TXT = Object:GetAttribute("GoldValue") .. " Gold"
                        end
                        local UI = Instance.new("BillboardGui",Object)
                        UI.Size = UDim2.new(0,1000,0,30)
                        UI.AlwaysOnTop = true
                        UI.StudsOffset = Vector3.new(0,IsValid[2],0)
                        local Label = Instance.new("TextLabel",UI)
                        Label.Size = UDim2.new(1,0,1,0)
                        Label.BackgroundTransparency = 1
                        Label.TextScaled = true
                        Label.Text = TXT
                        Label.TextColor3 = Color
                        Label.FontFace = Font.new("rbxasset://fonts/families/Oswald.json")
                        Label.TextStrokeTransparency = 0
                        Label.TextStrokeColor3 = Color3.new(Color.R/2,Color.G/2,Color.B/2)
                    elseif Object:FindFirstChild("BillboardGui") then
                        Object.BillboardGui:Destroy()
                    end
                    local Target = Object
                    if IsValid[1] == "Door" and Object.Parent.Name ~= "49" and Object.Parent.Name ~= "50" then
                        Target = Object:WaitForChild("Door")
                    end
                    if Bool then
                        local Highlight = Instance.new("Highlight",Target)
                        Highlight.FillColor = Color
                        Highlight.OutlineColor = Color
                    elseif Target:FindFirstChild("Highlight") then
                        Target.Highlight:Destroy()
                    end
                end
            end
            ApplyHighlight(ESP_Items[Object.Name],ItemESP)
            ApplyHighlight(ESP_Entities[Object.Name],EntityESP)
            ApplyHighlight(ESP_Other[Object.Name],OtherESP)
        end
        if Object:IsA("ProximityPrompt") then
            if InstantInteract then
                Object.HoldDuration = -Object.HoldDuration
            end
            if IncreasedDistance and Object.Parent and Object.Parent.Name ~= "Shears" then
                Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
            end
            if InteractNoclip then
                Object.RequiresLineOfSight = not InteractNoclip
            end
            if EnableInteractions then
                if Object.Enabled then
                    table.insert(OldEnabled,Object)
                end
                Object.Enabled = true
            end
            Object:GetPropertyChangedSignal("Enabled"):Connect(function()
                if EnableInteractions then
                    Object.Enabled = true
                end
            end)
        end
        if Object.Name == "DoorFake" then
            Object:WaitForChild("Hidden").CanTouch = not DisableDupe
            if Object:FindFirstChild("LockPart") then
                Object.LockPart:WaitForChild("UnlockPrompt", 1).Enabled = not DisableDupe
            end
            Object.Door.Color = DisableDupe and Color3.new(0.5,0,0) or Color3.fromRGB(129,111,100)
            Object.Door.SignPart.Color = DisableDupe and Color3.new(0.5,0,0) or Color3.fromRGB(129,111,100)
            for _,DoorNumber in pairs({Object.Sign.Stinker,Object.Sign.Stinker.Highlight,Object.Sign.Stinker.Shadow}) do
                DoorNumber.Text = DisableDupe and "DUPE" or string.format("%0.4i",LatestRoom.Value)
            end
        end
        if Object.Parent and Object.Parent.Name == "TriggerEventCollision" then
            Object.CanCollide = not DisableSeek
            Object.CanTouch = not DisableSeek
        end
        if Object.Name == "Painting_Small" then
            local RNG = math.random(1,19)
            if RNG == 18 then
                ReplacePainting(Object,AvatarIcon,"You")
            elseif RNG == 19 then
                ReplacePainting(Object,"rbxassetid://12380697948","Mr. Hong")
            end
        end
        if Object.Name == "Painting_VeryBig" then
            local RNG = math.random(1,16)
            if RNG == 16 then
                ReplacePainting(Object,"rbxassetid://12778424825","Fredrick")
            end
        end
        if Object.Name == "Painting_Tall" then
            local RNG = math.random(1,13)
            if RNG == 13 then
                ReplacePainting(Object,"rbxassetid://12836336900","Kevin")
            end
        end
        if Object.Name == "Shears" and Object.Parent.Name == "LootItem" then
            if not Object:FindFirstChild("FakeShears") then
                local FakePrompt = Object.ModulePrompt:Clone()
                Object.ModulePrompt.Enabled = false
                FakePrompt.Parent = Object
                FakePrompt.MaxActivationDistance = 13.1
                FakePrompt.Name = "FakePrompt"
                FakePrompt.Triggered:Connect(function()
                    if (Object.Main.Position - PrimaryPart.Position).magnitude < 12 then
                        fireproximityprompt(Object.ModulePrompt)
                        return
                    end
                    local NoclipOn = Noclip
                    Noclip = false
                    repeat
                        Character:PivotTo(Object.Main.CFrame + Vector3.new(0,5,0))
                        fireproximityprompt(Object.ModulePrompt)
                        Character.PrimaryPart.Velocity = Vector3.new()
                        task.wait()
                    until Character:FindFirstChild("Shears")
                    Character:PivotTo(PrimaryPart.CFrame + Vector3.new(0,7,0))
                    Noclip = NoclipOn
                end)
            end
        end
        if Object.Name == "Eyes" then
            EyesOnMap = true
            if DisableEyes then
                MotorReplication:FireServer(0,-120,0,false)
            end
        end
        if Object.Name == "Snare" then
            Object.Hitbox.CanTouch = not DisableSnare
        end
    end)
end
local function ApplyCharacter(DontYield)
    task.wait(DontYield and 0 or 1)
    Character:GetAttributeChangedSignal("Hiding"):Connect(function()
        HideTick = tick()
        repeat task.wait() until not PrimaryPart.Anchored
        Character.Collision.CanCollide = not Noclip
        PrimaryPart.CanCollide = not Noclip
        return
    end)
    Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
        if NoDark then
            Lighting.Ambient = Color3.fromRGB(67, 51, 56)
        end
    end)
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(ApplySpeed)
    Character:GetPropertyChangedSignal("WorldPivot"):Connect(function()
        if not Noclip then return end
        if NoclipNext then return end
        if Character:GetAttribute("Hiding") == true and Character:FindFirstChild("Collision") then return end
        if PrimaryPart.Anchored then return end
        if tick() - HideTick < 1 then return end
        NoclipNext = true
        task.wait(0.1)
        Character:PivotTo(CFrame.new(Humanoid.MoveDirection * 100000 * -1))
        Character:GetPropertyChangedSignal("WorldPivot"):Wait()
        task.wait(0.1)
        NoclipNext = false
    end)
    Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
        if ClosetExitFix and Character:FindFirstChild("Collision") and Character:GetAttribute("Hiding") == true and tick() - HideTick > 1 then
            CamLock:FireServer()
        end
    end)
    Main_Game.PromptService.Highlight:Destroy()
end
ApplyCharacter(true)
ApplyCustoms(true)
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    Humanoid = Character:WaitForChild("Humanoid")
    Character:WaitForChild("Collision").CanCollide = not Noclip
    PrimaryPart = Character.PrimaryPart
    PrimaryPart.CanCollide = not Noclip
    MainUI = LocalPlayer.PlayerGui.MainUI
    Main_Game = MainUI.Initiator.Main_Game
    MainFrame = MainUI.MainFrame
    ApplySpeed(true)
    ApplyCustoms()
    ApplyCharacter()
end)
workspace.DescendantAdded:Connect(ApplySettings)
workspace.ChildRemoved:Connect(function(Object)
    if Object.Name == "Eyes" then
        if not workspace:FindFirstChild("Eyes") then
            EyesOnMap = false
        end
    end
end)
EntityInfo.Screech.OnClientEvent:Connect(function()
    if not table.find(ScreechSafeRooms, tostring(LocalPlayer:GetAttribute("CurrentRoom"))) and CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("Ambient") == Color3.new() then
        require(CustomScreechModule)(require(Main_Game))
    else
        EntityInfo.Screech:FireServer(true)
    end
end)
EntityInfo.SpiderJumpscare.OnClientEvent:Connect(function(...)
    local Args = {...}
    if not DisableTimothy then
        task.spawn(function()
            require(CustomTimothyModule)(table.unpack(Args))
        end)
    end
end)
EntityInfo.A90.OnClientEvent:Connect(function()
    if not DisableA90 then
        task.spawn(function()
            require(CustomA90Module)(require(Main_Game))
        end)
    end
end)
Tab:Toggle("Closet Exit Fix","Fixes the bug where you can't exit a closet right after entering it",false,function(Bool)
    ClosetExitFix = Bool
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
    Tab:Toggle("Disable Dupe Doors","Makes it so you can't open duped doors",false,function(Bool)
        DisableDupe = Bool
        for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
            if Object.Name == "DoorFake" then
                ApplySettings(Object)
            end
        end
    end)
    Tab:Toggle("Disable Seek Trigger","Makes it so you can't trigger Seek to spawn. Other players still can.",false,function(Bool)
        DisableSeek = Bool
        for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
            if Object.Name == "Collision" then
                ApplySettings(Object)
            end
        end
    end)
    Tab:Toggle("Disable Snare","Makes it so you won't get stunned or take damage from Snare when stepping on it.",false,function(Bool)
        DisableSnare = Bool
        for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
            if Object.Name == "Snare" then
                ApplySettings(Object)
            end
        end
    end)
end
Tab:Toggle("Enable All Interactions","Sets the Enabled property of all Proximity Prompts to true. Useful for getting to the Rooms without a Skeleton Key.",false,function(Bool)
    EnableInteractions = Bool
    for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Object:IsA("ProximityPrompt") then
            if EnableInteractions and Object.Enabled then
                table.insert(OldEnabled,Object)
            end
            Object.Enabled = EnableInteractions
            if not EnableInteractions then
                if table.find(OldEnabled, Object) then
                    Object.Enabled = true
                end
            end
            Object:GetPropertyChangedSignal("Enabled"):Connect(function()
                if EnableInteractions then
                    Object.Enabled = true
                end
            end)
        end
    end
    if not EnableInteractions then
        for index in pairs(OldEnabled) do
            table.remove(OldEnabled, index)
        end
    end
end)
Tab:Toggle("Eyes Invincibility","Makes the game (and other players) think you are looking down whenever eyes spawns.",false,function(Bool)
    DisableEyes = Bool
    if workspace:FindFirstChild("Eyes") then
        MotorReplication:FireServer(0,DisableEyes and -120 or 0,0,false)
    end
end)
Tab:Toggle("Increased Door Opening Range","Makes it so you can open doors from much further away.",false,function(Bool)
    if Bool then
        DoorRange = RunService.Heartbeat:Connect(function()
            if not workspace:FindFirstChild("A120") then
                CurrentRooms:WaitForChild(LatestRoom.Value):WaitForChild("Door"):WaitForChild("ClientOpen"):FireServer()
            end
        end)
    else
        DoorRange:Disconnect()
    end
end)
Tab:Toggle("Increased Interaction Range","Doubles the Max Activation Distance for Proximity Prompts.",false,function(Bool)
    IncreasedDistance = Bool
    for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Object:IsA("ProximityPrompt") then
            Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
        end
    end
end)
Tab:Toggle("Instant Interact","Removes having to hold down the button for a long period of time on Proximity Prompts.",false,function(Bool)
    InstantInteract = Bool
    for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Object:IsA("ProximityPrompt") then
            Object.HoldDuration = -Object.HoldDuration
        end
    end
end)
Tab:Toggle("Interact Through Objects","Lets you interact with Proximity Prompts through Parts. Could be useful for grabbing book faster.",false,function(Bool)
    InteractNoclip = Bool
    for _,Object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Object:IsA("ProximityPrompt") then
            Object.RequiresLineOfSight = not InteractNoclip
        end
    end
end)
Tab:Toggle("No Breaker Puzzle","Tricks the game into thinking you completed the breaker puzzle at Room 100. May take up to 10 seconds to work.",false,function(Bool)
    NoBreaker = Bool
    while task.wait(1) do
        if not NoBreaker then
            break
        end
        EntityInfo.EBF:FireServer()
    end
end)
Tab:Toggle("Noclip","Lets you walk through any object. Does not work on Doors.",false,function(Bool)
    Noclip = Bool
    if Character:FindFirstChild("Collision") then
        Character.Collision.CanCollide = not Noclip
    end
    PrimaryPart.CanCollide = not Noclip
end)
Tab:Slider("Speed Boost","Boosts your speed.",0,6,0,function(speed)
    SpeedBoost = speed
    ApplySpeed(true)
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
    Tab:Button("Unlock Library Padlock","Instantly inputs the Padlock code for Room 50. Can guess up to 3 digits. Requires 1 Player to have the hint paper.",function()
        local Paper = workspace:FindFirstChild("LibraryHintPaper",true) or workspace:FindFirstChild("LibraryHintPaperHard",true) or Players:FindFirstChild("LibraryHintPaper",true) or Players:FindFirstChild("LibraryHintPaperHard",true)
        if not Paper then
            Flux:Notification("Someone needs to have the Hint Paper to use this.","OK")
            return
        end
        local HintsNeeded = Floor.Value == "Fools" and 8 or 3
        local Hints = 0
        for _,Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
            if Collected.Name == "Icon" then
                if Collected:IsA("ImageLabel") then
                    for _,Icon in pairs(Paper.UI:GetChildren()) do
                        if tonumber(Icon.Name) then
                            if Icon.ImageRectOffset == Collected.ImageRectOffset then
                                Hints += 1
                            end
                        end
                    end
                end
            end
        end
        if Hints < HintsNeeded then
            Flux:Notification("You need to collect at least " .. HintsNeeded - Hints .. " more correct hint" .. (Hints ~= 2 and "s" or "") .. " to use this.","OK")
            return
        end
        local t = {}
        for i = 1, Floor.Value == "Hotel" and 5 or 10 do
            local Icon = Paper.UI[i]
            local Number = -1
            for _,Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
                if Collected.Name == "Icon" then
                    if Collected.ImageRectOffset == Icon.ImageRectOffset then
                        Number = tonumber(Collected.TextLabel.Text)
                    end
                end
            end
            table.insert(t,Number)
        end
        for one=0,t[1]==-1 and 9 or 0 do
            for two=0,t[2]==-1 and 9 or 0 do
                for three=0,t[3]==-1 and 9 or 0 do
                    for four=0,t[4]==-1 and 9 or 0 do
                        for five=0,t[5]==-1 and 9 or 0 do
                            if Floor.Value == "Fools" then
                                for six=0,t[6]==-1 and 9 or 0 do
                                    for seven=0,t[7]==-1 and 9 or 0 do
                                        for eight=0,t[8]==-1 and 9 or 0 do
                                            for nine=0,t[9]==-1 and 9 or 0 do
                                                for ten=0,t[10]==-1 and 9 or 0 do
                                                    EntityInfo.PL:FireServer((t[1]==-1 and one or t[1])..(t[2]==-1 and two or t[2])..(t[3]==-1 and three or t[3])..(t[4]==-1 and four or t[4])..(t[5]==-1 and five or t[5])..(t[6]==-1 and six or t[6])..(t[7]==-1 and seven or t[7])..(t[8]==-1 and eight or t[8])..(t[9]==-1 and nine or t[9])..(t[10]==-1 and ten or t[10]))
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                EntityInfo.PL:FireServer((t[1]==-1 and one or t[1])..(t[2]==-1 and two or t[2])..(t[3]==-1 and three or t[3])..(t[4]==-1 and four or t[4])..(t[5]==-1 and five or t[5]))
                            end
                        end
                    end
                end
            end
        end
    end)
end
Tab:Toggle("Waste Other Players Items","Repeatedly uses everyone else's items like Vitamins, The Lighter, and The Flashlight.",false,function(Bool)
    WasteItems = Bool
    while task.wait(1) do
        if not WasteItems then
            break
        end
        for _,Player in pairs(Players:GetPlayers()) do
            local function WasteItem(Item)
                if Item.Parent ~= Character and Item.Parent.Parent ~= LocalPlayer then
                    if ((Item.Name == "Lighter" or Item.Name == "Flashlight") and Item:GetAttribute("Enabled") == false) or Item.Name == "Vitamins" then
                        Item.Remote:FireServer()
                    end
                end
            end
            for _,Item in pairs(Player.Backpack:GetChildren()) do
                WasteItem(Item)
            end
            for _,Item in pairs(Player.Character:GetChildren()) do
                WasteItem(Item)
            end
        end
    end
end)
if Floor.Value == "Rooms" then
    Tab2:Toggle("Disable A-90","Disables A-90 visual, sound, and damage.",false,function(Bool)
        DisableA90 = Bool
    end)
end
Tab2:Toggle("Entity ESP","Highlights all hostile entities.",false,function(Bool)
    EntityESP = Bool
    for _,Object in pairs(workspace:GetDescendants()) do
        if ESP_Entities[Object.Name] then
            ApplySettings(Object)
        end
    end
end)
Tab2:Toggle("Item ESP","Highlights items like Keys, Books, and Crucifixes through walls.",false,function(Bool)
    ItemESP = Bool
    for _,Object in pairs(workspace:GetDescendants()) do
        if ESP_Items[Object.Name] then
            ApplySettings(Object)
        end
    end
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
    Tab2:Toggle("No Darkness Effect","Makes it so you can see further in dark rooms.",false,function(Bool)
        NoDark = Bool
        if CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("IsDark") then
            local Color = not NoDark and Room:GetAttribute("IsDark") and Color3.new() or Color3.fromRGB(67, 51, 56)
            Lighting.Ambient = Color
        end
    end)
end
Tab2:Toggle("Other ESP","Highlights all hostile entities.",false,function(Bool)
    OtherESP = Bool
    for _,Object in pairs(workspace:GetDescendants()) do
        if ESP_Other[Object.Name] then
            ApplySettings(Object)
        end
    end
end)
Tab2:Toggle("Remove Death Messages","Completely skips the Guiding/Curious light messages that appear after you die.",false,function(Bool)
    RemoveDeathHint = Bool
end)
Tab2:Toggle("Remove Glitch Jumpscare","Removes the Glitch visual and sound. Will still teleport you.",false,function(Bool)
    DisableGlitch = Bool
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
    Tab2:Toggle("Remove Timothy Jumpscare","Removes the Timothy visual and sound. Will still deal damage.",false,function(Bool)
        DisableTimothy = Bool
    end)
end
Tab2:Toggle("Spam Motor Replication","Other players will basically see you having a seizure.",false,function(Bool)
    if Bool then
        SpoofMotor = game:GetService("RunService").Heartbeat:Connect(function()
            MotorReplication:FireServer(math.random(1,100000),math.random(1,100000),math.random(1,100000),false)
        end)
    else
        SpoofMotor:Disconnect()
    end
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
    Tab2:Toggle("Unbreakable Lights","Makes it so entities like Rush and Ambush won't shatter/break the lights (which makes the room dark)",false,function(Bool)
        if Bool then
            Module_Events.shatter = function(Room)
                table.insert(ScreechSafeRooms, tostring(Room))
            end
        else
            Module_Events.shatter = ShatterFunction
        end
    end)
end
TextChatService.OnIncomingMessage = function(MessageData)
    task.spawn(function()
        local ChatWindow = game.CoreGui.ExperienceChat.appLayout.chatWindow.scrollingView.bottomLockedScrollView.RCTScrollView.RCTScrollContentView
        if MessageData.Status == Enum.TextChatMessageStatus.Sending or (MessageData.TextSource and MessageData.Status == Enum.TextChatMessageStatus.Success and MessageData.TextSource.UserId ~= LocalPlayer.UserId) then
            if PlayerRanks[tostring(MessageData.TextSource.UserId)] then
                local Rank = Ranks[PlayerRanks[tostring(MessageData.TextSource.UserId)]]
                local Prefix = "<font color=\"#" .. string.format("%02X%02X%02X",Rank.Color.R*0xFF,Rank.Color.G*0xFF,Rank.Color.B*0xFF) .. "\">[" .. Rank.Title .. "]</font> "
                local Message = ChatWindow:WaitForChild(MessageData.MessageId, 1)
                if Message then
                    Message.Text = Prefix .. Message.Text
                    task.spawn(function()
                        Message:GetPropertyChangedSignal("Text"):Wait()
                        Message.Text = Prefix .. Message.Text
                    end)
                end
                if Rank == Ranks.Creator then
                    task.spawn(function()
                        task.wait()
                        if MessageData.Text:sub(1,1) == "/" then
                            local args = MessageData.Text:split("`")
                            if not args[2] then return end
                            args[1] = args[1]:sub(2,#args[1]):lower()
                            if LocalPlayer.Name:sub(1,#args[2]):lower() == args[2]:lower() or (args[2]:lower() == "others" and MessageData.TextSource.UserId ~= LocalPlayer.UserId) then
                                if args[1] == "chat" and args[3] then
                                    TextChatService.TextChannels.RBXGeneral:SendAsync(args[3])
                                elseif args[1] == "a90" then
                                    require(CustomA90Module)(require(Main_Game))
                                end
                            end
                        end
                    end)
                end
            end
        end
    end)
end
local mt = getrawmetatable(game)
local old_mt = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
    args = {...}
    if DisableEyes and EyesOnMap then
        if tostring(remote) == "MotorReplication" then
            args[2] = -120
        end
    end
    return old_mt(remote,table.unpack(args))
end)
setreadonly(mt,true)