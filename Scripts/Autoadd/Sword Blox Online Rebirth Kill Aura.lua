local Players = game:GetService("Players")
local Client = Players.LocalPlayer.Name
local RunService = game:GetService("RunService")
_G.Toggle = true
local function forloop()
   for Index, Value in next, workspace.Mobs:GetChildren() do
       RunService.Heartbeat:Wait(0)
       if (Value['HumanoidRootPart'].Position - workspace[Client]['HumanoidRootPart'].Position).magnitude < 50 then -- change 50 to whatever distance play around with it
           a = workspace.Mobs[Value.Name].Humanoid
           game:GetService("ReplicatedStorage").DamageMob:FireServer(a, false, workspace[Client].Sword.Middle)
       end  
   end
end
while _G.Toggle do
   pcall(forloop)
end