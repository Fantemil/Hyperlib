_G.world = "Plains"--"Plains","Thiefs","Desert","Crystal","Samurai","Chad","UFO"
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local localCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local localRootPart = localCharacter:WaitForChild("HumanoidRootPart")
local localHumanoid = localCharacter:WaitForChild("Humanoid")
local CoreGui = game:GetService("StarterGui") 
local function click()
    local a = game:service("VirtualInputManager")
    a:SendMouseButtonEvent(500, 500, 0, true, game, 1)
    wait() 
    a:SendMouseButtonEvent(500, 500, 0, false, game, 1)
end

local mobsFolder = game:GetService("Workspace").MobsSpawned[tostring(_G.world)]
local mobsTable = {}
local target = nil
local active = false


localPlayer.CharacterAdded:Connect(function(character)
    localCharacter = character
    localRootPart = localCharacter:WaitForChild("HumanoidRootPart")
    localHumanoid = localCharacter:WaitForChild("Humanoid")
end)

UserInputService.InputBegan:Connect(function(input, typing)
    if not typing then
        if input.KeyCode == Enum.KeyCode.E then
            if active then
                active = false
            else
                active = true
            end
        end
    end
end)

RunService.Stepped:Connect(function()
    if target and active then
        localRootPart.CFrame = target.CFrame * CFrame.new(0, 0, 3.5)
            click()
    end
end)

for _, mob in ipairs(mobsFolder:GetChildren()) do
    if mob:FindFirstChild("HumanoidRootPart") then
        mobsTable[mob] = mob
    end
end

mobsFolder.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "HumanoidRootPart" then
        mobsTable[descendant.Parent] = descendant.Parent
    end
end)

mobsFolder.ChildRemoved:Connect(function(child)
    if mobsTable[child] then
        mobsTable[child] = nil
    end
end)

while true do
    for _, mob in pairs(mobsTable) do
        if mob:FindFirstChild("HumanoidRootPart") then
            local humanoid = mob:FindFirstChild("Humanoid")
            target = mob.HumanoidRootPart
            while true do
               if not humanoid or humanoid.Health == 0 then
                    target = nil
                    break
                end
                wait()
            end
        end
    end
    wait()
end

CoreGui:SetCore("SendNotification", {
    Title = "Discord Link Set to clipboard",
    Text = "Link Set to clipboard",
   Duration = 3;
   })
   CoreGui:SetCore("SendNotification", {
    Title = "Script Made By SummerTime#0850",
    Text = "By SummerTime#0850",
   Duration = 3;
   })