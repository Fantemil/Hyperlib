local Dinos1 = {"Dinosaur1_3","Dinosaur2_3","Dinosaur3_3","Dinosaur4_3","Dinosaur5_3",
"Dinosaur6_3","Dinosaur7_3","Dinosaur8_3","Dinosaur9_3","Dinosaur10_3","Dinosaur11_3",
"Dinosaur12_3","Dinosaur13_3","Dinosaur14_3"}
for i,v in pairs(Dinos1) do
local dielan = {
[1] = "GoldBuyDinosaur",[2] = v}
game:GetService("ReplicatedStorage").RemoteEvents.BuyDinosaurEvent:FireServer(unpack(dielan))
end
task.wait(3)
local Dinos2={"Dinosaur15_3","Dinosaur16_3","Dinosaur17_3","Dinosaur18_3","Dinosaur19_3",
"Dinosaur20_3","Dinosaur21_3","Dinosaur22_3","Dinosaur23_3","Dinosaur24_3"}
for i,v in pairs(Dinos2) do
local dielan = {
[1] = "GoldBuyDinosaur",[2] = v}
game:GetService("ReplicatedStorage").RemoteEvents.BuyDinosaurEvent:FireServer(unpack(dielan))
end