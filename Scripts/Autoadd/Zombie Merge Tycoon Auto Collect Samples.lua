_G.sample = true
while ( _G.sample == true ) do

game:GetService( "ReplicatedStorage" ).Signals.RemoteEvents.GetWoolRemote:FireServer( 17 )
task.wait()
game:GetService("ReplicatedStorage"):WaitForChild("Signals"):WaitForChild("RemoteEvents"):WaitForChild("PutRemote"):FireServer()
end