autocollectitems = true
while autocollectitems do wait()
    pcall(function()
for i,v in pairs(workspace.Islands:GetDescendants()) do
  if v.Name == "Drops" then
    for i2,v2 in pairs(v:GetChildren()) do
            if v2:IsA("Tool") then
                local args = {
                 [1] = {
                 ["tool"] = v2,
               ["player_tracking_category"] = "join_from_web"
             }
            }
              game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(unpack(args))
             end
        end
    end
end
end)
end