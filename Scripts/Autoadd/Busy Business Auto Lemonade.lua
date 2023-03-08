loadstring(game:HttpGet(("https://raw.githubusercontent.com/noxydoesthings/roblox-scripts/main/badanticheatkick.lua"), true))()
repeat task.wait() until game:IsLoaded()

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hrp = chr.HumanoidRootPart

local plotsfolder = workspace.Plots

local plrplot = nil

for i,v in pairs(plotsfolder:GetDescendants()) do
   if v:FindFirstChild("Owner") and v.Owner:IsA("ObjectValue") then
       if tostring(v.Owner.Value) == plr.Name then
           plrplot = plotsfolder[tostring(v.Owner.Parent)]
       end
   end
end

while task.wait(.1) do
   for i,v in pairs(plrplot.Customers:GetChildren()) do
       if v.Name == "Customer" then
           game:GetService("ReplicatedStorage").Communication.CustomerOrder:FireServer(v)
           game:GetService("ReplicatedStorage").Communication.ServeCustomer:FireServer(v)
           game:GetService("ReplicatedStorage").Communication.UseMachine:FireServer(plrplot.Objects.Blender1, true)
       end
   end
end