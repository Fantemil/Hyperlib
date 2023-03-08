-- Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

-- Locals/Assets (The reason why I 'spam' WaitForChild here is so it won't error if you run it before everything is loaded in / exists)
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local Obbies = Workspace:WaitForChild("Obbies")
local Easy = Obbies:WaitForChild("EasyObby"):WaitForChild("Finish"):WaitForChild("Button")
local Hard = Obbies:WaitForChild("HardObby"):WaitForChild("Finish"):WaitForChild("Button")

-- Functions
local function OnCharacterAdded(NewCharacter)
   Character = NewCharacter
   HumanoidRootPart = NewCharacter:WaitForChild("HumanoidRootPart")
end

-- Connections
LocalPlayer.CharacterAdded:Connect(OnCharacterAdded)

-- Threads
task.spawn(function()
   while true do
       task.wait()
       if HumanoidRootPart and Easy then
           local OldPos = HumanoidRootPart.CFrame
           firetouchinterest(Easy ,HumanoidRootPart, 0)
           firetouchinterest(Easy ,HumanoidRootPart, 1)
           wait(1)
           HumanoidRootPart.CFrame = OldPos
           task.wait(182) -- Consder actually doing a proper check here
       end
   end
end)

task.spawn(function()
   while true do
       task.wait()
       if HumanoidRootPart and Hard then
           local OldPos = HumanoidRootPart.CFrame
           firetouchinterest(Hard ,HumanoidRootPart, 0)
           firetouchinterest(Hard ,HumanoidRootPart, 1)
           wait(1)
           HumanoidRootPart.CFrame = OldPos
           task.wait(302) -- Consder actually doing a proper check here
       end
   end
end)