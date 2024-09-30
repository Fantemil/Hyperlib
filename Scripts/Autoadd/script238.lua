local zombies = {}
local broshead = {}
local function applyzombie(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "mons"
	text.Adornee = inst
	text.Size = UDim2.new(0, 200, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = game.CoreGui.RobloxGui
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = inst.Name
	label.TextColor3 = Color3.new(1, 0, 0)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
	table.insert(zombies, text)
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "no title", HidePremium = false, SaveConfig = true, ConfigFolder = "ZombieStories"})
local Tab = Window:MakeTab({
	Name = "main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Zombies ESP",
	Default = true,
	Flag = "zombee",
	Save = true,
	Callback = function(Value)
		for _, cham in pairs(zombies) do
			cham.Enabled = Value
		end
	end    
})
Tab:AddToggle({
	Name = "Kinda Silent Aim",
	Default = true,
	Flag = "myhead",
	Save = true,
	Callback = function(Value)
		if not Value then
			for zombie, props in pairs(broshead) do
				if zombie and zombie:FindFirstChild("Head") then
					local head = zombie.Head
					head.Size = props.Size
					head.Transparency = props.Transparency
				end
			end
		end
	end
})
game.Workspace.Zombies.DescendantAdded:Connect(function(z)
	local head = z:FindFirstChild("Head")
	if z:IsA("Model") and head and not broshead[z] then
		broshead[z] = {
			Size = head.Size,
			Transparency = head.Transparency
		}
		if OrionLib.Flags.myhead.Value then
			head.Size = Vector3.new(20, 20, 20)
			head.Transparency = 0.8
		end
	end
end)
game.Workspace.Zombies.ChildAdded:Connect(function(inst)
	if OrionLib.Flags.zombee.Value then
		applyzombie(inst)
	end
end)