local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Break In 2 Made by playvoraa  and JN HH Gaming", "Ocean")
local Tab = Window:NewTab("Break In 2 Story")
local Section = Tab:NewSection("Ingame")
Section:NewButton("Get Rainbow Pizza", "gives you rainbow pizza that level up your strength or speed", function()     game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("RainbowPizza")
    print("Success Giving Rainbow Pizza")
end)
Section:NewButton("Get Golden Apple", "Golden Apple Heal Everyone", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("GoldenApple")
    print("Success Giving GoldenApple")
end)
Section:NewButton("Get Chips", "Give Chips", function()  game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Chips")
    print("Clicked")
end)
Section:NewButton("Get Apple", "credits jn HH gaming", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Apple")
    print("Clicked")
end)
Section:NewButton("Get GoldPizza", "Gold Pizza give 75+ healths", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("GoldPizza")
    print("Clicked")
end)
Section:NewButton("Get Key", "for Uncle Pete prison", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Key")
    print("Clicked")
end)
Section:NewButton("Get RainbowPizzaBox", "Box", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("RainbowPizzaBox")
    print("Clicked")
end)
Section:NewButton("Get Battery", "Get battery (braincells)", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Battery")
    print("Clicked")
end)
Section:NewButton("Get BloxyCola", "cola makes you faster at running", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("BloxyCola")
    print("Clicked")
end)
Section:NewButton("Give Pizza", "Pizza delicious", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Pizza")
    print("Clicked")
end)
Section:NewButton("Get Bottle", "Makes Training Faster", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Bottle")
    print("Clicked")
end)
Section:NewButton("Get Cookie", "Credits to jn HH gaming", function()
game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Cookie")
    print("Clicked")
end)
Section:NewButton("Get Rats", "Get Rats Give It to Secret Agent", function() game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Louise")
    print("Clicked")
end)
Section:NewButton("Get Armor", "Armor?", function()
local args = {
    [1] = 3,
    [2] = "Armor2",
    [3] = "Armor",
    [4] = "FoxIDM",
    [6] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Power Up Strength", "gigachad power", function()
local args = {
    [1] = "Strength"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Power Up Speed", "Goo fast", function()
local args = {
    [1] = "Speed"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Unlock Secret Ending", "secret ending unlocked", function()
local args = {
    [1] = "CrowbarCollected"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("LarryEndingEvent"):FireServer(unpack(args))
local args = {
    [1] = "MaskCollected"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("LarryEndingEvent"):FireServer(unpack(args))
local args = {
    [1] = "HatCollected",
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("LarryEndingEvent"):FireServer(unpack(args))
    print("Clicked")
end)
local Section = Tab:NewSection("Weapon")
Section:NewButton("Get Wrench", "Get that wrench iron", function()
local args = {
    [1] = 3,
    [2] = "Wrench",
    [3] = "Weapons",
    [4] = "FoxIDM",
    [6] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Get Broom", "broom weapon", function()
     local args = {
    [1] = 3,
    [2] = "Broom",
    [3] = "Weapons",
    [4] = "FoxIDM",
    [6] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Get Hammer", "Bonk", function()
     local args = {
    [1] = 3,
    [2] = "Hammer",
    [3] = "Weapons",
    [4] = "FoxIDM",
    [6] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
    print("Clicked")
end)
Section:NewButton("Get PitchFork", "what is pitchfork?", function()
    local args = {
    [1] = 3,
    [2] = "Pitchfork",
    [3] = "Weapons",
    [4] = "FoxIDM",
    [6] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
    print("Clicked")
end)
local Section = Tab:NewSection("Others")
Section:NewButton("INFINITY YIELD", "credits to the owner", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    print("Clicked")
end)
Section:NewButton("Inf Jumps", "credits to the owner", function() local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
    print("Clicked")
end)
Section:NewButton("Speed", "credits to the owner", function() function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 2
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
    print("Clicked")
end)
local Section = Tab:NewSection("PAY 2 WIN ROLES")
Section:NewButton("The Hacker", "gives you the hacker roles", function() game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Phone",true)
    print("Clicked")
end)
Section:NewButton("Nerd", "give you nerd roles", function()
game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Book",true)
    print("Clicked")
end)
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits to @playvoraa on yt")
local Section = Tab:NewSection("https://youtube.com/@playvoraa")
local Section = Tab:NewSection("Credits to JN HH Gaming")
local Section = Tab:NewSection("https://youtube.com/@JNHHGaming")