local Replicated = game:GetService("ReplicatedStorage")

getgenv().farm = true -- set to false to stop obviously.
while getgenv().farm == true do
   task.wait()
   
local args = {
   [1] = {
       [1] = "+BT1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
   [1] = {
       [1] = "+PP1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
   [1] = {
       [1] = "+JF1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
   [1] = {
       [1] = "+MS1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
wait()
local args = {
   [1] = {
       [1] = "+FS1"
   }
}
Replicated.RemoteEvent:FireServer(unpack(args))
end