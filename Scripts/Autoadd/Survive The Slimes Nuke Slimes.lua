local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/bacon"))()

local version, changelog = lib:GetInfo()
local window = lib:CreateWindow("Slime Nuker"..version)
local label = lib:CreateLabel(window, "Main")


local toggled = false
local toggle = lib:CreateToggle(window, "Nuke Slime", false, function(toggleState)
   toggled = not toggled
   while toggled and game:GetService('RunService').Heartbeat:Wait() do
         for k, v in pairs(game:GetService("Workspace").slimes:GetChildren()) do
                           local args = {
                               [1] = v,
                               [2] = 1000
                           }

                           game:GetService("ReplicatedStorage").shared.remotes.muteMusic:FireServer(unpack(args))
                       end
   end
end)

local label = lib:CreateLabel(window, "Bebo Mods")