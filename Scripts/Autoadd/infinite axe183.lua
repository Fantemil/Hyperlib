local tpp = game:GetService("Workspace").Axe.Handle.ClickDetector
local runservice = game:GetService("RunService")
local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()

fireclickdetector(tpp)
lp.Backpack.ChildRemoved:Connect(function(hh)
if hh:IsA("Tool") and hh.Name == "Axe" then
fireclickdetector(tpp)
end
end)
lp.CharacterAdded:Connect(function(hhh)
fireclickdetector(tpp)
lp.Backpack.ChildRemoved:Connect(function(hb)
if hb:IsA("Tool") and hb.Name == "Axe" then
fireclickdetector(tpp)
end
end)
end)
mouse.Button1Down:Connect(function()
if lp.Character then
for i,v in pairs(lp.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "Axe" and v:FindFirstChild("ServerControl") then
coroutine.wrap(function()
v.ServerControl:InvokeServer("Click",true,mouse.Hit.p)
end)()
end
end
else
lp.CharacterAdded:Wait()
for i,v in pairs(lp.Character:GetChildren()) do
if v:IsA("Tool") and v.Name == "Axe" and v:FindFirstChild("ServerControl") then
coroutine.wrap(function()
v.ServerControl:InvokeServer("Click",true,mouse.Hit.p)
end)()
end
end
end
end)

mouse.KeyDown:Connect(function(key)
if key:lower() == "q" and lp.Backpack ~= nil then
for i,v in pairs(lp.Backpack:GetChildren()) do
coroutine.wrap(function()
if v.Name == "Axe" and v:IsA("Tool") then
v.Parent = lp.Character
end
end)()
end
end
end)
lp.Backpack.ChildAdded:Connect(function(hh)
if hh:IsA("Tool") and hh.Name == "Axe" then
runservice.Stepped:Wait()
hh.Parent = game.Players.LocalPlayer.Character
end
end)
lp.CharacterAdded:Connect(function(hb)
lp.Backpack.ChildAdded:Connect(function(hh)
if hh:IsA("Tool") and hh.Name == "Axe" then
runservice.Stepped:Wait()
hh.Parent = game.Players.LocalPlayer.Character
end
end)
end)