local LocalPlayer = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Settings = {
	Godmode = false,
	GodmodeConnection = nil,

	AntiNegative = false,
	AntiNegativeConnection = nil
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Tower Of Hax",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "TowerOfHax",
    IntroEnabled = false
})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Godmode",
	Default = false,
	Callback = function(Value)
        LocalPlayer.Character.KillScript.Enabled = not Value
	end    
})

Tab:AddButton({
    Name = "Instant Finish Tower",
    Callback = function()
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
			workspace.tower.sections.finish.exit.ParticleBrick.Position
		)
    end
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 300,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
        LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 300,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
        LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local Tab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Anti Annoy (Camera)"
})

Tab:AddToggle({
	Name = "Anti Negative",
	Default = false,
	Callback = function(Value)
		Settings.AntiNegative = Value
		if Value then
			game.Lighting.Negative.Enabled = false
		else
			game.Lighting.Negative.Enabled = true
		end
	end    
})

Tab:AddButton({
	Name = "Remove Fog",
	Callback = function()
		game.Lighting.FogEnd = 1200
  	end    
})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Information"
})

Tab:AddLabel("status> working / semi detected ð¡")
Tab:AddLabel("made by yousef029")

local Section = Tab:AddSection({
	Name = "Extra"
})

local gate = workspace.tower.sections.lobby.gate
if gate then
	local GateName = gate:FindFirstChildWhichIsA("Model")
	if GateName then
		if GateName.Name == "pro" then
			Tab:AddButton({
				Name = "Join Pro Server",
				Callback = function()
					firetouchinterest(LocalPlayer.Character.HumanoidRootPart, gate.gate, 0)
					firetouchinterest(LocalPlayer.Character.HumanoidRootPart, gate.gate, 1)
				  end
			})
		elseif GateName.Name == "noob" then
			Tab:AddButton({
				Name = "Join Noob Server",
				Callback = function()
					firetouchinterest(LocalPlayer.Character.HumanoidRootPart, gate.gate, 0)
					firetouchinterest(LocalPlayer.Character.HumanoidRootPart, gate.gate, 1)
				  end
			})
		end
	end
end

Tab:AddButton({
	Name = "Panic Exit",
	Callback = function()
        LocalPlayer.Character.KillScript.Enabled = true
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
        LocalPlayer.Character.Humanoid.JumpPower = 50
		Settings.AntiNegativeConnection:Disconnect()
		Settings.GodmodeConnection:Disconnect()
        OrionLib:Destroy()
  	end
})

Settings.AntiNegativeConnection = game.Lighting.Negative:GetPropertyChangedSignal("Enabled"):Connect(function()
	if Settings.AntiNegative then
		game.Lighting.Negative.Enabled = false
	else
		game.Lighting.Negative.Enabled = true
	end
end)

Settings.GodmodeConnection = LocalPlayer.Character.KillScript:GetPropertyChangedSignal("Enabled"):Connect(function()
	if Settings.Godmode then
		LocalPlayer.Character.KillScript.Enabled = false
	end
end)