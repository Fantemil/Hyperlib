----------------------------------------------------------------------------------------------
-- change = true to = false and Re-Execute to disable the autofarm

getgenv().Fool = true
-- DO NOT TOUCH ANYTHING BELOW THIS
while Fool == true do


local args = {
   [1] = "Accuracy",
   [2] = 1
}

game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))

local args = {
   [1] = "Start"
}

game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))
wait(3)
end
----------------------------------------------------------------------------------------------