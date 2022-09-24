--HamstaGang -w- here.. Wrote this script a bit different than I normally write scripts. Just trying new things.


-- Enable/Disable
_G.Farming = true;

-- Minigame stuff
local Minigame = game:GetService("Workspace").PloggingMinigame
local start = Minigame.PloggingStartDisplay.Prompt
local startprompt = Minigame.PloggingStartDisplay.Prompt.PloggingStartPrompt
local Machine = CFrame.new(232.658676, 148.542755, -404.263885, 0.351199687, 0, -0.936300576, 0, 1, 0, 0.936300576, 0, 0.351199687)
local MachinePrompt = Minigame.machine.Center.MachinePrompt
local Trash = game:GetService("Workspace").Trash

-- LocalPlayer Stuff
local Plr = game:GetService("Players").LocalPlayer
local char = Plr.Character
local root = char.HumanoidRootPart


local function StartMinigame()
   root.CFrame = start.CFrame
   wait(0.5);
   startprompt.HoldDuration = 0; -- lol
   fireproximityprompt(startprompt);
   wait(0.5);
   
   return true;
end

local function GrabTrash()
   for i,v in pairs(Trash:GetChildren()) do
       if i > 6 then break; end -- we got enough
           
       local Name = v.Name
       local Prompt = v[Name]["PloggingItemPrompt"]
       
       Prompt.HoldDuration = 0; -- lol
       root.CFrame = v[Name].CFrame;
       wait(0.2);
       fireproximityprompt(Prompt);
       wait(0.2);
   end
   
   return true;
end

local function Recycle()
  root.CFrame = Machine;
  wait(0.5);
  fireproximityprompt(MachinePrompt);
  wait(7)
 
  return true;
end

while _G.Farming do
   repeat wait() until StartMinigame();
   repeat wait() until GrabTrash();
   repeat wait() until Recycle();
end