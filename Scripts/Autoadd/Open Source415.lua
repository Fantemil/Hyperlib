
repeat wait() until game:IsLoaded()
task.wait(3)
local HttpService = game:GetService("HttpService")
local VirtualUser = game:GetService("VirtualUser")
local VIM = game:GetService("VirtualInputManager")
local UIS = game:GetService("UserInputService")

local OldNameCall
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...)
    if not checkcaller()  and (B == "WalkSpeed" or B == "JumpPower") then
        return
    end
    return OldNameCall(A, B, ...)
end)

-- getgenv().Args_Test53 = true
getgenv().Has_Been_Initiated = false
getgenv().Attack_ID = nil
function GetAttack_ID()
if getgenv().Has_Been_Initiated == false then
getgenv().Has_Been_Initiated = true
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(sel, ...)
    local Args = {...}
    if sel.Name == "UseSword" then
		getgenv().Attack_ID = Args[2]
    end
    return OldNameCall(sel, unpack(Args))
end)
end

local VirtualUser = game:GetService("VirtualUser")
function Attack()
    VirtualUser:CaptureController()
    wait()
    VirtualUser:Button1Down(Vector2.new(1280, 672))
end

Attack()
end

local Neverlose_Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mana42138/Neverlose-UI/main/Source.lua"))()
local Win = Neverlose_Main:Window({
    Title = "NEVERLOSE",
    CFG = "Neverlose",
    Key = Enum.KeyCode.RightControl,
    External = {
        KeySystem = false,
        Key = {
            "Test",
            "Beta"
        }
    }
})

Neverlose_Main:Notify({
   Title = "Important",
   Text = "Please do not make any video's about this script!",
   Time = 2,
    AutoClose = true
})

function Attack()
    VirtualUser:CaptureController()
    wait()
    VirtualUser:Button1Down(Vector2.new(1280, 672))
end


local TabSection1 = Win:TSection("Misc")

local Autofarm = TabSection1:Tab("Autofarm")
local Credits = TabSection1:Tab("Credits")

local Autofarm_sec = Autofarm:Section("Autofarm")
local Autofarm_Extras = Autofarm:Section("Autofarm [Extra]")
local Autofarm_Elements = Autofarm:Section("Autofarm [Elements]")
local Autofarm_Drops = Autofarm:Section("Autofarm [Drops]")
local Autofarm_Infinite = Autofarm:Section("Autofarm [Infinite]")
local Other = Autofarm:Section("Other")
local Conf = Autofarm:Section("Config")

local CreditSection = Credits:Section("Credits")

CreditSection:Button("Dev: Mango64 (V3rmillion)", function()
    setclipbaord("https://v3rmillion.net/member.php?action=profile&uid=2305905")
end)

local Is_Loaded = false

if not isfile('Neverlose/Auto_Load.txt') then
    writefile("Neverlose/Auto_Load.txt", HttpService:JSONEncode({
        ["AutoLoad"] = false,
    }))
end

local Get_ALC = Conf:Toggle("Auto Load Config", function(t)
    Auto_Load = t
    if Auto_Load then
        writefile("Neverlose/Auto_Load.txt", HttpService:JSONEncode({
            ["AutoLoad"] = true,
        }))
    else
        writefile("Neverlose/Auto_Load.txt", HttpService:JSONEncode({
            ["AutoLoad"] = false,
        }))
    end
end)

-- if game.PlaceId == 10515146389 then
--     local Load_Dungeon = TabSection1:Tab("Dungeon")
--     local Load_Dungeons = Autofarm:Section("Dungeons")
--     if not isfile("Neverlose/Auto_Load_Dungeon.txt") then
--         writefile("Neverlose/Auto_Load_Dungeon.txt",HttpService:JSONEncode({
--             ["Auto_Load"] = false,
--             ["Dungeon"] = nil,
--             ["Difficulty"] = nil,
--             ["Join"] = nil,
--             ["Normal"] = nil,
--         }))
--     end
--     local Auto_Load_DG = Load_Dungeons:Toggle("Auto Load Dungeon", function(t)
--         A_L_DG = t
--         local Allowed_L = HttpService:JSONDecode(readfile('Neverlose/Auto_Load_Dungeon.txt'))
--         Allowed_L["Auto_Load"] = A_L_DG
--         writefile("Neverlose/Auto_Load_Dungeon.txt", HttpService:JSONEncode(Allowed_L))
--     end)

