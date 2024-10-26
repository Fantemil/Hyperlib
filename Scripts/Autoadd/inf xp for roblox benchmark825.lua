a = true
while a == true do 
local args = {
    [1] = "Obby"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStat"):FireServer(unpack(args))
wait()
end