local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("skInCode hub (1.17)", "Midnight")

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
local Player = Window:NewTab("player")
local PlayerSection = Player:NewSection("LOCAL")

PlayerSection:NewSlider("Speed", "WalkSpeed but you can change it", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewButton("reset speed", "go back to yor Main speed (16)", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)


--Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("misc")

OtherSection:NewButton("Chat Bypass Script", "13+ bawaord", function()
    loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
end)

--nova
local Altgame = Window:NewTab("nova")
local AltgameSection = Altgame:NewSection("local nova")


AltgameSection:NewButton("FE Front Or Back Flip!", " ⚠️This script is over a year old, there's a change it's patched⚠️", function()
    --[[
This script is encrypted to prevent reposting. Run this whole script as normal. 
Join our discord 4 questions: www.guard.lol/discord
(F9) for errors. 
ID is: feflip
]]
local credit='guardscripts'
local url=('https://raw.githubusercontent.com/%s/myscripts/main/scriptinit.lua'):format(credit)
init=loadstring(game:HttpGet(url,true))
getgenv().xscriptId='ZmVmbGlw'
init()

--[[FeFlip | FE Front Or Back Flip!, 2022-06-26]]
end)