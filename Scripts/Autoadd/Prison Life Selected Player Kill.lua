if not game:GetService("CoreGui"):FindFirstChild("__toK") then
local it = Instance.new("TextBox")
it.Parent = game:GetService("CoreGui")
it.Name = "__toK"
it.Text = "NAMEHERE" -- NAMEHERENAMEHERENAMEHERENAMEHERENAMEHERE NAMEHERE NAMEHERENAMEHERE
end
local function updateKiller(INPUT, gameProcessed)
if INPUT.UserInputType == Enum.UserInputType.MouseButton1 then
local target = game:GetService("Players").LocalPlayer:GetMouse().Target
if target.Parent:FindFirstChild("Humanoid") then
print("NEW TARGET: ", target.Parent.Name)
game:GetService("CoreGui")["__toK"].Text = target.Parent.Name
else if target.Parent.Parent:FindFirstChild("Humanoid")  then
print("NEW TARGET: ", target.Parent.Parent.Name)
game:GetService("CoreGui")["__toK"].Text = target.Parent.Parent.Name
end end
end
end
game:GetService("UserInputService").InputBegan:connect(updateKiller)
while wait() do
pcall(function()
for i,v in next, game:GetService("Players"):GetChildren() do
if v.Name == game:GetService("CoreGui")["__toK"].Text then
while v.Name == game:GetService("CoreGui")["__toK"].Text do
game:GetService("ReplicatedStorage").meleeEvent:FireServer(v); wait()
end
end
end
end)
end