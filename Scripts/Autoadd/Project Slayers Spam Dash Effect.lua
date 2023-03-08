local p = game.Players.LocalPlayer
local s = "Players."..p.Name..".PlayerScripts.Client_Modules.Main_Script"

local r = game.ReplicatedStorage.Remotes["To_Server"]["Handle_Initiate_C"]
local t = workspace:GetDescendants()
local n = 1000
for i = 1, #t, n do
    for i = i, math.min(i + n, #t) do
        local v = t[i]
        if v:IsA("BasePart") then
            r:FireServer(s, os.clock(), "dash_effect", v.CFrame, v)
        else
            i = i - 1
        end
    end
    
    task.wait()
end