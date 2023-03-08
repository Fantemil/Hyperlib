getgenv().TrainBreath= false; -- false/true
while wait () do
   if getgenv().TrainBreath== true then
    wait()
    local args = {
    [1] = "buysomething",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = "Big Gourd",
    [4] = game:GetService("ReplicatedStorage").Player_Data:FindFirstChild("6dxsired").Yen,
    [5] = game:GetService("ReplicatedStorage").Player_Data:FindFirstChild("6dxsired").Inventory
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
wait(2)
local speaker = game.Players.LocalPlayer

for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
  if v:IsA("Tool") and v.Name == "Big Gourd" then
   v.Parent = speaker.Character
  end
end
wait(1)
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "blow_in_gourd_thing",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Big Gourd"),
    [4] = 3
}

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
wait(1)
   end
end