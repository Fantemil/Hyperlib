local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Secret Script", "Synapse")

local Tab = Window:NewTab("tydus")
local TabSection = Tab:NewSection("gucci")

TabSection:NewButton("HITBOX EXTENDER", "yes.", function()
    _G.PART = "HumanoidRootPart"
_G.PRED = 0.13960
_G.T = 0.7

local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()
local enabled = false
local Target
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
newcclosure(
function(...)
local args = {...}
if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
args[3] = Target[_G.PART].Position + (Target[_G.PART].Velocity * _G.PRED)
return old(unpack(args))
end
return old(...)
end)


game:GetService("RunService").RenderStepped:Connect(function() 
    
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
if mouse.Target == v.Character.HumanoidRootPart then
    Target = v.Character
    enabled = true
end
end
if v ~= game:GetService("Players").LocalPlayer then
if v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
v.Character.HumanoidRootPart.Size = Vector3.new(20, 20, 20) --change to make smaller
v.Character.HumanoidRootPart.Transparency = _G.T
v.Character.HumanoidRootPart.CanCollide = false
else
v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.CanCollide = false
end
if v.Character:FindFirstChild("GRABBING_CONSTRAINT") then
    v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
    v.Character.HumanoidRootPart.Transparency = 1
    v.Character.HumanoidRootPart.CanCollide = false
end
end
end
if mouse.Target.Name == "HumanoidRootPart" then
enabled = true
else
enabled = false
end

end)
end)

TabSection:NewButton("Fly (X)", "hello", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/swag/main/admin_fly"))()
end)

TabSection:NewButton("Fe Bring", "ButtonInfo", function()
    -- Objects

local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Attach = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local Bring = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local SaveT = Instance.new("TextButton")
local LoadT = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")

-- Properties

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer.PlayerGui
GUI.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = GUI
Main.Active = true
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 1, -245)
Main.Selectable = true
Main.Size = UDim2.new(0, 368, 0, 245)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.934693873, 0)
TextLabel.Size = UDim2.new(0, 368, 0, 16)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Tools Required | GUI by: Hoofer | Scripts by: illremember"
TextLabel.TextSize = 14

Attach.Name = "Attach"
Attach.Parent = Main
Attach.BackgroundColor3 = Color3.new(0.27451, 0.709804, 1)
Attach.BorderSizePixel = 0
Attach.Position = UDim2.new(0, 0, 0.751020432, 0)
Attach.Size = UDim2.new(0, 266, 0, 37)
Attach.Font = Enum.Font.SourceSansLight
Attach.Text = "Attach Player"
Attach.TextColor3 = Color3.new(1, 1, 1)
Attach.TextSize = 14

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.new(0.862745, 0.862745, 0.862745)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0.0938775539, 0)
TextBox.Size = UDim2.new(0, 368, 0, 21)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.PlaceholderColor3 = Color3.new(0, 0, 0)
TextBox.PlaceholderText = "Player Name"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextSize = 14

Bring.Name = "Bring"
Bring.Parent = Main
Bring.BackgroundColor3 = Color3.new(0.27451, 0.709804, 1)
Bring.BorderSizePixel = 0
Bring.Position = UDim2.new(0, 0, 0.59795922, 0)
Bring.Size = UDim2.new(0, 368, 0, 37)
Bring.Font = Enum.Font.SourceSansLight
Bring.Text = "Bring Player"
Bring.TextColor3 = Color3.new(1, 1, 1)
Bring.TextSize = 14

Kill.Name = "Kill"
Kill.Parent = Main
Kill.BackgroundColor3 = Color3.new(0.27451, 0.709804, 1)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0, 0, 0.446938813, 0)
Kill.Size = UDim2.new(0, 368, 0, 37)
Kill.Font = Enum.Font.SourceSansLight
Kill.Text = "Kill Player"
Kill.TextColor3 = Color3.new(1, 1, 1)
Kill.TextSize = 14

SaveT.Name = "SaveT"
SaveT.Parent = Main
SaveT.BackgroundColor3 = Color3.new(0.262745, 0.643137, 1)
SaveT.BorderSizePixel = 0
SaveT.Position = UDim2.new(0, 0, 0.224489793, 0)
SaveT.Size = UDim2.new(0, 368, 0, 21)
SaveT.Font = Enum.Font.SourceSansLight
SaveT.Text = "Save Tools"
SaveT.TextColor3 = Color3.new(1, 1, 1)
SaveT.TextSize = 14

