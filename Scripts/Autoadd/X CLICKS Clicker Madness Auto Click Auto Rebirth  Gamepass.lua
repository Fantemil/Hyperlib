getgenv().autoClick = false
getgenv().autoRebirths = false
getgenv().buyEggs = false
getgenv().unlockAutoRebirth = false
getgenv().unlockPetStorage = false
getgenv().unlockVIP = false
getgenv().unlockSpeed = false
getgenv().unlockExplosiveCursors = false
getgenv().unlockPets = false
getgenv().autoRespawn = false
getgenv().enabledSit = false
getgenv().enabledRedGems = false

local p =  game.Players.LocalPlayer.Name
local remotePath = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices
local clickMod = require(game:GetService("Players")[p].PlayerScripts.Aero.Controllers.UI.Click)

function doClick()
   while getgenv().autoClick == true do  -- or while _G.autotap do
           clickMod:Click()
            wait()
          end
   end
function autoRebirth(rebirthAmount)
       while getgenv().autoRebirths == true do  -- or while _G.Rebirth do
                  remotePath.RebirthService.BuyRebirths:FireServer(rebirthAmount)
                   wait()
               end
          end
function doBuyEggs(eggType)
           while getgenv().buyEggs == true do
               if not getgenv().buyEggs then
                   break end
               remotePath.EggService.Purchase:FireServer(eggType)
               wait()              
            end
      end
function GetExplosiveCusors()
while getgenv().ExplosiveCursors == true do
       clickMod:_tapToAttack()
       wait()
       end
   end
function GetSprint()
   while getgenv().increaseSpeed == true do
       p.Character.Humanoid.WalkSpeed = 32
       wait()
   end
end
function GetVIP()
   local gamepassMod = require(game:GetService("ReplicatedStorage").Aero.Shared.Gamepasses)
   gamepassMod.HasPassOtherwisePrompt = function()
       return
       true end
   end
function GetInfiniteCapacity()
       local petMod = require(game:GetService("Players")[p].PlayerScripts.Aero.Controllers.UI.Pets)
           setconstant(petMod.CalculatePetCapacity, 7, 10000000000000000000000) --25 to 10000000000
   end
function getCurrentPlayerPOS()
       local plyr = game.Players.LocalPlayer
           if plyr.Character then
        return plyr.Character.HumanoidRootPart.Position
       end
       return false
   end

  function teleportTO(placeCFrame)
       local plyr = game.Players.LocalPlayer
           if plyr.Character then
               plyr.Character.HumanoidRootPart.CFrame = placeCFrame
       end
   end

   function teleportWorld(world)
       if game:GetService("Workspace").Worlds:FindFirstChild(world) then
           teleportTO(game:GetService("Workspace").Worlds[world].Teleport.CFrame)
       end
   end

   function teleport_to_gem()
       local plyr = game.Players.LocalPlayer
       if plyr.Character then
       plyr.Character.HumanoidRootPart.CFrame = CFrame.new(549, 32, -175)
       end
   end
   function teleport_to_board()
       local plyr = game.Players.LocalPlayer
       if plyr.Character then
           plyr.Character.HumanoidRootPart.CFrame = CFrame.new(797,9,-262)
       end
   end

function doRespawn()
   while getgenv().autoRespawn == true do
           while wait() do
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(549, 32, -175)
       wait()
       end
   end
end
 
function doSit()
       while getgenv().enabledSit == true do
           if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
               game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = true
           end
           if getgenv().enabledSit == false then
               game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
           end
       end
   end

_character = game:GetService("Players").LocalPlayer.Character
_humanoidRP = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

function teleportRedGems()
     for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                   if _character and _humanoidRP and v:FindFirstChild("HumanoidRootPart")  then
               _humanoidRP.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame
                   end
               end
           end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Clicker Madness GUI")

local b = w:CreateFolder("Auto Click&Rebirth")

local c = w:CreateFolder("Gamepasses")

local e  = w:CreateFolder("Upgrades")

local f = w:CreateFolder("Worlds Teleport")

local g = w:CreateFolder("Extras")


b:DestroyGui()
b:ColorPicker("ColorPicker", Color3.fromRGB(255,0,0),function(color) --Default color
   print(color)
end)

b:Toggle("Auto Click",function(bool)
   getgenv().autoClick = bool
   print("Auto Click is: ", bool)
   if bool then
           doClick()
   end
end)

