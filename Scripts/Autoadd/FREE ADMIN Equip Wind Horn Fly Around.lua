game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":gear me 127506257")
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":fly")
 
while wait() do
if game.Players.LocalPlayer.Character:FindFirstChild("KOSSGustHorn") and game.Players.LocalPlayer.Character["KOSSGustHorn"]:IsA("Tool") then
game:GetService("Players").LocalPlayer.Character.KOSSGustHorn.RemoteEvent:FireServer("DO THE THING!!!")
end
end