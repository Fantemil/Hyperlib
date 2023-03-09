_G.var = true
while wait() do
 if _G.var then
   local args = {
   [1] = 45,
   [2] = game:GetService("Players").NameGoesHere --Change username to who you want to make inf health
}

game:GetService("ReplicatedStorage").generalRemotes.hlEvent:FireServer(unpack(args))
 end
end