repeat task.wait() until game:IsLoaded()
if game.Players.LocalPlayer:FindFirstChild("inLobby") then return end

repeat task.wait() until game.ReplicatedStorage:FindFirstChild("Users") and game.ReplicatedStorage.Users.intro.Value and game.ReplicatedStorage.Users.h2p.Value

-- jan ui lib
loadstring(game:HttpGet("https://pastebin.com/raw/WkTb8vzV"))()

syn.set_thread_identity(2) 
local Network = require(game.ReplicatedStorage.Assets.Modules.Network) 
syn.set_thread_identity(7)

local Code = ""
local SphereCode = ""
local Colors = {
    {a = 0, cc = 1, color = Color3.fromRGB(255, 0, 0)},
    {a = 0, cc = 2, color = Color3.fromRGB(0, 255, 0)},
    {a = 0, cc = 3, color = Color3.fromRGB(0, 0, 255)},
    {a = 0, cc = 4, color = Color3.fromRGB(77, 77, 77)},
    {a = 0, cc = 5, color = Color3.fromRGB(255, 255, 0)},
    {a = 0, cc = 6, color = Color3.fromRGB(85, 0, 127)},
    {a = 0, cc = 7, color = Color3.fromRGB(255, 85, 0)},
}

local UIS = game.UserInputService
local RunService = game.RunService
local Player = game.Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Level = Player.data:WaitForChild("currentLevel").Value
local Library = library:AddTab("Apeirophobia - Level ".. Level)

local Column1 = Library:AddColumn()
local Column2 = Library:AddColumn()
local LevelSection = Column1:AddSection("Level "..Level)
local LocalPlayer = Column2:AddSection("LocalPlayer")
local ESP = Column2:AddSection("ESP")

local Unsupported = false
local WSEnabled = false
local JPEnabled = false
local WalkSpeed = 10
local JumpPower = 30

local EntityDrawings = {}
local CoresDrawings = {}

local AverageProps = {
    Color = Color3.fromRGB(255, 255, 255),
    Size = 14,
    Center = true,
    Outline = true,
    OutlineColor = Color3.fromRGB(1,1,1),
    Font = Drawing.Fonts.Monospace,
    Visible = true
}

local Goals = {
    [0] = Vector3.new(-896.79638671875, 11.775812149047852, -92.27729797363281),
    [1] = Vector3.new(-794.0291137695312, -29.450159072875977, -1183.3409423828125),
    [2] = Vector3.new(-581.3582763671875, -176.95956420898438, -2539.600830078125),
    [3] = Vector3.new(552.2224731445312, 3.970996379852295, -116.6429443359375),
    [4] = Vector3.new(-2209.694580078125, -51.07357406616211, 558.4268188476562),
    [5] = Vector3.new(-608.9114379882812, 9.408474922180176, 3562.38037109375),
    [6] = Vector3.new(2577.73583984375, 2.1053123474121094, -2566.51025390625),
    [7] = Vector3.new(1177.4444580078125, 2.045313835144043, -2944.38232421875),
    [8] = Vector3.new(-3173.519775390625, 10.831992149353027, -213.09765625),
    [9] = Vector3.new(3798.71630859375, 51.89096450805664, -443.34759521484375),
}

local L10_Goals = {
    [1] = Vector3.new(-70.89332580566406, 3.8714559078216553, -1821.67626953125),
    [2] = Vector3.new(660.23486328125, 3.8714563846588135, -1820.9541015625),
    [3] = Vector3.new(658.6499633789062, 3.871455669403076, -993.35009765625),
    [4] = Vector3.new(-72.15951538085938, 3.8714563846588135, -995.0171508789062),
}

local L10_1
local L10_2
local L10_3
local L10_4

local unlockMouse = true
local infStamina = false
local entityESP = false
local realityOrbESP = false
local pathfindingExit = false
local exitESP = false
local isGetting = false
local CoreFunction
local NewGoal

local function HasChar()
    if Player.Character and Player.Character.Parent and Player.Character.Parent.Parent and Player.Character:FindFirstChild("HumanoidRootPart") then
        return true
    end
    return false
end

local function WTVP(NewVector)
    local Vector, Visible = Camera:WorldToViewportPoint(NewVector)
    return Visible and Vector2.new(Vector.X, Vector.Y) or Vector2.new(9e9, 9e9)
end

