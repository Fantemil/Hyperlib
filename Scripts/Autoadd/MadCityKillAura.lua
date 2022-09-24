_G.VRR = true
while _G.VRR do
    for i,v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("Head") then
    for i = 1,5 do
local args = {
    [1] = "VR",
    [2] = v.Head,
}

game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
wait()
end
end
end
end