--     local Get_Load_2 = HttpService:JSONDecode(readfile('Neverlose/Auto_Load_Dungeon.txt')).Auto_Load
--     if Get_Load_2 then
--         Auto_Load_DG:Set(true)
--     else
--         Auto_Load_DG:Set(false)
--     end

--     local OldNameCall = nil
--     OldNameCall = hookmetamethod(game, "__namecall", function(sel, ...)
--         local Args = {...}
--         if sel.Name == "CreateParty" and A_L_DG then
--             writefile("Neverlose/Auto_Load_Dungeon.txt", HttpService:JSONEncode({
--                 ["Auto_Load"] = A_L_DG,
--                 ["Dungeon"] = Args[1],
--                 ["Difficulty"] = Args[2],
--                 ["Join"] = Args[3],
--                 ["Normal"] = Args[4],
--             }))
--         end
--         return OldNameCall(sel, unpack(Args))
--     end)
--         local Players = game:GetService("Players")
--         local LocalPlayer = Players.LocalPlayer
--         local ReplicatedStorage = game:GetService("ReplicatedStorage")
--         local Get_Dungeon_Data = HttpService:JSONDecode(readfile('Neverlose/Auto_Load_Dungeon.txt'))
    
--         --[[
--             Names: UnderwaterDungeon, JungleDungeon, ArcticBastionDungeon, BeginnersDungeon
--             difficulty: Easy, Medium, Hard, Hell, Hardcore
--             join: All, Friends, Private
--             hardcore: Normal
--         ]]--
    
--         function createDungeon(name, difficulty, join, other) -- "All", "Private", "Friends"
--             local ohString1 = name
--             local ohString2 = difficulty
--             local ohString3 = join
--             local ohString4 = other or "Normal"
    
--             game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.CreateParty:InvokeServer(ohString1, ohString2, ohString3, ohString4)
--             local a = game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.GetPartyFromPlayer:InvokeServer(LocalPlayer).Data
    
--             game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.StartParty:InvokeServer(a.UUID)
--         end
    
--         createDungeon(Get_Dungeon_Data.Dungeon, Get_Dungeon_Data.Difficulty, Get_Dungeon_Data.Join, Get_Dungeon_Data.Normal)
-- end

local Get_Load = HttpService:JSONDecode(readfile('Neverlose/Auto_Load.txt')).AutoLoad

if Get_Load then
    Get_ALC:Set(true)
else
    Get_ALC:Set(false)
end

spawn(function()
    while task.wait() do
        if Auto_Load then
            pcall(function()
                if game.PlaceId ~= 10515146389 then
                    if Is_Loaded == false then
                        Neverlose_Main:LoadCfg(Neverlose_Main:LastConfigSaved())
                        Is_Loaded = true
                    end
                end
            end)
        end
    end
end)

local TP_Farming_TG = Autofarm_sec:Toggle("Tp Farming (Infinite Only)", function(t)
    Tp_Farm = t
end)

Autofarm_sec:Toggle("Farming TP", function(t)
    Farming_TP = t
end)

Autofarm_sec:Dropdown("Select Mode", {"Walk (soon)", "Teleport"}, function(t)
    Selected_Mode = t
end)

local SASA, SASA2

Autofarm_sec:Toggle("Defensive", function(t)
    Defensive_Farm = t
    if Defensive_Farm then
        SASA:visibility(true)
        SASA2:visibility(true)
    else
        SASA:visibility(false)
        SASA2:visibility(false)
    end
end)

SASA = Autofarm_sec:Slider("Defensive Meter", 1, 5, 3, function(t)
    Def_Meter = t
end)

SASA2 = Autofarm_sec:Dropdown("Positions", {
    "Over",
    "Under",
    "Behind"
}, function(t)
    Pos_Defensive = t
end)

