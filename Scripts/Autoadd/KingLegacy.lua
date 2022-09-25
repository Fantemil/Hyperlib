 -- Variable
local player = game.Players.LocalPlayer
local remotes = {}
local amount = 1

-- Grab Remotes
function remote()
    local stats = player.PlayerGui:WaitForChild("Stats")
    for i,v in pairs(stats:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            remotes[v.Parent.Name] = v
        end
    end
end
remote()

-- Non-Synapse Users
if not pcall(function() return syn.protect_gui end) then
   syn = {}
   syn.protect_gui = function(egg)
       egg.Parent = game.CoreGui
   end
end

-- UI Library
local library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local window = library:CreateWindow("lol shit game")
window:AddLabel({text = "Made by egg salad"})
window:AddSlider({text='Amount',min=1,max=200,callback=function(v)amount=v;end})
for i,v in pairs(remotes) do
    window:AddButton({text=i,callback=function()
        pcall(function()
            local egg1 = player.PlayerGui.Stats.Button.StatsFrame
            local egg2 = tonumber(egg1[i.."Text"].Text)
            egg1[i.."Text"].Text = egg2 + amount
            for _ = 1, amount do
                egg1[i].RemoteEvent:FireServer(player.PlayerStats,0.5)
            end
        end)
    end})
end
library:Init()