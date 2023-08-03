_G.auto = true -- true or false
while _G.auto == true do
    wait()
    game:GetService("ReplicatedStorage").Functions.MakePost:FireServer()
end