getgenv().AutoHomeRun = true --false to disable

local connection

connection = game:GetService("RunService").RenderStepped:Connect(function()
    if AutoHomeRun then
        game:GetService("ReplicatedStorage").RF.Launch_Ball:InvokeServer(100)
    else
        connection:Disconnect()
    end
end)