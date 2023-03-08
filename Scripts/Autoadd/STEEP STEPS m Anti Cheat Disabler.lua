local char = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
for _, v in next, getconnections(hrp.ChildAdded) do
   if v.Function then
       hookfunction(debug.getupvalue(v.Function, 2), function() end)
   end
end