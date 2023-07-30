local dop = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
dop.Name = "rainbow pencil"
dop.GripPos = Vector3.new(0,0,2.5)
local dedp = Instance.new("Part",dop)
dedp.Name = "Handle"
dedp.Color = Color3.new(0,0,0)
dedp.Size = Vector3.new(1,1,5)
dop.Equipped:Connect(function()

while true do
if dop.Equipped then
dedp.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1))
wait(0.05)
else
break
end
end

end)