LoadT.Name = "LoadT"
LoadT.Parent = Main
LoadT.BackgroundColor3 = Color3.new(0.262745, 0.643137, 1)
LoadT.BorderSizePixel = 0
LoadT.Position = UDim2.new(0, 0, 0.310204089, 0)
LoadT.Size = UDim2.new(0, 368, 0, 21)
LoadT.Font = Enum.Font.SourceSansLight
LoadT.Text = "Load Tools"
LoadT.TextColor3 = Color3.new(1, 1, 1)
LoadT.TextSize = 14

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 368, 0, 23)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.Text = "FE Attach/Bring/Kill Others"
TextLabel_2.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.new(0.27451, 0.709804, 1)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.747282624, 0, 0.779591858, 0)
Exit.Size = UDim2.new(0, 93, 0, 30)
Exit.Font = Enum.Font.SourceSansLight
Exit.Text = "Exit"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 14

-- Scripts 

Kill.MouseButton1Click:connect(function()
-- illremember's cool new kill script for fe
-- requires 2 tools, replace TARGET name with person you want
-- NO FE GODMODE!!
TARGET = TextBox.Text

lplayer = game:GetService("Players").LocalPlayer
for i,v in pairs(lplayer.Backpack:GetChildren())do
lplayer.Character.Humanoid:EquipTool(v)
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = lplayer.Character
wait()
v.Parent = game:GetService("Players")[TARGET].Character
end
end
wait(1)
lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 0, 100000))
end)

Bring.MouseButton1Click:connect(function()
-- illremember's cool new bring script
-- requires 2 tools, replace TARGET name with person you want
TARGET = TextBox.Text

lplayer = game:GetService("Players").LocalPlayer
for i,v in pairs(lplayer.Backpack:GetChildren())do
lplayer.Character.Humanoid:EquipTool(v)
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = lplayer.Character
wait()
v.Parent = game:GetService("Players")[TARGET].Character
end
end
wait(1)
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
getout(lplayer, lplayer)
end)

Attach.MouseButton1Click:connect(function()
-- illremember's cool new attach script
-- requires 2 tools, replace TARGET name with person you want
TARGET = TextBox.Text

lplayer = game:GetService("Players").LocalPlayer
for i,v in pairs(lplayer.Backpack:GetChildren())do
lplayer.Character.Humanoid:EquipTool(v)
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = lplayer.Character
wait()
v.Parent = game:GetService("Players")[TARGET].Character
end

end
end)

Exit.MouseButton1Click:connect(function()
GUI:Destroy()
end)

SaveT.MouseButton1Click:connect(function()
-- EQUIP TOOL BEFORE EXECUTING THIS SCRIPT
-- save tool
LP = game:GetService("Players").LocalPlayer

for i,v in pairs(LP.Character:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = LP
end
end
end)

LoadT.MouseButton1Click:connect(function()
-- load tool (Use after using save tool script)
LP = game:GetService("Players").LocalPlayer

for i,v in pairs(LP:GetChildren()) do
if v:IsA("Tool") then
v.Parent = LP.Backpack
end
end
end)
end)


TabSection:NewButton("Give Tools", "ButtonInfo", function()
    local Player = game.Players.LocalPlayer
local HandToGui = script.Parent
local NameBox = HandToGui.NameBox
local GiveButton = HandToGui.NameBox

local groupId = 5831373 -- change to your group
local minimumRankToUseGui = 123 --change the number
 
if Player:GetRankInGroup(groupId) < minimumRankToUseGui then
    HandtoGui:Destroy()
end
 
local function getPlayerFromPartialName(PartialName)
    local foundName = nil
    local Players = game.Players:GetPlayers()
    for i = 1, #Players do
        local PossiblePlayer = Players[i]
        if string.find(string.lower(PossiblePlayer.Name), string.lower(PartialName)) then
            foundName = PossiblePlayer.Name
        end
    end
    
    if not foundName then
        return nil
    else
        return foundName
    end
end
GiveButton.MouseButton1Click:Connect(function()
    if not Player.Character:FindFirstChildWhichIsA("Tool") then
        NameBox.Text = ""
        NameBox.PlaceholderText = "Equip a Tool First!"
        wait(1)
        NameBox.PlaceholderText = "Player Name Here"
    end
    local NameBoxText = NameBox.Text
    if NameBoxText ~= "" then
        local playerName = getPlayerFromPartialName(NameBoxText)
        if playerName then
            print("Found player")
            game.ReplicatedStorage.GivePlayerItem:FireServer(playerName)
            NameBox.Text = ""
            NameBox.PlaceholderText = "Gave!"
            wait(1)
            NameBox.PlaceholderText = "Player Name Here"
        else
            NameBox.Text = ""
            NameBox.PlaceholderText = "Player Not Found!"
            wait(1)
            NameBox.PlaceholderText = "Player Name Here"
        end
    end
end)
end)

