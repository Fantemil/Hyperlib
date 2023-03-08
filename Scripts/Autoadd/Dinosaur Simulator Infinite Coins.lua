local Monsters1 = {
workspace.Monsters.Monster_01.Monster.ScaledModel,
workspace.Monsters.Monster_01.Monster.Rabbit,
workspace.Monsters.Monster_01.Monster.Frog,
workspace.Monsters.Monster_01.Monster.Frogs,
workspace.Monsters.Monster_01.Monster.Turtle,
workspace.Monsters.Monster_01.Monster.Rat,
workspace.Monsters.Monster_01.Monster.Boar,
workspace.Monsters.Monster_01.Monster.Crocodile,
workspace.Monsters.Monster_01.Monster.Turtle,
workspace.Monsters.Monster_01.Food.Watermelos,
workspace.Monsters.Monster_01.Food.Apples,
workspace.Monsters.Monster_01.Food.Watermelon,
workspace.Monsters.Monster_01.Food.Apple,
workspace.Monsters.Monster_04.BOSS.Boss1,
workspace.Monsters.Monster_05.BOSS.Boss2,}
for i,v in pairs(Monsters1) do
local dielan = {
[1] = "AttackStaticFood",
[2] = v,
[3] = 1000000000, -- amount of coins u get when collect, change this if u want more or less, math.huge wont give u any so dont change to it
[4] = "Dinosaur1_3_1"}
game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(dielan))
end