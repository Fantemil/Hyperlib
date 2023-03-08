local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("UPT v1.0.0", "GrapeTheme")
local player = game.Players.LocalPlayer
local function getTycoonOwned()
for i, v in pairs(game:GetService("Workspace"):WaitForChild("Tycoons"):GetDescendants()) do
if v and v:IsA("StringValue") and v.Value == player.Name and v.Name == "isim" then
return v.Parent
end
end
end
--game:GetService("Workspace").Tycoons["Death Eye"].UltimaPad.CashRegister2.Ching
local function autoCollect()
repeat
-- try to locate tycoon
getgenv().player_tycoon = getTycoonOwned()
task.wait(1)
until getgenv().player_tycoon
local connection2
local connection1 = getgenv().player_tycoon.CashRegister.Cash.Changed:Connect(function(Value)
if getgenv().player_tycoon:FindFirstChild("UltimaPad") and getgenv().player_tycoon.UltimaPad:FindFirstChild("CashRegister2") and not connection2 then
connection2 = getgenv().player_tycoon.UltimaPad.CashRegister2.Cash.Changed:Connect(function(Value)
if Value > 0 then
firetouchinterest(getgenv().player_tycoon.UltimaPad.CashRegister2.Ching, player.Character.UpperTorso, 1)
firetouchinterest(getgenv().player_tycoon.UltimaPad.CashRegister2.Ching, player.Character.UpperTorso, 0)
end
end)
end
if Value > 0 then
firetouchinterest(getgenv().player_tycoon.CashRegister.Ching, player.Character.UpperTorso, 1)
firetouchinterest(getgenv().player_tycoon.CashRegister.Ching, player.Character.UpperTorso, 0)
end
end)
return connection1, connection2
end
local function autoBuy()
repeat
-- try to locate tycoon
getgenv().player_tycoon = getTycoonOwned()
task.wait(1)
until getgenv().player_tycoon
local connection = player.leaderstats.Cash.Changed:Connect(function(Value)
for i, v in pairs(getgenv().player_tycoon:GetChildren()) do
if v and v:FindFirstChild("Touch") and v:IsA("Model") and v.Touch:FindFirstChild("Cost") and v.Touch.Cost.Value <= Value then
firetouchinterest(v.Touch, player.Character.RightFoot, 1)
firetouchinterest(v.Touch, player.Character.RightFoot, 0)
elseif v.Name == "UpStairs" then
for b, c in pairs(v:GetChildren()) do
if c and c:FindFirstChild("Touch") and c:IsA("Model") and c.Touch:FindFirstChild("Cost") and c.Touch.Cost.Value <= Value then
firetouchinterest(c.Touch, player.Character.RightFoot, 1)
firetouchinterest(c.Touch, player.Character.RightFoot, 0)
end
end
end
end
end)
return connection
end
local function spoofEssentials()
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
if b == "WalkSpeed" then
return 16
end
if b == "JumpPower" then
return 50
end
return oldindex(self,b)
end)
end
local function disableLasers()
if not getgenv().player_tycoon then
getgenv().player_tycoon = getTycoonOwned()
return
end
for i, v in pairs(game.Workspace.Tycoons:GetChildren()) do
if v and v ~= getgenv().player_tycoon then
v.Door.ActDoor:Destroy()
end
end
end
local function claimAllWeapons()
for i, v in pairs(game.Workspace.Tycoons:GetChildren()) do
for b, c in pairs(v:GetChildren()) do
local name = c.Name
local new, removed = name:gsub(".?$","")
if c and c:IsA("Model") and ("GearGiver" == new) then
print("weapoon ulala")
if c:FindFirstChild("Neon") then
firetouchinterest(c.Neon, player.Character.UpperTorso, 1)
firetouchinterest(c.Neon, player.Character.UpperTorso, 0)
else
firetouchinterest(c.Touch, player.Character.UpperTorso, 1)
firetouchinterest(c.Touch, player.Character.UpperTorso, 0)
end
end
end
end
end
local function firePlayer(targetDropdw)
claimAllWeapons()
for i, v in pairs(player.Backpack:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("RemoteEvent") then
player.Character.Humanoid:EquipTool(v)
v.RemoteEvent:FireServer(game.Players:FindFirstChild(targetDropdw).Character.HumanoidRootPart.Position)
task.wait(.1)
end
end
end
local function updatePlayerList(targetDropdw)
local list = {}
for i, v in pairs(game.Players:GetPlayers()) do
table.insert(list, v.Name)
end
targetDropdw:Refresh(list)
end
getgenv().player_tycoon = nil
getgenv().auto_collect = false
getgenv().playersInServer = {}
getgenv().auto_buy = false
local TycoonTab = Window:NewTab("Tycoon")
local PlayerTab = Window:NewTab("Player")
local WeaponTab = Window:NewTab("Weapons")
local AutoCollectSection = TycoonTab:NewSection("Auto-Collect")
local AutoBuySection = TycoonTab:NewSection("Auto-Buy")
local SpeedAndPowerSection = PlayerTab:NewSection("Main")
local BullySection = PlayerTab:NewSection("Fighting")
local MiscSection = PlayerTab:NewSection("Misc")
local WeaponsMainSection = WeaponTab:NewSection("Main")
local connection1
local connection12
AutoCollectSection:NewToggle("Auto-Collect", "Collect cash automatically for you.", function(state)
if state then
getgenv().auto_collect = true
connection1, connection12 = autoCollect()
else
getgenv().auto_collect = false
connection1:Disconnect()
if connection12 then
connection12:Disconnect()
end
end
end)
local connection2
AutoBuySection:NewToggle("Auto-Buy", "Will auto-buy the cheapest upgrade.", function(state)
if state then
getgenv().auto_buy = true
connection2 = autoBuy()
else
getgenv().auto_buy = false
connection2:Disconnect()
end
end)
spoofEssentials()
SpeedAndPowerSection:NewSlider("WalkSpeed", "Changes the WalkSpeed.", 350, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
player.Character.Humanoid.WalkSpeed = s
end)
SpeedAndPowerSection:NewSlider("JumpPower", "Changes the JumpPower.", 350, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
player.Character.Humanoid.JumpPower = s
end)
MiscSection:NewButton("Disable All Lasers", "Requires an active tycoon!", function()
disableLasers()
end)
targetDropdw = BullySection:NewDropdown("Choose target", "Select target for ultimate trolling.", {"a", "b", "c"}, function(currentOption)
firePlayer(currentOption)
end)
updatePlayerList(targetDropdw)
game.Players.PlayerAdded:Connect(function(player)
updatePlayerList(targetDropdw)
end)
game.Players.PlayerRemoving:Connect(function(player)
updatePlayerList(targetDropdw)
end)
WeaponsMainSection:NewButton("Claim all Weapons", "Will give you all the available weapons.", function()
claimAllWeapons()
end)