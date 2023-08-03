local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("skInCode hub (1.16)", "Synapse")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("local player")


MainSection:NewButton("inf jump", "jump as high as you want it will never stop!", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

MainSection:NewToggle("Super-Human", "Go Fast and jump high", function(state)
    if state then
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("infinite yield script", "Roblox admin commands ( your Unstoppable)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


--LOCAL PLAYER
local Plaer = Window:NewTab("player")
local PlayerSection = Plaer:NewSection("LOCAL")

PlayerSection:NewSlider("Speed", "WalkSpeed but you can change it", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewButton("reset speed", "go back to yor Main speed (16)", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)