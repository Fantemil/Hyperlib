local getupvalue = (getupvalue or debug.getupvalue)
local hookmetamethod = hookmetamethod or function(tbl, mt, func) return hookfunction(getrawmetatable(tbl)[mt], func) end
local Util = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Util/main/Load.lua"))()

repeat wait() until game:IsLoaded()
local Tablefind = table.find
local MinimumTime = 0.3
local players = game:GetService("Players")
local lplr = players.LocalPlayer

local Nofall
Nofall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if (method == "TakeDamage" and self.ClassName == "Humanoid") then
        return
    end
    return Nofall(self, unpack(args))
end))

do
    local Remotes = {
        "FireToDieInstantly",
        "LoadString",
        "FlyRequest",
        "FinishTimeTrial",
        "UpdateDunceList",
        "FF",
        "okbye",
        "Fling",
        "ClientFling",
        "LCombo",
        "SubmitCombo",
        "GetCurrentCombo",
        "MaxCombo",
        "UpdateCombo",
        "SetTrail",
        "InsertTrail",
    }

    local hook
    hook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if (method == "FireServer" and Tablefind(Remotes, self.Name)) then
            return
        end
        if (method == "InvokeServer" and Tablefind(Remotes, self.Name)) then
            return
        end
        return hook(self, unpack(args))
    end))
    
    local function onCharacterAdded(char)
        if (not char) then
            return
        end
        wait(1)
        local Main = lplr.Backpack:WaitForChild("Main")
        main = getupvalue(getsenv(lplr.Backpack:WaitForChild("Main")).resetAmmo, 1)
        getsenv(Main).adminLevel = 13
        getfenv().script = Main
    end
    
    onCharacterAdded(lplr.Character)
    lplr.CharacterAdded:Connect(onCharacterAdded)
end

local Bags = {"Uncommon", "Common", "Rare", "Epic", "Legendary", "Ultimate", "Resplendent"}

local Distance = function()
    local Closest = nil
    local Dist = math.huge
    for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("StringValue") and Tablefind(Bags, v.Value) then
            local Mag = (v.Parent.Union.Position - lplr.Character.HumanoidRootPart.Position).magnitude
            if Mag < Dist then
                Closest = v
                Dist = Mag
            end
        end
    end
    return Closest, Dist
end

local TeleportBag = function()
    local closestBag, distance = Distance()
    if closestBag then
        local Time = math.max(distance * 0.01, MinimumTime)
        Util.CTween:go(lplr, closestBag.Parent.Union.CFrame, Time)
    end
end

while task.wait(1) do
    TeleportBag()
end
