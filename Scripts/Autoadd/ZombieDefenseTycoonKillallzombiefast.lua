--[[ Variables ]]
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local Client = RS:WaitForChild("CIient")
local Zombies = WS:WaitForChild("Zombies")


function Kill(v)
   spawn(function()
       if v:FindFirstChild("Humanoid") then
           repeat wait()
               Client:FireServer("FireShot", "Golden Gun",v:WaitForChild("Head"),0,0,0)
           until v.Parent == nil
       end
   end)
end

Zombies.ChildAdded:Connect(function(v)
   Kill(v)
end)

for _,v in pairs (Zombies:GetChildren()) do
   Kill(v)
end