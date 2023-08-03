getgenv().RedKnocks = 0
getgenv().GreenKnocks = 0
getgenv().BlueKnocks = 0
getgenv().DiceColor = nil
getgenv().ItemColor = nil
getgenv().ItemName = nil
getgenv().Levers = {}

local Character = game:GetService("Players").LocalPlayer.Character
local HRP = Character.HumanoidRootPart
local Humanoid = Character.Humanoid

function noClip()
    game:GetService("RunService").Stepped:connect(
        function()
            Humanoid:ChangeState(11)
        end
    )
end

noClip()
HRP.CFrame = CFrame.new(0, 256, 0)
print("Waiting 3 Minutes")
wait(180)

local function knock()
    wait(3 / 4)
    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent:FindFirstChildOfClass("Sound") then
            local SFX = v.Parent:FindFirstChildOfClass("Sound")
            if SFX.SoundId == "rbxassetid://379484117" then
                local dX, dY, dZ = v.Parent.CFrame:components()
                HRP.CFrame = CFrame.new(x, y, z)
                if DiceColor == "Crimson" then
                    SFX.Changed:Connect(
                        function()
                            if DiceColor == "Crimson" then
                                getgenv().RedKnocks = getgenv().RedKnocks + 1
                            end
                        end
                    )
                    fireclickdetector(v)
                    HRP.CFrame = CFrame.new(dX, dY + 10, dZ)
                    wait(6.5)
                    print(getgenv().RedKnocks .. " | Total Red Knocks")
                elseif DiceColor == "Dark green" then
                    SFX.Changed:Connect(
                        function()
                            if DiceColor == "Dark green" then
                                getgenv().GreenKnocks = getgenv().GreenKnocks + 1
                            end
                        end
                    )
                    fireclickdetector(v)
                    HRP.CFrame = CFrame.new(dX, dY + 10, dZ)
                    wait(6.5)
                    print(getgenv().GreenKnocks .. " | Total Green Knocks")
                elseif DiceColor == "Lapis" then
                    SFX.Changed:Connect(
                        function()
                            if DiceColor == "Lapis" then
                                getgenv().BlueKnocks = getgenv().BlueKnocks + 1
                            end
                        end
                    )
                    fireclickdetector(v)
                    HRP.CFrame = CFrame.new(dX, dY + 10, dZ)
                    wait(6.5)
                    print(getgenv().BlueKnocks .. " | Total Blue Knocks")
                elseif DiceColor == "Temple" then
                    fireclickdetector(v)
                    HRP.CFrame = CFrame.new(dX, dY + 10, dZ)
                    wait(8)
                    HRP.CFrame = v.Parent.CFrame
                end
            end
        end
    end
end

local function doKey()
    wait(3 / 4)
    for _, v in ipairs(workspace:GetChildren()) do
        if v:IsA("Folder") and v:FindFirstChildOfClass("Part") then
            local Child = v:FindFirstChildOfClass("Part")
            if Child:FindFirstChild("NewItemPickupScript") then
                v.Name = "GameItems"
                for k, d in pairs(v:GetChildren()) do
                    d.Name = "Item " .. tostring(d.BrickColor)
                    if d.Name == "Item " .. ItemColor then
                        HRP.CFrame = d.CFrame
                        for i = 1, 7 do
                            wait(1 / 10)
                            fireclickdetector(d:FindFirstChildOfClass("ClickDetector"))
                        end
                        print("Picked up " .. ItemColor .. " Key")
                    end
                end
            end
        end
    end

    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            if v.Parent:FindFirstChildOfClass("Part") then
                local DoorPart = v.Parent:FindFirstChildOfClass("Part")
                v.Parent.Parent.Name = "Door " .. tostring(DoorPart.BrickColor)
                if v.Parent.Parent.Name == "Door " .. ItemColor then
                    HRP.CFrame = v.Parent.CFrame
                    for i = 1, 7 do
                        wait(1 / 10)
                        fireclickdetector(v.Parent:FindFirstChildOfClass("ClickDetector"))
                    end
                    print("Opened " .. ItemColor .. " Door")
                end
            end
        end
    end
end

local function doMop()
    wait(3 / 4)
    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("StringValue") and v.Value == "Mop" then
            HRP.CFrame = v.Parent.CFrame
            wait(1 / 2)
            fireclickdetector(v.Parent:FindFirstChildOfClass("ClickDetector"))
        end
    end
end

