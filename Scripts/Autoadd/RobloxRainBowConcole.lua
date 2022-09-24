while true do
wait(0.01)
game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.BackgroundColor3 = Color3.fromHSV(tick()%5/5,1,1)
end