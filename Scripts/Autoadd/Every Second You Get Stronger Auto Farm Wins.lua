--Script
getgenv().Farm = true --Change "true" to "false" if you want to disable the script
while getgenv().Farm == true do task.wait() --Loop
   pcall(function() --Because I am lazy and don't wanna spend time optimizing
       for i,v in pairs(game:GetService("Workspace").Area11.Folder:GetDescendants()) do
           if v.Name == "Baseplate" and v:FindFirstChildWhichIsA("TouchTransmitter") then
               firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,0) --This gets you the ez wins
               task.wait(.2)
               firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
           end
       end
   end)
end