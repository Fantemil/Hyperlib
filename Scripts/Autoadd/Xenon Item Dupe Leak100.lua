_G.on = true
while _G.on and wait() do
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(66, "Animations", "Exclusive")
end