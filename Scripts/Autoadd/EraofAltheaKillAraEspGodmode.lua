loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G_Hub_Extras/main/Universal_Client_Bypass"))()
repeat
    wait()
until game:IsLoaded()

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")

local npcs = Workspace.NPCS
local Player = Players.LocalPlayer
local wait = task.wait
local spawn = task.spawn

local Config = {
    WindowName = "V.G Hub",
    Color = Color3.fromRGB(107, 72, 55),
    Keybind = Enum.KeyCode.RightControl
}

repeat
    wait()
until game:IsLoaded() and Player and Player.Character and
    Workspace.Camera.CameraSubject == Player.Character:WaitForChild("Humanoid")
wait()

for i, v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end

local Name = "Era Of Alt.json"

Des = {}
if makefolder then
    makefolder("V.G Hub")
end

local Settings

if
    not pcall(
        function()
            readfile("V.G Hub//" .. Name)
        end
    )
 then
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Des))
end

Settings = HttpService:JSONDecode(readfile("V.G Hub//" .. Name))

local function Save()
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Settings))
end

local Sus = {}
for i, v in pairs(npcs:GetChildren()) do
    if v:IsA("Model") and not table.find(Sus, v.Name) and not v:FindFirstChild("Boss") then
        table.insert(Sus, v.Name)
    end
end
local Sus1 = {}
for i, v in pairs(npcs:GetChildren()) do
    if v:IsA("Model") and not table.find(Sus1, v.Name) and v:FindFirstChild("Boss") then
        table.insert(Sus1, v.Name)
    end
end

spawn(
    function()
        while wait(0.1) do
            pcall(
                function()
                    if Player.PlayerGui:FindFirstChild("MenuV2 (NEW)") then
                        Player.PlayerGui:WaitForChild("MenuV2 (NEW)").Name = "MenuV2"
                    end
                    if Player.PlayerGui:FindFirstChild("Buttons") and Player.PlayerGui.Buttons.Enabled then
                        game:GetService("ReplicatedStorage").Events.ServerCheck:FireServer()
                        Player.PlayerGui.Buttons.Enabled = false
                    end
                    if Player.PlayerGui.MenuV2.StatFrame.Element.Text:match("Anti") then
                        Player.PlayerGui.MenuV2.StatFrame.Element.Text = "Snap: Anti Magic"
                    end
                end
            )
        end
    end
)

spawn(
    function()
        while wait(1) do
            pcall(
                function()
                    for i, v in pairs(Player.PlayerGui.CustomBackpack.ButtonUi:GetChildren()) do
                        if v:IsA("ImageLabel") and v.Cooldown.AbsoluteSize.Y ~= 0 then
                            v:FindFirstChildWhichIsA("BoolValue").Value = true
                        else
                            v:FindFirstChildWhichIsA("BoolValue").Value = false
                        end
                    end
                end
            )
        end
    end
)

wait(1)

local Quests = {}
for i, v in pairs(game:GetService("Workspace").INTERACTIVE:GetChildren()) do
    if v.Name == "Quest Board" then
        for i, v in pairs(v.Papers:GetChildren()) do
            if v.Name == "Part" and not table.find(Quests,v:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild("QuestName").Text ..
                        " - " .. v:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild("LevelReq").Text) then
                table.insert(
                    Quests,
                    v:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild("QuestName").Text ..
                        " - " .. v:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild("LevelReq").Text
                )
            end
        end
    end
end

local function ServerHop()
    local HttpService = game:GetService("HttpService")
    local ABC = {}
    for _, v in ipairs(
        HttpService:JSONDecode(
            game:HttpGetAsync(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            )
        ).data
    ) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            ABC[#ABC + 1] = v.id
        end
    end
    if #ABC > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ABC[math.random(1, #ABC)])
    end
end

local Armor = {}
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Armor:GetChildren()) do
    if not table.find(Armor, v.Name) then
        table.insert(Armor, v.Name .. " - " .. v.GUI.View.ItemCost.Text)
    end
end
local Items = {}
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Items:GetChildren()) do
    if not table.find(Items, v.Name) then
        table.insert(Items, v.Name .. " - " .. v.GUI.View.ItemCost.Text)
    end
end
local Pages = {}
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Pages:GetChildren()) do
    if not table.find(Pages, v.Name) then
        table.insert(Pages, v.Name .. " - " .. v.GUI.View.ItemCost.Text)
    end
end
local Weapons = {}
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Weapons:GetChildren()) do
    if not table.find(Weapons, v.Name) then
        table.insert(Weapons, v.Name .. " - " .. v.GUI.View.ItemCost.Text)
    end
end

if hookmetamethod then
    local OldNameCall
    OldNameCall =
        hookmetamethod(
        game,
        "__newindex",
        function(A, B, ...)
            if not checkcaller() and (B == "WalkSpeed") then
                return Player.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed or 16
            end
            if not checkcaller() and (B == "JumpPower") then
                return Player.Character:FindFirstChildWhichIsA("Humanoid").JumpPower or 50
            end
            return OldNameCall(A, B, ...)
        end
    )

    local Table = {Player, Char}
    local Table2 = {
        "ClearAllChildren"
    }
    local OldNameCall = nil
    OldNameCall =
        hookmetamethod(
        game,
        "__namecall",
        function(self, ...)
            local Args = {...}
            if self.Name == "LightAttack" and Args[1] == "Yes" or self.Name == "Trigger" or self.Name:match("ahdih") then
                return wait(9e9)
            end
            if
                table.find(Table2, getnamecallmethod()) and table.find(Table, self) or
                    self.Name == Player.Name and getnamecallmethod() == "ClearAllChildren"
             then
                return wait(9e9)
            end
            return OldNameCall(self, ...)
        end
    )
