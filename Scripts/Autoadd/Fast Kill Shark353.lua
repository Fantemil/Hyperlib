local player = game:GetService("Players").LocalPlayer
local data = require(player:WaitForChild("PlayerScripts"):WaitForChild("ProjectilesClient"):WaitForChild("WeaponScript"):WaitForChild("HitScanFire"))
local remote = getupvalue(getupvalue(getupvalue(data.Fire,8),4),2)

local function WaitForChildWhichIsA(instance, classtype)
    local target = instance:FindFirstChildWhichIsA(classtype)
    while not target or not target:IsA(classtype) do
        target = instance.ChildAdded:Wait()
    end
    return target
end

local function equipToolFromBackpack()
    local tool = player.Backpack:FindFirstChildOfClass("Tool")
    if tool then
        player.Character.Humanoid:EquipTool(tool)
    end
end

while true do -- Infinite loop
    local shark = WaitForChildWhichIsA(workspace:WaitForChild("Sharks"),"Model")

    -- Make the character jump to get out of the seat
    player.Character.Humanoid.Jump = true
    task.wait(0.1)  -- Short wait after jumping

    if shark and shark.PrimaryPart then
        -- Get the shark's position
        local sharkPosition = shark.PrimaryPart.Position
        
        -- Set your character's position to be directly above the shark (e.g., 10 units above)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(sharkPosition + Vector3.new(0, 10, 0))
        
        -- Equip the tool from backpack
        equipToolFromBackpack()

        -- After teleporting, run the remote fire code very rapidly
        for i = 1, 80 do -- This will fire it 80 times almost instantly. Adjust the number as required.
            remote:FireServer(shark)
            task.wait(0.01) -- This is a very small wait, making the fire command rapid. Adjust as needed.
        end
        
        -- Wait a bit before checking again
        task.wait(0.01) -- You can adjust this wait time as needed
    end
end
