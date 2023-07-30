local Functions, Information = {}, {}
local Client = game:GetService("Players").LocalPlayer
local Character = Client.Character
shared.Farm = true
shared.Silo = "Silo Name"


function Information:GetNukes()
	local nukes = {}
	for _, nuke in next, game:GetService("Workspace").Nukes:GetChildren() do
		table.insert(nukes, nuke.Name)
	end
	return nukes
end


function Information:GetClosest()
	local closestDist, build = math.huge, nil
	for _, v in next, game:GetService("Workspace").Buildings:GetDescendants() do
		if v:IsA("Model") and v.Parent:IsA("Folder") and v:FindFirstChild("stages") then
			local distance = Client:DistanceFromCharacter(v:GetPivot().p)
			if distance < closestDist then
				closestDist = distance
				build = v
			end
		end
	end
	return build
end

function Information:GetSilos()
	local silos = {}
	for _, v in next, game:GetService("Workspace").Silos:GetChildren() do
		table.insert(silos, v.Name)
	end
	table.sort(silos, function(A, Z)
		return A < Z
	end)
	return silos
end

function Information:GetZones()
	local zones = {}
	for _, v in next, game:GetService("Workspace").TeleportLocations:GetChildren() do
		table.insert(zones, v.Name)
	end
	table.sort(zones, function(A, Z)
		return A < Z
	end)
	return zones
end



function Functions:Attack()
	local closest = Information:GetClosest().Name
	local nukes = Information:GetNukes()
	local args = {
		[1] = nukes,
		[2] = closest
	}
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.NukeService.RE.Attack:FireServer(unpack(args))
	task.wait(.1)
end

function Functions:CollectDrops()
	for _, v in next, game:GetService("Workspace").CurrencyDrops:GetChildren() do
		Character:PivotTo(v:GetPivot())
	end
end


function Functions:ClaimRewards()
	for _, v in next, Client.PlayerGui.HUD.TimeRewards.Rewards:GetChildren() do
		if v:IsA("Frame") and v.Background.Completed.Visible == false then
			game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimeRewardsService.RE.ClaimReward:FireServer(v)
			task.wait(0.1)
		end
	end
end

function Functions:ClaimNormal()
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ChestService.RE.Claim:FireServer("NormalChest")
end

function Functions:Hatch()
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EggService.RF.Buy:InvokeServer(shared.Silo)
end

function Functions:Teleport()
	game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TeleporterService.RF.TeleportTo:InvokeServer(shared.Zone)
end

-- Usage for functions are Functions:[Function Name]

--[[
Example usage for farming:

while shared.Farm do
    task.wait()
    Functions:Attack()
end

]]

--[[
For a list of all the silos so you can use the auto hatch, do this:

local silos = Information:GetSilos()
print(table.concat(silos, "\n"))

]]