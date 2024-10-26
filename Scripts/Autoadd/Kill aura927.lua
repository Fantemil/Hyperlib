local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My UI", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("KillAura")

-- KillAura variables
local killAuraEnabled = false
local killAuraRange = 20

-- KillAura function
local function killAura()
    while killAuraEnabled do
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= killAuraRange then
                local args = {
                    [1] = v.Character.Head.Position,
                    [2] = v.Character.Head
                }
                game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
            end
        end
        wait()
    end
end

-- KillAura toggle
Section:NewToggle("KillAura", "Automatically attacks nearby players", function(state)
    killAuraEnabled = state
    if killAuraEnabled then
        killAura()
    end
end)

-- KillAura range slider
Section:NewSlider("KillAura Range", "Sets the range for KillAura", 250, 0, function(value)
    killAuraRange = value
end)