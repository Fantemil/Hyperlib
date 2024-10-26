local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/hoho_lib.lua", true))()

local win = lib:Window("Baconhack_26 Hub","Zombie lab",Color3.new(0.333333, 0.666667, 1))

local tab = win:Tab("Items")

local label = tab:Label("Label", properties) --properties: {["Visible"] = flase}

label:NewLabel("Enjoy the script", properties)

tab:Line()

tab:Button("Get Virus", function()

	game:GetService("ReplicatedStorage").Events.GiveVirus:FireServer()

end)

tab:Line()

tab:Button("Get Cure", function()

	game:GetService("ReplicatedStorage").Events.GiveCure:FireServer()

end)

tab:Line()

tab:Button("Get Mutant Virus", function()

	game:GetService("ReplicatedStorage").Events.GiveMuntantVirus:FireServer()

end)

tab:Line()

tab:Button(",Get Coffee", function()

	game:GetService("ReplicatedStorage").Events.GiveCoffee:FireServer()

end)

tab:Line()

tab:Button("Get Cheeseburger", function()

	game:GetService("ReplicatedStorage").Events.GiveCheeseBurger:FireServer()

end)