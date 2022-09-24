game:GetService("RunService").Stepped:connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153.47319, 52.5, -4828.72021, -0.998862445, 4.47831461e-08, 0.0476949513, 4.73453277e-08, 1, 5.25903197e-08, -0.0476949513, 5.47886252e-08, -0.998862445)
end)

spawn(function()
   while wait () do
for i, v in pairs(workspace["Zombie Storage"]:GetChildren()) do wait()
if v:FindFirstChild("Head") then
local args = {
   [1] = {
       ["LaserProperties"] = {
           [1] = {
               [1] = "Neon",
               [2] = BrickColor.new(1003),
               [3] = Vector3.new(0, 0, 0),
               [4] = CFrame.new(Vector3.new(121, 200, 4869), Vector3.new(-0, -0, -1)),
               [5] = Vector3.new(150.73249816895, 24.428089141846, 114.7022857666),
               [6] = 9000000000,
               [7] = true,
               [8] = Vector3.new(0, 0, 0)
           }
       },
      ["RealTool"] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"),
      ["Tool"] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"),
       ["HumanoidTables"] = {
           [1] = {
               ["HeadHits"] = 10,
               ["THumanoid"] = v.Humanoid,
               ["BodyHits"] = 0
           }
       }
   }
}

game:GetService("ReplicatedStorage").Remotes.WeaponEvent:FireServer(unpack(args))
  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                       if v.ClassName == "Tool" and v:FindFirstChild("GunController") then
                           v.Parent = game.Players.LocalPlayer.Character
                       end end end end end end)
                       
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)