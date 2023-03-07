-- Toggle
if _G.Enable == true then
   _G.Enable = false
else
   _G.Enable = true
end

-- Dependencies
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService('ReplicatedStorage')

-- Functions
local function HasHumanoid (Player)
   return Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')
end

local function GetHumanoid (Player)
   return Player.Character:FindFirstChild('HumanoidRootPart')
end

local function KillPlayer (Player)
   local FireRocket = ReplicatedStorage.Events.FireRocket
   local RocketHit = ReplicatedStorage.Events.RocketHit
   
   if HasHumanoid(LocalPlayer) and HasHumanoid(Player) and LocalPlayer.Character:FindFirstChild('Suit') then
       local Humanoid = GetHumanoid(Player)
       
       FireRocket:InvokeServer({ hand = LocalPlayer.Character.Suit.RightHand })
       
       workspace.Effects:WaitForChild('rocket')
       
       for _ = 1, 10 do
           RocketHit:FireServer({ projectile = workspace.Effects:WaitForChild('rocket'), hitPos = Humanoid.Position })
       end
   end
end

-- Loop
while _G.Enable and task.wait() do
   for _, Player in pairs(Players:GetPlayers()) do
       if Player ~= LocalPlayer then
           task.wait(.5)
           KillPlayer(Player)
       end
   end
end