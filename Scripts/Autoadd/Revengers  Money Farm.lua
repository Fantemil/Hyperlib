_G.On = true 
function Bye()
local a = game:GetService("Players").LocalPlayer.Backpack.Client
if a:FindFirstChild("ClientCheck") then a:FindFirstChild("ClientCheck"):Destroy()
   else end
   if a:FindFirstChild("Check") then a:FindFirstChild("Check"):Destroy()
       else end
end

wait(0.1)

Bye()

_G.On = false -- True to start as usual.

local Char = game.Players.LocalPlayer.Character

function TakeQuest()
   local args = {
   [1] = "kaoru",
   [2] = "take"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DialogueAnswer"):InvokeServer(unpack(args))
   
   task.wait(0.4)
Char:MoveTo(Vector3.new(1682.74, 41.1168, -1238.78))
 task.wait(0.3)
   fireclickdetector(game:GetService("Workspace").Game.JobStuff.Crates.ClickDetector)
   task.wait(0.4)
Char:MoveTo(Vector3.new(924, 40, -1109))
end

while _G.On == true do
wait(0.5)
TakeQuest()
end