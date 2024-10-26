local WalkSpeedSpoof = getgenv().WalkSpeedSpoof
if WalkSpeedSpoof then
    WalkSpeedSpoof.Disable()
end

local cloneref = cloneref or function(...)
    return ...
end

local GetDebugIdHandler = Instance.new("BindableFunction")

function GetDebugIdHandler.OnInvoke(obj: Instance): string
    return obj:GetDebugId()
end

local function GetDebugId(obj: Instance): string
    return GetDebugIdHandler:Invoke(obj)
end

local lp = cloneref(game:GetService("Players").LocalPlayer)
local split = string.split
local CurrentHumanoid = nil
local CurrentIndex = {}
local lastnewindex = {}

local newindexhook
local indexhook

indexhook = hookmetamethod(game, "__index", function(self, index)
    if not checkcaller() and typeof(self) == "Instance" then
        if self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) then
            if type(index) == "string" then
                local cleanindex = index:split("\0")[1]
                if cleanindex == "WalkSpeed" then
                    if not (CurrentHumanoid and CurrentHumanoid:IsDescendantOf(game)) then
                        CurrentHumanoid = cloneref(self)
                    end
                    return 16
                end
            end
        end
    end
    return indexhook(self, index)
end)

newindexhook = hookmetamethod(game, "__newindex", function(self, index, newindex)
    if not checkcaller() and typeof(self) == "Instance" then
        if self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) then
            if type(index) == "string" then
                local cleanindex = index:split("\0")[1]
                if cleanindex == "WalkSpeed" then
                    if CurrentHumanoid and CurrentHumanoid == self then
                        CurrentHumanoid.WalkSpeed = newindex 
                        return
                    end
                end
            end
        end
    end
    return newindexhook(self, index, newindex)
end)

getgenv().WalkSpeedSpoof = {
    Disable = newcclosure(function()
        hookmetamethod(game, "__index", indexhook)
        hookmetamethod(game, "__newindex", newindexhook)
        GetDebugIdHandler:Destroy()
        table.clear(getgenv().WalkSpeedSpoof)
    end)
}

CurrentHumanoid = lp.Character:FindFirstChildOfClass("Humanoid")
if CurrentHumanoid then
    CurrentHumanoid.WalkSpeed = 50 -- Set desired walkspeed
end