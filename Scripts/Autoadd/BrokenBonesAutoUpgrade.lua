getgenv().upgrader = true;--change to false to turn off

while wait() do
   if getgenv().upgrader == true then
      local A_1 = "Breaks"--change to whatever upgrade you want
        local Event = game:GetService("ReplicatedStorage").Remotes["Player_UpgradeLevel"]
       Event:FireServer(A_1)
    end
end