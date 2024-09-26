if game.PlaceId == 16157820789 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
 
 local Window = OrionLib:MakeWindow({Name = "Legendary Tapping", HidePremium = false, SaveConfig = true, ConfigFolder = " Julio"})
 
_G.AutoClick = true
_G.AutoRebirth = true
_G.AutoBlitz = true

function AutoBlitz( )
while _G.AutoBlitz == true do
local args = {
    [1] = "Blitz",
    [2] = "Triple"
}

game:GetService("ReplicatedStorage").Functions.Hatch:InvokeServer(unpack(args))
wait (0.001)
end
end

function AutoRebirth( )
while _G.AutoRebirth == true do
game:GetService("ReplicatedStorage").Functions.IncreaseMastery:InvokeServer()
wait (0.001)
end
end

function AutoClick( )
while _G.AutoClick == true do
game:GetService("ReplicatedStorage").Events.Click:FireServer()
wait (0.0000001)
end
end

local JogadorTab = Window:MakeTab({
	Name = "MAIN",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = JogadorTab:AddSection({
	Name = "Main"
})

JogadorTab:AddToggle({
	Name = "Auto-Tapping",
	Default = false,
	Callback = function(Value)
	 _G.AutoClick = Value
	 AutoClick( )
	end
})
JogadorTab:AddToggle({
	Name = "Auto-Mastery",
	Default = false,
	Callback = function(Value)
	 _G.AutoRebirth = Value
	 AutoRebirth( )
	end
})
JogadorTab:AddToggle({
	Name = "BlitzEggTriple",
	Default = false,
	Callback = function(Value)
	 _G.AutoBlitz = Value
	 AutoBlitz( )
	end
})
end