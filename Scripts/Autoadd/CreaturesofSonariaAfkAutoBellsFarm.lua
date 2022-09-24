-- Set everything to false to stop the farm

getgenv().BellFarm = true
getgenv().Bells = true
getgenv().Trivia_scrambler = true

local TriviaAnswer = "SubmitTriviaAnswer"
local Answer = {
["answer"] = "None"
}
local Scrambler = "ScramblerAnswer"
local Answer1 = "Ani"

-- Touching all the Presents

task.spawn(function()
   while getgenv().BellFarm == true do
       task.wait(0.5)
   for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if v.Name == "TouchInterest" and v.Parent.Name == "Present" then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
end
end
end
end)

-- gives wrong answer to Trivia and Scrambler (you still get bells for wrong answers)

task.spawn(function()
   while getgenv().Trivia_scrambler == true do
       task.wait(0.5)
       for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
       if v.Name == "Trivia" then
       game:GetService("Players").LocalPlayer.RemoteFunction:InvokeServer(TriviaAnswer, Answer)
       wait(1)
       v:Destroy()
       elseif v.Name == "Scramble" then
       game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(Scrambler, Answer1)
       wait(1)
       v:Destroy()
       end
       end
end
end)

-- Touch all the bells, can also be used to steal people's bells on the ground

task.spawn(function()
   while getgenv().Bells == true do
       task.wait(0.5)
       for i,v in pairs(workspace.DroppedWisps:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end)