end

Player.Character.JumpCooldown.Disabled = true

Player.CharacterAdded:Connect(
    function()
        if Player.Character and wait(3) then
            Player.Character:WaitForChild("Client")

            Player.Character.JumpCooldown.Disabled = true
        end
    end
)

local function RaduisCheck(A, B, C)
    if (A.Position - B.Position).Mag < C then
        return A, B, C
    end
end
local function Tween(A, B, C)
    if A then
        local Time = (B.p - A.Position).magnitude / C
        local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        local Tween = game:GetService("TweenService"):Create(A, Info, {CFrame = B})
        Tween:Play()
    end
end
Settings.CFLYSPEED = 5
local KO = function()
    local moveDirection = Player.Character:FindFirstChildOfClass("Humanoid").MoveDirection * (Settings.CFLYSPEED * 5)
    workspace.CurrentCamera.CFrame =
        workspace.CurrentCamera.CFrame *
        CFrame.new(
            -Player.Character:WaitForChild("Head").CFrame:ToObjectSpace(workspace.CurrentCamera.CFrame).Position.X,
            Player.Character:WaitForChild("Head").CFrame:ToObjectSpace(workspace.CurrentCamera.CFrame).Position.Y,
            -Player.Character:WaitForChild("Head").CFrame:ToObjectSpace(workspace.CurrentCamera.CFrame).Position.Z + 1
        )
    local cameraPosition = workspace.CurrentCamera.CFrame.Position

    local objectSpaceVelocity =
        CFrame.new(
        cameraPosition,
        Vector3.new(
            Player.Character:WaitForChild("Head").Position.X,
            cameraPosition.Y,
            Player.Character:WaitForChild("Head").Position.Z
        )
    ):VectorToObjectSpace(moveDirection)
    Player.Character:WaitForChild("Head").CFrame =
        CFrame.new(Player.Character:WaitForChild("Head").Position) * (workspace.CurrentCamera.CFrame - cameraPosition) *
        CFrame.new(objectSpaceVelocity)
end
local Areas = {}
for i, v in pairs(Workspace.Areas:GetChildren()) do
    if v:IsA("BasePart") and not table.find(Areas, v.Name) then
        table.insert(Areas, v.Name)
    end
end
local Numbers = {
    ["1"] = "One",
    ["2"] = "Two",
    ["3"] = "Three",
    ["4"] = "Four",
    ["5"] = "Five",
    ["6"] = "Six",
    ["7"] = "Seven",
    ["8"] = "Eight",
    ["9"] = "Nine"
}
local GetTool = function()
    local Tool
    for i, v in pairs(Player.Character:GetChildren()) do
        if v:IsA("Tool") then
            Tool = v
        end
    end
end

