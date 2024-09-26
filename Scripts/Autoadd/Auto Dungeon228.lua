local p = game.Players.LocalPlayer

if not p.Character:FindFirstChild("BodyVelocity") then
local bv = Instance.new("BodyVelocity",p.Character.HumanoidRootPart)
bv.MaxForce = Vector3.new(9e9,9e9,9e9)
bv.Velocity = Vector3.new(0,0,0)

for i,v in next, p.Character:GetChildren() do
    if v:IsA("Part") and v.CanCollide==true then
        v.CanCollide=false
    end
end
end

local function GetWeapon()
for i,v in next, p.Character:GetChildren() do
if v.ClassName == "Model" and v:FindFirstChild("Handle") then
return v
end
end
end

while wait() do
for i,v in pairs(workspace.Enemies:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
repeat
wait()
p.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(-90),0,0) + Vector3.new(0,-11,0)
game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(
    "WeaponDamage",
    GetWeapon().Name,
    v.Humanoid
)
until v.Humanoid.Health <= 0 
end
end
end