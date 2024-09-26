local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Femboy Ware (made by @kylosilly)",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local killAllEnabled = false
local autoClaimEnabled = false
local autoSpinEnabled = false
local selectedMethod = "Knife (OP)"
local killAllLoop = nil
local autoClaimLoop = nil
local autoSpinLoop = nil

Tab:AddDropdown({
    Name = "Select Kill Method (Have to hold tool)",
    Default = "Knife (OP)",
    Options = {"Revolver", "Knife (OP)"},
    Callback = function(Value)
        selectedMethod = Value
    end
})

Tab:AddToggle({
    Name = "Kill All NPCs",
    Default = false,
    Callback = function(Value)
        killAllEnabled = Value
        if killAllEnabled then
            if not killAllLoop or coroutine.status(killAllLoop) == "dead" then
                killAllLoop = coroutine.create(function()
                    while killAllEnabled do
                        local npcs = workspace:WaitForChild("NPCHolder"):GetChildren()

                        for _, npc in pairs(npcs) do
                            local humanoid = npc:FindFirstChild("Humanoid")
                            local upperTorso = npc:FindFirstChild("UpperTorso")
                            if humanoid then
                                if selectedMethod == "Revolver" and upperTorso then
                                    local args = {
                                        [1] = "Hit",
                                        [2] = humanoid,
                                        [3] = upperTorso
                                    }
game:GetService("Players").LocalPlayer.Character.Revolver.RemoteEvent:FireServer(unpack(args))
                                elseif selectedMethod == "Knife (OP)" then
                                    local args = {
                                        [1] = "Kill",
                                        [2] = humanoid
                                    }
                                    game:GetService("Players").LocalPlayer.Character.Knife.RemoteEvent:FireServer(unpack(args))
                                end
                            end
                        end
                        task.wait(0.1)
                    end
                end)
                coroutine.resume(killAllLoop)
            end
        end
    end
})

Tab:AddToggle({
    Name = "Auto Claim 250 Kills",
    Default = false,
    Callback = function(Value)
        autoClaimEnabled = Value
        if autoClaimEnabled then
            if not autoClaimLoop or coroutine.status(autoClaimLoop) == "dead" then
                autoClaimLoop = coroutine.create(function()
                    while autoClaimEnabled do
                        local args = {
                            [1] = "250 Kills"
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ClaimTask"):FireServer(unpack(args))
                        task.wait(1)  -- wait a minute before claiming again to reduce load
                    end
                end)
                coroutine.resume(autoClaimLoop)
            end
        end
    end
})

Tab:AddToggle({
    Name = "Auto Spin Task Wheel",
    Default = false,
    Callback = function(Value)
        autoSpinEnabled = Value
        if autoSpinEnabled then
            if not autoSpinLoop or coroutine.status(autoSpinLoop) == "dead" then
                autoSpinLoop = coroutine.create(function()
                    while autoSpinEnabled do
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TaskWheel"):FireServer()
                        task.wait(1)
                    end
                end)
                coroutine.resume(autoSpinLoop)
            end
        end
    end
})

OrionLib:Init()