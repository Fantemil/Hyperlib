local LocalPlayer = game:GetService("Players").LocalPlayer
local IdentifyExecutor = false
local RetrieveExecutor = identifyexecutor()

pcall(function()
 if RetrieveExecutor == "jit" then
  LocalPlayer:Kick("Stop Using JJSploit.")
 else
     print('You are cool person, ty for using RbxScript.com!')
 end
end)