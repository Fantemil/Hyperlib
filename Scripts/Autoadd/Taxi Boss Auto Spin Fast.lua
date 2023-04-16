_G.test = true
while _G.test do
wait()
local test = game:GetService("CoreGui").RobloxGui.PerformanceStats:GetChildren()
local test2=test[6].StatsMiniTextPanelClass.ValueLabel.Text:split("ms")
if game:GetService("Players").LocalPlayer.Data.eggs.Value >= 2 and tonumber(test2[1]) <5000 then
wait()
for i=1,10000 do
   task.spawn(function()
game:GetService("ReplicatedStorage").SpinWheel:InvokeServer()
end)
end
wait(10)
end
end