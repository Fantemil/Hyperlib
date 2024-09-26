getgenv().Blaqcc = {
    ["Aim Assist"] = {
        ["Enabled"] = true,
        ["Keybind"] = {
            ["Key"] = Enum.KeyCode.Q, 
            ["Mode"] = 2, 
        },

        ["Configuration"] = {
            ["MobileTool"] = "Q", -- //  Has to be same as Aim Assist Key
            ["Smoothness"] = 0.927, 
            ["Aim Method"] = "Mouse", -- // Mouse or camera blah blah bkag
            ["Aim Part"] = "UpperTorso", 
            ["Prediction Settings"] = {
                ["AutoPrediction"] = true,
                ["Prediction"] = 0.1109782357, 
                ["Jump Y Offset"] = 0.1,
            },
        },


        ["Checks"] = {
            ["Visible"] = true, 
            ["Crew"] = false, 
            ["K.O"] = true, 
            ["Distance"] = {
                ["Enabled"] = true, 
                ["Max Distance"] = 500, 
            },
            ["Friend"] = false, 
        },

        ["FOV"] = {
            ["FOV Radius"] = 100,
            ["Deadzone"] = false, 
            ["Deadzone Radius"] = 45, 
            ["Disable Out Of FOV"] = false, 
        },

        ["Flickbot"] = {
            ["Enabled"] = false, 
            ["Whitelisted Guns"] = {
                ["Double-Barrel SG"] = true,
                ["TacticalShotgun"] = true,
                ["Revolver"] = false,
            },
            ["Config"] = {
                ["Smoothness"] = 0.04, 
                ["Aim Part"] = "Head",
                ["Max Distance"] = 50,
            },
        },
    },

    ["Silent Aim"] = {
        ["Enabled"] = true, 
        ["Keybind"] = {
            ["Key"] = "C",
            ["Mode"] = "1", -- 1 = Silent | 2 = target aim
        },

        ["Configuration"] = {
            ["Prediction"] = 0.1355, 
            ["AutoPrediction"] = true,
            ["AntiGroundShots"] = true,
            ["Aim Part"] = "Head", 
            ["Hitchance"] = 100,  
            ["Closest Part To Cursor"] = true,
            ["ClosestPoint"] = true,
        },

        ["FOV"] = {
            ["FOV Radius"] = 250, 
        },

        ["Checks"] = {
            ["Visible"] = true,
            ["Crew"] = false,
            ["Wallcheck"] = true, 
            ["K.O"] = true, 
            ["Distance"] = {
                ["Enabled"] = true, 
                ["Max Distance"] = 500, 
            },
            ["Friend"] = false, 
        },
    },

    ["ESP"] = {
        ["Enabled"] = true, 
        ["Name"] = true, 
        ["DisplayName"] = true,
        ["HealthText"] = true, 
        ["Distance"] = true,
    },

    ["Global"] = {
        ["Panic Key"] = Enum.KeyCode.P,
    },
}




-- Variables
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local mouse = player:GetMouse()
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Drawing = Drawing or {}
-- utility
local silenttarget
local silentpart
local silentstatus
local silentpred

local silentUtility = {
    Method = "UpdateMousePos",
    --[[
    AllowedPlaceIDs = {
        ["2788229376Method"] = 'UpdateMousePosI', -- Da Hood
        ["2788229376MainRemote"] = game:GetService("ReplicatedStorage").MainEvent, -- Da Hood
        ["7213786345Method"] = 'UpdateMousePosI', -- Da Hood Macro
        ["7213786345MainRemote"] = game:GetService("ReplicatedStorage").MainEvent, -- Da Hood Macro
    }]]
}

local aimlocktarget
local aimlockstatus = false
local AimbotTarget = nil
local aimpred
local aimspeed
local Victim
local Locked
local AimLockState = false

local panicstatus = false

-- Methods
local function OnScreen(Object)
    local _, screen = Camera:WorldToScreenPoint(Object.Position)
    return screen
end

local function Alive(Plr)
    if
        Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") and
            Plr.Character:FindFirstChild("Humanoid") and
            Plr.Character:FindFirstChild("Head")
     then
        return true
    end
    return false
end

