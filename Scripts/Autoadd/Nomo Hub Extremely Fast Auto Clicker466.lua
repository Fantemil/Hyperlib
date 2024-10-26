local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Nomo Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "NomoHub"})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local AutoClickEnabled = false
local ClickThreads = {}

function AutoClick()
    local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClickForSpeed")
    while AutoClickEnabled do
        Remote:InvokeServer()
    end
end

MainTab:AddToggle({
    Name = "Extreme Auto Click",
    Default = false,
    Callback = function(Value)
        AutoClickEnabled = Value
        if AutoClickEnabled then
            for i = 1, 100000 do  -- WARNING: This is extremely excessive and likely to cause issues
                local thread = coroutine.create(AutoClick)
                coroutine.resume(thread)
                table.insert(ClickThreads, thread)
            end
        else
            for _, thread in ipairs(ClickThreads) do
                coroutine.close(thread)
            end
            ClickThreads = {}
        end
    end    
})

OrionLib:Init()