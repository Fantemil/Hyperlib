--// Made by @kylosilly on discord
local rs = game:GetService("ReplicatedStorage")
local p = game:GetService("Players").LocalPlayer
local args1, args2 = {"Galaxy Taco", "LeftHand"}, {"Galaxy Taco", "RightHand"}
local tpPos = CFrame.new(11.9789648, 2.99999952, 27.8490162, -0.124070153, 8.17105814e-08, -0.99227345, -1.86184206e-08, 1, 8.46748165e-08, 0.99227345, 2.898018e-08, -0.124070153)
local foodFolderDestroyed = false

local function performActions()
    if not foodFolderDestroyed then
        local foodFolder = workspace:FindFirstChild("FoodEating")
        if foodFolder then
            foodFolder:Destroy()
            foodFolderDestroyed = true
        end
    end
    p.Character.HumanoidRootPart.CFrame = tpPos
    rs:WaitForChild("Rebirth"):FireServer()
    rs:WaitForChild("FoodRemoteEvent"):FireServer(unpack(args1))
    rs:WaitForChild("FoodRemoteEvent"):FireServer(unpack(args2))
end

while task.wait(0.35) do performActions() end