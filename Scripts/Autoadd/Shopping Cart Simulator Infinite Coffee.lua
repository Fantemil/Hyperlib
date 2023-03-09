function reward(type)
local events = game:GetService("ReplicatedStorage").Events
events.Update_Reward_Streak:FireServer(type)
wait()
end

local coffee = {
["Amount"] = 17e17,
   ["Type"] = "Coffee"
}
reward(coffee)