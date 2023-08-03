local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Novaz#5792", "BloodTheme")
local main = window:NewTab("Main")
local section = main:NewSection("Auto Farm")
local plr = game.Players.LocalPlayer
local hrp = plr.Character.HumanoidRootPart
local section1 = main:NewSection("Auto Egg")
local tp = window:NewTab("Teleport")
local section2 = tp:NewSection("Area TP")
local section5 = tp:NewSection("Machine TP")
local misc = window:NewTab("Misc")
local section3 = misc:NewSection("Misc")
local section4 = misc:NewSection("LocalPlayer")

local part = Instance.new("Part", game.Workspace)
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(2216, -23, 1725)

local part = Instance.new("Part", game.Workspace)
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(-1146, -20, 1422)

local part = Instance.new("Part", game.Workspace)
part.Anchored = true
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(735, -22, 1374)

local part = Instance.new("Part", game.Workspace)
part.Anchored = true 
part.Size = Vector3.new(50,1,50)
part.CFrame = CFrame.new(196, -58, 3166)

local Eggs = {}

for i, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
        if not table.find(Eggs, tostring(v)) then
            table.insert(Eggs, tostring(v))
        end
end

function getclosest()
    local closest = nil
    local closestdist = math.huge
    for i,v in pairs(game:GetService("Workspace").SpawnedMineables[z]:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "Center" then
            local dist = (v.Position - hrp.Position).magnitude
            if dist < closestdist then
                closestdist = dist
                closest = v.Parent
           end
        end
    end
    return closest
end

section:NewToggle("Auto Farm Closest", "", function(fosa)
fosr = fosa
while fosr do
task.wait(.1)
        for i, v in pairs(game:GetService("Workspace").PetStorage[plr.Name]:GetChildren()) do
            local args = {
                ["Mineable"] = getclosest(),
                ["PetId"] = v.Name,
            }
            game:GetService("ReplicatedStorage").Knit.Services.MineableService.RF.StartMining:InvokeServer(args)
        end
    end
end)

section:NewToggle("Auto Farm All", "", function(lgprt)
lgir = lgprt
while lgir and task.wait() do 
        for t, b in pairs(game:GetService("Workspace").SpawnedMineables[z]:GetChildren()) do
        for i, v in pairs(game:GetService("Workspace").PetStorage[plr.Name]:GetChildren()) do
            local args = {
                ["Mineable"] = b,
                ["PetId"] = v.Name,
            }
            game:GetService("ReplicatedStorage").Knit.Services.MineableService.RF.StartMining:InvokeServer(args)
        end
        end
end
    end)


section:NewDropdown("Select Area", "", {"Spawn", "Desert", "IceKingdom", "Volcano"}, function(lkf)
z = lkf
end)

section:NewButton("Teleport To Hidden Baseplate", "", function()
if z == "Desert" then 
    hrp.CFrame = CFrame.new(196, -55, 3166)
elseif z == "Spawn" then 
    hrp.CFrame = CFrame.new(-1146, -16, 1422)
elseif z == "IceKingdom" then 
    hrp.CFrame = CFrame.new(735, -17, 1374)
elseif z == "Volcano" then 
    hrp.CFrame = CFrame.new(2216, -19, 1725)
end 
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Main.Prompts.Inventory.Main.EquipBest.Activated)
end)

section1:NewToggle("Auto Open", "" , function(c)
d = c
while d do
task.wait(.1)
local args = {
    [1] = {
        ["UpdateType"] = "Open",
        ["EggType"] = b,
        ["Auto"] = false,
        ["Amount"] = e
    }
}
game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.OpenEgg:InvokeServer(unpack(args))
end
end)

section1:NewSlider("Amount Of Eggs", "1/2 if f2p 3 if p2w", 3, 1, function(f)
    getgenv().e = f
    end)

section1:NewDropdown("Select Egg", "", Eggs, function(a)
getgenv().b = a
end)

section2:NewButton("Teleport To World", "You Can Buy Eggs That Are In Locked Areas", function()
game:GetService("ReplicatedStorage").Knit.Services.TeleportService.RF.RequestTeleport:InvokeServer({["WorldId"] = h})
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Main.Prompts.Inventory.Main.EquipBest.Activated)
end)

section2:NewDropdown("Select World", "", {"Spawn", "IceKingdom", "Volcano", "Desert"}, function(g)
getgenv().h = g 
end)

section5:NewButton("Teleport To Machine", "", function()
if l == "Shiny" then
hrp.CFrame = game:GetService("Workspace").Interactive.ShinyMachine.CFrame + Vector3.new(0, -9, 0)
elseif l == "Spawn Upgrades" then
hrp.CFrame = CFrame.new(-622, 5, 1358)
elseif l == "Ice Kingdom Upgrades" then
hrp.CFrame = CFrame.new(819, 6, 1294)
elseif l == "Volcano Upgrades" then
hrp.CFrame = CFrame.new(1667, 6, 1530)
elseif l == "Desert Upgrades" then
hrp.CFrame = CFrame.new(110, -30, 3226)
end
end)

section5:NewDropdown("Select Machine", "", {"Shiny", "Spawn Upgrades", "Ice Kingdom Upgrades", "Volcano Upgrades", "Desert Upgrades"}, function(k)
getgenv().l = k 
end)

section4:NewSlider("WalkSpeed", "", 500, 16, function(s)
 getgenv().asfk = s  
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

section3:NewButton("Inf Pet Speed", "", function(fasg)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100000
wait(.1)
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Main.Prompts.Inventory.Main.EquipBest.Activated)
wait(1.5)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

section3:NewButton("Make Everything Transparent", "", function()
for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do 
    if v:IsA("BasePart") then 
        v.Transparency = 10 
    end 
end
end)

section3:NewButton("Revert Transparency", "", function()
for i,v in pairs(game:GetService("Workspace").Areas:GetDescendants()) do 
    if v:IsA("BasePart") then 
        v.Transparency = 0
    end 
end
end)