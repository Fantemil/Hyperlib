--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end

--// Service \\--
local Players = game:GetService("Players")

--// Variable \\--
local Player = Players.LocalPlayer

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Hero by Ezpi#0474")
Window:AddToggle({
    text = "Enabled",
    callback = function()
        while Library.flags.Enabled do
            local Remote = Player:FindFirstChild("Fired", true)
            if Remote then
                Remote:FireServer(55, 0)
                Remote:FireServer(55, 10)
            else
                warn(":(")
            end
            wait(0.1)
        end
    end
})
Library:Init()