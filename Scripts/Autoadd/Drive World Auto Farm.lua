--antiafk
task.spawn(function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)
-- Make floor
local Part = Instance.new("Part")
Part.Parent = Workspace
Part.Position = Vector3.new(-1713, 20000, 20110)
Part.Size = Vector3.new(2048, 5, 2048)
print(Part)
Part.Anchored = true
local base = true
-- i x 300 = money
local i = 300
-- find car
local name = game.Players.LocalPlayer
for _, v in pairs (game:GetService("Workspace").Cars:GetDescendants()) do
    if v:IsA("ObjectValue") and v.Value == name and v.Name == 'Owner' then
        print(v.Parent)
    car = v.Parent
    end
end
car:SetPrimaryPartCFrame(CFrame.new(-2126, 9070, 989))
-- function
local function dollas()
car.Main.Anchored = false
car:SetPrimaryPartCFrame(CFrame.new(-1544, 20005, 21125))
car.Main.Velocity = Vector3.new(0,0,-430)
wait(5)
end
-- loop
while i > 0 do
dollas()
i = i - 1
print(i)
end
-- stop
car.Main.Anchored = true