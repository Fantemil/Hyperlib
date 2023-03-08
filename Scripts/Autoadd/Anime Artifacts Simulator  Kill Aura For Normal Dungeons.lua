getgenv().dungeonAura = true

local player = game:GetService("Players").LocalPlayer

while dungeonAura and task.wait() do
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
       if string.match(v.Name, "monster") then
           game:GetService("ReplicatedStorage").Events.DmgEvent:FireServer(v)
       end
   end
end