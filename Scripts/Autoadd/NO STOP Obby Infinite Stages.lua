_G.infStage = true
while _G.infStage and wait() do
   game:GetService("ReplicatedStorage")["Remote Events"]["Checkpoint Touched"]:FireServer(1, true)
end