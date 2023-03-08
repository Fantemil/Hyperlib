while wait() do 
    -- Water Puddle task--
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_Puddle.TaskStarted:FireServer()

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_Puddle.TaskCompleted:FireServer(true)

-- Make A Bed Task-- 
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_MakeBed.TaskStarted:FireServer() 

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_MakeBed.TaskCompleted:FireServer(true) 

-- Pipe Leak Task--
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_CoolantPipe.TaskStarted:FireServer()

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_CoolantPipe.TaskCompleted:FireServer(true)

--Install Screws Task--
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_InstallScrews.TaskStarted:FireServer()

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_InstallScrews.TaskCompleted:FireServer(true)

-- Pipe Maze Task--
game:GetService("ReplicatedStorage").TaskReplication.RepInfo_PipeMaze.TaskStarted:FireServer()

game:GetService("ReplicatedStorage").TaskReplication.RepInfo_PipeMaze.TaskCompleted:FireServer(true)
end

--Special Thanks to--
 -- exx#9394 --
 -- Shnigel#2796 --
 -- OWNER OF THE SCRIPT: $ dtblue#3963--
-- PLEASE GIVE ME CREDITS--