local function FindCrew(Player)
    if
        Player:FindFirstChild("DataFolder") and Player.DataFolder:FindFirstChild("Information") and
            Player.DataFolder.Information:FindFirstChild("Crew") and
            player:FindFirstChild("DataFolder") and
            player.DataFolder:FindFirstChild("Information") and
            player.DataFolder.Information:FindFirstChild("Crew")
     then
        if
            player.DataFolder.Information.Crew.Value ~= nil and Player.DataFolder.Information.Crew.Value ~= nil and
                Player.DataFolder.Information.Crew.Value ~= "" and
                player.DataFolder.Information.Crew.Value ~= ""
         then
            return true
        end
    end
    return false
end

local function GetMagnitudeFromMouse(Part)
    local PartPos, OnScreen = Camera:WorldToScreenPoint(Part.Position)
    if OnScreen then
        local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
        return Magnitude
    end
    return math.huge
end

local function CheckDistance(plr, maxdistance)
    if
        plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and player.Character and
            player.Character:FindFirstChild("HumanoidRootPart")
     then
        return (plr.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude >
            maxdistance
    end
    return false
end

local function GetDistance(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
        return math.floor(
            (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        )
    else
        return 0
    end
end

local function GetKo(Player)
    local KoCheck
    if Player and Player.Character and Player.Character:FindFirstChild("BodyEffects") then
        if Player.Character.BodyEffects:FindFirstChild("KO") then
            KoCheck = Player.Character.BodyEffects:FindFirstChild("KO").Value
        elseif Player.Character.BodyEffects:FindFirstChild("K.O") then
            KoCheck = Player.Character.BodyEffects:FindFirstChild("K.O").Value
        end
    end
    return KoCheck
end

local function GetHealth(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("Humanoid") then
        return tostring(math.floor(Player.Character.Humanoid.Health) .. "/" .. math.floor(Player.Character.Humanoid.MaxHealth))
    else
        return "0/100"
    end
end

local function GetGunName(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end

local function GetCurrentWeaponName(player)
    if player.Character and player.Character:FindFirstChildWhichIsA("Tool") then
        local Tool = player.Character:FindFirstChildWhichIsA("Tool")
        if
            string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and
                not string.find(Tool.Name, "Phone")
         then
            return GetGunName(Tool.Name)
        end
    end
    return nil
end

local function GetClosestBodyPart(plr)
    local character = plr.Character
    local ClosestDistance = math.huge
    local BodyPart = nil
    
    if character then
        for _, x in pairs(character:GetChildren()) do
            if x:IsA("BasePart") and OnScreen(x) then
                local screenPoint = Camera:WorldToScreenPoint(x.Position)
                local mousePosition = Vector2.new(mouse.X, mouse.Y)
                local Distance = (Vector2.new(screenPoint.X, screenPoint.Y) - mousePosition).Magnitude
                
                if Distance < ClosestDistance then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    
    return BodyPart
end

function OnScreen(part)
    local screenPoint, onScreen = Camera:WorldToScreenPoint(part.Position)
    return onScreen
end

local Camera = workspace.CurrentCamera
local mouse = game.Players.LocalPlayer:GetMouse()



local function GetClosestPlayer1() -- This one is for Aim Assist
    local Target = nil
    local Closest = math.huge

    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= player and v.Character:FindFirstChild("HumanoidRootPart") then
            if getgenv().Blaqcc["Aim Assist"]["Checks"]["Visible"] and not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if getgenv().Blaqcc["Aim Assist"]["Checks"]["K.O"] and v.Character:FindFirstChild("BodyEffects") and GetKo(v) then
                continue
            end
            if getgenv().Blaqcc["Aim Assist"]["Checks"]["Crew"] and FindCrew(v) and v.DataFolder.Information.Crew.Value == player.DataFolder.Information.Crew.Value then
                continue
            end
            if getgenv().Blaqcc["Aim Assist"]["Checks"]["Friend"] and player:IsFriendsWith(v.UserId) then
                continue
            end
            if getgenv().Blaqcc["Aim Assist"]["Checks"]["Distance"]["Enabled"] and CheckDistance(v, getgenv().Blaqcc["Aim Assist"]["Checks"]["Distance"]["Max Distance"]) then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)
            if Distance < Closest and (getgenv().Blaqcc["Aim Assist"]["FOV"]["FOV Radius"] > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end
    return Target
end

local function GetClosestPlayer2()
    local Target = nil
    local Closest = math.huge

    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= player and v.Character:FindFirstChild("HumanoidRootPart") then
            if getgenv().Blaqcc["Silent Aim"]["Checks"]["Visible"] and not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if getgenv().Blaqcc["Silent Aim"]["Checks"]["K.O"] and v.Character:FindFirstChild("BodyEffects") and GetKo(v) then
                continue
            end
            if getgenv().Blaqcc["Silent Aim"]["Checks"]["Crew"] and FindCrew(v) and v.DataFolder.Information.Crew.Value == player.DataFolder.Information.Crew.Value then
                continue
            end
            if getgenv().Blaqcc["Silent Aim"]["Checks"]["Friend"] and player:IsFriendsWith(v.UserId) then
                continue
            end
            if getgenv().Blaqcc["Silent Aim"]["Checks"]["Distance"]["Enabled"] and CheckDistance(v, getgenv().Blaqcc["Silent Aim"]["Checks"]["Distance"]["Max Distance"]) then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)
            if Distance < Closest and (getgenv().Blaqcc["Silent Aim"]["FOV"]["FOV Radius"] > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end
    return Target
end

    uis.InputBegan:Connect(function(input, gpe)
        if input.KeyCode == getgenv().Blaqcc["Aim Assist"]["Keybind"]["Key"] then
            aimlockstatus = not aimlockstatus
            aimlocktarget = GetClosestPlayer1()
        elseif input.KeyCode == getgenv().Blaqcc["Global"]["Panic Key"] then
            --panicstatus = true A LTITTLE WEIRD
        end
    end)

    uis.InputEnded:Connect(function(input, gpe)
        if input.KeyCode == getgenv().Blaqcc["Silent Aim"]["Keybind"]["Key"] then
            aimlockstatus = false
        end
    end)

    runService.Heartbeat:Connect(function()
        if aimlockstatus and aimlocktarget and aimlocktarget.Character and aimlocktarget.Character:FindFirstChild("HumanoidRootPart") and panicstatus ~= true then
            local aimvalid = true
            local silenceConfig = getgenv().Blaqcc["Aim Assist"]
            local flickbotConfig = silenceConfig["Flickbot"]["Config"]
            local generalConfig = silenceConfig["Configuration"]
            local predictionSettings = generalConfig["Prediction Settings"]
            local aimTarget = aimlocktarget.Character
            local aimRootPart = aimTarget.HumanoidRootPart
            local aimHumanoid = aimTarget.Humanoid
        

            if silenceConfig["Checks"]["Visible"] and not OnScreen(aimRootPart) then 
                aimvalid = false
            end

            if silenceConfig["Checks"]["K.O"] and GetKo(aimlocktarget) then
                aimlockstatus = false
                return
            end
        
            if silenceConfig["Checks"]["Distance"]["Enabled"] and CheckDistance(aimlocktarget, silenceConfig["Checks"]["Distance"]["Max Distance"]) then
                aimvalid = false
            end
        
        
            local isAirborne = math.abs(aimHumanoid.RootPart.Velocity.Y) > 2
        
            local aimpart, aimspeed, aimpred
            if isAirborne then
          
                print(silenceConfig["Flickbot"]["Whitelisted Guns"][GetCurrentWeaponName(player)])
                if silenceConfig["Flickbot"]["Enabled"] and  silenceConfig["Flickbot"]["Whitelisted Guns"][GetCurrentWeaponName(player)] then
                    aimspeed = flickbotConfig["Smoothness"]
                    aimpart = flickbotConfig["Aim Part"]
                else
                    aimspeed = generalConfig["Smoothness"]
                    aimpart = generalConfig["Aim Part"]
                end
                aimpred = aimTarget[aimpart].Position + aimTarget[aimpart].Velocity * predictionSettings["Prediction"] + Vector3.new(0, predictionSettings["Jump Y Offset"], 0)
            else
                aimspeed = generalConfig["Smoothness"]
                aimpart = generalConfig["Aim Part"]
                aimpred = aimTarget[aimpart].Position + aimTarget[aimpart].Velocity * predictionSettings["Prediction"]
            end
        
          
            local dist = GetMagnitudeFromMouse(aimRootPart)
            if silenceConfig["FOV"]["Deadzone"] and dist < silenceConfig["FOV"]["Deadzone Radius"] then
                aimvalid = false
            end
        
            
            if aimvalid then
                local Main = CFrame.new(Camera.CFrame.p, aimpred)
                Camera.CFrame = Camera.CFrame:Lerp(Main, aimspeed)
            end
        end
    end)

if Blaqcc["Silent Aim"].Configuration.AutoPrediction then
    local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
    if ping < 10 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.07
    elseif ping < 20 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.155
    elseif ping < 30 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.132
    elseif ping < 40 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.136
    elseif ping < 50 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.130
    elseif ping < 60 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.136
    elseif ping < 70 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.138
    elseif ping < 80 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.138
    elseif ping < 90 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.146
    elseif ping < 100 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.14322
    elseif ping < 110 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.146
    elseif ping < 120 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.149
    elseif ping < 130 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.151
    elseif ping < 140 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.1223333
    elseif ping < 150 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.15
    elseif ping < 160 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.16
    elseif ping < 170 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.1923111
    elseif ping < 180 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.19284
    elseif ping > 180 then
        Blaqcc["Silent Aim"].Configuration.Prediction = 0.166547
    end
 end

if Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].AutoPrediction then
    local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
    if ping < 10 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.07
    elseif ping < 20 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.155
    elseif ping < 30 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.132
    elseif ping < 40 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.136
    elseif ping < 50 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.130
    elseif ping < 60 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.136
    elseif ping < 70 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.138
    elseif ping < 80 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.138
    elseif ping < 90 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.146
    elseif ping < 100 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.14322
    elseif ping < 110 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.146
    elseif ping < 120 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.149
    elseif ping < 130 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.151
    elseif ping < 140 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.1223333
    elseif ping < 150 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.15
    elseif ping < 160 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.16
    elseif ping < 170 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.1923111
    elseif ping < 180 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.19284
    elseif ping > 180 then
        Blaqcc["Aim Assist"]["Configuration"]["Prediction Settings"].Prediction = 0.166547
    end
 end


-- // Lock Tool Function
keytoclick = Blaqcc["Aim Assist"]["Configuration"]["MobileTool"]
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = keytoclick
tool.Activated:connect(function()
    local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, keytoclick, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

game.StarterGui:SetCore("SendNotification", {
    Title = "NiggerTool";
    Text = "Blaq.cc";

})

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    tool.Parent = game.Players.LocalPlayer.Backpack
end)



player.Character.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and getgenv().Blaqcc["Silent Aim"]["Enabled"] then 
        tool.Activated:Connect(function() 
            silenttarget = GetClosestPlayer2()
			if silenttarget ~= nil then
                silentpred = getgenv().Blaqcc["Silent Aim"]["Configuration"]["Prediction"]
                if getgenv().Blaqcc["Silent Aim"]["Configuration"]["Closest Part To Cursor"] then
                    silentpart = GetClosestBodyPart(silenttarget).Name
                else
                    print(getgenv().Blaqcc["Silent Aim"]["Configuration"]["Aim Part"].. ' orginal')
                    silentpart = getgenv().Blaqcc["Silent Aim"]["Configuration"]["Aim Part"]
                end
            	game:GetService("ReplicatedStorage").MainEvent:FireServer("UpdateMousePos", BlaqMobile(), silenttarget.Character[silentpart].Position + (silenttarget.Character[silentpart].Velocity * silentpred))
			end
        end)
    end
end)






local function NewDrawing(Type, Properties)
    local NewDraw = Drawing.new(Type)
    for i, v in pairs(Properties) do
        NewDraw[i] = v
    end
    return NewDraw
end

local ESPPlayers = {}

local function AddPlayerESP(Player)
    ESPPlayers[Player] = {
        Name = NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12}),
        DisplayName = NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12}),
        HealthText = NewDrawing("Text", {Color = Color3.fromRGB(0, 255, 0), Outline = true, Visible = false, Center = true, Size = 12}),
        Distance = NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12})
    }

    local function UpdateCharacter(Character)
        local Humanoid = Character:WaitForChild("Humanoid", 10)
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart", 10)
        if not Humanoid or not HumanoidRootPart then return end

        ESPPlayers[Player].Character = Character
        ESPPlayers[Player].Humanoid = Humanoid
        ESPPlayers[Player].HumanoidRootPart = HumanoidRootPart
    end

    Player.CharacterAdded:Connect(UpdateCharacter)
    if Player.Character then
        UpdateCharacter(Player.Character)
    end
