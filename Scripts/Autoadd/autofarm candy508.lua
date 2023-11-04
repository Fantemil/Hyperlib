_G.Condition = true -- true turns it on, false turns it off
while _G.Condition == true do
local children = game.Workspace.CandyCorns:GetChildren()
for _, child in pairs(children) do
   for _, child in pairs(child:GetChildren()) do
       table.insert(children, child)
   end

   if child:IsA("Part") then
           child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       end
end
wait()
end