if game.PlaceId ~= 5534753074 then 
 game:GetService("TeleportService"):Teleport(5534753074, game.Players.LocalPlayer)
end

spawn(function()
 for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do 
  if v.Name == "Shadow" then 
   if v.Parent.Name == "MainFrameHolder" then 
    v.Parent.Parent:Destroy()
   end 
  end 
 end 
end)


for useless, garbage in next,getgc() do
 if getfenv(garbage).script == game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper and typeof(garbage) == "function" then
  for number, value in next, getconstants(garbage) do
   if tonumber(value) == 0.25 then
    setconstant(garbage,number,0)
   elseif tonumber(value) == 0 then
    setconstant(garbage,number,0.25)
   end
  end
 end
end

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/lua-releases/main/uis/boxlib.lua"))()

local win = Lib:New({
 Name = "SPACE SAILORS",
 FolderToSave = "garfieldwarez"
})

local Main = win:Tab("Main")
local Autofarm = Main:Section("Autofarm")


-- Sowd function 
local function fireproximityprompt(Obj, Amount, Skip)
 if Obj.ClassName == "ProximityPrompt" then 
  Amount = Amount or 1
  local PromptTime = Obj.HoldDuration
  if Skip then 
   Obj.HoldDuration = 0
  end
  for i = 1, Amount do 
   Obj:InputHoldBegin()
   if not Skip then 
    wait(Obj.HoldDuration)
   end
   Obj:InputHoldEnd()
  end
  Obj.HoldDuration = PromptTime
 else 
  error("userdata<ProximityPrompt> expected")
 end
end

local function teleport(item)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = item.CFrame 
end

-- Find player lander.
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
 if v.Name == "Lander" and v:FindFirstChild("LanderOwner", true).Value == game.Players.LocalPlayer.Name then 
  print(v.Name.." owned by "..v:FindFirstChild("LanderOwner",true).Value)
  _G.lander = v
 end 
end


local function sellOres()
 if _G.lander.ResourceValues.Storage.Value == 40 then 
  game.StarterGui:SetCore("SendNotification", {
   Title = "Garfield"; 
   Text = "FULL FULL FULL FULL PLEASE SELL. PLEASE SELL. PLEASE SELL";
   Icon = ""; 
   Duration = 5; 
  })
 else
  teleport(_G.lander.LanderAscentStage.Deposit)
  task.wait(0.1)
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
   if v:FindFirstChild("MoneyValue") then 
    print(v.Name)
    v.Parent = game.Players.LocalPlayer.Character
    teleport(_G.lander.LanderAscentStage.Deposit)

    task.wait(0.1)
    fireproximityprompt(_G.lander.LanderAscentStage.Deposit.ProximityPrompt, 1, true)
    v.Parent = game.Players.LocalPlayer.Backpack -- fail safe
   end 
  end
 end
end



local function getOre(name)
 game.Workspace.Gravity = 0 
 -- max ores
 
 
 local Item = game:GetService("Workspace"):FindFirstChild(name)
 teleport(Item)
 fireproximityprompt(Item.Pick, 1, true)
end

-- Noclip
spawn(function()
 game:GetService('RunService').Stepped:connect(function()
  pcall(function()
   if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    game.Players.LocalPlayer.Character.Head.CanCollide = false
    game.Players.LocalPlayer.Character.Torso.CanCollide = false
    game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
    game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
   elseif game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    game.Players.LocalPlayer.Character.Head.CanCollide = false
    game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
    game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
   end
  end)
 end)
end)





-- Ores list 
local Ores = {
 "Lunar Gold",
 "Aluminum",
 "Titanium",
 "Iron",
 "Silicon"
}

local function findValidOre()
 if #game.Players.LocalPlayer.Backpack:GetChildren() >= 7 then 
  sellOres()
 else
  if game.Workspace:FindFirstChild(Ores[1]) then 
   getOre(Ores[1])
  elseif game.Workspace:FindFirstChild(Ores[2]) then 
   getOre(Ores[2])
  elseif game.Workspace:FindFirstChild(Ores[3]) then 
   getOre(Ores[3])
  elseif game.Workspace:FindFirstChild(Ores[4]) then 
   getOre(Ores[4])
  elseif game.Workspace:FindFirstChild(Ores[5]) then 
   getOre(Ores[5])
  else -- go to random spawn point 
   local items = game:GetService("Workspace").Resources:GetChildren()
   local randomItem = items[math.random(1, #items)]
   teleport(randomItem)
  end
 end 
 
end

Autofarm:Toggle("Auto Collect",false,"Toggle",function(t)
 _G.Toggle = t 
end)



Autofarm:Button("Farm one random ore",function()
 findValidOre()
end)

Autofarm:Button("store ores",function()
 sellOres()
end)

Autofarm:Button("Teleport to lander",function()
 teleport(_G.lander.LanderAscentStage.Deposit)
end)

Autofarm:Button("teleport to the sell place",function()
 game:GetService("TeleportService"):Teleport(5515926734, game.Players.LocalPlayer)
end)

while true do 
 if _G.Toggle then 
  pcall(function()
   findValidOre()
  end)
 end
 wait(0.5)
end