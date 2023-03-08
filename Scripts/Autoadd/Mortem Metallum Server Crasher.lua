local plr = game.Players.LocalPlayer
local dupe = {}
local ToDupe = " " -- making it empty so it destroys everything
for i=1,10000  do table.insert(dupe,tonumber(1)) end
settings().Network.IncomingReplicationLag = math.huge
local c1 = workspace.Explosions.ChildAdded:Connect(function(n)
    if n.Name == "Part" and n:IsA("BasePart") then
        task.wait()
        n:Destroy()
    end
end)
local c2 = plr.Backpack.ChildAdded:Connect(function(n)
    if n.Name ~= ToDupe and n:IsA("Tool") then
        task.wait()
        n:Destroy()
    end
end)
task.wait()
for i,v in pairs(dupe) do
    local h = v
    local args = {
        [1] = h,
        [2] = "0:0:0:0"
    }
    game:GetService("ReplicatedStorage").Item:FireServer(unpack(args))
end
task.wait(0.5)
settings().Network.IncomingReplicationLag = 0
task.wait(#dupe/19)
c1:Disconnect()
c2:Disconnect()