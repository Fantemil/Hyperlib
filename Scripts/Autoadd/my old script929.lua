local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Motel Simulator", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Cook once")
local section2 = page:addSection("Auto cook")

section1:addButton("Pizza", function()
   local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

section1:addButton("Cookies", function()
   local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

section1:addButton("Pancake", function()
  local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

section1:addButton("Bacon", function()
   local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
end)

local toggleEnabled1 = false
function toggleToggled1(bool)
    toggleEnabled1 = bool
    runb1()
end
function runb1()
    while toggleEnabled1 do
        local food = "Pizzas" --Bacon, Pizzas, Pancakes, Cookies
        local CookTime = 2 --starter is like 3 seconds

        game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
        wait(.3)

        local ohString1 = "Cook"
        local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
        wait(CookTime)

        local ohNil1 = nil
        local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
        if toggleToggled1 == false then
            break
        end
    end
end
section2:addToggle("Pizza", false, toggleToggled1)

local toggleEnabled2 = false
function toggleToggled2(bool)
    toggleEnabled2 = bool
    runb2()
end
function runb2()
    while toggleEnabled2 do
        local food = "Bacon" --Bacon, Pizzas, Pancakes, Cookies
        local CookTime = 2 --starter is like 3 seconds

        game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
        wait(.3)

        local ohString1 = "Cook"
        local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
        wait(CookTime)

        local ohNil1 = nil
        local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
        if toggleToggled2 == false then
            break
        end
    end
end
section2:addToggle("Bacon", false, toggleToggled2)



local toggleEnabled3 = false
function toggleToggled3(bool)
    toggleEnabled3 = bool
    runb3()
end
function runb3()
    while toggleEnabled3 do
        local food = "Cookies" --Bacon, Pizzas, Pancakes, Cookies
        local CookTime = 2 --starter is like 3 seconds

        game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
        wait(.3)

        local ohString1 = "Cook"
        local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
        wait(CookTime)

        local ohNil1 = nil
        local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
        if toggleToggled3 == false then
            break
        end
    end
end
section2:addToggle("Cookies", false, toggleToggled3)


local toggleEnabled4 = false
function toggleToggled4(bool)
    toggleEnabled4 = bool
    runb4()
end
function runb4()
    while toggleEnabled4 do
        local food = "Pancakes" --Bacon, Pizzas, Pancakes, Cookies
        local CookTime = 2 --starter is like 3 seconds

        game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
        wait(.3)

        local ohString1 = "Cook"
        local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
        wait(CookTime)

        local ohNil1 = nil
        local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
        local ohString3 = food

        game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
        if toggleToggled4 == false then
            break
        end
    end
end
section2:addToggle("Pancakes", false, toggleToggled4)

local page = venyx:addPage("Misc", 5012544693)

local section3 = page:addSection("Misc")


section3:addButton("Instant interest", function()
   for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.Name == 'ProximityPrompt' then
v.HoldDuration = 0
end
end

end)



section3:addButton("Auto farming gui(by Ezpi)", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/Motel_Farm"))()
end)

section3:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)