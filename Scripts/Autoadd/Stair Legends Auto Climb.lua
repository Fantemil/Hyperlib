local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()  
   local args = {
    [1] = math.random(1,1000)
}

game:GetService("ReplicatedStorage").Framework.Knit.Services.PlayerLogic.RF.Move:InvokeServer(unpack(args))  
end)