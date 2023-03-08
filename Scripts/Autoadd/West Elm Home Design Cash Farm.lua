while true do
   wait(1)
local args = {
   [1] = "Maze"
}
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.MinigameService.RE.AddPlayer:FireServer(unpack(args))

wait (5)
   local plr = game.Players.LocalPlayer
   local hitbox = plr.Character
   local End = game:GetService("Workspace").Maze.Finish.floor
       hitbox.HumanoidRootPart.CFrame = End.CFrame

   local InputManager = game:service'VirtualInputManager'
   wait(1)
    InputManager:SendKeyEvent(true, "E", false, game)
   
end