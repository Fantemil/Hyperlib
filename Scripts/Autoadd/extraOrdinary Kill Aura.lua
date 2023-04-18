-- Kill Aura
local hits = 1
while wait(.1) do 
game:GetService("ReplicatedStorage").Remotes.Punch:FireServer(tonumber(hits))
end