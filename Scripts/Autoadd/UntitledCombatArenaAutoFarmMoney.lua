spawn(function() -- made by: KylnDantas#6271
       getgenv().autoclicker = true -- change to false to stop
                               while getgenv().autoclicker == true do
                                   task.wait()
                               game:GetService("ReplicatedStorage").Events.InputKey:FireServer("LMB")
                               end
                           end)

   spawn(function()
       getgenv().skills = true -- change to false to stop
while getgenv().skills == true do
local keys = {
   'E','R','Z','C' -- change to your skills keys
}
local cooldown = 0
local keyrelease_delay = 0
do
   local s = game:GetService('VirtualInputManager')
   local wait = task.wait

   
       for _, key in ipairs(keys) do
           s:SendKeyEvent(true, key, false, nil)
           wait(keyrelease_delay)
           s:SendKeyEvent(false, key, false, nil)
       end
       wait(cooldown)
   end
end
end)
   
   getgenv().autofarm = true -- change to false to stop
   

    coroutine.wrap(function()
       while task.wait() do
           if getgenv().autofarm == true then
               pcall(function()
                   for i,v in pairs(game.Workspace.Entities:GetChildren()) do
                       if v:IsA("Model") and v.Name == "Regen Dummy" then -- if you want another dummy, change the name
                           if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                               repeat
                                   task.wait()
                                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(-5),0,0)
                               until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                           end
                       end
                   end
               end)
           end
       end
    end)()


game:GetService("RunService").RenderStepped:Connect(function()
   if autofarm == true then
       game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
end)