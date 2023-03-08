local player=game:GetService("Players").LocalPlayer
local char=player.Character or player.CharacterAdded:Wait()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("Tool") and (not player.Backpack:FindFirstChild(v.Name) or v.Name:lower():match("bomb")) and v:FindFirstChild("Handle") and v:FindFirstChild("TouchInterest",true) then
firetouchinterest(char:WaitForChild("HumanoidRootPart",10),v.Handle,0)
end
end