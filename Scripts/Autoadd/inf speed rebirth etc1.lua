getgenv().RebirthSpeed = math.huge -- edit this to speed u want, stay at  math.huge if u want to autofarm
getgenv().AutoRebirth = true -- false to disable. If disabled then will give speed
getgenv().Amount = 999999999999 -- edit this to whatever u want
---------------------------------- made by cat ok#1337, improved auto rebirth, credits to people who made dat shit or sum
local rs = game.ReplicatedStorage
while getgenv().AutoRebirth == true do
    task.wait()
    rs.GlobalFunctions.AddPlayerSpeed:FireServer(getgenv().RebirthSpeed,getgenv().RebirthSpeed)
    rs.GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
end
------------------------------------------------- if auto rebirth disabled
if getgenv().AutoRebirth == false then
rs.GlobalFunctions.AddPlayerSpeed:FireServer(getgenv().Amount,getgenv().Amount) -- gives the speed
end