getgenv().Farm = true
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local lp = Players.LocalPlayer
local TargetBag = workspace:WaitForChild("MAP"):WaitForChild("Map"):WaitForChild("ArenaBOX"):WaitForChild("PunchingBagInGame"):WaitForChild("pretty ransom")

local function getchar()
   return lp.Character or lp.CharacterAdded:Wait()
end

local function gethumanoidrootpart()
   return getchar():WaitForChild("HumanoidRootPart")
end

local onchar = lp.CharacterAdded:Connect(function()
   local HumanoidRootPart = getchar():WaitForChild("HumanoidRootPart")
   repeat task.wait() until getconnections(HumanoidRootPart:GetPropertyChangedSignal("CFrame"))[1]
   getconnections(HumanoidRootPart:GetPropertyChangedSignal("CFrame"))[1]:Disconnect()
end)

local function getcombat()
   return (getchar():FindFirstChild("Combat") or lp:WaitForChild("Backpack"):FindFirstChild("Combat"))
end

local HumanoidRootPart = getchar():WaitForChild("HumanoidRootPart")
if getconnections(HumanoidRootPart:GetPropertyChangedSignal("CFrame"))[1] then
   getconnections(HumanoidRootPart:GetPropertyChangedSignal("CFrame"))[1]:Disconnect()
end

repeat
   gethumanoidrootpart().CFrame = TargetBag.CFrame * CFrame.new(0,0,3)
   rs.Heartbeat:Wait()
   local Combat = getcombat()
   Combat.Parent = getchar()
   Combat:Activate()
   Combat:Deactivate()
until not Farm --TheRealChick mentioned this

onchar:Disconnect()