Section:NewButton("Box Lock", "ButtonInfo", function()
    local Settings = {
        rewrittenmain = {
            Enabled = true,
            Key = "q",
            DOT = true,
            AIRSHOT = true,
            NOTIF = true,
            AUTOPRED = false,
            FOV = math.huge,
            RESOVLER = true
        }
    }
    
    local SelectedPart = "HumanoidRootPart"
    local Prediction = true
    local PredictionValue = 0.135
    
    
        local AnchorCount = 0
        local MaxAnchor = 50
    
        local CC = game:GetService"Workspace".CurrentCamera
        local accomidationfactor = 0.125495
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
        local enabled = false
        local Plr
    
        function makemarker(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = Settings.rewrittenmain.DOT
            local a = Instance.new("Frame", e)
            if Settings.rewrittenmain.DOT == true then
            a.Size = UDim2.new(1, 0, 1, 0)
            else
            a.Size = UDim2.new(0, 0, 0, 0)
            end
            if Settings.rewrittenmain.DOT == true then
            a.Transparency = 0
            a.BackgroundTransparency = 0
            else
            a.Transparency = 1
            a.BackgroundTransparency = 1
            end
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            if Settings.rewrittenmain.DOT == false then
            g.CornerRadius = UDim.new(0, 0)
            else
            g.CornerRadius = UDim.new(1, 1) 
            end
            return(e)
        end
    
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat wait() until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(107, 184, 255), 0.3, 3)
            handler.Name = player.Name
            player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
    
    
            spawn(function()
                while wait() do
                    if player.Character then
                    end
                end
            end)
        end
    
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
    
        game.Players.PlayerAdded:connect(function(Player)
            noob(Player)
        end)
    
        spawn(function()
            placemarker.Anchored = true
            placemarker.CanCollide = false
            if Settings.rewrittenmain.DOT == true then
            placemarker.Size = Vector3.new(8, 8, 8)
            else
            placemarker.Size = Vector3.new(0, 0, 0)
            end
            placemarker.Transparency = 0.75
            if Settings.rewrittenmain.DOT then
            makemarker(placemarker, placemarker, Color3.fromRGB(232, 186, 200), 0.40, 0)
            end
        end)
    
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
            if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
                if enabled == true then
                    enabled = false
                    if Settings.rewrittenmain.NOTIF == true then
                        Plr = getClosestPlayerToCursor()
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "";
                        Text = "Unlocked :)",
                        Duration = 5
                    })
                end
                else
                    Plr = getClosestPlayerToCursor()
                    enabled = true
                    if Settings.rewrittenmain.NOTIF == true then
    
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "";
                            Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                            Duration = 5
                        })
    
                    end
                end
            end
        end)
    
    
    
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = Settings.rewrittenmain.FOV
    
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end
    
        local pingvalue = nil;
        local split = nil;
        local ping = nil;
    
        game:GetService"RunService".Stepped:connect(function()
            if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
            else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
            end
            if Settings.rewrittenmain.AUTOPRED == true then
                 pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                 split = string.split(pingvalue,'(')
                 ping = tonumber(split[1])
                if ping < 130 then
                    PredictionValue = 0.151
                elseif ping < 125 then
                    PredictionValue = 0.149
                elseif ping < 110 then
                    PredictionValue = 0.146
                elseif ping < 105 then
                    PredictionValue = 0.138
                elseif ping < 90 then
                    PredictionValue = 0.136
                elseif ping < 80 then
                    PredictionValue = 0.134
                elseif ping < 70 then
                    PredictionValue = 0.131
                elseif ping < 60 then
                    PredictionValue = 0.1229
                elseif ping < 50 then
                    PredictionValue = 0.1225
                elseif ping < 40 then
                    PredictionValue = 0.1256
                end
            end
        end)
    
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
    
                -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
                --[[
                if Settings.rewrittenmain.AIRSHOT == true then
                    if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                        
                        --// Airshot
                        args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
    
                    else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
    
                    end
                else
                        args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
                end
                ]]
                if Prediction == true then
                    
                args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
    
                else
    
                args[3] = Plr.Character[SelectedPart].Position
    
                end
    
                return old(unpack(args))
            end
            return old(...)
        end)
    
        game:GetService("RunService").RenderStepped:Connect(function()
            if Settings.rewrittenmain.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.rewrittenmain.Enabled then
            if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
                
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
                    
                    --// Airshot
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "LeftFoot"
    
                else
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
    
                end
                else
    
                    --// Anchor Check
    
                    if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                        AnchorCount = AnchorCount + 1
                        if AnchorCount >= MaxAnchor then
                            Prediction = false
                            wait(2)
                            AnchorCount = 0;
                        end
                    else
                        Prediction = true
                        AnchorCount = 0;
                    end
    
                    SelectedPart = "HumanoidRootPart"
                end
    
            else
                    SelectedPart = "HumanoidRootPart"
            end
        end)
end)