local Uhhh = function()
    for i, v in pairs(Player.Character:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end
local Magic = function()
    for i, v in pairs(Numbers) do
        if Settings.IncludeMagics and Player.Character:WaitForChild("Book"):WaitForChild("Out").Value then
            wait(4)
            for a, x in pairs(Player.Backpack.Hotkeys:GetChildren()) do
                if x.Value ~= "" then
                    for i, v in pairs(Numbers) do
                        if string.find(i, a) and Settings.IncludeMagics then
                            wait(1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game)
                            Uhhh()
                        end
                    end
                end
            end
        end
    end
    if not Player.Character:WaitForChild("Book"):WaitForChild("Out").Value then
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    end
end
local function Click()
    Uhhh()
    if
        not Player.Character:FindFirstChildWhichIsA("Tool") and not Player.Character.Config.CAttackCooldown.Value and
            Player.Character.Config.CurrentCombo.Value ~= 5
     then
        local R = getsenv(Player.Character:FindFirstChild("Client"))
        local Swing = R.Swing
        Swing()
    end
end

local function Fire(V)
 if V:IsA("BasePart") and not V:FindFirstChildWhichIsA("Fire") then
  local Fire = Instance.new("Fire")
  Fire.Heat = 10
  Fire.Color = Color3.new(0,0,0)
  Fire.SecondaryColor = Color3.new(1, 1, 1) -- White
  Fire.Size = math.max(V.Size.X, V.Size.Z) -- Pick the larger of the two dimensions
  Fire.Parent = V
 end
end 


local FuckDekuDimz = function()
    if not Player.Character.Config.CombatMode.Value and Settings.FightMethod == "Fists" then
        VirtualInputManager:SendKeyEvent(true, "R", false, game)
    end
    if not Player.Character.Config.CombatMode.Value and Settings.FightMethod == "Sword" then
        VirtualInputManager:SendKeyEvent(true, "F", false, game)
    end
    Click()
    if not Player.Character:WaitForChild("Book"):WaitForChild("Out").Value then
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    end
end

events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
local Get = function()
    local A
    for i, v in pairs(Player.PlayerGui:FindFirstChild("Quest"):GetChildren()) do
        if v:IsA("IntValue") then
            A = v.Name
        end
    end
    return A
end

local function getNearestMob()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(npcs:GetChildren()) do
        if
            v.Name == (Settings.Mob) and not Settings.AutoQuest and v and v:FindFirstChild("HumanoidRootPart") and
                v.Head.Transparency ~= 1 and
                v.Health.Value ~= 0 or
                Settings.AutoQuest and v.Health.Value ~= 0 and v:FindFirstChild("HumanoidRootPart") and v and
                    v.Head.Transparency ~= 1 and
                    Player.PlayerGui:FindFirstChild("Quest") and
                    string.match(Get(), v.Name)
         then
            local Mag = (v.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end
local D = {"Member", "Guest"}
for i, v in pairs(Players:GetPlayers()) do
    if not table.find(D, v:GetRoleInGroup(15032683)) and Settings.AutoHop then
        ServerHop()
    end
end
Players.PlayerAdded:Connect(
    function(v)
        if not table.find(D, v:GetRoleInGroup(15032683)) and Settings.AutoHop then
            ServerHop()
        end
    end
)
game:GetService("Players").LocalPlayer.PlayerGui.CustomBackpack.ButtonUi:WaitForChild("Button1")
repeat
    wait()
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CustomBackpack.ButtonUi:GetChildren()) do
        wait()
        local A = Instance.new("BoolValue")
        A.Value = false
        A.Name = "Cooldown"
        A.Parent = v
    end
until game:GetService("Players").LocalPlayer.PlayerGui.CustomBackpack.ButtonUi:FindFirstChild("Button1"):FindFirstChildWhichIsA(
    "BoolValue"
)
local Snap = {}
local Snaps = {
    "Wind",
    "Fire",
    "Water",
    "Dark",
    "Light",
    "Healing",
    "Frost",
    "Explosion",
    "Heavenly Body",
    "Compose",
    "Gravity",
    "Sound",
    "Lightning",
    "Demon",
    "Spatial",
    "Time",
    "Anti Magic"
}
local Races = {
    "Elf",
    "Jakkon",
    "Noble",
    "Liger",
    "Xoviacs",
    "Human"
}
local Traits = {
    "Elven Blood",
    "Blade Master",
    "Game Addict",
    "Smith",
    "Alchemist",
    "Resilient"
}

local Table = {
    "WeekendHair2!",
    "WeekendHair!",
    "ICANFLYNOW?",
    "WeekendUpdate1!",
    "IHateWalking",
    "23KLikes1!",
    "LikeForHair1!",
    "AltheaDevHouse!",
    "SpatialUsersAfterGettingHitOnce",
    "Update2Spins",
    "Update2Hair",
    "Update2Hair2",
    "ExploitersTradingAdoptMePets",
    "23KLikes!",
    "DetestFiveSpins",
    "DamnMyBad",
    "1MillionVisits",
    "BugFixes",
    "RankedMobileUsers—Redeem",
    "ChadMobileUsers",
    "16KLikes!",
    "LikeForSpins1!",
    "LikeForHair1!",
    "LikeForEye1!",
    "NewUpdate??",
    "AhwokenTwitter!",
    "MaineEOA",
    "MyApologies!",
    "AltheaHype!",
    "1MVISITS!",
    "15KLIKES!",
    "SHUTDOWNADOPTME!",
    "ShutdownForFixes!",
    "ShutdownForFixes2!",
    "E0A",
    "25LIKES!",
    "4MILVISITS!",
    "ShutdownForFixesA!s",
    "2MVISITS!",
    "1500Likes",
    "3000Likes",
    "6000Likes2",
    "TrueSupport!",
    "NewSnapSoon!",
    "25LIKES!",
    "4MILVISITS!",
    "LIGHTNINGISOUT!!",
    "PROTISSOWEIRD?",
    "30KMEMBERMILESTONE",
    "RobloxDown1!",
    "SchoolIsBack!",
    "JEFFTHERTERMINATED",
    "CRONGETINSTUDIO",
    "Update3Hype!",
    "RipUpd3!",
    "OOpsAnotherProtmistake",
    "SNAPCHANGESBYPROT?",
    "55KLIKESTHANKYOU",
    "UPDATEMAPNOW!",
    "SPIRITRACEUPD",
    "NEWMAPUPDATEXD"
}

if Settings.Speed == nil then
    Settings.Speed = 300
end
if Settings.TeleportMethod == nil then
    Settings.TeleportMethod = "Tween"
end
if Settings.Angle == nil then
    Settings.Angle = 0
end
if Settings.Height == nil then
    Settings.Height = 8
end
if Settings.FightMethod == nil then
    Settings.FightMethod = "Fists"
end

UserInputService.InputBegan:Connect(
    function(v)
        if v.KeyCode == Enum.KeyCode.LeftShift then
            Player.Character.Humanoid.WalkSpeed = 29 + Player.Character.Config.SpeedBoost.Value
        end
    end
)
UserInputService.InputEnded:Connect(
    function(v)
        if v.KeyCode == Enum.KeyCode.LeftShift then
            Player.Character.Humanoid.WalkSpeed = 16
        end
    end
)

local function NoClip()
    if identifyexecutor and identifyexecutor() ~= "Krnl" then
        Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
    elseif identifyexecutor and identifyexecutor() == "Krnl" then
        for i, v in pairs(Player.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
                v.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/test"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Era Of Althea")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("Anti Mod Hop", Settings.AutoHop, function(State)
Settings.AutoHop = State
end)


local Toggle1 = Section1:CreateToggle("Fire Effects", nil, function(State)
Settings.Magic = State
RunService.Stepped:Connect(
    function()
        if Settings.Magic then
            pcall(function()
                if Player.Character then
                    for i,v in pairs(Player.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            Fire(v)
                        end 
                    end 
                end 
            end)
        end
    end
)
end)

local Toggle1 = Section1:CreateToggle("Auto Mobs", Settings.AutoFarm, function(State)
Settings.AutoFarm = State
RunService.Stepped:Connect(
    function()
        if Settings.AutoFarm then
            pcall(function()
                if Player.Character or Player.CharacterAdded:Wait(1) then
                    NoClip()
                end 
            end)
        end
    end
)
spawn(
    function()
        while wait() and Settings.AutoFarm do
            pcall(
                function()
                    local v = getNearestMob()
                    if Settings.Method == "Under" then
                        if Settings.TeleportMethod == "InstantTP" then
                            Player.Character.HumanoidRootPart.CFrame =
                                v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 3) * CFrame.Angles(Settings.Angle, 0 ,0)
                        end
                        if Settings.TeleportMethod == "Tween" then
                            Tween(
                                Player.Character.HumanoidRootPart,
                                v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 3) * CFrame.Angles(Settings.Angle, 0 ,0),
                                Settings.Speed
                            )
                        end
                    end
                    if Settings.Method == "Above" then
                        if Settings.TeleportMethod == "InstantTP" then
                            Player.Character.HumanoidRootPart.CFrame =
                                v.HumanoidRootPart.CFrame * CFrame.new(0, Settings.Height, 3) * CFrame.Angles(Settings.Angle, 0 ,0)
                        end
                        if Settings.TeleportMethod == "Tween" then
                            Tween(
                                Player.Character.HumanoidRootPart,
                                v.HumanoidRootPart.CFrame * CFrame.new(0, Settings.Height, 3) * CFrame.Angles(Settings.Angle, 0 ,0),
                                Settings.Speed
                            )
                        end
                    end
                    if Settings.Method == "Behind" then
                        if Settings.TeleportMethod == "InstantTP" then
                            Player.Character.HumanoidRootPart.CFrame =
                                v.HumanoidRootPart.CFrame * CFrame.new(0, Settings.Height, 8) * CFrame.Angles(Settings.Angle, 0 ,0)
                        end
                        if Settings.TeleportMethod == "Tween" then
                            Tween(
                                Player.Character.HumanoidRootPart,
                                v.HumanoidRootPart.CFrame * CFrame.new(0, Settings.Height, 8) * CFrame.Angles(Settings.Angle, 0 ,0),
                                Settings.Speed
                            )
                        end
                    end
                    FuckDekuDimz()
                end
            )
        end
    end
)

end)

