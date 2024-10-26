local Path = workspace.Special
local vim = game:GetService('VirtualInputManager');
local lp = game:GetService('Players').LocalPlayer;
function press(keycode)
 vim:SendKeyEvent(true, keycode, false, game)
 task.wait()
 vim:SendKeyEvent(false, keycode, false, game)
end
function buy(itemName, shop)
local args = {
    [1] = itemName,
    [2] = 1,
    [3] = shop
}

game:GetService("ReplicatedStorage").Events.BuyItem:InvokeServer(unpack(args))
end
function Get()
for i, v in Path:GetChildren() do
 local char = workspace.Characters:WaitForChild(lp.Name);
 if v.Name == 'Chest' or v.Name == 'XpCrystal' then
  print("Collecting",v.NameGui.TextLabel.Text)
  char.HumanoidRootPart.CFrame = v.Hitbox.CFrame
  firetouchinterest(char.Head, v.Hitbox, 0)
  task.wait(.5)
 end
end
end
function GetShop(a)
 for i, v in workspace.Interact.NPCs:GetChildren() do
  if v.Name == a then
    return v
  end
 end
end
function GetBestArmor()
 local Highest, Armor = 0, nil
 for i, v in workspace.Interact:GetChildren() do
  if v.Name:lower():find("armor") then
   print(v.ArmorNametag.InfoLabel.Text:split(" ")[2])
   local Level = v.ArmorNametag.InfoLabel.Text:split(" ")[2]
   if Level:find('K') then
    Level = Level:gsub('K', '')
    Level = tonumber(Level) * 1000
   end
   Level = tonumber(Level)
   if Level > Highest then
    Highest = Level
    Armor = v
   end
  end
 end
 return Armor, Highest
end
function EquipBestArmor()
 local Armor, Level = GetBestArmor()
 lp.Character.HumanoidRootPart.CFrame = Armor:FindFirstChildWhichIsA("Part").CFrame
 press(Enum.KeyCode.E)
end
local Gold = lp.leaderstats.Gold.Value

local ShopPrices = {
    ArticShop = {['Subzero Sword']=750*1000}, ItemShop = {['Iron Sword']=125, ['Gold Sword']=250}, 
    KnightShop = {Longsword=10*1000}, MountainShop = {['Earth Sword'] = 500*1000}, 
    OrcShop = {['Virdian Sword'] = 1000, ['Bone Sword'] = 3.75 * 1000}, PirateShop = {Cutlass=25*1000}, 
    SeaShop = {['Otterhead Shortsword'] = 45*1000, ['Abyssal Sword'] = 75*1000, ['Tidal Wave'] = 120*1000}, 
    SkyShop = {['Sky Blade'] = 15*1000}, SkeletonShop = {['Rock Sword'] = 1000*1000}, 
}

local Highest = 0
local Swrd = ''
local SwrdSh = nil
for _, ab in ShopPrices do
 for i, v in ab do
  if v > Highest and Gold > v then
    SwrdSh = GetShop(_)
    Swrd = i
    Highest = v
  end
 end
end
Get()
--EquipBestArmor()
task.wait(1)
--buy(Swrd, SwrdSh)