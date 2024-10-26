
local ohTable1 = {
	["Pricing"] = -999999999999,
	["Active"] = false,
	["Name"] = "GreenScape",
	["Purpose"] = {
		[1] = "OvergrownGrass"
	},
	["Description"] = "Transforming ordinary yards into extraordinary retreats, we are your landscaping experts.",
	["EligableJobs"] = {
		["Weeds"] = {
			["ServiceTime"] = 5
		},
		["OvergrownGrass"] = {
			["ServiceTime"] = 5
		}
	}
}
local ohInstance2 = workspace.Map.Properties.TambridgeResidential.Plot
local ohNumber3 = -999
local ohNumber4 = -999

game:GetService("ReplicatedStorage").Events.ServiceHired:FireServer(ohTable1, ohInstance2, ohNumber3, ohNumber4)