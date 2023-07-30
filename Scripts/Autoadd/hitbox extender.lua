_G.PART = "HumanoidRootPart"
_G.PRED = 0.13960 -- dk prediction- 
_G.T = 0.9

local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()
local enabled = false
local Target
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
newcclosure(
function(...)
local args = {...}
if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
args[3] = Target[_G.PART].Position + (Target[_G.PART].Velocity * _G.PRED)
return old(unpack(args))
end
return old(...)
end)


game:GetService("RunService").RenderStepped:Connect(function() 
    
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
if mouse.Target == v.Character.HumanoidRootPart then
    Target = v.Character
    enabled = true
end
end
if v ~= game:GetService("Players").LocalPlayer then
if v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
v.Character.HumanoidRootPart.Transparency = _G.T
v.Character.HumanoidRootPart.CanCollide = false
else
v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.CanCollide = false
end
if v.Character:FindFirstChild("GRABBING_CONSTRAINT") then
    v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
    v.Character.HumanoidRootPart.Transparency = 1
    v.Character.HumanoidRootPart.CanCollide = false
end
end
end
if mouse.Target.Name == "HumanoidRootPart" then
enabled = true
else
enabled = false
end

end) 