local value = {
"money",
"diamond",
"skill",
"exp",
}
while true do 
for jaff = 1, 1000000000 do task.wait()
for i , v in pairs(value) do
local args = {
   [1] = "getLevelUpRewards",
   [2] = {
       ["category"] = v
   }
}

game:GetService("ReplicatedStorage").events.RemoteFunction_playerInfo:InvokeServer(unpack(args))
task.wait()
end
end
end