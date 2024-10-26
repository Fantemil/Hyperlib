----- Open Source Script
----- By Liebert
----- Credit me
_G.tackle = true
_G.kick = true

function tackle()
while _G.tackle == true do
game:GetService("ReplicatedStorage").Events.faceBall:FireServer()
local args = {
    [1] = workspace.BallsInPlay.Ball,
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.Slide:FireServer(unpack(args))
wait(.00000000000001)
end
end

function kick()
while _G.kick == true do
local args = {
    [1] = workspace.BallsInPlay.Ball,
    [2] = 1,
    [3] = true,
    [4] = false
}

game:GetService("ReplicatedStorage").Events.Kick:FireServer(unpack(args))
wait(.0000000000000000000001)
end
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()



OrionLib:MakeNotification({
	Name = "Running Latvix Hub....",
	Content = "Game : Soccer Proâ½(3v3)",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "Latvix Hub - Soccer Proâ½(3v3)", HidePremium = false, SaveConfig = true, ConfigFolder = "j", IntroText = "Latvix Hub"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local s = Tab:AddSection({
	Name = "====OP FEATURE===="
})
s:AddToggle({
	Name = "Spam Kick Ball",
	Default = false,
	Callback = function(value)
		_G.kick = value
		kick()
	end    
})
s:AddToggle({
	Name = "Spam Slide",
	Default = false,
	Callback = function(value)
		_G.tackle = value
		tackle()
	end    
})
local a = Tab:AddSection({
	Name = "====MISC===="
})

a:AddButton({
	Name = "Claim Normal Case",
	Callback = function()
      		local dapat = {
    [1] = 1
}
game:GetService("ReplicatedStorage").EventsTimeRewards.ClaimReward:FireServer(unpack(dapat))
  	end    
})

a:AddButton({
	Name = "Claim 1000 Coins",
	Callback = function()
      		local dapat = {
    [1] = 2
}
game:GetService("ReplicatedStorage").EventsTimeRewards.ClaimReward:FireServer(unpack(dapat))
  	end    
})

a:AddButton({
	Name = "Claim Ultra Case",
	Callback = function()
      		local dapat = {
    [1] = 3
}
game:GetService("ReplicatedStorage").EventsTimeRewards.ClaimReward:FireServer(unpack(dapat))
  	end    
})

a:AddButton({
	Name = "Claim Zombie Doge Ball",
	Callback = function()
      		local dapat = {
    [1] = 4
}
game:GetService("ReplicatedStorage").EventsTimeRewards.ClaimReward:FireServer(unpack(dapat))
  	end    
})

a:AddButton({
	Name = "Return To Lobby",
	Callback = function()
      		game:GetService("ReplicatedStorage").Events.ReturnToLobby:FireServer()
  	end    
})

a:AddButton({
	Name = "Change To The Red Team",
	Callback = function()
      	local args = {
    [1] = "Red"
}

game:GetService("ReplicatedStorage").Events.requestTeamChange:FireServer(unpack(args))
  	end    
})
a:AddButton({
	Name = "Change To The Blue Team",
	Callback = function()
      	local args = {
    [1] = "Blue"
}

game:GetService("ReplicatedStorage").Events.requestTeamChange:FireServer(unpack(args))
  	end    
})



OrionLib:Init()