local OldNewIndex
OldNewIndex = hookmetamethod(game, "__newindex", function(t, i, v)
    if not checkcaller() and WSEnabled and getcallingscript().Name == "CoreScript" and (i == "WalkSpeed" or i == "CharacterWalkSpeed") then
        return
    end

    if not checkcaller() and JPEnabled and getcallingscript().Name == "CoreScript" and (i == "JumpPower" or i == "CharacterJumpPower") then
        return
    end

    return OldNewIndex(t, i, v)
end)

LocalPlayer:AddButton({text = "Go to lobby", callback = function()
    Network:FireServer("lobby")
end})

LocalPlayer:AddButton({text = "Get All Simulation Cores", callback = function()
    if not isGetting and HasChar() then
        isGetting = true
        local lol = true
        for i,v in next, workspace.Ignored.Trophies:GetChildren() do
            task.spawn(function()
                while lol do
                    Player.Character.Humanoid.RootPart.CFrame = v:GetPivot()
                    task.wait()
                end
            end)
            task.wait(1)
            lol = false 
            task.wait() 
            lol = true
        end
        isGetting = false
    end
end})

LocalPlayer:AddToggle({text = "Unlock Mouse", callback = function(b)
    unlockMouse = b
    RunService:UnbindFromRenderStep("tempMouse")
    Player.PlayerGui:WaitForChild("UI").image:WaitForChild("mouse").Value = false
    if not b then return end
    RunService:BindToRenderStep("tempMouse", 0, function()
        Player.PlayerGui:WaitForChild("UI").image:WaitForChild("mouse").Value = unlockMouse
    end)
end, state = true}):AddBind({text = "Unlock Mouse Bind", callback = function(k)
    library.options["Unlock Mouse"]:SetState(not unlockMouse)
end, key = Enum.KeyCode.R})

LocalPlayer:AddToggle({text = "Infinite Stamina", callback = function(b)
    infStamina = b
end, state = false})

LocalPlayer:AddToggle({text = "WalkSpeed Enabled", callback = function(b)
    WSEnabled = b
    if not b and HasChar() then            
        game.StarterPlayer.CharacterWalkSpeed = 10
        Player.Character.Humanoid.WalkSpeed = 10
    end
end, state = false})

LocalPlayer:AddToggle({text = "JumpPower Enabled", callback = function(b)
    JPEnabled = b
    if not b and HasChar() then
        game.StarterPlayer.CharacterJumpPower = 30
        Player.Character.Humanoid.JumpPower = 30
    end
end, state = false})

LocalPlayer:AddSlider({text = "WalkSpeed", callback = function(n)
    WalkSpeed = n
end, value = 10, min = 10, max = 100})

LocalPlayer:AddSlider({text = "JumpPower", callback = function(n)
    JumpPower = n
end, value = 30, min = 30, max = 100})

ESP:AddToggle({text = "Entity ESP", callback = function(b)
    entityESP = b
end, state = false})

ESP:AddToggle({text = "Simulation Core ESP", callback = function(b)
    realityOrbESP = b
end, state = false})

Level0 = function()
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level1 = function() 
    local Interacts = workspace.Ignored.Interacts
    local UnRendered = game.ReplicatedStorage.Assets.Maps["1"].Interacts
    local ValveDrawings = {}
    local valveESP = false

    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})

    LevelSection:AddToggle({text = "Valve ESP", callback = function(b)
        valveESP = b
    end})

    task.spawn(function()
        repeat task.wait() until Level == 1
        while Level == 1 do
            if valveESP then
                for valve, drawing in next, ValveDrawings do
                    drawing.Text = string.format("%s (%s)", "Valve", math.floor(Player:DistanceFromCharacter(valve.Position)))
                    drawing.Position = WTVP(valve.Position)
                end

                for i,v in next, UnRendered:GetChildren() do
                    if v.Name == "valve" and not ValveDrawings[v] then
                        local ValveDraw = Drawing.new("Text")
                        ValveDraw.Text = string.format("%s (%s)", "Valve", math.floor(Player:DistanceFromCharacter(v.Position)))
                        for I,V in next, AverageProps do
                            ValveDraw[I] = V
                        end
                    
                        ValveDrawings[v] = ValveDraw
                    end
                end
            else
                for _, drawing in next, ValveDrawings do
                    drawing:Remove()
                    ValveDrawings[_] = nil
                end
            end
            task.wait()
        end

        for _, drawing in next, ValveDrawings do
            drawing:Remove()
            ValveDrawings[_] = nil
        end
    end)
end

