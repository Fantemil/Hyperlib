getgenv().Enabled = true -- // change to "false" to disable

while task.wait() and getgenv().Enabled == true do
   local Game = Workspace:WaitForChild("Game", 9e9)
   local Ball = Game:WaitForChild("Ball", 9e9)
   local End = Game:WaitForChild("Model", 9e9):WaitForChild("End", 9e9):WaitForChild("End", 9e9)

   Ball.CFrame = End.CFrame
end