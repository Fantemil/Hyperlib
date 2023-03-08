local UIS = game:GetService("UserInputService")
local Say = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
getgenv().SayAnswer = true -- change to true to make the script say your answer
if _G.Input ~= nil then
_G.Input:Disconnect()
_G.Input = nil
end
local Answer, AnswerRemote; for _, Obj in next, getgc(true) do
if type(Obj) == "table" and rawget(Obj, "CurrentAnswer") then
Answer = Obj
elseif type(Obj) == "table" and rawget(Obj, "libs") then
AnswerRemote = Obj.libs.Networking.Remotes.PlayerAnswer
end
end
_G.Input = UIS.InputBegan:Connect(function(Key, GPE)
if not GPE and Key.KeyCode == Enum.KeyCode.V then
local CurrentAnswer = Answer["CurrentAnswer"]
if SayAnswer then
Say:FireServer(CurrentAnswer, "All")
end
AnswerRemote:FireServer(CurrentAnswer)
end
end)