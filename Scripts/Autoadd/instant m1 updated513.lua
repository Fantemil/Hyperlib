local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Auto Farm")
local section = main:NewSection("Auto Farm")
local main1 = window:NewTab("Misc")
local section1 = main1:NewSection("Local Player")
local plr = game.Players.LocalPlayer

function getclosest()
    local closest = nil
    local closestdist = math.huge
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA("Model") and v.Name ~= "CNPC" and v.Name ~= game.Players.LocalPlayer.Name and v.Humanoid.Health > 0 then
            local dist = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if dist < closestdist then
                closestdist = dist
                closest = v:FindFirstChild("HumanoidRootPart")
            end
        end
    end
    return closest
end

local function enemies()
    for i,v in pairs(game.Workspace:GetChildren()) do 
        if v:IsA("Model") and v.Name ~= "CNPC" and v.Name ~= game.Players.LocalPlayer.Name and v.Humanoid.Health > 0 then
            local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
            game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Damage:FireServer("BCombo", workspace.Attacks.Attack, v)
        end 
    end 
end

section:NewToggle("Auto Farm", "", function(a)
b = a 
while b and task.wait() do 
pcall(function()
local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
plr.Character.HumanoidRootPart.CFrame = getclosest().CFrame + getclosest().CFrame.lookVector * xd
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 1, "Start")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 1, "Next1")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 2, "Start")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 2, "Next1")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 3, "Start")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 3, "Next1")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 4, "Start")
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Combo:FireServer(game:GetService("Players").LocalPlayer.Backpack.UnitLScript, 4, "Next1")
enemies()
end)
end 
end)

section:NewSlider("Auto Farm Distance", "", 50, -50, function(pr)
xd = pr
end)

section:NewToggle("Auto Skill 1", "", function(ort)
port = ort 
while port and task.wait() do 
pcall(function()
local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Skill1:FireServer()
end) 
end 
end)

section:NewToggle("Auto Skill 2", "", function(orrt)
porrt = orrt 
while porrt and task.wait() do 
pcall(function()
local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Skill2:FireServer()
end) 
end 
end)

section:NewToggle("Auto Skill 3", "", function(orrrt)
porrrt = orrrt 
while porrrt and task.wait() do 
pcall(function()
local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Skill3:FireServer()
end) 
end 
end)

section:NewToggle("Auto Skill 4", "", function(oerrrt)
prorrrt = oerrrt 
while prorrrt and task.wait() do 
pcall(function()
local equipped = tostring(plr.Data.UTeam["Unit"..plr.Data.UTeam.EUnit.ESlot.Value].UnitSlot.Value)
game:GetService("ReplicatedStorage").GameInfo.UnitInfo[equipped][plr.Data.Units[equipped].Star.Value.."Star"].Remotes.Skill4:FireServer()
end) 
end 
end)

section:NewToggle("Projectile God Mode", "", function(lo)
fun = lo 
while fun and task.wait() do 
pcall(function()
for i,v in pairs(game.Workspace.Attacks:GetChildren()) do 
    if v:FindFirstChild("TouchInterest") then 
        v:Destroy() 
    end 
end 
end)
end 
end)

section:NewToggle("Bigger M1 AOE (Already On Auto Farm)", "", function(o)
ob = o 
while ob and task.wait() do 
pcall(function()
enemies()
end)
end 
end)

section:NewToggle("Auto Replay", "", function(c) 
d = c 
while d and task.wait() do 
pcall(function()
game:GetService("ReplicatedStorage").GameStorage.Remotes.StageEvents:FireServer("Replay")
end) 
end 
end) 

section:NewToggle("Auto Skip Dialogue", "", function(e) 
f = e 
while f and task.wait() do 
pcall(function()
game:GetService("ReplicatedStorage").GameStorage.Remotes.TalkEvent:FireServer("Skip")
end) 
end 
end) 

section:NewToggle("Auto Next Area", "", function(g) 
h = g
while h and task.wait() do 
pcall(function()
game:GetService("ReplicatedStorage").GameStorage.Remotes.StageEvents:FireServer("Next")
end) 
end 
end) 

section1:NewSlider("WalkSpeed", "", 500, 16, function(s)
    plr.Character.Humanoid.WalkSpeed = s
end)

section1:NewSlider("JumpPower", "", 500, 50, function(vc)
    plr.Character.Humanoid.JumpPower = vc
end)

pcall(function()
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)
