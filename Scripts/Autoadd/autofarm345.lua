--turn off/on
getgenv().autorebirth = true -- turn to false to turn off
getgenv().autoclick = true -- turn to false to turn off

remote = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices

function tap()
spawn(function()
while getgenv().autoclick == true do
local args = {[1] = 1}
remote.ClickService.Click:FireServer(unpack(args))
task.wait()
end
end)
end

function autorebirth(rebirthamount)
spawn(function()
while getgenv().autorebirth == true do
local args = {[1] = rebirthamount}
remote.RebirthService.BuyRebirths:FireServer(unpack(args))
task.wait()
end
end)
end

-- rebirth settings
autorebirth(10000)
tap()