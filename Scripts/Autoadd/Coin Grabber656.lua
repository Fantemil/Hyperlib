local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function firepp()
	while wait() do
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
				wait(1)
				fireproximityprompt(v) 
			end 
		end 
	end
end

_G.Debug = false

if not _G.Debug then
    _G.Window = OrionLib:MakeWindow({Name = "Beat your meat", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
elseif _G.Debug then
	_G.Window = OrionLib:MakeWindow({Name = "DebugMode", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
end

local Tab = _G.Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local enabled = false

Tab:AddToggle({
	Name = "Enable/Disable Coin Farm",
	Default = false,
	Callback = function(v)
		enabled = v
	end
})

while wait() do
	if enabled then
		firepp()
	end
end