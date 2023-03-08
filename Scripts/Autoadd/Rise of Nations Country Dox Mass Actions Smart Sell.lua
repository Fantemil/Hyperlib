_G.ReserveFlow = 1
_G.MaxBuildings = 1
_G.ESPToggle = false
_G.AlertToggle = false
_G.StopActions = false
_G.SelectedCountry = [==[]==]
_G.SellResource = [==[Electronics]==]
_G.SelectedBuilding = [==[Electronics Factory]==]
_G.WarType = [==[Conquest]==]
_G.SelectedCities = {}
local Ignored = {}

Ignored.Alerts  = {
["Trade accepted"] = true,
["Trade offer declined"] = true,
["Trade Cancelled"] = true,
["Alliance declined"] = true,
["Modifier Lost!"] = true,
["New Modifier!"] = true,
["Trade Declined"] = true,
["Trade declined"] = true,
["Faction Disbanded"] = true,
["Independence!"] = true,
["War Justified"] = true,
["Truce Ended"] = true,
["Puppet request declined"] = true,
["Puppet request accepted"] = true,
}

Ignored.Resources = {
["Electronics"] = true,
["Consumer Goods"] = true,
["Fertilizer]"] = true,
["Motor Parts"] = true,
["Aircraft Parts"] = true,
["Oil"] = true,
}

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
local Window = Gui:CreateWindow([==[Rise of Nations]==])
local Folder = Window:CreateFolder([==[Sell Bot]==])
local FolderBuild = Window:CreateFolder([==[Build Bot]==])
local FolderMass = Window:CreateFolder([==[Mass Actions]==])
local FolderCountry = Window:CreateFolder([==[Country Dox]==])
local FolderMisc = Window:CreateFolder([==[Misc]==])
local GetChildren = game.GetChildren
local FirstChild = game.FindFirstChild
local RunService = game.RunService
local GameGui = game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame
local ReplicatedStorage = game.ReplicatedStorage
local Resources = ReplicatedStorage.Assets.Resources
local Units = workspace.Units
local Countries = workspace.Countries
local CountryData = workspace.CountryData
local ManageAlliance = workspace.GameManager.ManageAlliance
local CreateBuilding = workspace.GameManager.CreateBuilding
local JustifyWar = workspace.GameManager.JustifyWar
local CamVal = Enum.RenderPriority.Camera.Value
local BasePlate = workspace.Baseplate.Cities
local FunctionDump = workspace.FunctionDump
local GetRevenue = require(FunctionDump.ValueCalc.CountryRevenue)
local GetExpenses = require(FunctionDump.ValueCalc.CountryExpenses)
local GetCitiesComposition = require(FunctionDump.ValueCalc.GetCities).Composition
local DoxedCountryBalance, DoxedCountryMoney, DoxedCountryPopulation, DropDown,
DoxedCountryStability, DoxedCountryManpower, DoxedCountryWarExhaustion, FolderDox, DoxedCountryStats

local FolderCountryInfo = {TextSize = 15, TextColor = _G.MainTextColor, BgColor = _G.SecondaryColor}
local TradeData = {Sell = {[1] = [==[]==], [2] = [==[]==], [3] = 0, [4] = 1, [5] = [==[]==]}}
local ResourcesTbl = {Names = {}, Data = {}}
local MinedResources = {Names = {}}
local WarTypes = {
"Conquest",
"Subjugate",
"Liberation"
}
local Buildings = {
"Electronics Factory",
"Steel ManuFactory",
"Aircraft Manufactory",
"Fertilizer Factory",
"Motor Factory",
"Civilian Factory",
"Airport",
"Recruitment Center",
"Develop City",
"Fortifications",
"Mines"
}

for _,v in next, GetChildren(Resources) do
local BuyPrice, SellPrice = v.Value, v.Value * .8
ResourcesTbl.Data[v.Name] = {BuyPrice = 0, SellPrice = 0}
ResourcesTbl.Data[v.Name].BuyPrice = math.floor(BuyPrice)
ResourcesTbl.Data[v.Name].SellPrice = math.floor(SellPrice)
table.insert(ResourcesTbl.Names, v.Name)
if not Ignored.Resources[v.Name] then MinedResources.Names[v.Name] = true end
end

