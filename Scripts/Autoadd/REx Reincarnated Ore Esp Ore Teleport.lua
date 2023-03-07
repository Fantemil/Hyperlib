-- INSTRUCTIONS FOR REx: Reincarnated ORE ESP + ORE TP by 90467

-- 1. Change the "excludedOres" below for each world to however you like it. I removed most of the useless ores, but you are free to remove more ores or add them back.
-- 2. If you don't want to see the ore text, you can disable it by changing "showText" to false.
-- 3. You can press "9" on your keyboard to teleport on top of any random ore that is esp'ed already. You will need to mine the ore yourself.
-- 4. If you have all of your settings and excludedOres ready, hit execute! Enjoy the script! 

-- Note: In the latest patch I made it so that the entire ESP is in the coregui. This means it is undetectable and very safe to use as of 2/28


local showText = true -- Change to false if you don't want to see the esp ore text

if game.PlaceId ==8549934015 then -- Normal World, remove or add to the excludedOres as needed
excludedOres = {"Magma", "Stone", "Copper", "Basalt", "Amber", "Diorite", "Coal", "Crystallized Stone", "Nickel", "Bedrock", "Gold", "Granite", "Iron", "Marble", "Etherstone", "Prismatistone","Silver","Obsidian","Ice","Voidstone","Ruby","Celestone","Mantle","Goldstone","Barrier","Quartz","Reflectistone","Emerald"}
else
    if game.PlaceId ==10129505074 then -- Moon World, remove or add to the excludedOres as needed
excludedOres = {"Moon Stone", "Tin", "Moon Mantle", "Jasper", "Aluminum", "Moon Core", "Zinc", "Coal", "Magma", "Copper", "Titanium", "Legacy Uranium", "Lithium", "Nickel", "Quartz", "Gold", "Tourmaline","Jade","Silver","Lapis Lazuli","Bismuth","Nebula","Strontium","Scandium","Platinum","Amethyst","Barrier","Garnet","Cobalt","Emerald","Heliodor","Aquamarine","Topaz","Diamond","Beryllium","Morganite","Ruby","Rocc","Moonrock","nil"}
end
end

-- Don't edit below if you don't know what you're doing --

local folder = game:GetService("Workspace").Mine
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

local function isValidName(name)
    for _, validName in pairs(excludedOres) do
        if name == validName then
            return false
        end
    end
    return true
end

local function createESP(primary, distance)
    local player = game:GetService("Players").LocalPlayer
    local rootPart = player.Character.HumanoidRootPart
    local box = Instance.new("BoxHandleAdornment", game.CoreGui)
    box.Adornee = primary
    box.AlwaysOnTop = true
    box.Color = primary.BrickColor
    box.ZIndex = 10
    box.Size = primary.Size + Vector3.new(0.1, 0.1, 0.1)
    
    local billboard = Instance.new("BillboardGui", game.CoreGui)
    billboard.Adornee = primary
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 100, 0, 60)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    
    local handleRemovedEvent = primary.AncestryChanged:Connect(function(_, parent)
        if not parent then
        billboard:Destroy()
        box:Destroy()
        end
    end)
    
    
    if showText then
        local nameLabel = Instance.new("TextLabel", billboard)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Size = UDim2.new(1, 0, 0.225, 0)
        nameLabel.Text = primary.Name
        nameLabel.Font = Enum.Font.GothamSemibold
        nameLabel.TextColor3 = primary.Color
        nameLabel.TextScaled = true
        
        local distLabel = Instance.new("TextLabel", billboard)
        distLabel.BackgroundTransparency = 1
        distLabel.Size = UDim2.new(1, 0, 0.175, 0)
        distLabel.Position = UDim2.new(0, 0, 0.225, 0)
        distLabel.Text = "Distance: " .. math.floor(distance)
        distLabel.Font = Enum.Font.GothamSemibold
        distLabel.TextColor3 = primary.Color
        distLabel.TextScaled = true

        local connection = game:GetService("RunService").Heartbeat:Connect(function()
            local newDistance = (rootPart.Position - primary.Position).magnitude
            distLabel.Text = "Distance: " .. math.floor(newDistance)
        end)


        return {Gui = billboard, Connection = connection, HandleRemovedEvent = handleRemovedEvent}
    else
        return {Gui = billboard}
    end
end



function isOreExcluded(block)
    if block:IsA("BasePart") and isValidName(block.Name) then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - block.Position).magnitude
        createESP(block, distance)
        else
        block.Transparency = 0.35
    end
end

function randomTP(folder)
    local player = game:GetService("Players").LocalPlayer
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    local validBlocks = {}
    
    for _, block in pairs(folder:GetChildren()) do
        if isValidName(block.Name) then
            table.insert(validBlocks, block)
        end
    end
    
    if #validBlocks > 0 then
        local randomIndex = math.random(1, #validBlocks)
        local randomBlock = validBlocks[randomIndex]
        humanoid.RootPart.CFrame = randomBlock.CFrame + Vector3.new(0, 15, 0)
    end
end

for _, part in pairs(folder:GetChildren()) do
    part.Transparency = 0.35
    isOreExcluded(part)
end

folder.ChildAdded:Connect(isOreExcluded)

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(k)
if k.KeyCode == Enum.KeyCode.Nine then
    randomTP(folder)
end
end)