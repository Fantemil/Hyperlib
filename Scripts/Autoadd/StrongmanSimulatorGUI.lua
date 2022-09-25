-- Anti AFK (Roblox-Side) (OutESP V3RM)
pcall(function()
   repeat wait() until game:GetService("Players").LocalPlayer
   for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
       v:Disable()
   end
end)

-- LOAD GUI & LIBRARY --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/CkyR8ePz", true))()
local w = library:CreateWindow('Strongman Simulator')

-- GUI SECTION
w:Section('Created by HamstaGang')

-- GUI Toggles
local FarmHydra = w:Toggle('Farm Hydra', {flag = "FarmHydra"})
local FarmStrength = w:Toggle('Farm Strength', {flag = "FarmStrength"})

-- [[ GUI FUNCTIONS ]] --

function FarmHydra()
   
   -- Local Player
   local Plr = game:GetService("Players").LocalPlayer
   local Char = Plr.Character
   local RootPart = Char.HumanoidRootPart
   local LowerTorso = Char.LowerTorso
   
   -- Game Stuff
   local finish = CFrame.new(-75.377388, 10.0537405, 1464.45337) + Vector3.new(0, 5, 0)
   local Loader = game:GetService("Workspace").BadgeColliders.FarmBadge
   local Hydra_Item = game:GetService("Workspace").Areas["Area6_Medieval"].DraggableItems:FindFirstChild("Hydra")
   
   if Hydra_Item == nil then
       -- We need to load part of the map in.
       RootPart.CFrame = Loader.CFrame
       return true;
   end
   
   local Hydra = Hydra_Item:WaitForChild("InteractionPoint")
   local Proximity = Hydra:FindFirstChild("ProximityPrompt")
   
   -- Teleport and grab Hydra
   RootPart.CFrame = Hydra.CFrame
   wait(0.1)
   Proximity:InputHoldBegin()
   wait()
   Proximity:InputHoldEnd()
   
   -- Teleport us to the finish (I have some nasty hard coded stuff in here.)
   for i=1,3 do
       local drag = game:GetService("Workspace").PlayerDraggables[Plr.UserId]:FindFirstChild("Hydra")
       if drag then
           wait(0.1)
           RootPart.CFrame =  CFrame.new(-75.4448624, 12.5450888, 1275.53699) -- Mid way
           wait(0.1)
           drag.CFrame = finish + Vector3.new(50, 10, 0)
           drag.ExtraWeight.CFrame = finish + Vector3.new(50, 10, 0)
           RootPart.CFrame = drag.CFrame + Vector3.new(50, 5, 0)
           LowerTorso.CFrame = drag.CFrame + Vector3.new(50, 5, 0)
       end
   end
   
   return true; -- Debounce
end

function FarmStrength()
   
   -- Local Player
   local Plr = game:GetService("Players").LocalPlayer
   local Char = Plr.Character
   local RootPart = Char.HumanoidRootPart
   
   -- Game Stuff
   local Gym = game:GetService("Workspace").Areas.Area1.Gym.TrainingEquipment.WorkoutStation.Collider
   local Proximity = Gym.ProximityPrompt
   
   -- Teleport to Weights
   RootPart.CFrame = Gym.CFrame
   wait(0.1)
   
   -- Start Workout
   Proximity:InputHoldBegin()
   wait(0.3)
   Proximity:InputHoldEnd()
   
  while w.flags.FarmStrength do
      wait(0.1)
      game:GetService("ReplicatedStorage")["StrongMan_UpgradeStrength"]:InvokeServer()
  end
   
   -- Jump to end Workout
   Char.Humanoid.Jump = true
end


-- [[ GUI LISTENERS ]] --

-- Farm Hydra
spawn(function()
   while wait() do
       if w.flags.FarmHydra then
           repeat wait() until FarmHydra() == true -- Debounce
       end
   end
end)

-- Farm Strength
spawn(function()
   while wait() do
       if w.flags.FarmStrength then
           FarmStrength()
       end
   end
end)