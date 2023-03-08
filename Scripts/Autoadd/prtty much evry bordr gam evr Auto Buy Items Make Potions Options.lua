local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("pmebge")

local b = w:CreateFolder("Teleports")

local c = w:CreateFolder("Shop")

local d = w:CreateFolder("Potion Materials")

local e = w:CreateFolder("Make Potions")

local f = w:CreateFolder("Misc")

b:Button("Bricklandia(good)",function()
   Bricklandia(game:GetService("Workspace").Map.Bricklandia.BredStand.Part.CFrame)
end)


b:Button("Farlands(bad)",function()
   Farlands()
end)


b:Button("BrickGod",function()
   Brickgod(game:GetService("Workspace").Interactables.Gods.BrickGod.Head.CFrame)
end)


b:Button("Evilbrickgod",function()
   Evilbrickgod(game:GetService("Workspace").Interactables.Gods.EvilBrickGod.Head.CFrame)
end)


c:Button("Bread(5 coin)",function()
   bread()
end)


c:Button("axe(5 coin)",function()
   axe()
end)


c:Button("pickaxe(10 coin)",function()
   pickaxe()
end)


c:Button("sword(40 coin)",function()
   sword()
end)


c:Button("shield(100 coin)",function()
   shield()
end)


c:Button("bow(160 coin)",function()
   bow()
end)


c:Button("bomb(200 coin)",function()
   bomb()
end)

c:Button("anti air turret(200 coin)",function()
   antiair()
end)

d:Button("Apple",function()
   Apple()
end)

d:Button("Berybush",function()
   Berybush()
end)

d:Button("Caterpillar",function()
   Caterpillar()
end)

d:Button("Pinkflower",function()
   Flower()
end)

d:Button("Bone",function()
   Boner()
end)

d:Button("Ghostbrick",function()
   ghostbrick()
end)

d:Button("ShinyBar",function()
   shinybar()
end)

d:Button("MoonRock",function()
   moonyrock()
end)

e:Button("Jump(8,4,2)",function()
   Jumppower()
end)

e:Button("Heal(1,4,5)",function()
   Heal()
end)

e:Button("Speed(8,7,5)",function()
   Speed()
end)

e:Button("Invis(3,4,6)",function()
   Invis()
end)

e:Button("Buff(3,7,8)",function()
   Armor()
end)

e:Button("Stam(4,1,3,7)",function()
   Stam()
end)

e:Button("Disguise(2,7,5,4)",function()
   Spy()
end)

e:Button("Hunger(2,3,1)",function()
   BigStomach()
end)

f:Button("(Potion no. means",function()
   Print("Made by FireIsTheBest")
end)

f:Button("Potion mats list.)",function()
   Print("Made by FireIsTheBest")
end)

f:Button("V3rm FireIsTheBest",function()
   Print("Made by FireIsTheBest")
end)


function Bricklandia(Gamepos)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Gamepos
end


function Farlands()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(679.499878, 5.49977112, -91.4998779, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  character.CFrame = CFramepos
end


function Brickgod(Gamepos)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Gamepos
end


function Evilbrickgod(Gamepos)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Gamepos
end



function bread()
   local args = {[1] = "bred",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end



function axe()
   local args = {[1] = "ax",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function pickaxe()
   local args = {[1] = "pickax",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function sword()
   local args = {[1] = "sword",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function shield()
   local args = {[1] = "shield",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function bow()
   local args = {[1] = "bow",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function bomb()
   local args = {[1] = "bomb",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function antiair()
   local args = {[1] = "ant air turret",[2] = true}

   game:GetService("ReplicatedStorage").Remotes.Shop:FireServer(unpack(args))
end


function Apple()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(-154.641754, 4.25013733, -13.8129978, 0.499938965, -0.866060615, -1.18613243e-05, -1.18613243e-05, -2.05039978e-05, 1, -0.866060615, -0.499938965, -2.05039978e-05)
  character.CFrame = CFramepos
end


function Berybush()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(513.875, 38.1247711, 65.1251221, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  character.CFrame = CFramepos
end



function Caterpillar()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(47.9999542, 14.5000801, -11.5005035, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  character.CFrame = CFramepos
end


function Flower()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(-4.43432617, 4.60013723, -117.566162, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  character.CFrame = CFramepos
end


function Boner()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(-360.999695, 14.249917, 57.7503662, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  character.CFrame = CFramepos
end


function ghostbrick()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(553.499878, 4.49977112, -146.499878, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  character.CFrame = CFramepos
end


function shinybar()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(0, 1.50021338, -19.5004883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  character.CFrame = CFramepos
end


function moonyrock()
  local character = game.Players.LocalPlayer.Character.HumanoidRootPart
  local CFramepos = CFrame.new(-34.4998779, 6.25013733, -205.500488, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  character.CFrame = CFramepos
end


function Jumppower()
  local args = {[1] = "JumpPower"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Heal()
  local args = {[1] = "Heal"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Speed()
  local args = {[1] = "Speed"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Invis()
  local args = {[1] = "Invisible"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Armor()
  local args = {[1] = "Armor"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Stam()
  local args = {[1] = "Stamina"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Spy()
  local args = {[1] = "Disguise"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end


function Bigstomach()
  local args = {[1] = "FullBelly"}

  game:GetService("ReplicatedStorage").Remotes.BrewPotion:FireServer(unpack(args))
end

f:DestroyGui()