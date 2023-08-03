_G.enabled = true -- Re-execute to turn off
_G.speed = 110 -- Keep around 100 or it wont play

-- Variables
local RunService = game:GetService("RunService");
local Players = game:GetService("Players");
local LocalPlayer = game:GetService("Players").LocalPlayer;

local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
local Humanoid = Character:WaitForChild("Humanoid") or Character:FindFirstChildOfClass("Humanoid");
local HRP = Humanoid.RootPart or Humanoid:FindFirstChild("HumanoidRootPart")

-- Check
if not Humanoid or not _G.enabled then
   if Humanoid and Humanoid.Health <= 0 then
       Humanoid:Destroy()
   end
   return
end

-- Setting Up Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
Humanoid.BreakJointsOnDeath = false
Humanoid.RequiresNeck = false

local con; con = RunService.Stepped:Connect(function()
   if not Humanoid then return con:Disconnect() end
   Humanoid:ChangeState(Enum.HumanoidStateType.Running)  -- Change state so not die
end)

-- Infinite Death [literally 3 lines dont make it complicated]
LocalPlayer.Character = nil
LocalPlayer.Character = Character
task.wait(Players.RespawnTime + 0.1)

-- Looping Death
while task.wait(1/_G.speed) do
   Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
end