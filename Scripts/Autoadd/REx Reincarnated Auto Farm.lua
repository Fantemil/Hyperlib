-- INSTRUCTIONS FOR REx: Reincarnated SILENT AUTOFARM by 90467

-- 1. Press F9 and DISABLE "Error", "Warning", and "Information". This is to see script output. Drag the scrollbar all the way down with your mouse to make it autoscroll.
-- 2. Make sure you have your pickaxe equipped while the script is running.
-- 3. You can tweak the excludedOres list to however you like. Personally I think it's good like this
-- 4. Make sure to serverwhop every now and then to avoid bans.


local delay = 0.2 -- Delay between mining each block. Higher = less suspicious, lower = more suspicious. Keep it above 0.1

if game.PlaceId ==8549934015 then -- Normal World
excludedOres = {"Magma", "Stone", "Basalt", "Copper", "Diorite", "Coal", "Crystallized Stone", "Nickel", "Bedrock", "Gold", "Granite", "Iron", "Marble", "Etherstone", "Prismatistone","Silver","Obsidian","Ice","Voidstone","Ruby","Celestone","Mantle","Goldstone","Barrier","Quartz","Reflectistone"}
else
    if game.PlaceId ==10129505074 then -- Moon World
excludedOres = {"Moon Stone", "Tin", "Moon Mantle", "Jasper", "Aluminum", "Moon Core", "Zinc", "Coal", "Magma", "Copper", "Titanium", "Legacy Uranium", "Lithium", "Nickel", "Quartz", "Gold", "Tourmaline","Jade","Silver","Lapis Lazuli","Bismuth","Nebula","Strontium","Scandium","Platinum","Amethyst","Barrier","Garnet","Cobalt","Emerald","Heliodor","Aquamarine","Topaz","Diamond","Beryllium","Morganite","Ruby","Rocc","Moonrock","nil"}
end
end

-- Don't edit below unless you know what you're doing.

local folder = game:GetService("Workspace").Mine

local function isValidName(name)
    for _, validName in pairs(excludedOres) do
        if name == validName then
            return true
        end
    end
    return false
end


local toMine = {}

local function isOreExcluded(part)
    if part:IsA("BasePart") and not isValidName(part.Name) then 
        table.insert(toMine, part)
    end 
end

for _, part in pairs(folder:GetChildren()) do 
    isOreExcluded(part)
end 

folder.ChildAdded:Connect(isOreExcluded)

local Target = game:GetService("ReplicatedStorage").MineEvent;

local function fireMineEvent()
    while #toMine > 0 do
        for i = #toMine, 1, -1 do
            local partToMine = toMine[i]
            if partToMine:IsDescendantOf(game.Workspace) then 
                print("You mined a:",partToMine.Name,"| Ores left to mine:",#toMine)
                Target:FireServer(partToMine);
                wait(delay)
                table.remove(toMine, i) 
            else 
                print("Someone else mined a:",partToMine.Name,"| Ores left to mine:",#toMine)
                table.remove(toMine, i)
            end  
        end  
    end  
    print("Finished. Restarting...")
    wait(2)
    fireMineEvent()
end

fireMineEvent()