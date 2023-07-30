local repStorage = game:GetService("ReplicatedStorage")
local addStrongEvent = repStorage.Events.Player.AddStrong

local function addStrongRepeatedly()
    for i = 1, 75 do --Please note that you can adjust the number 75 to a higher or lower value based on your needs. If you increase this value, the process will be faster, but your computer may not be able to handle it. Conversely, if you decrease this value, the process will be slower but may be safer for your system.
        addStrongEvent:FireServer("vip")
    end
end

while true do
    spawn(addStrongRepeatedly)
    wait(0.1)
end


Enable.MouseButton1Click:Connect(function()
    while true do
        spawn(addStrongRepeatedly)
        wait(0.1)
    end
end)