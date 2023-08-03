--server crash

coroutine.wrap(function()

while true do
EB_foundChild = game.Players.LocalPlayer.Character:FindFirstChild(tostring((tostring([[HumanoidRootPart]]))))
EB_created = Instance.new((tostring([[Part]])))
EB_created.Parent = game:FindFirstChild('Workspace')
if EB_created then
    EB_created[(tostring([[Position]]))] = EB_foundChild[tostring((tostring([[Position]])))]
end

task.wait()
end


end)()