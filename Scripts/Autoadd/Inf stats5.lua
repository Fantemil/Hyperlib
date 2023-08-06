local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Hatching sim 2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Pet Hatching sim 2"})


local Tab = Window:MakeTab({
	Name = "Give Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local statsSection = Tab:AddSection({
	Name = "Give you Inf Stats"
})

Tab:AddButton({
	Name = "Inf Coins",
	Callback = function()
      local args = {
    [1] = -1e+18,
    [2] = "Village",
    [3] = "Coins",
    [4] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))    
})




Tab:AddButton({
	Name = "Inf Gems",
	Callback = function()
        local args = {
            [1] = -1e+18,
            [2] = "Village",
            [3] = "Gems",
            [4] = true
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))         
})



Tab:AddButton({
	Name = "Inf Rebirth",
	Callback = function()
        local args = {
            [1] = -100000,
            [2] = "Teleport World",
            [3] = "Rebirths",
            [4] = true
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))         
})



Tab:AddButton({
	Name = "Inf Eggs",
	Callback = function()
        local args = {
            [1] = -100000,
            [2] = "Teleport World",
            [3] = "Eggs",
            [4] = true
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))         
})


OrionLib:Init()