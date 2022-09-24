local player = game.Players.LocalPlayer
local library = loadstring(game:HttpGet("https://pastebin.com/raw/JsdM2jiP",true))()
library.options.underlinecolor = "rainbow"

local Farming = library:CreateWindow("Farming")
local GK = Farming:Toggle("Auto-Good Karma", {flag = "GK"})
local BK = Farming:Toggle("Auto-Bad Karma", {flag = "BK"})
local Swing = Farming:Toggle("Auto-Swing", {flag = "Swing"}) 
local Sell = Farming:Toggle("Auto-Sell", {flag = "Sell"})
local BackpackFull = Farming:Toggle("Auto-Full Sell", {flag = "FullSell"}) 
local EAR = Farming:Toggle("Auto-Pet Levels", {flag = "L"}) 
local Boss = Farming:Toggle("Auto-Robot Boss", {flag = "Boss"})
local ETBoss = Farming:Toggle("Auto-Eternal Boss", {flag = "EBoss"})
local AMBoss = Farming:Toggle("Auto-Ancient Boss", {flag = "ABoss"})
local Chi = Farming:Toggle("Auto-Chi", {flag = "Chi"})
local Kat = Farming:Button("Auto-Koth/Boss/Kill", function()
loadstring(game:HttpGet("https://pastebin.com/raw/2qKmDuiy",true))()
end)

local Hi = Farming:Button("Auto-Hoops", function()
_G.Hoops = true
while _G.Hoops do
local stuff = workspace.Hoops:getChildren()
for i = 1, #stuff do
if _G.Hoops then
for i = 1, 10 do
stuff[i].touchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
end
end
wait()
end
end
end)

local AutoBuy = library:CreateWindow("Auto Buy")
local Sword = AutoBuy:Toggle("Auto-Sword", {flag = "Sword"}) -- AutoBuy.flags.Sword
local Belt = AutoBuy:Toggle("Auto-Belt", {flag = "Belt"}) -- AutoBuy.flags.Belt
local Rank = AutoBuy:Toggle("Auto-Rank", {flag = "Rank"}) -- AutoBuy.flags.Rank
local Skill = AutoBuy:Toggle("Auto-Skills", {flag = "Skill"}) -- AutoBuy.flags.Skill
local Shuriken = AutoBuy:Toggle("Auto-Shurikens", {flag = "Shurikens"}) --AutoBuy.flags.Shurikens
_G.Enabled = AutoBuy.flags.Purchase
_G.Sword = AutoBuy.flags.Sword
_G.Belt = AutoBuy.flags.Belt
_G.Rank = AutoBuy.flags.Rank
_G.Skill = AutoBuy.flags.Skill

-- Misc
local Misc = library:CreateWindow("Misc")
Misc:Section("--== Pets ==--")

Misc:Dropdown("Eggs", {location = _G, flag = "Egg", list = {
"Blue Crystal",
"Purple Crystal",
"Orange Crystal",
"Enchanted Crystal",
"Astral Crystal",
"Golden Crystal",
"Inferno Crystal",
"Galaxy Crystal",
"Frozen Crystal",
"Eternal Crystal",
"Storm Crystal",
"Thunder Crystal",
"Legends Crystal",
"Eternity Crystal"
}
}, function(new) print("Selected Egg:", new) end)