if Player.PlayerGui.MenuV2.StatFrame.Element.Text == "Snap: Anti Magic" or Player.PlayerGui.MenuV2.StatFrame.Element.Text == "Snap: Anti-Magic" then
local Toggle1 = Section1:CreateToggle("Black Hurricane", Settings.BlackMagic, function(State)
Settings.BlackMagic = State

spawn(
    function()
        while wait() and Settings.BlackMagic do
            pcall(
                function()
                    if Player.PlayerGui.CustomBackpack.ButtonUi.Button1:FindFirstChildWhichIsA("BoolValue").Value == false and Player.Character then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "One", false, game)
                        Player.Character:FindFirstChildWhichIsA("Tool"):Activate()
                    end 
                end
            )
        end
    end
)

end)
Toggle1:AddToolTip("Have Black Hurricane in slot 1")
end

local Toggle1 = Section1:CreateToggle("Auto Magic Attacks", Settings.IncludeMagics, function(State)
    Settings.IncludeMagics = State
spawn(function()
    while Settings.IncludeMagics do wait()
        pcall(function()
            Magic()
            
            wait(10)
        end)
    end 
end)

end)
local Dropdown1 = Section1:CreateDropdown("Mobs", Sus, function(Name)
 Settings.Mob = Name
end)
local Toggle1 = Section1:CreateToggle("Magic Exhausted Force Reset", Settings.exhausted, function(State)
Settings.exhausted = State
spawn(function()
    while wait() and Settings.exhausted do 
        pcall(function()
            if Player.Mana.Value <= 0 then
                local Reset = Player.Character:GetModelCFrame().Position
                Player.Character:Destroy()
                repeat wait() until Player.Character
                wait(3)
                Player.Character:MoveTo(Reset)
            end 
        end)
    end 
end)
end)
Toggle1:AddToolTip("Disables and resets you if Magic is exhausted or should i say at 0")
local Toggle1 = Section1:CreateToggle("Auto Use Mana Crystals", Settings.Loop, function(State)
Settings.Loop = State
spawn(
    function()
        while wait() and Settings.Loop do
            pcall(
                function()
                    if Player.Mana.Value <= 10 then
                        local Value = Player.PlayerGui.MenuV2.ItemsFrame.Frame:FindFirstChild("Large Mana Potion")
                        Value.Parent = Player.PlayerGui.MenuV2
                        Value.Size = UDim2.new(9e9, 9e9, 9e9, 9e9)
                        wait(1)
                        game.VirtualUser:ClickButton1(Vector2.new(9e9, 9e9))
                        wait(1)
                        Value.Size = UDim2.new(1, 0, 1, 0)
                        Value.Parent = Player.PlayerGui.MenuV2.ItemsFrame.Frame
                    end
                end
            )
        end
    end
)

end)


