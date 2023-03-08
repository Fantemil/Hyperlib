_G.AutoUpgrade = false
_G.Init = _G.Init or false

local Gui = loadstring(game:HttpGet([==[https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3]==]))()
_G.MainColor = Color3.fromRGB(48,48,48)
_G.SecondaryColor = Color3.fromRGB(48,48,48)
_G.TertiaryColor = Color3.fromRGB(32,32,32)
_G.ArrowColor = Color3.fromRGB(255,255,255)
_G.MainTextColor = Color3.fromRGB(255,255,255)
_G.PointerColor = Color3.fromRGB(255,255,255)
_G.ButtonTextColor = Color3.fromRGB(255,255,255)
_G.SliderColor = Color3.fromRGB(128,0,0)
_G.ButtonColor = Color3.fromRGB(48,48,48)
_G.ToggleColor = Color3.fromRGB(48,48,48)
_G.DraggerCircleColor = Color3.fromRGB(255,255,255)
_G.BindColor3 = Color3.fromRGB(48,48,48)
local Window = Gui:CreateWindow([==[All Star Tower Defense]==])
local FolderAuto = Window:CreateFolder([==[Misc]==])

local LocalPlayer = game.Players.LocalPlayer
local GetChildren = game.GetChildren
local Remotes = game.ReplicatedStorage.Remotes
local GetStats = require(LocalPlayer.Backpack.Framework.CachedStats).getstat
local Unit = workspace.Unit

local Me = {}
local Units = {}
Units.Total = {}

Units.SortByHighCost = function(a,b)
 local Values = {A = a.UpgradeTag.Value + 1, B = b.UpgradeTag.Value + 1}

 return GetStats(a.Name).Upgrade[Values.A].Cost > GetStats(b.Name).Upgrade[Values.B].Cost
end

Units.CanBuy = function(obj)
 local UpgradeValue = obj.UpgradeTag.Value + 1

 if not string.find(tostring(obj.Owner.Value), LocalPlayer.Name)
 or (UpgradeValue >= (obj.MaxUpgradeTag.Value + 1))
 or (Me.GetMoney() < GetStats(obj.Name).Upgrade[UpgradeValue].Cost)
 then return false end

 return true
end

Units.Construct = function(obj)
 local CanBuy = Units.CanBuy(obj)

 if not CanBuy
 then return end

 table.insert(Units.Total, obj)
end

Units.GetUpgradable = function()
 table.clear(Units.Total)

 for _,v in next, GetChildren(Unit) do
   Units.Construct(v)
 end

 table.sort(Units.Total, Units.SortByHighCost)

 return Units.Total[1]
end

Me.GetMoney = function()
 local Money = LocalPlayer.Money.Value

 return Money
end

Me.AutoUpgrade = function()
 if not _G.AutoUpgrade
 then return end

 local Args = {}
 Args[1], Args[2] = [==[Upgrade]==], Units.GetUpgradable()

 if not Args[2]
 then return end

 Remotes.Input:FireServer(Args[1], Args[2])
end

Me.Init = function()
 if not _G.Init
 then _G.Init = true

   while true do
     if _G.AutoUpgrade
     then Me.AutoUpgrade() end

     task.wait(5)
   end
 end
end

FolderAuto:Toggle([==[Auto Upgrade]==], function(Bool)
 _G.AutoUpgrade = Bool

 return Bool
end)

Me.Init()