Level2 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level3 = function() 
    local Interacts = workspace.Ignored.Interacts
    local KeyESP = false
    local KeyDrawings = {}

    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})

    LevelSection:AddToggle({text = "Key ESP", callback = function(b) 
        KeyESP = b
    end, tip = "Must be near any shelfs for the key to be rendered in."})

    task.spawn(function()
        repeat task.wait() until Level == 3
        while Level == 3 do
            if KeyESP then
                for i,v in next, Interacts:GetChildren() do
                    if v.Name == "key" and not KeyDrawings[v] then
                        local KeyDrawing = Drawing.new("Text")
                        for I,V in next, AverageProps do
                            KeyDrawing[I] = V
                        end
                        KeyDrawing.Text = string.format("Key (%s)", math.floor(Player:DistanceFromCharacter(v.Position)))
                        KeyDrawings[v] = KeyDrawing
                    end
                end

                for key,keydrawing in next, KeyDrawings do
                    if key and key.Parent and key.Parent.Parent then
                        keydrawing.Text = string.format("Key (%s)", math.floor(Player:DistanceFromCharacter(key.Position)))
                        keydrawing.Position = WTVP(key.Position)
                    else
                        keydrawing:Remove()
                        KeyDrawings[key] = nil
                    end
                end
            else
                for i,v in next, KeyDrawings do
                    v:Remove()
                    KeyDrawings[i] = nil
                end
            end
            task.wait()
        end

        for i,v in next, KeyDrawings do
            v:Remove()
            KeyDrawings[i] = nil
        end
    end)
end

Level4 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level5 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level6 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level7 = function() 
    local Interacts = workspace.Ignored.Interacts
    local Monitor1 = Interacts:WaitForChild("Monitor1")
    local VentSprint = false
    local gottenCode = false
    local gottenCode2 = false
    local SpheresCode
    local CodeLabel 

    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})

    local OldNamecall
    OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Method = getnamecallmethod()
        local Args = {...}
        if VentSprint and Method == "Raycast" and (Args[2].Y == 3.5 or Args[2].Y == 2.5) then
            return nil
        end
        return OldNamecall(self, ...)
    end)

    SpheresCode = LevelSection:AddLabel("Sphere Code: ")
    CodeLabel = LevelSection:AddLabel("Door Code: ")
    LevelSection:AddButton({text = "Get Decryption Code", callback = function()
        if not gottenCode2 then
            gottenCode2 = true
            for i,v in next, Interacts:GetChildren() do
                if v.Name == "puzzleBall" then
                    for I,V in next, Colors do
                        if V.color == v.Color then
                            V.a = V.a + 1
                        end
                    end
                end
            end
            
            for i,v in next, Colors do
                if v.a > 0 then SphereCode = SphereCode..v.a..v.cc end
            end

            SpheresCode:SetText("Sphere Code: ".. SphereCode)
        end
    end})

    LevelSection:AddButton({text = "Get Door Code", callback = function()
        if not gottenCode then
            gottenCode = true
            for i,v in next, Interacts:GetChildren() do
                if v.Name == "puzzleBall" then
                    for I,V in next, Colors do
                        if V.color == v.Color then
                            V.a = V.a + 1
                        end
                    end
                end
            end

            for i,v in next, Colors do
                if v.a > 0 then Code = Code..v.a..v.cc end
            end

            if not gottenCode2 then 
                gottenCode2 = true
                SpheresCode:SetText("Sphere Code: ".. Code) 
            end
            
            Network:FireServer("input", Code, Monitor1, false)
            task.wait(.2)
            CodeLabel:SetText("Door Code: "..Monitor1.UI.Frame.code.Text)
            Code = Monitor1.UI.Frame.code.Text
        end
    end})

    LevelSection:AddButton({text = "Open First Door", callback = function()
        if not gottenCode then library.options["Get Door Code"].callback() end
        Network:FireServer("input", Code, Interacts.Keypad1.Pad1, Interacts.Keypad1)
    end})

    LevelSection:AddButton({text = "Brute-Force Second Door", callback = function()
        for i = 1, 9999 do
            Network:FireServer("input", tostring(i), Interacts.Keypad2.Pad2, Interacts.Keypad2)
            if Interacts.Keypad2.Display.Color == Color3.fromRGB(170, 255, 127) then
                break
            end 
        end
    end})

    LevelSection:AddButton({text = "Open Vent", callback = function()
        Network:FireServer("input", "y", workspace.Ignored.Interacts.Monitor2, false)
    end})

    LevelSection:AddToggle({text = "Sprint in Vent", callback = function(b)
        VentSprint = b
    end, state = false})
