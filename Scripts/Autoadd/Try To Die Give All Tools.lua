local lplr=game:GetService("Players").LocalPlayer
local ch=lplr.Character or lplr.CharacterAdded:Wait()
for i,v in pairs(workspace.Levels:GetDescendants()) do
if v:IsA("Tool") and (not lplr.Backpack:FindFirstChild(v.Name) or v.Name:lower():match("bomb")) and v:FindFirstChild("Handle") and v:FindFirstChild("TouchInterest",true) then
firetouchinterest(ch:WaitForChild("HumanoidRootPart",10),v.Handle,0)
end
end
lplr=nil
ch=nil