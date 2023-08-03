local LocalPlayer = game:GetService("Players").LocalPlayer

local Mt = getrawmetatable(game)
setreadonly(Mt, false)
local OldIndex = Mt.__index

local GCR = game:GetService("ReplicatedStorage"):WaitForChild("GCR", 5)
if not GCR then
    LocalPlayer:Kick("Could not find GCR remote function")
end

pcall(function()
    for _,Connection in next, getconnections(game:GetService("ScriptContext").Error) do
        Connection:Disable()
    end
end)

local OnClientInvoke
for _,v in next, getgc() do
    if type(v) == "function" then
        if getfenv(v).script and getfenv(v).script.Parent == nil then
            if #getupvalues(v) == 13 then
                if getupvalue(v, 4) == 1 and getupvalue(v, 7) == 8 then
                    OnClientInvoke = v                  
                end
            end
        end
    end
end

if not OnClientInvoke then
    LocalPlayer:Kick("Could not find OnClientInvoke callback")
end

local SpoofedResponse = {OnClientInvoke()}
GCR.OnClientInvoke = function()
    return unpack(SpoofedResponse)
end

Mt.__index = newcclosure(function(t, k)
    if not checkcaller() and tostring(k) == "SetCore" and getcallingscript().Parent == nil then
        return wait(9e19)
    end
    return OldIndex(t,k)
end)