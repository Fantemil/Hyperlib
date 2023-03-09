_G.oneshot = true
while _G.oneshot do
local args = {
           [1] = "CreateModifier",
           [2] = {
               ["ModifierName"] = "Power Cube 1",
               ["ModifierFolderName"] = "AttackModifiers",
               ["chr"] = game:GetService'Players'.LocalPlayer.Character,
               ["Duration"] = 99999999999999,
               ["ModifierValue"] = 10000000
           }
       }
       
       game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer(unpack(args))    
task.wait(10)
end