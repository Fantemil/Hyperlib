local replicated = game:GetService("ReplicatedStorage")
local multiplier = 15

while true do task.wait()
    for i = 1, multiplier do
        task.spawn(function()
          replicated.RSPackage.Events.GeneralFunction:InvokeServer("LotteryRandomDraw")
          replicated.RSPackage.Events.GeneralEvent:FireServer("SpinFinished")
        end)
    end
end