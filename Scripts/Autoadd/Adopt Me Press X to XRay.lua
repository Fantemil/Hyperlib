local t=false
 
local function scan(z,t)
for _,i in pairs(z:GetChildren()) do
if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
i.LocalTransparencyModifier=t
end
 
scan(i,t)
end
end
 
function x(v)
if v then
scan(workspace,0.5)
else
scan(workspace,0)
end
end
 
game:GetService("UserInputService").InputBegan:connect(function (input)
if input.UserInputType==Enum.UserInputType.Keyboard and input.KeyCode==Enum.KeyCode.X then
t=not t
x(t)
end
end)