local function invis()
    pcall(function()
        game.Players.LocalPlayer.Character.Head.PlayerTag:Destroy()
    end)
end

local function equip()
    for i,k in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if k:IsA("Tool") then
            k.Parent = game.Players.LocalPlayer.Character
        end
    end
end

local function quest(arg)
    game:GetService("ReplicatedStorage").Packages.Knit.Services.QuestService.RF.AcceptQuest:InvokeServer(arg)
end

local function charge(arg)
    game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ToggleCharge:InvokeServer(arg)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("DB Orbz")
local f = w:CreateFolder("Main")
local b = w:CreateFolder("Misc")
local c = w:CreateFolder("Credits")
_G.dis = 8
_G.antid = 0

f:Toggle("Auto Farm",function(bool)
    _G.e = bool
    local v
    local bruh
    bruh = game:GetService('RunService').Stepped:Connect(function()
        if _G.e then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
            end)
        else
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
            bruh:Disconnect()
        end
    end)
    spawn(function()
        while _G.e do wait()
            pcall(function()
                workspace.Gravity = 0
                invis()
                equip()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                if game.Players.LocalPlayer.PlayerGui.ActiveQuest.Background.Background.Visible == false then
                    if _G.m == "Oscar" or _G.m == "Destroyer" or _G.m == "Freezer Force Commander" then
                        quest("Elite Freezer Force Quest")
                    else
                        quest(_G.m .. " Quest")
                    end
                end
                for i,mob in pairs(game:GetService("Workspace").Resources.SpawnedAI:GetChildren()) do
                    if mob.Name == _G.m and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and mob:FindFirstChild("HumanoidRootPart") then
                        v = mob
                        break
                    end
                end
                if v and v.Name == _G.m and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("PlayerTag") then
                    for i,anims in pairs(v.Humanoid:GetPlayingAnimationTracks()) do
                        anims:Stop()
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(-300, math.rad(0), 0) * CFrame.new(0,0,_G.dis)
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.CombatService.RF.MeleeAttack:InvokeServer("Punch")
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end)
        end
        workspace.Gravity = 196.1999969482422
    end)
end)

f:Slider("Distance",{min = 0; max = 13; precise = false;},function(value)
    _G.dis = value
end)

local drop = f:Dropdown("Select Mob",{},true,function(mob)
    _G.m = mob
end)

local mList = {}
f:Button("Refresh Mob List",function()
    for i,v in pairs(game:GetService("Workspace").Resources.SpawnedAI:GetChildren()) do
        if not table.find(mList,v.Name) then
            table.insert(mList,v.Name)
            drop:Refresh(mList)
        end
    end
end)

b:Toggle("Auto Charge",function(bool)
    _G.ac = bool
end)

b:Toggle("Auto Stat",function(bool)
    _G.as = bool
end)

b:Dropdown("Select Stat",{"Melee","Defense","Mana","Orb"},true,function(stat)
    _G.stat = stat
end)

b:Dropdown("Select Location",{"North City","Roku's House","Radish Landing","Hades City","Freezer Landing","Ice Area","Wasteland","Cilium's Games"},true,function(place)
    _G.place = place
end)

b:Button("Teleport",function()
    if _G.place then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Resources.NPC.SetSpawn[_G.place].CFrame
    end
end)

c:Button("Script: Ghabrieel",function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=930394")
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Message"; Text = "Profile Link Copied to Clipboard"})
end)

c:Button("Ui: Wally & Aika",function()
    setclipboard("Wally: https://v3rmillion.net/member.php?action=profile&uid=1091612   Aika: https://v3rmillion.net/member.php?action=profile&uid=507120")
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Message"; Text = "Profiles Links Copied to Clipboard"})
end)

spawn(function()
    _G.antid = 1
    while _G.antid == 1 do wait()
        if _G.ac then
            charge(true)
        end
        if _G.as then
            pcall(function()
                if tonumber(game.Players.LocalPlayer.PlayerGui.LeftSidebar.Background.Stats.Notify.TextLabel.Text) > 0 then
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.StatService.RF.AddPoint:InvokeServer(_G.stat, 1)
                end
            end)
        end
    end
end)