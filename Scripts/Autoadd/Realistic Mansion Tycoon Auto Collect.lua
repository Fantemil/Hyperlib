while true do
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Main"):WaitForChild("CollectIncome"):InvokeServer()
end