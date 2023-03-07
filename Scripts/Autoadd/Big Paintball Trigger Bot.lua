local mouse = game:GetService("Players").LocalPlayer:GetMouse()
while true do if mouse.Target ~= nil and mouse.Target.Parent:FindFirstChild("Humanoid") then mouse1click() end task.wait() end