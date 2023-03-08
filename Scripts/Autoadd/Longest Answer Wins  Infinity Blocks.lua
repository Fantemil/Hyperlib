local mmt = 100 -- how many blocks do you want?
-- don't do over 1000 because it takes forever to stop

game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(game:GetService("ReplicatedStorage").HintAnswer.Value,mmt)