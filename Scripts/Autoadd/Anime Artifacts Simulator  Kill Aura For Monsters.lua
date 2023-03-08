getgenv().killAura = true

local player = game:GetService("Players").LocalPlayer

while killAura and task.wait() do
   for i,v in pairs(game:GetService("Workspace").Monsters[player.Stage.Value]:GetChildren()) do      
       game:GetService("ReplicatedStorage").Events.DmgEvent:FireServer(v)
   end    
end