game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(400,70)
wait(4.3)

getgenv().Dababy = true
spawn(function()
while Dababy do wait() 
    pcall(function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(600,70)
end) end end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)