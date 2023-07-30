getgenv().On = true
local plr = game:GetService("Players").LocalPlayer
   local char = plr.Character or plr.CharacterAdded:wait()
   local Humanoid = char:WaitForChild("Humanoid")
   
   local Cam = workspace.CurrentCamera
   local Goal
   function findGoals()
    for i,v in pairs(game.workspace:GetDescendants()) do
        if v.Name == "Net" then
                local aa = "Lock"
                v.Parent = game.Workspace
                v.Name = aa
            end
        end
    end
    local function FindClosestGoal()
        local nut, face = math.huge
        for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Lock" then
                local goaltoplr = (v.Position - char.HumanoidRootPart.Position).Magnitude
                if nut > goaltoplr then
                    nut = goaltoplr
                    face = v
                end
            end
        end
        return face
    end
    findGoals()
    function RemasteredCalculate()
        local Mag = (char.HumanoidRootPart.Position - FindClosestGoal().Position).Magnitude
        local vec
    
        if Mag < 59 then
            vec = Vector3.new(0, 90, 0)
        elseif Mag > 59 and Mag < 63 then
            vec = Vector3.new(0, 85, 0)
        elseif Mag > 63 and Mag < 68 then
            vec = Vector3.new(0, 80, 0)
        elseif Mag > 68 and Mag < 75 then
            vec = Vector3.new(0, 60, 0)
        end
        return vec
    end
    
    Humanoid.Jumping:Connect(function()
        local vector = RemasteredCalculate()
        
        if vector ~= nil and FindClosestGoal() and char:FindFirstChild("Ball") and getgenv().On then
            repeat task.wait() Cam.CFrame = CFrame.new(char.Head.Position, FindClosestGoal().Position + RemasteredCalculate())
            until not char:FindFirstChild("Ball")
        end
    end)
    
    Humanoid.Jumping:Connect(function()
        local vector = RemasteredCalculate()
        
        if vector ~= nil and FindClosestGoal() and char:FindFirstChild("Ball") and getgenv().On then
            task.wait(0.28)
            mouse1click()
        end
    end)