local Eggs = Misc:Toggle("Open Eggs", {flag = "TEgg"}) -- Misc.flags.TEgg
local Basic = Misc:Toggle("Sell Basic", {flag = "SBasic"}) --Misc.flags.SBasic
local Advanced = Misc:Toggle("Sell Advanced", {flag = "SAdvanced"}) --Misc.flags.SAdvanced
local Rare = Misc:Toggle("Sell Rare", {flag = "SRare"}) --Misc.flags.SRare
local Epic = Misc:Toggle("Sell Epic", {flag = "SEpic"}) --Misc.flags.SEpic
local Unique = Misc:Toggle("Sell Unique", {flag = "SUnique"})
local IPB = Misc:Toggle("Sell Omega", {flag = "SIPB"})
local Evolve = Misc:Toggle("Auto-Evolve", {flag = "Evolve"}) -- Misc.flags.TEgg
local Eternalise = Misc:Toggle("Auto-Eternalise", {flag = "Eternalise"}) -- Misc.flags.Eternalise
local Immortalize = Misc:Toggle("Auto-Immortalize", {flag = "Immortalize"}) -- Misc.flags.Eternalise
local Legend = Misc:Toggle("Auto-Legend", {flag = "Legend"}) -- Misc.flags.Eternalise


Misc:Section("--== Other Stuff ==--")

local FastThing = Misc:Toggle("Fast Shuriken", {flag = "Fast"}) -- AutoBuy.flags.Belt

local head = Misc:Button("Big Head All", function()
while wait(1) do
for _, v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= game:GetService("Players").LocalPlayer.Name then
v.Character.Head.CanCollide = false
v.Character.Head.Size = Vector3.new(5, 5, 5)
v.Character.Head.Transparency = 0
end
end
end
end)

local HideName = Misc:Button("Hide Name", function()
local plrname = game.Players.LocalPlayer.Name
workspace[plrname].Head.nameGui:Destroy()
end)

local Invis = Misc:Button("Invisibility", function()
while true do 
wait(.0001)
local A_1 = "goInvisible"
local Event = game.Players.LocalPlayer.ninjaEvent
Event:FireServer(A_1)
end
end)

local MaxJump = Misc:Button("Max Jump", function()
while true do 
wait(.001)
game.Players.LocalPlayer.multiJumpCount.Value = "50"
end
end)

local UnlockIsland = Misc:Button("Unlock Islands", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Thunderstorm"].CFrame
wait(.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Ancient Inferno Island"].CFrame
end)

local StatEffects = Misc:Button("Toggle Popups", function()
game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled
end)

Misc:Bind("Toggle Key",
{flag = "Toggle", owo = true, default = Enum.KeyCode.RightControl},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)

-- Teleports
local Teleports = library:CreateWindow("Teleports")

Teleports:Section("--== Utilitys ==--")
local Shop = Teleports:Button("Shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").shopAreaCircle5.circleInner.CFrame
end)

local KOTH = Teleports:Button("KOTH", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").kingOfTheHillPart.CFrame
end)

Teleports:Section("--== Worlds ==--")

local EnchantedIsland = Teleports:Button("Enchanted Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
end)

local AstralIsland = Teleports:Button("Astral Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
end)

local MysticalIsland = Teleports:Button("Mystical Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
end)

local SpaceIsland = Teleports:Button("Space Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
end)

local TundraIsland = Teleports:Button("Tundra Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
end)

local EternalIsland = Teleports:Button("Eternal Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
end)

local Sandstorm = Teleports:Button("Sandstorm Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
end)

local Thunderstorm = Teleports:Button("Thunderstorm Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Thunderstorm"].CFrame
end)

local Ancient = Teleports:Button("Ancient Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Ancient Inferno Island"].CFrame
end)


Teleports:Section("--== Training Areas ==--")
local a1 = Teleports:Button("Mystical Waters (Good)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(347.74881, 8824.53809, 114.271019)
end)
local a2 = Teleports:Button("Sword of Legends (Good)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1834.15967, 38.704483, -141.375641)
end)
local a3 = Teleports:Button("Lava Pit (Bad)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.631485, 12952.5381, 271.14624)
end)
local a4 = Teleports:Button("Tornado (Bad)", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325.641174, 16872.0938, -9.9906435)
end)


spawn(function()
while wait(.01) do
if Misc.flags.TEgg then
local oh1 = "openCrystal"
local oh2 = _G.Egg
print("Purchased", _G.Egg)
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(oh1, oh2)
end
end
end)

