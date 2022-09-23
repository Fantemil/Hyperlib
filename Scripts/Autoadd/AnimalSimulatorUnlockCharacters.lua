-- https://scriptblox.com/u/crimewave

while wait(1) do
 i = 1
 repeat
 local args = {
     [1] = workspace.Treasures["Treasure"..i]
 }

 game:GetService("ReplicatedStorage").TreasureEvent:FireServer(unpack(args))
 i+=1
until i == 6
end