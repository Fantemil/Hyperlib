-- t.me/arceusxscripts
local players = {}
for _, plr in pairs(game.Players:GetPlayers()) do
    table.insert(players, plr.Name)
end
local centerRaftBase = workspace:FindFirstChild("Center Raft") and workspace["Center Raft"]:FindFirstChild("Base")
if centerRaftBase then
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("RemoteEvent") and obj.Name == "StateEvent" then
            local pName = obj.Parent.Parent.Name
            if pName:match("Palm") or pName:match("Tree") or pName:match("Raft") or pName == "Crafting Table" or table.find(players, pName) then
                continue
            end
            print("Item found:", pName)
            obj:FireServer("held")
            wait(0.4)
            obj:FireServer("dropped", centerRaftBase.CFrame, {["Y"] = 1, ["X"] = 0}, Vector3.new(-1.02044677734375, 1.7915000915527344, 5.3248291015625))
        end
    end
end