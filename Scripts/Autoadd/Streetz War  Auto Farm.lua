getgenv().Autofarm = true -- set to false to disable

local folder = workspace["Job\227\133\164"].Box
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

local function reset()
    folder.Job.CFrame = CFrame.new(-109.773857, 5.76414442, 146.092545, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    folder.Job.Label.Enabled = true
end
while getgenv().Autofarm do
    if not getgenv().Autofarm then
        reset()
        break else
        if plr.Character ~= nil and char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then

            local function GetBox()
                fireclickdetector(folder.BOX1.ClickDetector)
                task.wait(0.1)
                local tool = plr.Character:FindFirstChild("Box") or plr.Backpack:FindFirstChild("Box")
                if tool then
                    plr.Character.Humanoid:EquipTool(tool)
                end
            end
            
            local function Sell()
                if plr.Character ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") then
                    if syn then
                        firetouchinterest(plr.Character.HumanoidRootPart, folder.Job, 0)
                        wait()
                        firetouchinterest(plr.Character.HumanoidRootPart, folder.Job, 1)
                    end
                end
            end
            local tool = plr.Character:FindFirstChild("Box") or plr.Backpack:FindFirstChild("Box")
            if tool then
                plr.Character.Humanoid:EquipTool(tool)
                Sell()
            else
                GetBox()
            end
            folder.Job.CFrame = char.HumanoidRootPart.CFrame
            folder.Job.Label.Enabled = false
        end
        task.wait()
    end
end
reset()