end

local function UpdateESP()
    for Player, Drawings in pairs(ESPPlayers) do
        local Character = Drawings.Character
        local Humanoid = Drawings.Humanoid
        local HumanoidRootPart = Drawings.HumanoidRootPart

        if Blaqcc.ESP.Enabled and Character and Humanoid and HumanoidRootPart then
            local Vector, OnScreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
            local Size = (Camera:WorldToViewportPoint(HumanoidRootPart.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(HumanoidRootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
            local BoxSize = Vector2.new(Size * 1.5, Size * 1.9)
            local BoxPos = Vector2.new(Vector.X - BoxSize.X / 2, Vector.Y - BoxSize.Y / 2)
            local BottomOffset = BoxSize.Y + BoxPos.Y + 1

            if OnScreen then
                if Blaqcc.ESP.Name and Player ~= player then
                    Drawings.Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
                    Drawings.Name.Text = Player.Name
                    Drawings.Name.Color = Color3.fromRGB(255, 255, 255)
                    Drawings.Name.Outline = true
                    Drawings.Name.Visible = true
                else
                    Drawings.Name.Visible = false
                end

                -- Check if the player's name and display name are the same
                local displayNameShouldBeVisible = Blaqcc.ESP.DisplayName and Player.DisplayName ~= Player.Name
                if displayNameShouldBeVisible and Player ~= player then
                    Drawings.DisplayName.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 32)
                    Drawings.DisplayName.Text = Player.DisplayName
                    Drawings.DisplayName.Color = Color3.fromRGB(255, 255, 255)
                    Drawings.DisplayName.Outline = true
                    Drawings.DisplayName.Visible = true
                else
                    Drawings.DisplayName.Visible = false
                end

                if Blaqcc.ESP.Distance and Player ~= player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    Drawings.Distance.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BottomOffset)
                    Drawings.Distance.Text = "" .. math.floor((HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude) .. "m"
                    Drawings.Distance.Color = Color3.fromRGB(255, 255, 255)
                    Drawings.Distance.Outline = true
                    BottomOffset = BottomOffset + 15
                    Drawings.Distance.Visible = true
                else
                    Drawings.Distance.Visible = false
                end

                if Blaqcc.ESP.HealthText and Player ~= player then
                    Drawings.HealthText.Text = tostring(math.floor((Humanoid.Health / Humanoid.MaxHealth) * 100))
                    Drawings.HealthText.Position = Vector2.new(BoxPos.X - 20, BoxPos.Y + BoxSize.Y - 1)
                    Drawings.HealthText.Color = Color3.fromRGB(0, 228, 15)
                    Drawings.HealthText.Outline = true
                    Drawings.HealthText.Visible = true
                else
                    Drawings.HealthText.Visible = false
                end
            else
                Drawings.Name.Visible = false
                Drawings.DisplayName.Visible = false
                Drawings.HealthText.Visible = false
                Drawings.Distance.Visible = false
            end
        else
            Drawings.Name.Visible = false
            Drawings.DisplayName.Visible = false
            Drawings.HealthText.Visible = false
            Drawings.Distance.Visible = false
        end
    end
end

for _, Player in pairs(Players:GetPlayers()) do
    AddPlayerESP(Player)
end

Players.PlayerAdded:Connect(function(Player)
    AddPlayerESP(Player)
end)

Players.PlayerRemoving:Connect(function(Player)
    if ESPPlayers[Player] then
        for _, Drawing in pairs(ESPPlayers[Player]) do
            Drawing:Remove()
        end
        ESPPlayers[Player] = nil
    end
end)

game:GetService("RunService").RenderStepped:Connect(UpdateESP)