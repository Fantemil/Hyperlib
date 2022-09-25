--if u need disable autofarm choose false

_G.AutoLifting = true;
_G.AutoSell = true
spawn(function()
while _G.AutoLifting ==  true do
    
local args = {
    [1] = {
        [1] = "GainMuscle",
    },}
wait()

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

end
end)



spawn(function()
    while _G.AutoSell == true do
local args = {
    [1] = {
        [1] = "SellMuscle",
    },
}
wait()
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
end)