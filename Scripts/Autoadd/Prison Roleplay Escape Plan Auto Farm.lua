local Players = game:GetService("Players")

local localPlayer = Players.LocalPlayer
local trashBags = workspace.TrashBags:GetChildren()

local function getDumpster(index)
    local i = 1
    for _,v in next, workspace:GetChildren() do
        if v.Name == "Dumpster" then
            i = i + 1
            
            if i == index then
                return v
            end
        end
    end
end

local dumpster = getDumpster(3)

local function collectBag(bag)
    local oldAmount = #localPlayer.Backpack:GetChildren()
    repeat task.wait();
        if bag.Transparency == 1 then break end
        
        local rootPart = localPlayer.Character.HumanoidRootPart
        rootPart.CFrame = bag.CFrame
        fireproximityprompt(bag.ProximityPrompt, 3)
    until #localPlayer.Backpack:GetChildren() > oldAmount
end

local function depositBag(bag)
    local tool = localPlayer.Backpack:FindFirstChild("Trash Bag")
    tool.Parent = localPlayer.Character
    
    repeat task.wait();
        localPlayer.Character.HumanoidRootPart.CFrame = dumpster.CFrame
        fireproximityprompt(dumpster.ProximityPrompt, 3)
    until tool.Parent ~= localPlayer.Character
end

while true do task.wait();
    pcall(function()
        for _,bag in next, trashBags do
            if bag.Transparency == 1 then continue end
            collectBag(bag)
            depositBag(bag)
        end
    end)
end