Autofarm_sec:Line()

Autofarm_sec:Toggle("Auto Leave", function(t)
    Auto_Leave_After_Set = t
end)

Autofarm_sec:Slider("Auto Leave Time", 0, 10, 6, function(t)
    Auto_Leave_Time = t
end)

spawn(function()
    while task.wait() do
        if Auto_Leave_After_Set then
            pcall(function()
                task.wait(Auto_Leave_Time*60)
                game:GetService("TeleportService"):Teleport(10515146389)
            end)
        end
    end
end)

Autofarm_sec:Button("Leave Now", function()
    game:GetService("TeleportService"):Teleport(10515146389)
end)

Autofarm_Extras:Toggle("Bring Mobs [Testing]", function(t)
    Bring_Mobs = t
end)

-- Autofarm_Extras:Toggle("Kill Aura", function(t)
--     Kill_Aura = t
--     if Kill_Aura then
--         anghry:visibility(true)
--     else
--         anghry:visibility(false)
--     end
-- end)

-- anghry = Autofarm_Extras:Slider("Kill Aura Range", 0, 100, 1, function(t)
--     Kill_Aura_Range = t
-- end)

-- spawn(function()
--     while task.wait() do
--         if Kill_Aura then
--             pcall(function()
--                 for i,v in pairs(Neverlose_Main.Workspace.Mobs:GetChildren()) do
--                     if (Neverlose_Main.Client.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 6 then
--                         v.Humanoid.Health = v.Humanoid.Health - Kill_Aura_Range
--                     end
--                 end
--             end)
--         end
--     end
-- end)

-- Autofarm_Extras:Toggle("Hit Aura", function(t)
--     StartFarm = t
-- end)

Autofarm_Extras:Toggle("Hit Aura", function(t)
    Remote_Aura = t
    writefile("Attack id.txt", "none")
end)

task.spawn(function()
    while task.wait() do
        if Remote_Aura then
            pcall(function()
                GetAttack_ID()
                task.wait(5)
            end)
        end
    end
end)

local Elements = {}
for i, v in pairs(game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Elements:GetChildren()) do
    table.insert(Elements, v.Name)
end

local Sword_Elements = {}
for i, v in pairs(game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Sword:GetChildren()) do
    table.insert(Sword_Elements, v.Name)
end

Autofarm_Elements:Dropdown("Select Element", Elements, function(t)
    Selected_Element = t
end)

Autofarm_Elements:Toggle("Auto Shoot Element", function(t)
    Shoot_Element = t
end)

Autofarm_Elements:Line()

Autofarm_Elements:Dropdown("Select Sword Element", Sword_Elements, function(t)
    Selected_Sword_Element = t
end)

Autofarm_Elements:Toggle("Auto Sword Element", function(t)
    Shoot_Sword_Element = t
end)

Autofarm_Drops:Toggle("Auto Collect Drops", function(t)
    Auto_Collect_Drops = t
end)

Autofarm_Drops:Toggle("Collect Potions", function(t)
    Auto_Get_Potions = t
end)

Autofarm_Drops:Toggle("Lunar Shreds", function(t)
    Lunar_Shreds = t
end)

Autofarm_Drops:Toggle("Auto Heal", function(t)
    Auto_Heal = t
    if Auto_Heal then
        ahs:visibility(true)
    else
        ahs:visibility(false)
    end
end)

Autofarm_Extras:Toggle("Instant Fire Proximity Chest", function(t)
    Auto_Chest = t
    if Auto_Chest then
        acd:visibility(true)
        spcfr:visibility(true)
    else
        acd:visibility(false)
        spcfr:visibility(false)
    end
end)

spcfr = Autofarm_Extras:Toggle("Allow TP", function(t)
    Allow_Chest_Tp = t
end)

acd = Autofarm_Extras:Slider("Distance", 5, 150, 30, function(t)
    Auto_Chest_Dist = t
end)


function Bind_No_UI(key, bool, callback)
    local bool = bool or true
    local UserInputService = game:GetService("UserInputService")
    local Holding = false
    UserInputService.InputBegan:Connect(function(Input)
        if UserInputService:GetFocusedTextBox() then return end
        if not bool then return end
        if Input.KeyCode.Name == key then
            Holding = true
            callback(Holding)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(Input)
        if not bool then return end
        if Input.KeyCode.Name == key then
            Holding = false
            callback(Holding)
        end
    end)
end

spawn(function()
    while task.wait() do
        if Auto_Chest then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Chest") and v:FindFirstChild("Primary") and (v.Primary.Position - Neverlose_Main.Client.Character.HumanoidRootPart.Position).Magnitude <= Auto_Chest_Dist then
                        if Allow_Chest_Tp then
                            Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = v.Primary.CFrame
                        end
                        if (v.Primary.Position - Neverlose_Main.Client.Character.HumanoidRootPart.Position).Magnitude <= 13 then
                            fireproximityprompt(v.Primary.ProximityPrompt)
                        end
                    end
                end
            end)
        end
    end
end)

