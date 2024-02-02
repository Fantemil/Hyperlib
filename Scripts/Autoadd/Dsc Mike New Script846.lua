local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Green Light Red Light Gamepasses - Mikeexc", "GrapeTheme")
local LocalPlayer = Window:NewTab("LocalPlayer")
local Gamepasses = Window:NewTab("Gamepasses")
local Gamehacks = Window:NewTab("Auto Wins")

-- Gamepasses
local gp = Gamepasses:NewSection("Guard/Frontman")

gp:NewButton("Become Frontman", "Become the Frontman this match.", function()
    local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("BecomeFrontman"):InvokeServer(unpack(args))
end)

gp:NewButton("Become Guard", "Become a Guard this match.", function()
    local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("GuardRemotes"):WaitForChild("BecomeGuard"):InvokeServer(unpack(args))
end)

-- LocalPlayer

local lp = LocalPlayer:NewSection("Movement")

lp:NewToggle("Fast Walk", "Flash walk speed", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

lp:NewButton("Infinity Yield", "Open an admin script (fly, jumppower, etc...)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

-- Auto Wins
local rg = Gamehacks:NewSection("Cookie Cutter")
rg:NewButton("Break the Game", "Spam this on cookie game if you are frontman.", function()
local args = {
    [1] = 1,
    [2] = "Triangle"
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("PickShape"):FireServer(unpack(args))

local args = {
    [1] = 2,
    [2] = "Triangle"
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("PickShape"):FireServer(unpack(args))
        
local args = {
    [1] = 3,
    [2] = "Triangle"
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("PickShape"):FireServer(unpack(args))
        
local args = {
    [1] = 4,
    [2] = "Triangle"
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("PickShape"):FireServer(unpack(args))
end)

rg:NewButton("Win Cookie Game", "Insta win cookie game.", function()
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("HoneyCombResult"):FireServer(unpack(args))
end)

local rope = Gamehacks:NewSection("Tough War")
rope:NewButton("Pull Max Strengh", "Spam this button while on Tough War.", function()
local args = {
    [1] = 0.9751851540058851
}

game:GetService("ReplicatedStorage"):WaitForChild("Pull"):FireServer(unpack(args))
end)

local glass = Gamehacks:NewSection("Glass Bridge")
glass:NewButton("Break Fake Glass", "Break all the fake glasses on the brigde.", function()
local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("1R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("1L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("2R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("2L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("3R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("3L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("4R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("4L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("5R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("5L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("6R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("6L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("7R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("7L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("8R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("8L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("9R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("9L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("10R")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("Glass"):WaitForChild("10L")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BreakGlass"):FireServer(unpack(args))
end)

local misc = Gamehacks:NewSection("Misc")
misc:NewButton("Teleport to Game", "Teleport from the lobby to the current game.", function()
local args = {
    [1] = workspace:WaitForChild("Mechanics"):WaitForChild("GoalPart1")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ReachedGoal"):FireServer(unpack(args))
end)

rope:NewButton("Kick Team 1", "Click just once or it will break the game.", function()
local args = {
    [1] = {
        [1] = "Team1",
        [2] = "Team1"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("SelectMatch"):FireServer(unpack(args))
end)

rope:NewButton("Kick Team 2", "Click just once or it will break the game.", function()
local args = {
    [1] = {
        [1] = "Team2",
        [2] = "Team2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("SelectMatch"):FireServer(unpack(args))
end)

rope:NewButton("Kick Team 3", "Click just once or it will break the game.", function()
local args = {
    [1] = {
        [1] = "Team3",
        [2] = "Team3"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("SelectMatch"):FireServer(unpack(args))
end)

rope:NewButton("Kick Team 4", "Click just once or it will break the game.", function()
local args = {
    [1] = {
        [1] = "Team4",
        [2] = "Team4"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("FrontmanRemotes"):WaitForChild("SelectMatch"):FireServer(unpack(args))
end)