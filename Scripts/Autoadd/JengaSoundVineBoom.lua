--https://www.roblox.com/games/2537430692/Jenga
-- quirky anime boy#5506
local s = game:GetService("Workspace").Sounds.DestroyerWin
local silent = game:GetService("Workspace").Sounds.PlayerDeath
local p = game.Players.LocalPlayer
game.ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(t)
    local m = t.Message
    local plr = t.FromSpeaker
    if m:find("ðŸ—¿") then
        local amt = 0
        for i = 1,#m do
            if string.byte(m:sub(i,i)) ==  240 then
                amt = amt +1
            end
        end
        if plr == p.Name then 
            for i = 1,amt do
                s.TimePosition = 0
                s:Play()
                wait(.1)
            end
        else
            silent.TimePosition = 0
            silent:Play()
        end
    end
end)