local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Femboy Ware (made by @kylosilly", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local autoPullLever = false

Tab:AddToggle({
    Name = "Auto Pull Lever",
    Default = false,
    Callback = function(Value)
        autoPullLever = Value
        while autoPullLever do
            local slots = workspace.Games.Slots:GetChildren()
            local args = { [1] = "PullLever" }
            for _, slot in ipairs(slots) do
                if slot:FindFirstChild("Remotes") and slot.Remotes:FindFirstChild("PlayerAction") then
                    slot.Remotes.PlayerAction:FireServer(unpack(args))
                end
            end
            task.wait(0.2)
        end
    end
})

OrionLib:Init()