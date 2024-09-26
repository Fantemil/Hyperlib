if game.PlaceId == 6428116890 then

 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
 
 local Window = OrionLib:MakeWindow({Name = "JmHolidaeHub Planet Clicker!", HidePremium = false, SaveConfig = true, ConfigFolder = " Julio"})

_G.AutoClick = true

function AutoClick( )
while _G.AutoClick == true do
game:GetService("ReplicatedStorage").ClickedButton:FireServer()

wait (0.0000000000000000001)
       end
end
local JogadorTab = Window:MakeTab({
	Name = "Click",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = JogadorTab:AddSection({
	Name = "Automatic-Click"
})

JogadorTab:AddToggle({
	Name = "Auto-Click",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
		AutoClick ( )
	end    
})
end