local lplr = game.Players.LocalPlayer

local QuestData = loadstring(game:HttpGet("https://raw.githubusercontent.com/eixotic07/Bloxfruit/main/Autofarm%20Data.lua"))()
local WalkTween = loadstring(game:HttpGet("https://raw.githubusercontent.com/eixotic07/Utils/main/Universal%20Tween.lua"))()

-- No Cooldown

local CombatFrameworkOld = require(lplr.PlayerScripts.CombatFramework) 
require(game.ReplicatedStorage.Util.CameraShaker):Stop()

local CombatFramework = debug.getupvalues(CombatFrameworkOld)[2]
game:GetService("RunService").Stepped:Connect(function()
    CombatFramework.activeController.attacking = false
 CombatFramework.activeController.increment = 3
 CombatFramework.activeController.blocking = false
 CombatFramework.activeController.timeToNextBlock = 0
 CombatFramework.activeController.timeToNextAttack = 0
    CombatFramework.activeController.hitboxMagnitude = 54
end)

-- in-game functions

if game.PlaceId == 2753915549 then
    World = 1
elseif game.PlaceId == 4442272183 then
    World = 2
elseif game.PlaceId == 7449423635 then
    World = 3
end

function StartQuest(Enemy)
    Quest_Person, Quest_Data = QuestData.getQuest(Enemy)
    
    for i,v in pairs(Quest_Data) do
        if i == "CFramePos" then
            CFramePos = v
        elseif typeof(v) == "CFrame" then
            CFramePos = v
        end
    end

    if (Vector3.new(CFramePos.X, CFramePos.Y, CFramePos.Z) - lplr.Character.HumanoidRootPart.Position).Magnitude >= 10000 and Quest_Data.Entrance then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Quest_Data.Entrance)
        task.wait(0.4)
     else
        task.wait(1)
        WalkTween(lplr.Character.HumanoidRootPart, CFramePos, 300)
        task.wait(0.4)
        if (Vector3.new(CFramePos.X, CFramePos.Y, CFramePos.Z) - lplr.Character.HumanoidRootPart.Position).Magnitude <= 20 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", Quest_Data.QuestName, Quest_Data.LevelQuest)
            task.wait(0.5)
        end
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end
    
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe))
    end
end

function Attack(Enemy)
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name:find(Enemy) then
                repeat task.wait()
                    if (v.HumanoidRootPart.Position - lplr.Character.PrimaryPart.Position).Magnitude <= 54 then
                        CombatFramework.activeController.hitboxMagnitude = 54
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1000, 1000))
                    end
                    WalkTween(lplr.Character.HumanoidRootPart, CFrame.new(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 50, v.HumanoidRootPart.Position.Z), 400)
                until not v.Parent or v.Humanoid.Health <= 0
            else
                for i,v in pairs(game.Workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                    if v.Name:find(Enemy) then
                        WalkTween(lplr.Character.HumanoidRootPart, v.CFrame, 300) break
                    end
                end
            end
        end
    else
        StartQuest(Enemy)
    end
end





local Meteor = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Bloxburg = Meteor:CreateWindow({
    Name = "Meteor Lite : Bloxfruit",
    LoadingTitle = "Meteor Lite",
    LoadingSubtitle = "by eixotic07",
    ConfigurationSaving = { Enabled = true, FolderName = "MeteorLite", FileName = "Bloxburg" }
})

local Autofarm = Bloxburg:CreateTab("Autofarm")

local SelectedQuest = {Quest = "", Enabled = false, AutoSelect = false, FirstSea = "", SecondSea = ""}

table.insert(QuestData.FirstSea, "First Sea")
table.insert(QuestData.SecondSea, "Second Sea")
table.insert(QuestData.ThirdSea, "Third Sea")

FirstSeaD = Autofarm:CreateDropdown({
    Name = "Quest : FirstSea",
    Options = QuestData.FirstSea,
    Flag = "Dropdown1",
    CurrentOption = "First Sea",
    Callback = function(Option)
        SelectedQuest.Quest = Option
    end,
})

local SecondSeaD = Autofarm:CreateDropdown({
    Name = "Quest : SecondSea",
    Options = QuestData.SecondSea,
    Flag = "Dropdown2",
    CurrentOption = "Second Sea",
    Callback = function(Option)
        SelectedQuest.Quest = Option
    end,
})

local ThirdSeaD = Autofarm:CreateDropdown({
    Name = "Quest : ThirdSea",
    Options = QuestData.ThirdSea,
    Flag = "Dropdown3",
    CurrentOption = "Third Sea",
    Callback = function(Option)
        SelectedQuest.Quest = Option
    end,
})


Autofarm:CreateToggle({ Name = "Auto Select", CurrentValue = false, Flag = "Toggle2",
    Callback = function(Value)
        SelectedQuest.AutoSelect = Value
        
        while task.wait() do
            if not SelectedQuest.AutoSelect then break end

            SelectedEnemy = QuestData.CalculateLevel(tonumber(game.Players.LocalPlayer.PlayerGui.Main.Level.Text:sub(5)))

            for i,v in pairs(QuestData.Quests) do
                if v.EnemyName == SelectedEnemy then
                    if v.World == 1 and World == 1 then
                        FirstSeaD:Set(v.EnemyName)
                    elseif v.World == 2 and World == 2 then
                        SecondSeaD:Set(v.EnemyName)
                    elseif v.World == 3 and World == 3 then
                        ThirdSeaD:Set(v.EnemyName)
                    end
                end
            end
            
        end
    end
})

Autofarm:CreateSection("Quest Autofarm")

Autofarm:CreateToggle({ Name = "Quest Autofarm", CurrentValue = false, Flag = "Toggle1",
    Callback = function(Value)
        SelectedQuest.Enabled = Value

        while task.wait() do
            if not SelectedQuest.Enabled then break end

            Attack(SelectedQuest.Quest)
        end
    end
})