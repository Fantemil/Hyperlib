repeat
task.wait()
until game:IsLoaded()
task.wait()
local Players = game:GetService("Players")
if getconnections then
for _, v in next, getconnections(Players.LocalPlayer.Idled) do
v:Disable()
end
end
if not getconnections then
Players.LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
end