local OldIndex = nil
local OldNameCall = nil
local VRService = game:GetService("VRService")
local UIS = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
Mouse = Mouse:GetMouse()
local alwaysTrueFunc = newcclosure(function(Self, type_)
 return true
end)
local VRBody = game:GetObjects("rbxassetid://12739770094")[1]
local button1down = false
local button2down = false
VRBody.Parent = workspace
spawn(function()
 while true do
  VRBody.Head.CFrame = workspace.CurrentCamera.CFrame
  task.wait(0)
 end
end)
spawn(function()
 while true do
  if button1down then
   VRBody["Left Arm"].CFrame = CFrame.new(VRBody["Left Arm"].Position, Mouse.hit.Position)
  end
  task.wait(0)
 end
end)
spawn(function()
 while true do
  if button2down then
   VRBody["Right Arm"].CFrame = CFrame.new(VRBody["Right Arm"].Position, Mouse.hit.Position)
  end
  task.wait(0)
 end
end)
Mouse.Button1Down:Connect(function()
 button1down = true
end)
Mouse.Button1Up:Connect(function()
 button1down = false
end)
Mouse.Button2Down:Connect(function()
 button2down = true
end)
Mouse.Button2Up:Connect(function()
 button2down = false
end)
local getUserCFrame = newcclosure(function(Self, type_)
 if type_ == Enum.UserCFrame.RightHand then
  return VRBody["Right Arm"].RightGripAttachment.WorldCFrame-VRBody.Head.Position
 elseif type_ == Enum.UserCFrame.LeftHand then
  return VRBody["Left Arm"].LeftGripAttachment.WorldCFrame-VRBody.Head.Position
 end
 return CFrame.new(0, 0, 0)
end)
OldIndex = hookmetamethod(game, "__index", newcclosure(function(Self, Key)
 if (Self == VRService or Self == UIS) and Key == "vREnabled" or Key == "VREnabled" then
  return true
 elseif Self == VRService and Key == "VRDeviceAvailable" or Key == "vRDeviceAvailable" then
  local scr = getcallingscript()
  if scr then
   if scr:IsA("LocalScript") or scr:IsA("Script") then
    return error("The current identity (2) cannot VRDeviceAvailable (lacking permission 5)", 2)
   else
    return true
   end
  else
   return true
  end
 end
 return OldIndex(Self, Key)
end))
hookfunction(VRService.getUserCFrameEnabled, alwaysTrueFunc)
hookfunction(VRService.GetUserCFrameEnabled, alwaysTrueFunc)
hookfunction(VRService.getUserCFrame, getUserCFrame)
hookfunction(VRService.GetUserCFrame, getUserCFrame)
hookfunction(UIS.getUserCFrame, getUserCFrame)
hookfunction(UIS.GetUserCFrame, getUserCFrame)
OldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
 local NamecallMethod = getnamecallmethod()
 if Self == VRService and NamecallMethod == "getUserCFrameEnabled" or NamecallMethod == "GetUserCFrameEnabled" then
  return true
 elseif (Self == VRService or Self == UIS) and NamecallMethod == "GetUserCFrame" or NamecallMethod == "getUserCFrame" then
  return getUserCFrame(Self, ...)
 end
 return OldNameCall(Self, ...)
end))
while true do
 firesignal(UIS.UserCFrameChanged, Enum.UserCFrame.Head, CFrame.new(0, 0, 0))
 firesignal(UIS.UserCFrameChanged, Enum.UserCFrame.LeftHand, getUserCFrame(nil, Enum.UserCFrame.LeftHand))
 firesignal(UIS.UserCFrameChanged, Enum.UserCFrame.RightHand, getUserCFrame(nil, Enum.UserCFrame.RightHand))
 firesignal(VRService.UserCFrameChanged, Enum.UserCFrame.Head, CFrame.new(0, 0, 0))
 firesignal(VRService.UserCFrameChanged, Enum.UserCFrame.LeftHand, getUserCFrame(nil, Enum.UserCFrame.LeftHand))
 firesignal(VRService.UserCFrameChanged, Enum.UserCFrame.RightHand, getUserCFrame(nil, Enum.UserCFrame.RightHand))
 task.wait(0)
end