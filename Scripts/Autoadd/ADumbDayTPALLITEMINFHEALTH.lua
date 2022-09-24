itemtp = false
antiTS = false
antiKnock = false

local old
old = hookmetamethod(game, '__namecall', newcclosure(function(self,...)
    local args = {...}
    if tostring(self) == 'Knocked' and not checkcaller() and antiKnock then
        wait(9e9)
        return nil
    end
    return old(self,...)
end))

local old
old = hookmetamethod(game, '__namecall', newcclosure(function(self,...)
    local args = {...}
    if tostring(self) == 'Anchor' and tostring(getnamecallmethod()) == 'FireServer' and args[2] == true and antiTS then
        args[2] = false
        return self.FireServer(self,unpack(args))
    end
    return old(self,...)
end))

spawn(function()
    while wait() do
        for _,v in pairs(game:GetService("Workspace").SpawnedItems.NaturalSpawned:GetChildren()) do
            if itemtp then
            if v:IsA('Tool') then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild('Handle'), 0)
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild('Handle'), 1)
                end
            end
        end
    end
end)



local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/astraln/SentinelUILIB/main/UI.lua', true))()

local window = Library:Window('A Dumb Day')

local tab = window:Tab('Home')

tab:Toggle('Tp All Items', false, function(t)
   itemtp = t
end)


tab:Toggle('Anti TimeStop', false, function(t)
   antiTS = t
end)

tab:Toggle('Anti Knock', false, function(t)
   antiKnock = t
end)

tab:Button('Infinite Health', function()
   for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA('LocalScript') and v.Name ~= 'SynPrev' and v.Name ~= 'Client' then
            game:GetService("ReplicatedStorage").Stand:FireServer(v.Name..'Stand', 10, math.huge)
        end
    end
end)