while task.wait() do
local ohString1 = "PurchaseEgg"
local ohString2 = "Wireframe Egg" -- Change to desired egg name
local ohString3 = "Multi"

game:GetService("ReplicatedStorage")["UserIDEvent"]:FireServer(ohString1, ohString2, ohString3) -- put your own user id at the "UserIDEvent" part (example: "123Event")
end