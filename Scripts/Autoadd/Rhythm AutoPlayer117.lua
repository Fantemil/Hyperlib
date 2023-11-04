-- Fact: Rhythm speed isnt actually INF, its like 20

local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local glove = chr:FindFirstChild("Rhythm")

if not glove then return end

local bars = plr.PlayerGui.Rhythm.MainFrame.Bars
bars.ChildAdded:Connect(function()
	task.delay(1.75, function()
		glove:Activate()
	end)
end)