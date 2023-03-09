local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()
local ESP = loadstring(game:HttpGetAsync("https://kiriot22.com/releases/ESP.lua"))()

ESP:AddObjectListener(workspace:FindFirstChild("Ingredients"), {
   Color =  Color3.new(0.015686, 0.560784, 0.090196),
   Type = "BasePart",
   CustomName = function(obj)
       return obj.Name
   end,
   IsEnabled = "IngredientESP"
})

ESP.IngredientESP = false
ESP.Players = false

ESP:Toggle(true)

local IngredientTab = Library:CreateTab("Ingredient ESP", "This is where you modify the Ingredient ESP.", true)

IngredientTab:CreateToggle("Enable ESP", function(arg)
   if arg then
       ESP.IngredientESP = true
   else
       ESP.IngredientESP = false
   end
end)

local PlayerTab = Library:CreateTab("Player ESP", "This is where you modify the Player ESP.", true)

PlayerTab:CreateToggle("Enable ESP", function(arg)
   if arg then
       ESP.Players = true
   else
       ESP.Players = false
   end
end)