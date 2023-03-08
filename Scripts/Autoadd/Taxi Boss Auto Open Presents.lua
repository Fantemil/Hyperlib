_G.present = "legend" -- Basic Present = basic , Epic present = epic , Legendary Present = legend
_G.autoopen = true
_G.speed = 700
if _G.autoopen == true then
for i=1,_G.speed do
   print(i)
task.spawn(function()
while _G.autoopen do
game:GetService("ReplicatedStorage").Christmas.OpenPresent:InvokeServer(_G.present)
wait(1)
end
end)
end
end