table.sort(WarTypes, function(a,b) return a < b end)
table.sort(Buildings, function(a,b) return a < b end)
table.sort(ResourcesTbl.Names, function(a,b) return a < b end)

local function ToggleTags()
for _,v in next, GetChildren(Units) do
   local Tag = FirstChild(v, [==[Tag]==])
   if Tag then Tag.Enabled = true end
end
end

local function GetMyCountry()
local Country = game.Players.LocalPlayer.leaderstats.Country.Value

return Country
end

local function GetBalance(Country)
local Balance = tonumber(GetRevenue(Country) - GetExpenses(Country))

return Balance
end

local function GetResourceFlow(Resource)
local Flow = CountryData[GetMyCountry()].Resources[Resource].Flow.Value

return Flow
end

local function GetAI()
local AI = {Names = {}}

for _,v in next, GetChildren(Countries) do
   local Name = v.Name
   local Len = string.len(Name) - 2
   local Subbed = string.sub(Name, 1, Len)

   if string.match(Name, [==[AI]==], Len) then
     table.insert(AI.Names, Subbed)
   end
end

return AI
end

local function RemoveTrades(Resource)
local Trades = CountryData[GetMyCountry()].Resources[Resource].Trade
if not GetChildren(Trades) then return end

for _,v in next, GetChildren(Trades) do
   ManageAlliance:FireServer(v.Name, [==[TradeCancel]==], Resource)
   task.wait(1)
end

task.wait(5)
end

local function Sell()
RemoveTrades(_G.SellResource)

local AI = GetAI().Names
local ResourceSellPrice = ResourcesTbl.Data[_G.SellResource].SellPrice
local ResourceFlow = GetResourceFlow(_G.SellResource)
local Counter = 0
local SellAmount

table.sort(AI, function(a,b) return GetBalance(a) > GetBalance(b) end)

for _,v in ipairs(AI) do
   local CountriesBalance = GetBalance(v)
   Counter = Counter + 2
   task.wait(Counter)

   if ResourceFlow <= _G.ReserveFlow then break end

   for i = 1, ResourceFlow do
     if ResourceSellPrice * i <= CountriesBalance * .75 then
       SellAmount = i
     end
   end

   ResourceFlow = ResourceFlow - SellAmount
   TradeData.Sell[2] = [==[Sell]==]
   TradeData.Sell[3] = SellAmount - _G.ReserveFlow
   TradeData.Sell[4] = 1
   TradeData.Sell[5] = [==[Trade]==]

   ManageAlliance:FireServer(v, [==[ResourceTrade]==], TradeData.Sell)
end
end

local function GetCapital(Country)
local Capital = CountryData[Country]["Capital"].Value

return Capital
end

local function GetOtherCountries()
local CountryTbl = {}

for _,v in next, GetChildren(BasePlate) do
   local Capital = GetCapital(v.Name)
   Capital = FirstChild(v, tostring(Capital))

   if Capital and v.Name ~= BasePlate[GetMyCountry()].Name then
     table.insert(CountryTbl, v)
   end
end

return CountryTbl
end

local function GetPlayerCountries()
local CountryTbl =  {}
local AI = GetAI().Names

for _,v in next, GetChildren(BasePlate) do
   if not (table.find(AI, v.Name) and v.Name ~= BasePlate[GetMyCountry()].Name) then
     table.insert(CountryTbl, v)
   end
end

return CountryTbl
end

local function GetCapturedCounties()
local CountriesComposition = GetCitiesComposition(GetMyCountry())
local Captured = {}

for i,_ in next, CountriesComposition do
   table.insert(Captured, i)
end

table.sort(Captured, function(a,b) return a < b end)

return Captured
end

local function GetMyCities(Country)
local Selected = GetCitiesComposition(GetMyCountry())[Country]

return Selected
end

local function GetAllMyCities()
local Cities = {}

   for _,v in next, GetChildren(BasePlate[GetMyCountry()]) do
     table.insert(Cities, v)
   end

return Cities
end

local function HasBuilding(City, Building)
if FirstChild(City.Buildings, Building) then
   return true
else
   return false
end
end

local function MakeBuilding(Building, Cities, All)
Cities = Cities or _G.SelectedCities
local Counter = 0

