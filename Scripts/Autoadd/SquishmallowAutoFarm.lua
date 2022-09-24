getgenv().toggle = true
while getgenv().toggle do
task.wait()
   for xd,v in pairs(game:GetService("Workspace").MetalDetecting.Beach:GetChildren()) do
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       for i = 1, 9 do
           local args = {
               [1] = "DigAtPosition",
               [2] = i
           }

           game:GetService("Players").LocalPlayer.RemoteFunction:InvokeServer(unpack(args))
       end
       task.wait(.1)
   end
end