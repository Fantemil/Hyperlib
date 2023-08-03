while true do 
local args = {
   [1] = false,
   [2] = 20
}

game:GetService("ReplicatedStorage").functionsAndEvents.rollDice:InvokeServer(unpack(args))
end