Other:Toggle("Auto Retry", function(t)
    Auto_Retry = t
end)
Other:Toggle("Auto Start", function(t)
    Auto_Start = t
end)

Other:Toggle("Auto EnchantBlade", function(t)
    Auto_Enchant = t
    if Auto_Enchant then
        game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.WeaponService.RF.EnchantedBlade:InvokeServer()
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Enchant then
            pcall(function()
                for i,v in pairs(Neverlose_Main.Client.Character:GetChildren()) do
                    if v:IsA("Tool") then
                        if not v:FindFirstChild("Part") then
                            game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.WeaponService.RF.EnchantedBlade:InvokeServer()
                            task.wait(.8)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Retry then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.DungeonComplete.Main.Frame.Visible then
                    task.wait(2)
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.PartyService.RF.VoteOn:InvokeServer("Retry")
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Start then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.StartBtn.Visible then
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.DungeonService.RF.StartDungeon:InvokeServer()
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Collect_Drops then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Camera.Drops:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        fireproximityprompt(v)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Get_Potions then
            pcall(function()
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.PlayerBar.Main.PotionBar.Visible or game:GetService("Players").LocalPlayer.PlayerGui.Main.PlayerBar.Main.PotionBar.Amount.Text ~= "2/2" then
                    for i,v in pairs(game:GetService("Workspace").Camera.Drops:GetChildren()) do
                        if v:FindFirstChild("Potion") then
                            fireproximityprompt(v.Center.ProximityPrompt)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Lunar_Shreds then
            pcall(function()
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.PlayerBar.Main.PotionBar.Visible or game:GetService("Players").LocalPlayer.PlayerGui.Main.PlayerBar.Main.PotionBar.Amount.Text ~= "2/2" then
                    for i,v in pairs(game:GetService("Workspace").Camera.Drops:GetChildren()) do
                        if v.Center.A1.PointLight.Color == Color3.fromRGB(230, 126, 255) then
                            fireproximityprompt(v.Center.ProximityPrompt)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Auto_Heal then
            pcall(function()
                if Neverlose_Main.Client.Character.Humanoid.Health <= Neverlose_Main.Client.Character.Humanoid.MaxHealth/2 then
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.HealingService.RF.UseHeal:InvokeServer()
                    task.wait(.5)
                end
            end)
        end
    end
end)

-- spawn(function()
--     while task.wait() do
--         if StartFarm then
--             pcall(function()
--                 Attack()
--             end)
--         end
--     end
-- end)

spawn(function()
    while task.wait() do
        if Remote_Aura then
            pcall(function()
                local ohTable1 = {
                    ["Direction"] = nil,
                    ["Position"] = nil,
                    ["Origin"] = nil
                }
                game:GetService("ReplicatedStorage").ReplicatedStorage.Packages.Knit.Services.WeaponService.RF.UseSword:InvokeServer(ohTable1, tostring(getgenv().Attack_ID))
            end)
        end
    end
end)

local Can_Shoot_Element = false

spawn(function()
    while task.wait() do
        if Shoot_Element then
            pcall(function()
                if Can_Shoot_Element then
                    for i = 1,2 do
                            for i,v in pairs(game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Elements[Selected_Element]:GetChildren()) do
                                local ohInstance1 = game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Elements[Selected_Element][v.Name]
                                local ohTable2 = {
                                    ["Direction"] = 0, 0, 0,
                                    ["Position"] = 0,0,0,
                                    ["Origin"] = 0, 0, 0
                                }
                                local ohString3 = "Start"

                                game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Templates.ToolTemplate.RemoteEvent:FireServer(ohInstance1, ohTable2, ohString3)
                            end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if Shoot_Sword_Element then
            pcall(function()
                for i,v in pairs(game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Sword[Selected_Sword_Element]:GetChildren()) do
                    local ohInstance1 = game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Sword[Selected_Sword_Element][v.Name]
                    local ohTable2 = {
                        ["Direction"] = 0, 0, 0,
                        ["Position"] = 0,0,0,
                        ["Origin"] = 0, 0, 0
                    }
                    local ohString3 = "Start"
                    game:GetService("ReplicatedStorage").ReplicatedStorage.Abilities.Templates.ToolTemplate.RemoteEvent:FireServer(ohInstance1, ohTable2, ohString3)
                end
            end)
        end
    end
end)

function GetDistance(Endpoint)
    local HumanoidRootPart = Neverlose_Main.Client.Character:FindFirstChild("HumanoidRootPart")
    if typeof(Endpoint) == "Instance" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    elseif typeof(Endpoint) == "CFrame" then
        Endpoint = Vector3.new(Endpoint.Position.X, HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    end
    local Magnitude = (Endpoint - HumanoidRootPart.Position).Magnitude
    return Magnitude
end

function GetPotentialDanger()
    for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
        if not v:IsA("Folder") and v.Name ~= "Part" then
            return v.Position
        end
    end
    return nil
end

function _12(v, ...)
    if Farming_TP then
        Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(...)
    else
    -- Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(...)
    local Distance = GetDistance(v.HumanoidRootPart.Position)
    if Distance <= 8 then
        Speed = 600
    elseif Distance <= 180 then
        Speed = 20
    elseif Distance >= 180 then
        Speed = 9e9
        Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(...)
    end
    Neverlose_Main.TweenService:Create(
        Neverlose_Main.Client.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed),
        {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(...)}
    ):Play()
    end

end

Neverlose_Main.Players.PlayerRemoving:Connect(function(player)
    if player.UserId == Neverlose_Main.Client.UserId then
        game:GetService("TeleportService"):Teleport(10515146389)
    end
end)

spawn(function()
    pcall(function()
        Neverlose_Main.RunService.Stepped:Connect(function()
            if Tp_Farm then
                for _, v in pairs(Neverlose_Main.Client.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
						v.CanCollide = false
					end
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        Neverlose_Main.RunService.Stepped:Connect(function()
            if Tp_Farm then
                if not Neverlose_Main.Client.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = Neverlose_Main.Client.Character:FindFirstChild("HumanoidRootPart")
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                if Neverlose_Main.Client.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyClip") then
					Neverlose_Main.Client.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyClip"):Destroy()
			 	end
            end
        end)
    end)
end)

local PosMon = Neverlose_Main.Client.Character.HumanoidRootPart.CFrame
local Allowed = true
task.spawn(function()
    -- repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timers.CountdownLabel.TextColor3 == Color3.fromRGB(66, 255, 56)
    while task.wait() do
        if Tp_Farm then
            pcall(function()
                local dist = math.huge
                for i,v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v and v.Parent then
                        if (Neverlose_Main.Client.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= dist then
                            dist = (Neverlose_Main.Client.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude 
                        PosMon = v.HumanoidRootPart.CFrame
                        v.Humanoid.AutoRotate = false
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.BossHealthBars:FindFirstChild("HealthBar") and game:GetService("Workspace").Mobs[game:GetService("Players").LocalPlayer.PlayerGui.Main.BossHealthBars.HealthBar.BossName.Text].Humanoid.Health > 0 then
                            Allowed = false
                            local Boss_Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.BossHealthBars.HealthBar.BossName.Text
                            if game:GetService("Workspace").Mobs[Boss_Name].HumanoidRootPart:FindFirstChild("Immune") then
                                _12(game:GetService("Workspace").Mobs[Boss_Name], 0, 20, 50)
                                -- Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Mobs[Boss_Name].HumanoidRootPart.CFrame * CFrame.new(0, 20, 50)
                                Can_Shoot_Element = false
                            else
                                _12(game:GetService("Workspace").Mobs[Boss_Name], 0, 0, 5)
                                -- Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Mobs[Boss_Name].HumanoidRootPart.CFrame * CFrame.new(0, 8, 5)
                                Can_Shoot_Element = true
                            end
                            Can_Shoot_Element = true
                        else
                            Allowed = true
                            Can_Shoot_Element = true
                        end

                        if Allowed then
                            if v.HumanoidRootPart:FindFirstChild("Immune") then
                                _12(v, 0, 20, 30)
                                Can_Shoot_Element = false
                            else
                                    if Selected_Mode == "Teleport" then
                                        if Defensive_Farm then
                                            if Neverlose_Main.Client.Character.Humanoid.Health <= Neverlose_Main.Client.Character.Humanoid.MaxHealth/Def_Meter then
                                                if not v.Name:find("Ice Illusion") then
                                                    if Pos_Defensive == "Behind" then
                                                        _12(v, 0, 2, 8)
                                                    elseif Pos_Defensive == "Over" then
                                                        _12(v, 0, 8, 2)
                                                    elseif Pos_Defensive == "Under" then
                                                        _12(v, 0, -10, 0)
                                                    end
                                                else
                                                    v:Destroy()
                                                end
                                            else
                                                _12(v, 0, 0, 5)
                                            end
                                        else
                                            _12(v, 0, 0, 5)
                                        end
                                    -- elseif Selected_Mode == "Walk" then
                                    --     local is_done = false
                                    --     repeat wait()
                                    --         _11(v, is_done, 0, 0, 14)
                                    --         is_done = false
                                    --     until not Tp_Farm or v.Humanoid.Health <= 0
                                    --     if (Neverlose_Main.Client.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 100 then
                                    --         _12(v, 0, 8, -2)
                                    --         is_done = true
                                    --     end
                                    Can_Shoot_Element = true
                                    -- Neverlose_Main.Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 4.03, 0.9) * CFrame.Angles(math.rad(-90), 0, 0)
                                end
                                    -- v.HitPart.Size = Vector3.new(5, 5, 5)
                            end
                        else
                            Can_Shoot_Element = false
                        end
                        -- v.Humanoid.WalkSpeed = 0
                        -- if v.Humanoid:FindFirstChild("Animator") then
                        --     v.Humanoid.Animator:Destroy()
                        -- end
                    end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(.5) do
        if Bring_Mobs then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if Allowed then
                                if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 35 then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    -- v.HumanoidRootPart.Size = Vector3.new(5,5,5)
                                end
                            end
                    end
                end
            end)
        end
    end
end)


Autofarm_Infinite:Toggle("Reset After Ammount of rounds", function(t)
    Reset_After_Rounds = t
end)

Autofarm_Infinite:Slider("Rounds Number", 1, 500, 16, function(t)
    Set_Ammount_Of_Rounds = t
end)

Autofarm_Infinite:Toggle("Reset Character", function(t)
    Reset_Character = t
end)

spawn(function()
    while task.wait() do
        if Reset_After_Rounds then
            pcall(function()
                local Wave_Num = string.gsub(Neverlose_Main.Client.PlayerGui.Main.Timers.WaveLabel.Text, "Wave", "")
                if tonumber(Wave_Num) == tonumber(Set_Ammount_Of_Rounds) + 1 then
                    if Reset_Character then
                        Neverlose_Main.Client.Character.Humanoid.Health = 0
                    else
                        TP_Farming_TG:Set(false)
                    end
                end
            end)
        end
    end
end)