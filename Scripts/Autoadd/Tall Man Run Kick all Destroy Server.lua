local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Party Time",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "tallmanrun.destroyer"
}

local main = GUI:Tab{
 Name = "Created By Exxen#0001",
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

main:Button{Name = "Destroy Everything",Description = "Will kick localplayer",Callback = function()
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