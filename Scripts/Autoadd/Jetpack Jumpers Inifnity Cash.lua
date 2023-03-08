getgenv().Infinite_Cash = true --//Change to false to stop//--

while getgenv().Infinite_Cash == true do
game:GetService("ReplicatedStorage").ProjectBlue_ClientNewLaunchEvent:FireServer()
game:GetService("ReplicatedStorage").ProjectBlue_ClientStopLaunchEvent:FireServer()
wait(0.1)
local plr = game:service"Players".LocalPlayer; local tween_s = game:service"TweenService"; local info = TweenInfo.new(1,Enum.EasingStyle.Quad); function tp(...) local tic_k = tick(); local params = {...}; local cframe = CFrame.new(params[1],params[2],params[3]); local tween,err = pcall(function() local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe}); tween:Play(); end) if not tween then return err end end tp(99999999999999999,10000000000000,999999999999999999);
wait()
end