Toggle1:AddToolTip("Uses Mana Crystals when low mana")
local Toggle1 = Section1:CreateToggle("Auto Bosses", Settings.Boss, function(State)
Settings.Boss = State

RunService.Stepped:Connect(
    function()
        if Settings.Boss then
            pcall(
                function()
                    if Player.Character or Player.CharacterAdded:Wait(1) then
                        NoClip()
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while Settings.Boss and wait() do
            pcall(
                function()
                    FuckDekuDimz()
                    for i, v in pairs(npcs:GetChildren()) do
                        if v.Name == Settings.Bosses and v.Head.Transparency ~= 1 and
                                    v.Health.Value ~= 0
                         then
                            if Settings.TeleportMethod == "InstantTP" then
                                Player.Character.HumanoidRootPart.CFrame =
                                    v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 3) *
                                    CFrame.Angles(Settings.Angle, 0, 0)
                            end
                            if Settings.TeleportMethod == "Tween" then
                                Tween(
                                    Player.Character.HumanoidRootPart,
                                    v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 4) *
                                        CFrame.Angles(Settings.Angle, 0, 0),
                                    Settings.Speed
                                )
                            end
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() and Settings.Boss do
            pcall(
                function()
                        for i, v in pairs(npcs:GetChildren()) do
                        if not v or not v.Torso:FindFirstChildWhichIsA("Weld")   and wait(4)
                         then
                    if
                        Settings.ServerhopMethod == "ServerHop" and
                            Settings.D 
                     then
                        ServerHop()
                    end
                    if
                        Settings.ServerhopMethod == "VipServerHop" and 
                            wait(4) and Settings.D
                     then
                        TeleportService:Teleport(game.PlaceId, Player)
                        game.ReplicatedStorage.Events.JoinPrivateServer:FireServer(Settings.VipCode)
                     end
                end end 
                end
            )
        end
    end
)

end)
local Toggle1 = Section1:CreateToggle("AllBosses", Settings.AllBoss, function(State)
Settings.AllBoss = State


RunService.Stepped:Connect(
    function()
        if Settings.AllBoss then
            pcall(
                function()
                    if Player.Character or Player.CharacterAdded:Wait(1) then
                        NoClip()
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while Settings.AllBoss and wait() do
            pcall(
                function()
                    FuckDekuDimz()
                    for i, v in pairs(npcs:GetChildren()) do
                        if
                            v:IsA("Model") and v:FindFirstChild("Head") and v.Head.Transparency ~= 1 and
                                v.Health.Value ~= 0 and
                                table.find(Sus1, v.Name) then
                          if Settings.TeleportMethod == "InstantTP" then
                                Player.Character.HumanoidRootPart.CFrame =
                                    v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 0) *
                                    CFrame.Angles(Settings.Angle, 0, 0)
                            end
                            if Settings.TeleportMethod == "Tween" then
                                Tween(
                                    Player.Character.HumanoidRootPart,
                                    v.HumanoidRootPart.CFrame * CFrame.new(0, -Settings.Height, 0) *
                                        CFrame.Angles(Settings.Angle, 0, 0),
                                    Settings.Speed
                                )
                            end
                        end
                    end
                end
            )
        end
    end
)
end)
local Dropdown1 = Section1:CreateDropdown("Bosses", Sus1, function(Name)
 Settings.Bosses = Name
end)
local Toggle1 = Section1:CreateToggle("Serverhop After boss dead", Settings.D, function(State)
Settings.D = State
end)

local Dropdown1 = Section1:CreateDropdown("BossServerHop Method", {"VipServerHop","ServerHop"}, function(Name)
 Settings.ServerhopMethod = Name
end)

Section1:CreateTextBox("Enter Vip Code", "VipCode Here", false, function(String)
Settings.VipCode = String
end)
local Dropdown1 = Section1:CreateDropdown("Farm Method", {"Under","Behind","Above"}, function(Name)
 Settings.Method = Name
end)

local Dropdown1 = Section1:CreateDropdown("Fight Method", {"Fists","Sword"}, function(Name)
 Settings.FightMethod = Name
end)

local Dropdown1 = Section1:CreateDropdown("Teleport Method", {"InstantTP","Tween"}, function(Name)
 Settings.TeleportMethod = Name
end)

local Slider3 = Section1:CreateSlider("Tween Speed",0,1000,Settings.Speed,false, function(Value)
 Settings.Speed = Value
end)

local Slider3 = Section1:CreateSlider("AutoFarm Distance",0,20,Settings.Height,false, function(Value)
 Settings.Height = Value
end)
local Slider3 = Section1:CreateSlider("AutoFarm Angle",0,360,Settings.Angle,false, function(Value)
 Settings.Angle = Value
end)
local Button1 = Section1:CreateButton("RedeemCodes", function()
for i, v in pairs(Table) do wait()
    game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(v)
end
end)

local Toggle1 = Section1:CreateToggle("Auto Roll Snap", nil, function(State)
Settings.Snaps = State
spawn(
    function()
        while Settings.Snaps do
            wait(3)

            if not table.find(Snap,Player.PlayerGui.MenuV2.StatFrame.Element.Text)  or Player.PlayerGui.MenuV2.StatFrame.Element.Text ~= "Snap: Anti Magic" or Player.PlayerGui.MenuV2.StatFrame.Element.Text ~= "Snap: Anti-Magic"  then               
                pcall(
                    function()
                        Player.PlayerGui.MenuV2.ShopFrame.SnapTab.Spin.Parent = Player.PlayerGui.MenuV2

                        Player.PlayerGui.MenuV2.Spin.Size = UDim2.new(9e9, 9e9, 9e9, 9e9)
                        wait(1)
                        game.VirtualUser:ClickButton1(Vector2.new(9e9, 9e9))
                        wait()
                        Player.PlayerGui.MenuV2.Spin.Parent = Player.PlayerGui.MenuV2.ShopFrame.SnapTab
                    end
                )
            end
        end
    end
)
end)