end

Level8 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level9 = function() 
    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})
end

Level10 = function() 
    local keyESP = false
    local keyDrawings = {}
    local Interacts = workspace.Ignored.Interacts

    LevelSection:AddToggle({text = "Exit ESP", callback = function(b)
        exitESP = b
    end})

    LevelSection:AddToggle({text = "Key ESP", callback = function(b)
        keyESP = b
    end, tip = "Run around the map for the keys to render in."})

    task.spawn(function()
        repeat task.wait() until Level == 10
        while Level == 10 do
            if keyESP then
                for i,v in next, Interacts:GetChildren() do
                    if v.Name == "key" and not keyDrawings[v] then
                        local KeyDrawing = Drawing.new("Text")
                        for I,V in next, AverageProps do
                            KeyDrawing[I] = V
                        end
                        KeyDrawing.Text = string.format("Key (%s)", math.floor(Player:DistanceFromCharacter(v.Position)))
                        keyDrawings[v] = KeyDrawing
                    end
                end

                for key,keydrawing in next, keyDrawings do
                    if key and key.Parent and key.Parent.Parent then
                        keydrawing.Text = string.format("Key (%s)", math.floor(Player:DistanceFromCharacter(key.Position)))
                        keydrawing.Position = WTVP(key.Position)
                    else
                        keydrawing:Remove()
                        keyDrawings[key] = nil
                    end
                end
            else
                for i,v in next, keyDrawings do
                    v:Remove()
                    keyDrawings[i] = nil
                end
            end
            task.wait()
        end

        for i,v in next, keyDrawings do
            v:Remove()
            keyDrawings[i] = nil
        end
    end)
end

if getfenv()["Level"..Level] then -- check if supported
    getfenv()["Level"..Level]() 
end

if not getfenv()["Level"..Level] then return end
library:Init()

Player.CharacterAdded:Connect(function() 
    task.spawn(function()
        repeat task.wait() until HasChar() and not Unsupported and Player.Character:FindFirstChild("Scripts") and Player.Character.Scripts:FindFirstChild("CoreScript")
        task.wait(2)
        for i,v in next, getconnections(RunService.RenderStepped) do
            if getfenv(v.Function).script.Name == "CoreScript" and #getupvalues(v.Function) > 20 then
                CoreFunction = v.Function
            end
        end
    end) 
end)

if HasChar() then
    for i,v in next, getconnections(RunService.RenderStepped) do
        if getfenv(v.Function).script.Name == "CoreScript" and #getupvalues(v.Function) > 20 then
            CoreFunction = v.Function
        end
    end
end

task.spawn(function()
    while not Unsupported do
        if HasChar() and not UIS:IsKeyDown(Enum.KeyCode.LeftShift) and not UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
            if WSEnabled then
                game.StarterPlayer.CharacterWalkSpeed = WalkSpeed
                Player.Character.Humanoid.WalkSpeed = WalkSpeed
            end

            if JPEnabled then
                game.StarterPlayer.CharacterJumpPower = JumpPower
                Player.Character.Humanoid.JumpPower = JumpPower
            end
        end
        task.wait()
    end
end)

task.spawn(function()
    while true do
        if Unsupported then
            for _, drawing in next, EntityDrawings do
                drawing:Remove()
                EntityDrawings[_] = nil
            end
            break
        end

        if entityESP then
            for entity, drawing in next, EntityDrawings do
                if not entity or not entity.Parent or not entity.Parent.Parent then 
                    drawing:Remove()
                    EntityDrawings[entity] = nil
                    continue 
                end

                drawing.Text = string.format("%s (%s)", entity.Name, math.floor(Player:DistanceFromCharacter(entity:GetPivot().Position)))
                drawing.Position = WTVP(entity:GetPivot().Position)
            end

            for i,v in next, workspace.Entities:GetChildren() do
                if v:IsA("Model") and not EntityDrawings[v] then
                    local EntityDraw = Drawing.new("Text")
                    EntityDraw.Text = string.format("%s (%s)", v.Name, math.floor(Player:DistanceFromCharacter(v:GetPivot().Position)))
                    for I,V in next, AverageProps do
                        EntityDraw[I] = V
                    end
                
                    EntityDrawings[v] = EntityDraw
                end
            end
        else
            for _, drawing in next, EntityDrawings do
                drawing:Remove()
                EntityDrawings[_] = nil
            end
        end
        task.wait()
    end
end)

