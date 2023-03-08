getgenv().eventAura = true

local player = game:GetService("Players").LocalPlayer

while eventAura and task.wait() do
   local event = game:GetService("Workspace"):WaitForChild("CopybookFolder")
   for i,v in pairs(event:GetChildren()) do
       if string.match(v.Name, "monster") then
           game:GetService("ReplicatedStorage").Events.DmgEvent:FireServer(v)
       end
   end
   for i,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
       if string.match(v.Name, "monster") then
           game:GetService("ReplicatedStorage").Events.DmgEvent:FireServer(v)
       end
   end
end