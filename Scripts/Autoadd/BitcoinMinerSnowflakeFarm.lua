local snow = false
local algo = false
local clock = false
local boost = false
local crate = false


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Bitcoin Miner") -- Creates the window

local b = w:CreateFolder("Snowflake Farm")
local c = w:CreateFolder("Farms") -- Creates the folder(U will put here your buttons,etc)

b:Toggle("Auto Snowflake", function(bool)
snow = bool
end)

c:Toggle("Auto Algorithm", function(bool)
 algo = bool
end)

c:Toggle("Auto Overclock", function(bool)
 clock = bool
end)

c:Toggle("Auto Boost Star", function(bool)
 boost = bool
end)

c:Toggle("Auto Crates", function(bool)
 crate = bool
end)



b:Slider("Walkspeed",{
 min = 10; -- min value of the slider
 max = 200; -- max value of the slider
 precise = true; -- max 2 decimals
},function(value)
 
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



while true do
 wait()
 local suc, err = pcall(function()
  
  if snow then
   wait()
   
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["a4-SolarisShop"].CFrame
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SnowFlakes.SnowFlake.Part.CFrame
   wait(0.2)
   fireproximityprompt(game:GetService("Workspace").SnowFlakes.SnowFlake.Part.ProximityPrompt)
  end
  
  if algo then
   wait()
   
   local dagger = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.Dagger.Rate.Text, '%d%p%d+')
   local scrypt = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.Scrypt.Rate.Text, '%d%p%d+')
   local sha = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms["SHA-512"].Rate.Text, '%d%p%d+')
   local bloxchain = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.xs.Rate.Text, '%d%p%d+')
      
   if dagger > scrypt and dagger > sha and dagger > bloxchain then
    wait(1)
    local args = {[1] = 2}
    game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))

   end
   
   if scrypt > dagger and scrypt > sha and scrypt > bloxchain then
    wait(1)
   local args = {[1] = 3}
   game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
   end
   
   if sha > dagger and sha > scrypt and sha > bloxchain then
    wait(1)
    local args = {[1] = 1}
    game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
   end
   
   if bloxchain > dagger and bloxchain > scrypt and bloxchain > sha then
    wait(1)
    local args = {[1] = 4}
    game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
   end
  end
  
  if clock then
   local clockpath = game:GetService("Players").LocalPlayer.PlayerGui.Energy.Frame.Overclock.Overclock.Lock.AviTitle
   if clockpath.Visible == false then
   wait()
   game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
   end
  end
  
  if boost then
   local boostpath = game:GetService("Players").LocalPlayer.PlayerGui.Boosts.Bar.TextLabel.Tim
   if boostpath.Text == "" then
    wait(1)
   game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
   end
  end
  
  if crate then
   local normalpath = game:GetService("Players").LocalPlayer.PlayerGui.Crates.Frame.ClmN
   local smallpath = game:GetService("Players").LocalPlayer.PlayerGui.Crates.Frame.ClmS
   if normalpath.Visible == true then
    local args = {[1] = false}
    game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
    end
   if smallpath.Visible == true then
    local args = {[1] = true}
    game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
   end
  end
  
 end)
 if not suc then
  warn(err)
 end
end