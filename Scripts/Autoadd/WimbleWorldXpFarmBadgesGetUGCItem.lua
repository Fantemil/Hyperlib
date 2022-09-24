local r = game:GetService("ReplicatedStorage").Court_LeaveMatch
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
for _ = 1,2000 do 
    r:FireServer()
end