local function doItem()
    wait(3 / 4)
    for _, v in pairs(workspace.GameItems:GetChildren()) do
        if v.Mesh.TextureId == "http://www.roblox.com/asset/?id=36946043" then
            v.Name = "Mop"
        elseif v.Mesh.TextureId == "http://www.roblox.com/asset/?id=70265794" then
            v.Name = "Screwdriver"
        elseif v.Mesh.TextureId == "http://www.roblox.com/asset/?id=6550008" then
            v.Name = "Scissors"
        end
    end
    HRP.CFrame = workspace.GameItems[ItemName].CFrame
    local ItemPart = workspace.GameItems:FindFirstChild(ItemName)
    for i = 1, 10 do
        wait(1 / 10)
        fireclickdetector(ItemPart:FindFirstChildOfClass("ClickDetector"))
    end
    if ItemName == "Mop" then
        doMop()
    end
end

local function dice()
    wait(3 / 4)
    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("Part") and v.BrickColor == BrickColor.new(DiceColor) and v:FindFirstChildOfClass("SpecialMesh") then
            if v:FindFirstChildOfClass("SpecialMesh").MeshId == "http://www.roblox.com/asset/?id=1529453" then
                local x, y, z = v.CFrame:components()
                HRP.CFrame = CFrame.new(x, y + 15, z)
                for k, d in pairs(v:GetChildren()) do
                    d.Name = tostring(k)
                end
                if DiceColor == "Crimson" then
                    for i = 1, getgenv().RedKnocks do
                        fireclickdetector(v["2"])
                        print(DiceColor .. " Dice Pressed " .. tostring(i) .. " Times.")
                        wait(1.3)
                    end
                elseif DiceColor == "Dark green" then
                    for i = 1, getgenv().GreenKnocks do
                        fireclickdetector(v["2"])
                        print(DiceColor .. " Dice Pressed " .. tostring(i) .. " Times.")
                        wait(1.3)
                    end
                elseif DiceColor == "Lapis" then
                    for i = 1, getgenv().BlueKnocks do
                        fireclickdetector(v["2"])
                        print(DiceColor .. " Dice Pressed " .. tostring(i) .. " Times.")
                        wait(1.3)
                    end
                end
            end
        end
    end
end

local function doPuzzle1()
    wait(5)
    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent.Parent.Parent.Name == "LeverEvent" then
            table.insert(Levers, v)
        end
    end
    wait(2)
    getgenv().FirstGate = Levers[1].Parent.Parent.Parent.Gate
    print("Bruteforcing Levers")
    while FirstGate.Position == Vector3.new(947.0625, 121.687515, 13.3750124) and wait() do
        for i = 1, #Levers do
            local RandomLever = math.random(1, #Levers)
            fireclickdetector(Levers[RandomLever])
        end
    end
end

local function doPuzzle2()
    wait(5)
    if FirstGate.Position ~= Vector3.new(947.0625, 121.687515, 13.3750124) then
        HRP.CFrame = CFrame.new(945.512, 117 + 3, 13.7)
        wait(2)
        for _, v in pairs(workspace.Alleys:GetDescendants()) do
            if v:isA("ClickDetector") and v.Parent.Parent.Parent.Name == "TorchEvent" then
                HRP.CFrame = v.Parent.CFrame
                for i = 1, 7 do
                    wait(1 / 10)
                    fireclickdetector(v)
                end
                print("Cleared Torch")
            end
        end
    end
end

local function doPuzzle3()
    wait(5)
    for _, v in pairs(workspace.Alleys:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent.Parent.Parent.Name == "LeverEvent" then
            table.insert(Levers, v)
            HRP.CFrame = v.Parent.CFrame
        end
    end
    wait(2)
    getgenv().SecondGate = Levers[1].Parent.Parent.Parent.Gate2
    print("Bruteforcing Levers")
    while SecondGate.Position == Vector3.new(963.1875, 121.687515, 40.1750259) and wait() do
        for i = 1, #Levers do
            local RandomLever = math.random(1, #Levers)
            fireclickdetector(Levers[RandomLever])
        end
    end
    HRP.CFrame = CFrame.new(975.449951, 120, -59.6749878)
end

ItemColor = "Really red"
doKey()

ItemColor = "Neon orange"
doKey()

ItemColor = "Toothpaste"
doKey()

ItemColor = "Gold"
doKey()

ItemColor = "Alder"
doKey()

ItemColor = "Institutional white"
doKey()

ItemName = "Mop"
doItem()

DiceColor = "Crimson"
knock()
dice()

DiceColor = "Dark green"
knock()
dice()

DiceColor = "Lapis"
knock()
dice()

DiceColor = "Temple"
knock()

doPuzzle1()
doPuzzle2()
doPuzzle3()

local CodeMsg = Instance.new("Message", workspace)
CodeMsg.Text = tostring(getgenv().RedKnocks .. "-" .. getgenv().GreenKnocks .. "-" .. getgenv().BlueKnocks)