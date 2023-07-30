--Cat Generator#7235
--https://discord.gg/ynVXtRyQ2Z
--// services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

--// importing the textures
local objs = game:GetObjects("rbxassetid://13481568688")
local import = objs[1]

import.Parent = game:GetService("ReplicatedStorage")

--// very epic index
index = {

	{
		name = "wood_sword",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-90)),
		model = import:WaitForChild("Wood_Sword"),
	},
	
	{
		name = "stone_sword",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-90)),
		model = import:WaitForChild("Stone_Sword"),
	},
	
	{
		name = "iron_sword",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-90)),
		model = import:WaitForChild("Iron_Sword"),
	},
	
	{
		name = "diamond_sword",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-90)),
		model = import:WaitForChild("Diamond_Sword"),
	},
	
	{
		name = "emerald_sword",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-90)),
		model = import:WaitForChild("Emerald_Sword"),
	},
	
	{
		name = "rageblade",
		offset = CFrame.Angles(math.rad(0),math.rad(-100),math.rad(-270)),
		model = import:WaitForChild("Rageblade"),
	},
	
}

--// main viewmodel renderer
local func = Workspace:WaitForChild("Camera").Viewmodel.ChildAdded:Connect(function(tool)
	
	if(not tool:IsA("Accessory")) then return end
	
	for i,v in pairs(index) do
	
		if(v.name == tool.Name) then
		
			for i,v in pairs(tool:GetDescendants()) do
	
				if(v:IsA("Part") or v:IsA("MeshPart") or v:IsA("UnionOperation")) then
				
					v.Transparency = 1
				
				end
			
			end
		
			local model = v.model:Clone()
			model.CFrame = tool:WaitForChild("Handle").CFrame * v.offset
			model.CFrame *= CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))
			model.Parent = tool
			
			local weld = Instance.new("WeldConstraint",model)
			weld.Part0 = model
			weld.Part1 = tool:WaitForChild("Handle")
			
			local tool2 = Players.LocalPlayer.Character:WaitForChild(tool.Name)
			
			for i,v in pairs(tool2:GetDescendants()) do
	
				if(v:IsA("Part") or v:IsA("MeshPart") or v:IsA("UnionOperation")) then
				
					v.Transparency = 1
				
				end
			
			end
			
			local model2 = v.model:Clone()
			model2.Anchored = false
			model2.CFrame = tool2:WaitForChild("Handle").CFrame * v.offset
			model2.CFrame *= CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))
			model2.CFrame *= CFrame.new(1,0,-.9)
			model2.Parent = tool2
			
			local weld2 = Instance.new("WeldConstraint",model)
			weld2.Part0 = model2
			weld2.Part1 = tool2:WaitForChild("Handle")
		
		end
	
	end
	
end)