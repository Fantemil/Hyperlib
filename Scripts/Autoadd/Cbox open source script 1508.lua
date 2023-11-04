local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()local Window = OrionLib:MakeWindow({Name = "CBox", HidePremium = false,IntroTextEnabled = true, IntroText = ("Cbox"), SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Auto rebirth", 
	Icon = "rbxassetid://4483345998",
	Callback = function()
while wait() do
   game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.RebirthEvent:FireServer()
end
      		print("button pressed")
  	end    
})


Tab:AddButton({
	Name = "Auto click", 
	Icon = "rbxassetid://4483345998",
	Callback = function()
while wait() do
   game:GetService("ReplicatedStorage").ClickEvent:FireServer("Click")
end
      		print("button pressed")
  	end    
}) 
Tab:AddButton({
	Name = "Auto open OP pet egg",
	Icon = "rbxassetid://4483345998",
	Callback = function()
while wait() do game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.FreePackEvent:FireServer()
end
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Auto open event egg",
	Icon = "rbxassetid://4483345998",
	Callback = function()
while wait() do
   game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventEggEvent:FireServer()
end
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "Auto open alien egg",
	Icon = "rbxassetid://4483345998",
	Callback = function()
while wait() do
   game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.SpaceEggEvent:FireServer()
end
      		print("button pressed")
  	end    
})

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("mrbirdistheword - creator")