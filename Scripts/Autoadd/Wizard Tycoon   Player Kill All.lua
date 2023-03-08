--[[

    Made by Amph#5896

]]

local player = game:GetService("Players").LocalPlayer
_G.gogo = true
local wand = game:GetService("Players").LocalPlayer.Character:WaitForChild("Wand")
local diff = 10

if wand then
    local args = {
        [1] = CFrame.new(Vector3.new(129.31932067871094, 70.39335632324219, -124.12472534179688), Vector3.new(-0.46554630994796753, -0.39231327176094055, 0.7933201789855957)),
        [2] = 100,
        [3] = 1.5,
        [4] = wand,
        [5] = 15,
        [6] = game:GetService("Players").sheswickedd
    }

    while _G.gogo == true do task.wait()
        pcall(function()
            for i, v in pairs(game:GetService("Players"):GetChildren()) do task.wait()
                wand = game:GetService("Players").LocalPlayer.Character:WaitForChild("Wand")
                args[4] = wand
                if v.Team ~= player.Team then
                    for i = 1, 4 do 
                        if i == 1 then
                            args[1] = CFrame.new(v.Character.HumanoidRootPart.Position + Vector3.new(diff, -1, 0), v.Character.HumanoidRootPart.Position + Vector3.new(-diff, 3, 0))
                        elseif i == 2 then
                            args[1] = CFrame.new(v.Character.HumanoidRootPart.Position + Vector3.new(0, -1, diff), v.Character.HumanoidRootPart.Position + Vector3.new(0, 3, -diff))
                        elseif i == 3 then
                            args[1] = CFrame.new(v.Character.HumanoidRootPart.Position + Vector3.new(-diff, -1, 0), v.Character.HumanoidRootPart.Position + Vector3.new(diff, 3, 0))
                        elseif i == 4 then
                            args[1] = CFrame.new(v.Character.HumanoidRootPart.Position + Vector3.new(0, -diff, -1), v.Character.HumanoidRootPart.Position + Vector3.new(0, 3, diff))
                        end
                        game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                    end
                end
            end
        end)
    end
end