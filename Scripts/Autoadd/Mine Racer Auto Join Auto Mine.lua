_G.Yes = true
while wait(0.05) do
if _G.Yes then
   local args = {
    [1] = "Join"
}

game:GetService("ReplicatedStorage").Remotes.joinEvent:FireServer(unpack(args))

local args = {
    [1] = "Mine"
}

game:GetService("ReplicatedStorage").Remotes.mineEvent:FireServer(unpack(args))
 
end
end