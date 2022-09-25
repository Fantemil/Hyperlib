game:GetService("Workspace")[game.Players.LocalPlayer.Name].Anticheat.Disabled = true
print("Synth's Gift Autofarm Loaded")
print("DONT MOVE FOR 10 SECONDS")
wait(10)
_G.enabled = true -- Enable the autofarm

-- Services --
local workspace = game:GetService("Workspace")
local gifts = workspace.Gifts
local player = game:GetService("Players").LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()
local hum = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")
local hrp = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart")
local openedGifts = {}
print("Variables loaded.")

while _G.enabled do
   if #gifts:GetChildren() > 0 and hrp and hum and hum.Health > 0 then -- Makes sure that there are gifts spawned, and that you are alive.
       for i, v in pairs(gifts:GetChildren()) do -- Loops through current gifts.
           print("Found a present!")
           wait(0.75)
           hrp.CFrame = v.CFrame-- Teleports your player to the gifts.
       end
   elseif hum.Health == 0 then
       wait(3)
   else
       print("Scanning for presents, none available.")
       hrp.CFrame = workspace.Structure.CandyLeaderboard.CFrame
   end
   wait(0.7) -- Time it takes to check the gifs.
end