-- special thanks to: https://scriptblox.com/script/PARKOUR-Halloween-bag-auto-farm-9167

-- to refresh the texts, simply rerun the script
wait(1)
SPECIFIC_NAME = "Konethorix"
plr = game.Players:FindFirstChild(SPECIFIC_NAME) or game.Players.LocalPlayer

oldcontainer = workspace:FindFirstChild("MARKERTAINER")
if oldcontainer then oldcontainer:Destroy() end

container = Instance.new("Folder")
container.Name = "MARKERTAINER"
container.Parent = workspace

--//////////////////////////////////////

function checkValid(bag)
	-- check if the bag is touching anything and not floating in mid air or deep inside a building
	local params = OverlapParams.new()
	params.FilterType = Enum.RaycastFilterType.Exclude
	params.FilterDescendantsInstances = {bag}
	local cf,size = bag:GetBoundingBox()
	local touchers = workspace:GetPartBoundsInBox(cf, size + Vector3.new(2,2,2), params)
	
	for _,v in pairs(touchers) do
		if v.CanCollide and v.Size.Magnitude >= 30 then
			local size = v.Size
			local relcf = v.CFrame:ToObjectSpace(cf)

			local relX = relcf.X
			local checkX = relX <= -size.X / 2 or relX >= size.X / 2

			local relZ = relcf.Z
			local checkZ = relZ <= -size.Z / 2 or relZ >= size.Z / 2

			local relY = relcf.Y
			local checkY = relY <= -size.Y / 2 or relY >= size.Y / 2

			if not checkX and not checkZ and not checkY then return false end
		end
	end

	return #touchers > 0
end

function mark(bag)
	local tip = Instance.new("Part")
	tip.CanTouch = false
	tip.CanQuery = false
	tip.Anchored = true
	tip.CFrame = bag:GetModelCFrame()
	tip.Transparency = 1
	tip.CanCollide = false
	tip.Parent = container
	local bill = Instance.new("BillboardGui")
	bill.AlwaysOnTop = true
	bill.Size = UDim2.new(0,30,0,30)
	bill.Adornee = tip
	bill.Parent = tip
	local lab = Instance.new("TextLabel")
	lab.Text = "distance"
	lab.Size = UDim2.new(1,0,1,0)
	lab.BackgroundTransparency = 1
	lab.TextStrokeTransparency = 0
	lab.TextColor3 = Color3.new(1,1,1)
	lab.TextScaled = true
	lab.Parent = bill 
end

rarity = {"Uncommon", "Common", "Rare", "Epic", "Legendary", "Ultimate", "Resplendent", "Halloween"}
for _,v in pairs(workspace:GetDescendants()) do
	if v:IsA("StringValue") and table.find(rarity, v.Value) and checkValid(v.Parent) then
		mark(v.Parent)
	end
end

while container.Parent do
	local root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
	if root then
		for _,tip in pairs(container:GetChildren()) do
			local dist = (tip.Position - root.Position).Magnitude
			local alpha = math.clamp(dist-50, 0, 1000)/1000
			local postalpha = math.sin(math.rad(alpha*90))^0.5

			local lab = tip.BillboardGui.TextLabel
			lab.TextColor3 = Color3.new(0,1,0):Lerp(Color3.new(1,1,1), postalpha)
			lab.Text = tostring(math.round(dist))	

			lab.Visible = dist <= 1500 and true or false
		end
	end
	wait()
end

