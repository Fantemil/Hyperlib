local wait = 2

local Honey
for i,v in next, getgc() do
    if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) then
        local Constants = getconstants(v)
        
        if table.find(Constants, "Auto Collect") and table.find(Constants, "PrimaryPart") then
            Honey = getupvalue(v, 2)
        end
    end
end
while task.wait(wait) do
local Meow = {}
for i,v in next, Honey do
    table.insert(Meow, i)
end

game:GetService("ReplicatedStorage").Events.RemoteEvents.Honey:FireServer(Meow)
table.foreach(Honey, function(a,b)
    b[1]:Destroy()
    table.remove(Honey, table.find(Honey, b))
end)
end