local LA1 = Section1:CreateLabel("")
local Dropdown1 = Section1:CreateDropdown("Snaps", Snaps, function(Name)
    if not Settings.Remove then
        table.insert(Snap,"Snap: ".. Name)
    end 
    if Settings.Remove then
        table.remove(Snap,"Snap: ".. Name)
    end 
end)
local Toggle1 = Section1:CreateToggle("Table Remove Mode", nil, function(State)
    Settings.Remove = State
end) 
Toggle1:AddToolTip("Remove Snaps and others from said table Example: Fire if selected will be removed")
spawn(function()   
while wait() do
for i,v in pairs(Snap) do wait(2)
LA1:UpdateText("Snaps to stop at:" .. v)
end 
end 
end)
local Toggle1 = Section1:CreateToggle("Auto Roll Race", nil, function(State)
Settings.Races = State
spawn(
    function()
        while Settings.Races do
            wait(3)

            if not Player.PlayerGui.MenuV2.StatFrame.Race.Text:find(Settings.Race) then
                pcall(
                    function()
                        Player.PlayerGui.MenuV2.ShopFrame.RaceTab.Spin.Parent = Player.PlayerGui.MenuV2

                        Player.PlayerGui.MenuV2.Spin.Size = UDim2.new(9e9, 9e9, 9e9, 9e9)
                        wait(1)
                        game.VirtualUser:ClickButton1(Vector2.new(9e9, 9e9))
                        wait()
                        Player.PlayerGui.MenuV2.Spin.Parent = Player.PlayerGui.MenuV2.ShopFrame.RaceTab
                    end
                )
            end
        end
    end
)
end)
local Dropdown1 = Section1:CreateDropdown("Races", Races, function(Name)
    Settings.Race = Name
end)

local Toggle1 = Section1:CreateToggle("Auto Roll Trait", nil, function(State)
Settings.Traits = State
spawn(
    function()
        while Settings.Traits do
            wait(3)

            if not Player.PlayerGui.MenuV2.StatFrame.Trait.Text:find(Settings.Trait) then
                pcall(
                    function()
                        Player.PlayerGui.MenuV2.ShopFrame.TraitTab.Spin.Parent = Player.PlayerGui.MenuV2

                        Player.PlayerGui.MenuV2.Spin.Size = UDim2.new(9e9, 9e9, 9e9, 9e9)
                        wait(1)
                        game.VirtualUser:ClickButton1(Vector2.new(9e9, 9e9))
                        wait()
                        Player.PlayerGui.MenuV2.Spin.Parent = Player.PlayerGui.MenuV2.ShopFrame.TraitTab
                    end
                )
            end
        end
    end
)
end)
local Dropdown1 = Section1:CreateDropdown("Traits", Traits, function(Name)
    Settings.Trait = Name
end)

local Toggle1 = Section1:CreateToggle("FullBright", Settings.FullBright, function(State)
Settings.FullBright = State
        if Settings.FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
game.Lighting.Changed:connect(
    function()
        if Settings.FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
    end
)
end)


local Toggle1 = Section1:CreateToggle("HardReset", Settings.HardReset, function(State)
Settings.HardReset = State
spawn(function()
    while wait() and Settings.HardReset do
        pcall(function()
            if Player.Character.Health.Value <= 10 then
                Player.Character:Destroy()
            end 
        end) 
    end 
end)
end)
local Toggle1 = Section1:CreateToggle("AutoQuest", Settings.AutoQuest, function(State)
Settings.AutoQuest = State

spawn(
    function()
        while wait() and Settings.AutoQuest do
            pcall(
                function()
                    for i, v in pairs(game:GetService("Workspace").INTERACTIVE:GetChildren()) do
                        if v.Name == "Quest Board" then
                            for i, v in pairs(v.Papers:GetChildren()) do
                                if v.Name == "Part" then
                                    if string.match(Settings.Quest,v:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild(
                                            "QuestName"
                                        ).Text) and not Player.PlayerGui:FindFirstChild("Quest")
                                     then
                                        if Settings.TeleportMethod == "InstantTP" then
                                            Player.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-10,0)
                                        end
                                        if Settings.TeleportMethod == "Tween" then
                                            Tween(Player.Character.HumanoidRootPart, v.CFrame * CFrame.new(0,-10,0), Settings.Speed)
                                        end
                                        fireclickdetector(v.ClickDetector, 10)
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)

end)
local Dropdown1 = Section1:CreateDropdown("Quests", Quests, function(Name)
    Settings.Quest = Name
end)

local Toggle1 = Section1:CreateToggle("KillAura unstable", nil, function(State)
Settings.KillAura = State    
spawn(function()
    while wait() do
        pcall(function()
            if Settings.KillAura and Player.Character.Config.CurrentCombo.Value ~= 5  and not Player.Character.Config.CAttackCooldown.Value then
                Swing()
            end 
        end)
    end
end)
end)

