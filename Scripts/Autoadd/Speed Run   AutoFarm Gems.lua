game:GetService("ReplicatedStorage").SetGamemode:FireServer("Ridiculous",true)
game:GetService("ReplicatedStorage").SetGamemode:FireServer("Impossible",true)
game:GetService("ReplicatedStorage").SetGamemode:FireServer("Ragequit",true)
game:GetService("ReplicatedStorage").SetGamemode:FireServer("Mirror",true)
game:GetService("ReplicatedStorage").SetZombieMode:FireServer(true)
local lands = {"Normal", "Peach Desert", "Cybernaut", "Moon", "Cosmic","Chromium","Birchock"}
while true do
   wait()
for i,v in pairs(lands) do
game:GetService("ReplicatedStorage").SetDimension:FireServer(v)
for i = 1,30 do
game:GetService("ReplicatedStorage").BeatLevel:FireServer(5.800519943237305,"Level "..tostring(i),v,false)
end
end
end