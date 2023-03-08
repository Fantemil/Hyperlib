--- made by joshclark756#7155
_G.oven = true
spawn(function()
   while _G.oven and wait() do
       for i,v in next,(game.Workspace.Ovens:GetChildren()) do
           v.Door.ClickDetector.Detector:FireServer()
           wait(0)
       end
   end
end)

_G.spam = true
spawn(function()
   while _G.spam and wait() do
       for i,v in next,(game:GetChildren()) do
           game.workspace.Extinguisher.Door.ClickDetector.Detector:FireServer()
           wait(0)
       end
   end
end)
 _G.window = true
spawn(function()
   while _G.window and wait() do
       for i,v in next,(game:GetChildren()) do
          workspace.DriveThroughWindow.ClickDetector.Detector:FireServer()
           wait(0)
       end
   end
end)
 _G.gate = true
spawn(function()
   while _G.gate and wait() do
       for i,v in next,(game:GetChildren()) do
          workspace.Gate.ClickDetector.Detector:FireServer()
           wait(0)
       end
   end
end)