local Toggle1 = Section1:CreateToggle("GodMode", Settings.GodMode, function(State)
Settings.GodMode = State
RunService.Stepped:Connect(
    function()
        if Settings.GodMode then
            pcall(function()
                if Player.Character then
                    Player.Character:WaitForChild("Config"):FindFirstChild("ManaSkin"):Destroy()
                end 
            end)
        end
    end
)
end)


local Dropdown1 = Section1:CreateDropdown("Area Teleports", Areas, function(Name)
    if Settings.TeleportMethod == "InstantTP" then
 Player.Character.HumanoidRootPart.CFrame = Workspace.Areas[Name].CFrame
    end 
    if Settings.TeleportMethod == "Tween" then
        Tween(Player.Character.HumanoidRootPart,Workspace.Areas[Name].CFrame,Settings.Speed)
    end 
end)

local Dropdown2 = Section2:CreateDropdown("Buy Armor", Armor, function(Name)
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Armor:GetChildren()) do
    if string.find(Name,v.Name) then
        game.ReplicatedStorage.Events.PurchaseArmor:FireServer(v);
    end 
end 
end)
local Dropdown2 = Section2:CreateDropdown("Buy Item", Items, function(Name)
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Items:GetChildren()) do
     if string.find(Name,v.Name) then
        game.ReplicatedStorage.Events.PurchaseItem:FireServer(v);
    end 
end 
end)
local Dropdown2 = Section2:CreateDropdown("Buy Page", Pages, function(Name)
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Pages:GetChildren()) do
     if string.find(Name,v.Name) then
        game.ReplicatedStorage.Events.PurchasePage:FireServer(v);
    end 
end 
end)
local Dropdown2 = Section2:CreateDropdown("Buy Weapon", Weapons, function(Name)
for i, v in pairs(game.Workspace:WaitForChild("Purchases").Weapons:GetChildren()) do
    if string.find(Name,v.Name) then
        game.ReplicatedStorage.Events.PurchaseWeapon:FireServer(v);
    end 
end 
end)

local Toggle1 = Section2:CreateToggle("Enable WalkSpeed/JumpPower", Settings.Go, function(State)
Settings.Go = State
RunService.Stepped:connect(
    function()
        if Settings.Go then
            sethiddenproperty(Player.Character:WaitForChild("Humanoid"),"WalkSpeed",Settings.WalkSpeed)
            sethiddenproperty(Player.Character:WaitForChild("Humanoid"),"JumpPower",Settings.JumpPower)
            if not game:GetService("UserInputService").WindowFocusReleased then
                setfpscap(Settings.Fps)
            end
        end
    end
)

end)

local TextBox1 = Section2:CreateTextBox("Fps Cap", "Only numbers", true, function(Value)
    Settings.Fps = Value
end)

local TextBox1 = Section2:CreateTextBox("WalkSpeed", "Only numbers", true, function(Value)
    Settings.WalkSpeed = Value
end)
local TextBox1 = Section2:CreateTextBox("JumpPower", "Only numbers", true, function(Value)
    Settings.JumpPower = Value
end)

local Toggle1 = Section2:CreateToggle("Infinite Jump", Settings.InfiniteJump, function(State)
Settings.InfiniteJump = State
game:GetService("UserInputService").JumpRequest:connect(
    function()
        if Settings.InfiniteJump then
            game:GetService "Players".LocalPlayer.Character:FindFirstChildWhichIsA "Humanoid":ChangeState("Jumping")
        end
    end
)
end)

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

local Toggle1 = Section1:CreateToggle("Enable Esp", Settings.Esp, function(State)
    Settings.Esp = State
    ESP:Toggle(Settings.Esp)
    
end)


local Button1 = Section2:CreateButton("Press For Hentai", function()

game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "BAHAHAHAHA",
        Text = "DuMbAsS rEtArD"
    }
)


end)
local Toggle1 = Section1:CreateToggle("PLayer Esp", Settings.PlayerEsp, function(State)
    Settings.PlayerEsp = State
    ESP.Players = Settings.PlayerEsp
end)
local Toggle1 = Section1:CreateToggle("Tracers Esp", Settings.Tracers, function(State)
    Settings.Tracers = State
    ESP.Tracers = Settings.Tracers
end)
local Toggle1 = Section1:CreateToggle("Name Esp", Settings.EspNames, function(State)
    ESP.Names = Settings.EspNames
    Settings.EspNames = State
end)
local Toggle1 = Section1:CreateToggle("Boxes Esp", Settings.Boxes, function(State)
    Settings.Boxes = State
    ESP.Boxes = Settings.Boxes
end)

local BoopWrong = function()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Warning",
            Text = "You have Booped the protogen the wrong way in this case justice will poor down on your soul"
        }
    )
    pcall(
        function()
            Player:Destroy()
        end
    )
    game.StarterGui:SetCore(
        "SendNotification",
        {Title = "Warning", Text = "your sentence is death eternal prison. farewell old friend.."}
    )
end
local BoopCorrect = function()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "OwO",
            Text = "hai chu have booped me cowwectwy fur that i sha'ww nyot end ur wife and wet chu wive i wuv chu good bai"
        }
    )
