local bb = game.Workspace.Blocks:GetDescendants()
--Settings
local namescript = "susESP" --name of script lol
local wlist = {"CoalOre", "SteelOre", "GoldOre", "DiamondOre", "RubyOre"}
local colors = {
        Color3.fromRGB(1, 1, 1), --coal
        Color3.fromRGB(255, 255, 255), --steel
        Color3.fromRGB(254, 245, 54), --gold
        Color3.fromRGB(54, 163, 254), --diamond
        Color3.fromRGB(255, 54, 54), --ruby
    }
     
--Script Here   
for i,v in ipairs(bb) do
	local ray = 1
	local ree = v
	local a = false
	for e, p in ipairs(wlist) do
		if p == ree.Name then
            a = true
            ray = e
        end
    end
		
	if a == true then
        local Box = Instance.new("BoxHandleAdornment")
        Box.Name = namescript
        Box.Size = ree.Size
        Box.Adornee = ree
        Box.AlwaysOnTop = true
        Box.ZIndex = 10
        Box.Transparency = 0.69
        Box.Parent = ree
        Box.Color3 = colors[ray]
	end
end