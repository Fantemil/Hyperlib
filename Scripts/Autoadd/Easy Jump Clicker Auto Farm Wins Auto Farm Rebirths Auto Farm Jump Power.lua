-- Enable/Disable
local RebirthE = true
local JumpPower = true
local Wins = true

-- Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

-- Locals/Assets
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local Stages = Workspace:FindFirstChild("Stages")

-- Functions
local function OnCharacterAdded(NewCharacter)
   Character = NewCharacter
   HumanoidRootPart = NewCharacter:WaitForChild("HumanoidRootPart")
end

-- Connections
LocalPlayer.CharacterAdded:Connect(OnCharacterAdded)

-- Threads
-- Farm Wins
task.spawn(function()
   while true do
       task.wait(2)
       if Wins and HumanoidRootPart then
            for _,v in pairs(Stages:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(v.Parent, HumanoidRootPart, 0)
                    firetouchinterest(v.Parent, HumanoidRootPart, 1)
                    wait(.5)
                end
            end
        end
    end
end)
--Farm Rebirths
task.spawn(function()
   while true do
      task.wait()
        if RebirthE then
   game:GetService("ReplicatedStorage").CommonEvents.Rebirth:FireServer()
        end
    end
end)
--Farm Jump Power
task.spawn(function()
   while true do
      task.wait()
        if JumpPower then
   game:GetService("ReplicatedStorage").CommonEvents.Clicking:FireServer()
        end
    end
end)