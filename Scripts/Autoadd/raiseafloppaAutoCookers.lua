-- made by dex cuties (give credit plz)
-- themes Light, Dark, Mocha, Jester

-- marie is cute
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local DexLoader = Material.Load({
   Title = "Raise A Floppa - Cooking",
   Style = 2,
   SizeX = 500,
   SizeY = 350,
   Theme = "Mocha",
   ColorOverrides = {
       MainFrame = Color3.fromRGB(235,235,235)
   }
})

local cooking = DexLoader.New({
   Title = "Cooking"
})

local credits = DexLoader.New({
   Title = "Credits"
})

-- ui
DexLoader.Banner({
   Text = "NOTE: The Space Soup needs 2 meteorites to cook."
})

cooking.Label({
   Text = "Cooking"
})

cooking.Button({
   Text = "Burger",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Bread")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Beef")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Lettuce")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Tomato")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Bread")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Beef")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Lettuce")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Tomato")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Salad",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Lettuce")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Lettuce")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Tomato")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Lettuce")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Lettuce")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Tomato")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 3)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Mac and Cheese",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Cheese")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Noodles")
       game:GetService("ReplicatedStorage").Purchase:FireServer("Milk")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Cheese")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Noodles")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Milk")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 2)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Ramen",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Noodles")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Eggs")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Soy Sauce")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Noodles")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Eggs")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Soy Sauce")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 2)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Cake",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Eggs")
       game:GetService("ReplicatedStorage").Purchase:FireServer("Milk")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Sugar")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Flour")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Eggs")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Milk")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Sugar")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Flour")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Spaghetti",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Beef")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Tomato")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Noodles")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Beef")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Tomato")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Noodles")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 2)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Pizza",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase:FireServer("Pizza Recipe")
       wait(0.1)
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Flour")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Tomato")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Cheese")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Flour")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Tomato")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Cheese")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 2)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Grilled Cheese",
   Callback = function()
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Bread")
       game:GetService("ReplicatedStorage").Purchase5:FireServer("Cheese")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Bread")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Cheese")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 3)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

cooking.Button({
   Text = "Space Soup",
   Callback = function()
       local coord = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12477, 58, -16091)
       wait(0.2)
       game:GetService("ReplicatedStorage").Purchase2:FireServer("Almond Water")
       game:GetService("ReplicatedStorage").Purchase2:FireServer("Almond Water")
       wait(0.2)
       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = coord
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Almond Water")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Almond Water")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Meteorite")
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Add Ingredient", "Meteorite")
       wait(0.1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Change Temperature", 1)
       game:GetService("ReplicatedStorage").CookingEvent:FireServer("Cook")
   end,
})

credits.Label({
   Text = "Made By Dex"
})

credits.Button({
   Text = "V3RM",
   Callback = function()
       setclipboard("https://v3rmillion.net/member.php?action=profile&uid=2306589")
       DexLoader.Banner({
           Text = "Copied to your Clipboard!"
       })
   end,
})

credits.Button({
   Text = "Website",
   Callback = function()
       DexLoader.Banner({
           Text = "binarydex.net"
       })
   end,
})