local selectedRebirth
b:Dropdown("Rebirth Amount",{"1", "10","100","1000","10000","100000","1000000","10000000","100000000","1000000000","10000000000","100000000000","1000000000000","10000000000000", "100000000000000", "1000000000000000","10000000000000000","100000000000000000", "1000000000000000000", "10000000000000000000","100000000000000000000","1000000000000000000000", "10000000000000000000000","100000000000000000000000", "1000000000000000000000000", "10000000000000000000000000","100000000000000000000000000","1000000000000000000000000000", "10000000000000000000000000000","100000000000000000000000000000", "1000000000000000000000000000000","10000000000000000000000000000000","100000000000000000000000000000000","1000000000000000000000000000000000","10000000000000000000000000000000000","100000000000000000000000000000000000","1000000000000000000000000000000000000","10000000000000000000000000000000000000","100000000000000000000000000000000000000","1000000000000000000000000000000000000000","10000000000000000000000000000000000000000","100000000000000000000000000000000000000000","1000000000000000000000000000000000000000000","10000000000000000000000000000000000000000000","100000000000000000000000000000000000000000000","1000000000000000000000000000000000000000000000","10000000000000000000000000000000000000000000000","100000000000000000000000000000000000000000000000","1000000000000000000000000000000000000000000000000","10000000000000000000000000000000000000000000000000","100000000000000000000000000000000000000000000000000","1000000000000000000000000000000000000000000000000000","10000000000000000000000000000000000000000000000000000","1000000000000000000000000000000000000000000000000000000","10000000000000000000000000000000000000000000000000000000","100000000000000000000000000000000000000000000000000000000","100000000000000000000000000000000000000000000000000000000","1000000000000000000000000000000000000000000000000000000000"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   selectedRebirth = value
   print(value)
end)

b:Toggle("Auto Rebirth",function(bool)
   getgenv().autoRebirths = bool
    print("Auto Rebirth is: ", bool)
    if bool and selectedRebirth then
            autoRebirth(selectedRebirth)
    end
end)

c:Toggle("VIP", function(bool)
     getgenv().unlockVIP = bool
    print("Unlock VIP: ", bool)
    if bool then
      GetVIP()
    end
end)
c:Toggle("Sprint", function(bool)
   getgenv().unlockSpeed = bool
       print("Sprint is:", bool)
       if bool then
           GetSprint()
       end
   end)
c:Toggle("Explosive Cursors",  function(bool)
   getgenv().unlockExplosiveCursors = bool
   print("Explosive Cursors is:", bool)
       if bool then
          GetExplosiveCusors()
       end
end)
c:Toggle("Unlimited Pets",function(bool)
   getgenv().unlockPets = bool
   print("Unlimited Pets,", bool)
   if bool then
       GetInfiniteCapacity()
       end
end)
c:Toggle("Auto Rebirth", function(bool)
   getgenv().unlockAutoRebirth = bool
   print("Unlock AutoRebirth is: ", bool)
       if bool then
       GetVIP()
   end
end)

e:Slider("WalkSpeed",{
   min = 16; -- min value of the slider
   max = 1000; -- max value of the slider
   precise = true; -- max 2 decimals
},function(value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
e:Slider("JumpPower",{
   min = 50; -- min value of the slider
   max = 2000; -- max value of the slider
   precise = true; -- max 2 decimals
},function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
e:Slider("Gravity",{
   min = 0;
   max = 196.6;
   precise = true;
}, function(value)
   game:GetService("Workspace").Gravity = value
end)
local selectedWorld

f:Dropdown("Worlds",{"Desert","Winter","Lava","Toxic","Ocean", "Candy", "Space", "Forest", "City", "Blocks", "Future", "Infinity", "Moon", "Fire","Dominus", "Storm"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   selectedWorld = value
   print(value)
end)
f:Button("Teleport Selected",function()
   if selectedWorld then
       teleportWorld(selectedWorld)
   end
end)
g:Toggle("Respawn Gem", function(bool)
   getgenv().autoRespawn = bool
   print("Respawn Gem is:", bool)
   if bool then
   doRespawn()
   end
end)
g:Button("Gem Location", function()
   teleport_to_gem()
end)
g:Button("Keyboard Location", function()
   teleport_to_board()
end)

g:Button("Dxcord:gg/r25dBN7XZC", function()
   print('Please type it out in the browser.')
end)

h:Slider("Hipheight",{
   min = 2.64;
   max = 100;
}, function(value)
   game:GetService("Players").p.Character.Humanoid.HipHeight = value
end)
g:Toggle("Sit", function(bool)
   getgenv().enabledSit = bool
   print("Sit is set to:", bool)
   if bool then
       doSit()
   end
end)
g:Toggle("Teleport Red Gems", function(bool)
   getgenv().tpRedGems = bool
   print("Teleport Red Gems is:", bool)
   if bool then
       teleportRedGems()
   end
end)
--[[b:Label("Pretty Useless NGL",{
   TextSize = 25; -- Self Explaining
   TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
   BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
   
})

b:Button("Button",function()
   print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
   shared.toggle = bool
   print(shared.toggle)
end)

b:Slider("Slider",{
   min = 10; -- min value of the slider
   max = 50; -- max value of the slider
   precise = true; -- max 2 decimals
},function(value)
   print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
   print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
   print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
   print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
   print(value)
end)
--]]