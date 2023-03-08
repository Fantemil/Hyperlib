 while wait() do
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_MakeBed.TaskStarted:FireServer()
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_Puddle.TaskStarted:FireServer()
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_Puddle.TaskCompleted:FireServer(unpack(args))
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_MakeBed.TaskCompleted:FireServer(unpack(args))
end