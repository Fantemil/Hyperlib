getgenv().click = true
while getgenv().click == true do
   task.wait()
local args = {
   [1] = "AddplayerSgin",
   [2] = 100000
}

game:GetService("ReplicatedStorage").HLK.Event.PlayerUserDataManger:FireServer(unpack(args))
end