for _,v in next, Cities do
   local City = BasePlate[GetMyCountry()][v.Name]
   if not HasBuilding(City, Building) then
     if not All then if Counter >= (_G.MaxBuildings) then break end end
     Counter = Counter + 1
     CreateBuilding:FireServer({City}, Building)
   end
end
end

local function SmartMine(All, Cities)
Cities = Cities or _G.SelectedCities
local Mineable = MinedResources.Names
local Counter = 0

for _,v in next, Cities do
   local City = BasePlate[GetMyCountry()][v.Name]
   if not HasBuilding(City, [==[Mines]==]) then if not All then if Counter >= (_G.MaxBuildings) then break end end
     for _,v2 in next, GetChildren(City.Resources) do
       if Mineable[v2.Name] then
         Counter = Counter + 1
         CreateBuilding:FireServer({City}, [==[Mines]==])
         break
       end
     end
   end
end
end

local function SortCountriesByPosition()
local AI = GetAI().Names
local CountryTbl = {}

for _,v in next, AI do
   if BasePlate[v] then table.insert(CountryTbl, BasePlate[v]) end
end

table.sort(CountryTbl, function(a,b)
   local MyCapital, ACapital, BCapital = GetCapital(GetMyCountry()), GetCapital(a.Name), GetCapital(b.Name)
   MyCapital, ACapital, BCapital = BasePlate[GetMyCountry()][tostring(MyCapital)].Position, BasePlate[a.Name][tostring(ACapital)].Position, BasePlate[b.Name][tostring(BCapital)].Position

   return math.round((MyCapital - ACapital).Magnitude) < math.round((MyCapital - BCapital).Magnitude)
end)

return CountryTbl
end

local function SortCountriesByAlphabet()
local CountryTbl = GetOtherCountries()

table.sort(CountryTbl, function(a,b) return a.Name < b.Name end)

return CountryTbl
end

local function Action(Remote, Args)
local CountryTbl
if table.find(WarTypes, Args[1])then
   CountryTbl = SortCountriesByPosition()
else
   CountryTbl = GetPlayerCountries()
end

local Counter = 0
_G.StopActions = false

for _,v in next, CountryTbl do
   if _G.StopActions == true then print[==[Stopping Mass Actions]==] break end
   task.wait(Counter)

   if Args[1] == _G.WarType then
     Counter = Counter + 5
     print(string.format([==[Justifying war on: %s]==], v.Name))
   else
     Counter = Counter + 1
   end

   if Args[2] then
     Remote:FireServer(v.Name, Args[1], Args[2])
   elseif Args[1] then
     Remote:FireServer(v.Name, Args[1])
   end
end
end

local function DoxedStats(Country)
local Money, Population = CountryData[Country].Economy.Balance.Value, CountryData[Country].Population.Value
local Manpower, ManpowerMax = CountryData[Country].Manpower.Value.X, CountryData[Country].Manpower.Value.Z
local Stability, StabilityMax, StabilityChange = math.round(CountryData[Country].Data.Stability.Value), math.round(CountryData[Country].Data.Stability.Goal.Value), math.round(CountryData[Country].Data.Stability.Change.Value)
local WarExhaustion, WarExhaustionChange = CountryData[Country].Power.WarExhaustion.Value, CountryData[Country].Power.WarExhaustion.Increase.Value

DoxedCountryMoney:Refresh([[Money: ]] .. Money)
DoxedCountryBalance:Refresh([[Balance: ]] .. tostring(GetBalance(Country)))
DoxedCountryPopulation:Refresh([[Population: ]] .. Population)
DoxedCountryManpower:Refresh(string.format([==[%s: %d / %d]==], [==[Manpower]==], Manpower, ManpowerMax))

if WarExhaustionChange >= 0 then
   local str = string.format([==[%s: %.3f +%.3f]==], [==[War Exhaustion]==], WarExhaustion, WarExhaustionChange)
   DoxedCountryWarExhaustion:Refresh(str)
else
   local str = string.format([==[%s: %.3f %.3f]==], [==[War Exhaustion]==], WarExhaustion, WarExhaustionChange)
   DoxedCountryWarExhaustion:Refresh(str)
end

if StabilityChange >= 0 then
   local str = string.format([==[%s: %s / %s +%.3f]==], [==[Stability]==], Stability, StabilityMax, StabilityChange)
   DoxedCountryStability:Refresh(str)
