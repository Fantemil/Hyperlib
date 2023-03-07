local Player = game:GetService("Players").LocalPlayer
local RepStorage = game:GetService("ReplicatedStorage")

local Submit = RepStorage.SubmittedAnswer
local Answer = RepStorage.HintAnswer

while task.wait(0.5) do
   if Player.PlayerGui:WaitForChild("TimeLeftQuestion"):WaitForChild("AnswerBox").Visible == true then
       local CurrentAnswer = Answer.Value
       local CurrentAnswerLength = string.len(CurrentAnswer)
       
       Player.PlayerGui:WaitForChild("TimeLeftQuestion"):WaitForChild("AnswerBox").Text = CurrentAnswer
       Submit:FireServer(CurrentAnswer, CurrentAnswerLength)
   end
end