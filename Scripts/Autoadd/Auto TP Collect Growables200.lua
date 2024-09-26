--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local localPlayer = game.Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")


local function teleportAndCollect(object)
    if object:IsA("BasePart") then 
        hrp.CFrame = object.CFrame + Vector3.new(0, 3, 0) 
        
        task.wait(0.1)

     
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("CollectGrowable"):FireServer(object)
    end
end


for _, obj in pairs(game.Workspace.Growables:GetChildren()) do
    teleportAndCollect(obj)
    wait(0.1)  
end
