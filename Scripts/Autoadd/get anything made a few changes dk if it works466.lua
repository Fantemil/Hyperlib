-- Function to give the selected item and specified amount
local function give(item, items)
    game:GetService("ReplicatedStorage").Remotes.AddShirt:FireServer(item, tostring(items))
end

-- Load the library for GUI creation
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3'))()

-- Create a table to store the item names
local t = {}

-- Collect item names from the LocalPlayer's Data
for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Data"):GetChildren()) do
    if v:IsA("IntValue") then
        table.insert(t, v.Name)
    end
end

-- Create a GUI window and folder for item spawner
local b = library:CreateWindow("Wacky Item Spawner"):CreateFolder("Item Spawner")

-- Dropdown for selecting items
b:Dropdown("Select Item", t, true, function(selected)
    item = selected
end)

-- Input box for specifying the amount of items
b:Box("Amount Of Items", "number", function(value)
    items = value
end)

-- Button to give selected items
b:Button("Give Selected Items", function()
    give(item, items)
end)

-- Destroy the GUI when done
b:DestroyGui()