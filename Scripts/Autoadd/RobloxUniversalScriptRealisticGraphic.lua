--//Settings
BlurAmount = 20 -- 

--//Declarations
Camera  = game.Workspace.CurrentCamera
Last  = Camera.CFrame.lookVector
Blur  = Instance.new("BlurEffect",Camera)

--//Logic
game.Workspace.Changed:connect(function(p) --
 if p == "CurrentCamera" then
  Camera = game.Workspace.CurrentCamera
  if Blur and Blur.Parent then
   Blur.Parent = Camera
  else
   Blur = Instance.new("BlurEffect",Camera)
  end
 end
end)

game:GetService("RunService").Heartbeat:connect(function()
 if not Blur or Blur.Parent == nil then Blur = Instance.new("BlurEffect",Camera) end --
 
 local magnitude = (Camera.CFrame.lookVector - Last).magnitude -- 
 Blur.Size = math.abs(magnitude)*BlurAmount -- 
 Last = Camera.CFrame.lookVector -- 
end)