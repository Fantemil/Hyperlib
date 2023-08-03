while true do

game:GetService("ReplicatedStorage").Events.Eat:FireServer()
game:GetService("ReplicatedStorage").Events.Sell:FireServer()

wait()
end