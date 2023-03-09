--the hood
local localPlayer = game:GetService("Players").LocalPlayer

local function booga()
   local closestPlayer = nil
 local shortestDistance = math.huge
   for i, v in pairs(game:GetService("Workspace").Ignored.MoneyDrops:GetChildren()) do
       if v:FindFirstChild("ClickDetector") then
           local magnitude = (v.Position - localPlayer.Character.Head.Position).magnitude

           if magnitude < shortestDistance then
               closestPlayer = v
               shortestDistance = magnitude
           end
       end
   end

   return closestPlayer
end
game:GetService"RunService".RenderStepped:Connect(function()
fireclickdetector(booga():FindFirstChild("ClickDetector"))
end)