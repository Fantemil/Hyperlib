getgenv().Autofarm = true
-- Very shit codded it was made in like 5 minutes lmao but its good

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
	if v.Name == "BOX1" then
		v.Parent.Name = "BoxJob"
		v.Parent.Parent.Name = "Jobs"
	end
end
repeat task.wait() until workspace:FindFirstChild("Jobs")

repeat task.wait() until workspace:WaitForChild("Jobs"):FindFirstChild("BoxJob")

local function getbox()
	if getgenv().Autofarm then
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Jobs.BoxJob.BOX1.CFrame*CFrame.new(0,24,0)

	   fireclickdetector(game:GetService("Workspace").Jobs.BoxJob.BOX1.ClickDetector)
	end
end

local function sellbox()
	if getgenv().Autofarm then
		local box = game:GetService("Players").LocalPlayer.Character:FindFirstChild("BOX") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("BOX")
		
		game:GetService("Workspace").Jobs.BoxJob.Job.CFrame = game:GetService("Workspace").Jobs.BoxJob.BOX1.CFrame -- funny 
		
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(box)

		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Jobs.BoxJob.Job.CFrame*CFrame.new(0,math.random(2,6),0)
	
	end
end

while getgenv().Autofarm do
	task.wait()
	local box = game:GetService("Players").LocalPlayer.Character:FindFirstChild("BOX") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("BOX")
	if not box then
		getbox()
	else
		sellbox()
	end
end