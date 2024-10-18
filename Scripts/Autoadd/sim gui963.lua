local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Karen sim open source")

local KillingCheats = PhantomForcesWindow:NewSection("stuff here")

KillingCheats:CreateButton("inf coins will find a way", function()
    setclipboard("will find a way if I can")
end)

KillingCheats:CreateButton("Rage mode FE", function()
 local args = {
    [1] = "Enable"
}

game:GetService("ReplicatedStorage").Effects.RageEvent:FireServer(unpack(args))
end)

KillingCheats:CreateButton("complain then spam click", function()
  local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").RewardsEvent:FireServer(unpack(args))
end)

KillingCheats:CreateButton("go to last island", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(489.581146, 930.201294, -1762.63757, 1, 0, 0, 0, 1, 0, 0, 0, 1) wait()
end)

KillingCheats:CreateButton("nothing here will be replaced if I find sumin else", function()
 game.Players.localPlayer:kick("Really there is nothing here")
end)

KillingCheats:CreateButton("nothing here will be replaced if I find sumin else", function()
 game.Players.localPlayer:kick("Really there is nothing here")
end)

KillingCheats:CreateButton("get all places only 2 evo nd 2nd island", function()
  local args = {
    [1] = "Dealership",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))

local args = {
    [1] = "711",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Cake",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Steak",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Gym",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Burger",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Fish",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))
    
local args = {
    [1] = "Illuminati",
    [2] = 0
}

game:GetService("ReplicatedStorage").EntryEvent:FireServer(unpack(args))    
end)

KillingCheats:CreateButton("go to rocket on 1st island", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-158.652008, 248.801086, -1392.36646, 0, 0, 1, 1, 0, 0, 0, 1, 0) wait()
end)

local KillingCheats2 = PhantomForcesWindow:NewSection("Credits")

KillingCheats2:CreateButton("cred to zen_czx on discord for the ui", function()
setclipboard("All go's to him") 
end) 
    
KillingCheats2:CreateButton("he's discord", function()
    setclipboard("https://discord.gg/mRXTP9jW")
end)  
    
KillingCheats2:CreateButton("my discord soon", function()
    setclipboard("soon")
end)  
    
KillingCheats2:CreateButton("my tiktok @Chatbypass follow me", function()
    setclipboard("Pls follow me") 
end)  