local PushRequest = game:GetService("ReplicatedStorage").events.PushRE
local Push = game:GetService("ReplicatedStorage").events.push

game.RunService.RenderStepped:Connect(function()
   for i,v in next, game.Players:GetPlayers() do
       if v ~= game.Players.LocalPlayer then
           local Root = v.Character:FindFirstChild('HumanoidRootPart')
           if Root then
               PushRequest:FireServer(v)
               Push:FireServer(v, Root)
           end
       end
   end
end)