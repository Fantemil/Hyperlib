for i,v in pairs(workspace.QuestionBoards:GetChildren()) do
   if v.Name == "Sign" then
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.QuestionService.RF.AnsweredQuestion:InvokeServer(v, 1)
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.QuestionService.RF.AnsweredQuestion:InvokeServer(v, 2)
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.QuestionService.RF.AnsweredQuestion:InvokeServer(v, 3)
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.QuestionService.RF.AnsweredQuestion:InvokeServer(v, 4)
end
end