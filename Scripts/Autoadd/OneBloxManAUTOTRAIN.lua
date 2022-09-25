getgenv().SpeedTrain = false
getgenv().DefenseTrain = false
getgenv().StrengthTrain = false
getgenv().TrainAll = true

if getgenv().TrainAll then
   while getgenv().TrainAll do
       wait()
       local args = {
   [1] = "Strength"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
local args = {
   [1] = "Defense"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
local args = {
   [1] = "Speed"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
end
else
   
if getgenv().StrengthTrain then
while getgenv().StrengthTrain do
   wait()
local args = {
   [1] = "Strength"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
end
else if getgenv().DefenseTrain then
   while getgenv().DefenseTrain do
wait()
local args = {
   [1] = "Defense"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
end
elseif getgenv().SpeedTrain then
   
while getgenv().SpeedTrain do
   wait()
 

local args = {
   [1] = "Speed"
}

game:GetService("ReplicatedStorage").Events.Training:FireServer(unpack(args))
end
end
end
end