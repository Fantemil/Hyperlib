_G.pisseggs = true -- change to false if u want to stop
while _G.pisseggs == true do
    task.wait()
game:GetService("ReplicatedStorage").Remotes.GetEggs:InvokeServer(true) 
end