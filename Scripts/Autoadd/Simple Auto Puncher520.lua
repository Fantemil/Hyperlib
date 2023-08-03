_G.autopunch = true -- change this to false to stop auto punch
while _G.autopunch == true do
local args = {  [1] = {[1] = "Activate_Punch"}}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
task.wait()
end
