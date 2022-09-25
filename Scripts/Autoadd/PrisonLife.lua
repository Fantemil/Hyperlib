while wait() do
a = game.Players:GetPlayers()
for i = 1,#a do v=a[i]
pcall(function()
local A_1={[1]={["Distance"]=30,["Cframe"]=v.Character.Head.CFrame},[2]={["Distance"]=30,["Cframe"]=v.Character.HumanoidRootPart.CFrame},[3]={["Distance"]=30,["Cframe"]=v.Character.Head.CFrame},[4]={["Distance"]=30,["Cframe"]=v.Character["Left Arm"].CFrame},[5]={["Distance"]=30,["Cframe"]=v.Character["Right Arm"].CFrame},[6]={["Distance"]=30,["Cframe"]=v.Character["Left Leg"].CFrame},[7]={["Distance"]=3,["Cframe"]=v.Character["Right Leg"].CFrame}}
local A_2 = game.Players.LocalPlayer.Character["M9"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
end)
end
end