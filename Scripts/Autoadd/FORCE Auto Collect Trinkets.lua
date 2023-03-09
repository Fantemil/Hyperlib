--put it in a loop if u want it to work
local vm = game:GetService("VirtualInputManager")
for _,v in pairs(workspace:GetDescendants()) do
    if v:IsA("StringValue") and v.Name == "Rarity" then
        if (player.Character.HumanoidRootPart.Position - v.Parent.Position).magnitude < 3 then
            vm:SendKeyEvent(true, "E", false, game)
        end
    end
end