end
local Button1 = Section2:CreateButton("Reset", function()
    Player.Character.Head:Destroy()
end)
local Button1 = Section2:CreateButton("Boop protogen UwU", function()
local Functions = {BoopWrong, BoopCorrect}
local Dog = Functions[math.random(1, #Functions)]
Dog()
end)
local Toggle1 = Section2:CreateToggle("Invisicam", Settings.Sorry, function(State)
Settings.Sorry = State
if Settings.Sorry then
    Player.DevCameraOcclusionMode = "Invisicam"
else
    Player.DevCameraOcclusionMode = "Zoom"
end
end)
local Toggle1 = Section2:CreateToggle("Be Wired", Settings.Weird, function(State)
Settings.Weird = State
spawn(
    function()
        while Settings.Weird do
            wait()
            pcall(
                function()
                    Player.Character["Left Leg"]:remove()
                    Player.Character["Left Arm"]:remove()
                    Player.Character["Right Arm"]:remove()
                    Player.Character["Right Leg"]:remove()
                end
            )
        end
    end
)
end)

local Toggle1 = Section2:CreateToggle("N Noclip", Settings.Sex1, function(State)
noclips = false
Settings.Sex1 = State
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "n" then
            if Settings.Sex1 then
                noclips = not noclips
                for i, v in pairs(Player.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end
    end
)
RunService.Stepped:connect(
    function()
        if noclips then
            for i, v in pairs(Player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end
)

end)

local Toggle1 = Section2:CreateToggle("G Noclip", Settings.Sex, function(State)
Settings.Sex = State
noclip = false
RunService.Stepped:connect(
    function()
        if noclip then
            NoClip()
        end
    end
)
mouse = Player:GetMouse()
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "g" then
            if Settings.Sex then
                noclip = not noclip
                NoClip()
            end
        end
    end
)
end)
local Toggle1 = Section2:CreateToggle("H Fly", Settings.CFLY, function(State)
Settings.CFLY = State

d = false
RunService.Stepped:connect(
    function()
        if d then
            KO()
            if Player.Character and Player.Character:FindFirstChild("Head") then
            Player.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
            Player.Character:WaitForChild("Head").Anchored = true
            end 
            elseif Settings.CFLY or not d then
            Player.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
            Player.Character:WaitForChild("Head").Anchored = false
        end
    end
)
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "h" then
            if Settings.CFLY then
                d = not d
                KO()
                
            end
        end
    end
)

end)
local Button1 = Section2:CreateButton("Anti Lag", function()
for _, v in pairs(Workspace:GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
        v.Material = Enum.Material.SmoothPlastic
        if v:IsA("Texture") then
            v:Destroy()
        end
    end
end
end)

local Button1 = Section2:CreateButton("Teleport to RandomPlayer", function()
local randomPlayer = Players:GetPlayers()[math.random(1, #Players:GetPlayers())]

Player.Character.HumanoidRootPart.CFrame =
    CFrame.new(
    Vector3.new(
        randomPlayer.Character.Head.Position.X,
        randomPlayer.Character.Head.Position.Y,
        randomPlayer.Character.Head.Position.Z
    )
)
end)
local Button1 = Section2:CreateButton("Lag Switch F3", function()
local ass = false
local bitch = settings()

game:service "UserInputService".InputEnded:connect(
    function(i)
        if i.KeyCode == Enum.KeyCode.F3 then
            ass = not ass
            bitch.Network.IncomingReplicationLag = ass and 10 or 0
        end
    end
)
 end) 
local Button1 = Section2:CreateButton("ServerHop", function()
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
                    TeleportService:TeleportToPlaceInstance(PlaceID, ID, Player)
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

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport() 
end)
local Button1 = Section2:CreateButton("Rejoin", function()
TeleportService:Teleport(game.PlaceId, Player) end)





local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
 Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
 Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits DekuDimz#7960")
Section3:CreateLabel("Credits AlexR32#3232 Ui")
Section3:CreateLabel("Credits The3Bakers")
Section3:CreateLabel("Credits E621")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
 Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)


-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
 if Name == "Default" then
  Window:SetBackground("2151741365")
 elseif Name == "Hearts" then
  Window:SetBackground("6073763717")
 elseif Name == "Abstract" then
  Window:SetBackground("6073743871")
 elseif Name == "Hexagon" then
  Window:SetBackground("6073628839")
 elseif Name == "Circles" then
  Window:SetBackground("6071579801")
 elseif Name == "Lace With Flowers" then
  Window:SetBackground("6071575925")
 elseif Name == "Floral" then
  Window:SetBackground("5553946656")
 end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
 Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
 Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
 Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)


spawn(
    function()
        while wait() do
            pcall(
                function()
                    Save()
                end
            )
        end
    end
)

pcall(function()
    for i,v in pairs(Workspace:GetDescendants()) do
        if v.Name == "Officer" then
            v.Head.BillboardGui.Frame.TextLabel.Text = "DekuDimz"
        end 
        if v.Name == "Guild Master" then
            v.Head.BillboardGui.Frame.TextLabel.Text = "Solomon"
        end 
    end 
end)

wait(5)
local function e()
    setclipboard("https://discord.gg/HUBfmJUA2H")
end
local f = game:GetService("StarterGui")
local g = Instance.new("BindableFunction")
local function h(i, j)
    f:SetCore("SendNotification", {Title = i, Text = j, Icon = "", Duration = 5})
end
function g.OnInvoke(k)
    if k == "Yes" then
        e()
        h("Discord Copied")
    end
end
f:SetCore(
    "SendNotification",
    {
        Title = "V.G Hub Discord",
        Text = "Copy to clipboard?",
        Duration = 5,
        Callback = g,
        Button1 = "Yes",
        Button2 = "No"
    }
)