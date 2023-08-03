--[[
Enjoy The Open Source
Discord : https://discord.gg/vvJVj9Fzjv
]]

print("Source")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Break In (Story) | Source Code 03.s#6260 ", "DarkTheme")
local Tab = Window:NewTab("Give")
local Section = Tab:NewSection("Give")

Section:NewButton("Best Friend Cat", "Cat", function()

local args = {
    [1] = 244,
    [2] = true
}

game:GetService("ReplicatedStorage").RemoteEvents.DoDialogue:FireServer(unpack(args))



game:GetService("ReplicatedStorage").RemoteEvents.Cattery:FireServer()

    print("Clicked")
end)

Section:NewButton("Cooking Pan", "You Need to buy", function()

    local args = {
        [1] = "Pan",
        [2] = 0
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.BuyItem:FireServer(unpack(args))
    
    print("Clicked")
end)

Section:NewButton("Chips", "Give Chips", function()

local args = {
    [1] = "Chips"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)
Section:NewButton("Pizza", "Give Pizza", function()

local args = {
    [1] = "Pizza"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)
Section:NewButton("Give Cookie", "Give Cookie", function()

local args = {
    [1] = "Cookie"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)

Section:NewButton("Lollipop", "Give Lollipop", function()

local args = {
    [1] = "Lollipop"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)

Section:NewButton("Apple", "Give Apple", function()

local args = {
    [1] = "Apple"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)

Section:NewButton("BloxyCola", "Give BloxyCola", function()

local args = {
    [1] = "BloxyCola"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)

Section:NewButton("Cure", "Give Cure", function()

local args = {
    [1] = "Cure"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

    print("Clicked")
end)

Section:NewButton("MedKit", "Give MedKit", function()

    local args = {
        [1] = "MedKit"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
    
    print("Clicked")
end)


Section:NewButton("Linked Sword", "Give Linked Sword", function()

    local args = {
        [1] = "LinkedSword"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
    
    print("Clicked")
end)


Section:NewButton("Teddy Bloxpin", "Give Teddy Bloxpin", function()

    local args = {
        [1] = "TeddyBloxpin"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
    
    print("Clicked")
end)

Section:NewButton("Bat", "Give Bat", function()

    local args = {
        [1] = "Bat"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
    
    print("Clicked")
end)


local Tab = Window:NewTab("HotKey")
local Section = Tab:NewSection("HotKey")
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.Q, function()
	Library:ToggleUI()
end)
