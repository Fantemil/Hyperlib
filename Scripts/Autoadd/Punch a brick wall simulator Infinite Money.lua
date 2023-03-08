_G.AutoFarm = true -- change to false to stop



-------

--this checks if there is the multipler in the brick wall, and if not it adds it so you can more money, idk if needed but i havent tested w/o it so ill keep it.
for _, h in pairs(game:GetService("Workspace").Walls:GetDescendants()) do
    if h:IsA("Part") and h.Name == "Wall" then
        pt = h:GetChildren()
        if #pt == 0 then
        local mp = Instance.new("NumberValue")
        mp.Parent = h
        mp.Value = 300000000000
        mp.Name = "Multiplier"
        end
end
    end
--------

while _G.AutoFarm do
    workspace.UpgradeBone:FireServer()
    local args = {
    [1] = math.ceil(5* 1.9 ^ game.Players.LocalPlayer.BoneCount.Value),
    [2] = math.ceil(5* 1.9 ^ game.Players.LocalPlayer.BoneCount.Value)
}

workspace.AddBones:FireServer(unpack(args))

           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPart, 0)
wait()
                             firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPart, 1)
    end