-- amm ammmm this script is simple

_G.health = true -- true / false

while _G.health do
     wait()
     game:GetService("ReplicatedStorage").MoreHealth:FireServer()
end