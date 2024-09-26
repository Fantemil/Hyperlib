local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3'))()

local w = library:CreateWindow("Abyss World")

local b = w:CreateFolder("Teleports")

b:Button("Checkpoint 14", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.435054779052734, 17866.94921875, -795.0255737304688)
end)

b:Button("Checkpoint 13", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.4012451171875, 18442.255859375, -194.8866729736328)
end)

b:Button("Checkpoint 12", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-297.1396484375, 18721.48046875, -724.7577514648438)
end)

b:Button("Checkpoint 11", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(323.13824462890625, 18793.7578125, -281.29815673828125)
end)

b:Button("Checkpoint 10", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.09747314453125, 19117.3125, -690.47705078125)
end)

b:Button("Checkpoint 9", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-411.5937194824219, 19161.39453125, -552.9361572265625)
end)

b:Button("Checkpoint 8", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.49972534179688, 19426.896484375, -79.00022888183594)
end)

b:Button("Checkpoint 7", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-413.6391296386719, 19802.685546875, -498.60394287109375)
end)

b:Button("Checkpoint 6", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.73355102539062, 20046.224609375, -185.29971313476562)
end)

b:Button("Checkpoint 5", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82.000244140625, 20348.896484375, -786.1665649414062)
end)

b:Button("Checkpoint 4", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39.2117919921875, 20785.66015625, -595.06103515625)
end)

b:Button("Checkpoint 3", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298.2913818359375, 21000.396484375, -412.2913818359375)
end)

b:Button("Checkpoint 2", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(40.798126220703125, 21018.896484375, -166.89073181152344)
end)

b:Button("Checkpoint 1", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.140132904052734, 21259.896484375, -105.85986328125)
end)

local function fireTouchAll()
    local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not firetouchinterest then
        warn("Your exploit does not support firetouchinterest.")
        return
    end

    local function touch(part)
        local partToTouch = part:FindFirstAncestorWhichIsA("BasePart") or part
        if partToTouch then
            task.spawn(function()
                firetouchinterest(partToTouch, root, 1)
                wait(0.1)
                firetouchinterest(partToTouch, root, 0)
            end)
        end
    end

    for _, descendant in ipairs(workspace:GetDescendants()) do
        if descendant:IsA("TouchTransmitter") then
            touch(descendant)
        end
    end
end

local c = w:CreateFolder("Get Wings")

c:Button("Get Wings", function()
    fireTouchAll()
end)
