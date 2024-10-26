local curFood = nil
local eat = game:GetService("ReplicatedStorage").Remotes.Eat

while true do
	curFood = nil
	while curFood == nil do
		curFood = nil
		curFood = workspace.Waffles:GetChildren()[1]
		wait(0)
	end
	pcall(function()
		for _, v in pairs(curFood.Pieces:GetChildren()) do
			if v.Parent == curFood.Pieces then
				eat:FireServer(v)
				wait(0)
			end
		end
	end)
end