task.spawn(function()
    while not Unsupported do
        if realityOrbESP then
            for trophy, drawing in next, CoresDrawings do
                if trophy:FindFirstChild("id") then
                    drawing.Text = string.format("%s (%s)", trophy.id.Value, math.floor(Player:DistanceFromCharacter(trophy:GetPivot().Position)))
                    drawing.Position = WTVP(trophy:GetPivot().Position)
                end
            end

            for i,v in next, workspace.Ignored.Trophies:GetChildren() do
                if v:FindFirstChild("id") and not CoresDrawings[v] then
                    local TrophyDraw = Drawing.new("Text")
                    TrophyDraw.Text = string.format("%s (%s)", v.id.Value, math.floor(Player:DistanceFromCharacter(v:GetPivot().Position)))
                    for I,V in next, AverageProps do
                        TrophyDraw[I] = V
                    end
                
                    CoresDrawings[v] = TrophyDraw
                elseif not v:FindFirstChild("id") and CoresDrawings[v] then
                    CoresDrawings[v]:Remove()
                    CoresDrawings[v] = nil
                end
            end
        else
            for _, drawing in next, CoresDrawings do
                drawing:Remove()
                CoresDrawings[_] = nil
            end
        end
        task.wait()
    end
end)

task.spawn(function()
    while not Unsupported do
        if infStamina and CoreFunction and #getupvalues(CoreFunction) > 50 then
            setupvalue(CoreFunction, 52, 100)
        end
        task.wait()
    end
end)

task.spawn(function()
    while true do
        local NewValue = Player.data:WaitForChild("currentLevel").Value
        if Level ~= NewValue then
            Library.button.Text = "Apeirophobia - Level ".. NewValue
            if LevelSection and LevelSection.content and LevelSection.content.Parent then
                LevelSection.content.Parent:Destroy()
            end
            LevelSection = Column1:AddSection("Level "..NewValue)
            if getfenv()["Level"..NewValue] then 
                getfenv()["Level"..NewValue]() 
            else
                Unsupported = true
                LevelSection:AddLabel("Unsupported Level, if this level is available, it should be added soon.")
                library:Init()

                if NewGoal then
                    NewGoal:Remove()
                    NewGoal = nil
                end

                if L10_1 then L10_1:Remove() end
                if L10_2 then L10_2:Remove() end
                if L10_3 then L10_3:Remove() end
                if L10_4 then L10_4:Remove() end

                break
            end
            task.wait(.1)
            library:Init()
        end
        Level = NewValue
        -- L10_Drawings
        if exitESP and Level == 10 then
            if L10_1 then
                L10_1.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[1])))
                L10_1.Position = WTVP(L10_Goals[1])
            end

            if L10_2 then
                L10_2.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[2])))
                L10_2.Position = WTVP(L10_Goals[2])
            end

            if L10_3 then
                L10_3.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[3])))
                L10_3.Position = WTVP(L10_Goals[3])
            end

            if L10_4 then
                L10_4.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[4])))
                L10_4.Position = WTVP(L10_Goals[4])
            end

            if not L10_1 then
                local GoalText = Drawing.new("Text") 
                for I,V in next, AverageProps do
                    GoalText[I] = V
                end
                GoalText.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[1])))
                L10_1 = GoalText
            end

            if not L10_2 then
                local GoalText = Drawing.new("Text") 
                for I,V in next, AverageProps do
                    GoalText[I] = V
                end
                GoalText.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[2])))
                L10_2 = GoalText
            end

            if not L10_3 then
                local GoalText = Drawing.new("Text") 
                for I,V in next, AverageProps do
                    GoalText[I] = V
                end
                GoalText.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[3])))
                L10_3 = GoalText
            end

            if not L10_4 then
                local GoalText = Drawing.new("Text") 
                for I,V in next, AverageProps do
                    GoalText[I] = V
                end
                GoalText.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(L10_Goals[4])))
                L10_4 = GoalText
            end
        end

        if exitESP and Level ~= 10 then
            if not NewGoal then
                local GoalText = Drawing.new("Text") 
                for I,V in next, AverageProps do
                    GoalText[I] = V
                end
                GoalText.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(Goals[Level])))
                NewGoal = GoalText
            else
                NewGoal.Text = string.format("Exit (%s)", math.floor(Player:DistanceFromCharacter(Goals[Level])))
                NewGoal.Position = WTVP(Goals[Level])
            end
        elseif not exitESP and NewGoal then
            NewGoal:Remove()
            NewGoal = nil
        end
        task.wait()
    end
end)