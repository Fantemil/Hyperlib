while true do
    wait(0.1)
    pcall(function()
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer then
        local chr = v.Character
       
  if v.Character.RightHand:FindFirstChild("Saber") then
     
local A_1 = chr.LeftLowerLeg
local A_2 = chr.RightHand.Saber
local Event = game:GetService("ReplicatedStorage")["FatSaber_RS"].RemoteEvents.Aerial
Event:FireServer(A_1, A_2)
end
end
end
end)
end