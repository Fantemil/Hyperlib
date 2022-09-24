_G.tree = true

while _G.tree == true do wait(0.001)
for i,v in pairs(game:GetService("Workspace").ToolSpawner.CustomTool:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
game:GetService("ReplicatedStorage").ToolEvent:FireServer()
end