spawn(function()
while wait() do
if Farming.flags.Swing then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
else
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
wait()
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
end
end
end
end
end
end
end
end)

spawn(function()
while wait(0.01) do
if Farming.flags.Sell then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
wait(.05)
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
end
end
end
end)

spawn(function()
while wait(0.01) do
if Farming.flags.FullSell then 
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if player.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
wait(.05)
game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
end
end
end
end
end)


spawn(function()
while wait(0.4) do
if Farming.flags.GK then
loadstring(game:HttpGet(('https://pastebin.com/raw/AaqHqPyw'),true))()
end
end
end)

spawn(function()
while wait(0.00011) do
if Farming.flags.L then
local plr = game.Players.LocalPlayer
for _,v in pairs(workspace.Hoops:GetDescendants()) do
if v.ClassName == "MeshPart" then
v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
end
end
end
end
end)


spawn(function()
while wait(0.4) do
if Farming.flags.BK then
loadstring(game:HttpGet(('https://pastebin.com/raw/wEEB3nQt'),true))()  
end
end
end)

spawn(function()
while wait(.001) do
if Farming.flags.Boss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("RobotBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end            
end
end
end
end
end
end
end
end)


spawn(function()
while wait(.001) do
if Farming.flags.EBoss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("EternalBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end      
end      
end
end
end
end
end
end
end)

spawn(function()
while wait(.001) do
if Farming.flags.ABoss then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game:GetService("Workspace").bossFolder:WaitForChild("AncientMagmaBoss"):WaitForChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
if player.Character:FindFirstChildOfClass("Tool") then
player.Character:FindFirstChildOfClass("Tool"):Activate()
else
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
player.Character.Humanoid:EquipTool(v)
if attackfar then
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end      
end      
end
end
end
end
end
end
end)

spawn(function()
while wait(0.5) do
if AutoBuy.flags.Sword then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllSwords"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

spawn(function()
while wait(0.5) do
if AutoBuy.flags.Belt then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllBelts"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

spawn(function()
while wait(0.5) do
if AutoBuy.flags.Skill then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllSkills"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

            

spawn(function()
while wait(0.5) do
if AutoBuy.flags.Rank then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyRank"
local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
end
end
end
end
end)

spawn(function()
while wait(0.5) do
if AutoBuy.flags.Shurikens then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local oh1 = "buyAllShurikens"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end
end)

spawn(function()
while wait(0.033) do 
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if Farming.flags.Chi then
for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
if v.Name == "Blue Chi Crate" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
wait(.16)
end
end
end
end
end
end)



spawn(function()
while wait(3) do
if Misc.flags.Evolve then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "evolvePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)
spawn(function()
while wait(3) do
if Misc.flags.Eternalise then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "eternalizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEternalizeEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

spawn(function()
while wait(3) do
if Misc.flags.Immortalize then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "immortalizePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petImmortalizeEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

spawn(function()
while wait(3) do
if Misc.flags.Legend then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "legendPet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petLegendEvent:FireServer(oh1, oh2)
end
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SBasic then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Basic:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SAdvanced then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Advanced:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SRare then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Rare:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SEpic then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Epic:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SUnique then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(1) do 
if Misc.flags.SOmega then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
for i,v in pairs(game.Players.LocalPlayer.petsFolder.Omega:GetChildren()) do
game.ReplicatedStorage.rEvents.sellPetEvent:FireServer("sellPet", v)
end
end
end
end
end)

spawn(function() 
while wait(.001) do 
if Misc.flags.Fast then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()
local velocity = 1000
for _,p in pairs(game.Workspace.shurikensFolder:GetChildren()) do
if p.Name == "Handle" then
if p:FindFirstChild("BodyVelocity") then
local bv = p:FindFirstChildOfClass("BodyVelocity")
bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.Velocity = Mouse.Hit.lookVector * velocity
end
end
end
end
end
end
end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)