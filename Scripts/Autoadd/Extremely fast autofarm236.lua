game:GetService("NetworkClient"):SetOutgoingKBPSLimit(99999)
while true do 
task.spawn(function()
for _,v in next,workspace.GameSystems.Eatables:GetChildren() do
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.SpaceService.RF.Encounter:InvokeServer(unpack(args))
end
task.wait()
end)
task.wait(4)
end