else
   local str = string.format([==[%s: %s / %s %.3f]==], [==[Stability]==], Stability, StabilityMax, StabilityChange)
   DoxedCountryStability:Refresh(str)
end
end

RunService:BindToRenderStep([==[Unit ESP]==], CamVal, function()
if not _G.ESPToggle then return end
task.spawn(ToggleTags)
end)

GameGui.ChildAdded:Connect(function(Child)
if ( _G.AlertToggle and Child.Name == [==[AlertSample]==] ) then
   local Title = FirstChild(Child, [==[Title]==])
   if Title and Ignored.Alerts[Title.Text] then task.wait(0.1) Child:Destroy() end
end
end)

_G.CapturedCountries = GetCapturedCounties()

Folder:Dropdown([==[Resources]==],ResourcesTbl.Names,true,function(Val)
_G.SellResource = Val
TradeData.Sell[1] = tostring(Val)

return Val
end)

Folder:Slider([==[Reserve Flow]==],{min = 1, max = 100, precise = false},function(Val)
_G.ReserveFlow = Val

return Val
end)

Folder:Button([==[Send]==],function()
task.spawn(Sell)
end)

FolderMisc:Toggle([==[Unit ESP]==],function(Bool)
_G.ESPToggle = Bool

return Bool
end)

FolderMisc:Toggle([==[Clear Alerts]==],function(Bool)
_G.AlertToggle = Bool

return Bool
end)

DropDown = FolderBuild:Dropdown([==[Country]==],GetCapturedCounties(),true,function(Val)
_G.CapturedCountries = GetCapturedCounties()
_G.SelectedCountry = Val
_G.SelectedCities = GetMyCities(_G.SelectedCountry)

return Val
end)

FolderBuild:Button([==[Refresh Dropdown]==],function()
DropDown:Refresh(GetCapturedCounties())
end)

FolderBuild:Dropdown([==[Building]==],Buildings,true,function(Val)
_G.SelectedBuilding = Val

return Val
end)

FolderBuild:Slider([==[Max Amount]==],{min = 1, max = 1000, precise = false},function(Val)
_G.MaxBuildings = Val

return Val
end)

FolderBuild:Button([==[Build]==],function()
if _G.SelectedBuilding == [==[Mines]==] then
   task.spawn(SmartMine())
else
   task.spawn(MakeBuilding(_G.SelectedBuilding))
end
end)

FolderBuild:Button([==[Build All Cities]==],function()
local Cities = GetAllMyCities()
if _G.SelectedBuilding == [==[Mines]==] then
   task.spawn(SmartMine(true, Cities))
else
   task.spawn(MakeBuilding(_G.SelectedBuilding, Cities, true))
end
end)

FolderMass:Dropdown([==[War Type]==],WarTypes,true,function(Val)
_G.WarType = Val

return Val
end)

FolderMass:Button([==[Mass Justify War AI]==],function()
task.spawn(Action(JustifyWar, {_G.WarType}))
end)

FolderMass:Button([==[Mass Ally Players]==],function()
task.spawn(Action(ManageAlliance, {[==[SendRequest]==]}))
end)

FolderMass:Button([==[Mass Puppet Players]==],function()
task.spawn(Action(ManageAlliance, {[==[SendRequest]==], [==[PuppetRequest]==]}))
end)

FolderMass:Button([==[Stop Sending]==],function()
_G.StopActions = true
end)

FolderDox = FolderCountry:Dropdown([==[Country]==],SortCountriesByAlphabet(),true,function(Val)
DoxedCountryStats = function() DoxedStats(Val) end
DoxedCountryStats()

return Val
end)

DoxedCountryMoney = FolderCountry:Label([==[Select Country For Info]==], FolderCountryInfo)
DoxedCountryBalance = FolderCountry:Label([==[]==], FolderCountryInfo)
DoxedCountryPopulation = FolderCountry:Label([==[]==], FolderCountryInfo)
DoxedCountryManpower = FolderCountry:Label([==[]==], FolderCountryInfo)
DoxedCountryStability = FolderCountry:Label([==[]==], FolderCountryInfo)
DoxedCountryWarExhaustion = FolderCountry:Label([==[]==], FolderCountryInfo)

FolderCountry:Button([==[Refresh]==],function()
FolderDox:Refresh(SortCountriesByAlphabet())
DoxedCountryStats()
end)