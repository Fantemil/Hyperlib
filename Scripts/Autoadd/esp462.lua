_G.ESPenabled = 'N'
wait()
_G.ESPenabled = 'Y'
local players = game.Players
local lp = players.LocalPlayer
local hl

while _G.ESPenabled == 'Y' do
    for _, v in pairs(players:GetChildren()) do
        pcall(function()
            if v ~= lp and v.Character:FindFirstChild('esp') == nil then
                if v.PlayerData.It.Value then
                    hl = Instance.new("Highlight", v.Character)
                    hl.Name = 'esp'
                    hl.OutlineColor = Color3.new(1,0,0)
                    hl.FillTransparency = 1
                else
                    hl = Instance.new("Highlight", v.Character)
                    hl.Name = 'esp'
                    hl.OutlineColor = Color3.new(0,1,0)
                    hl.FillTransparency = 1
                end
            end
        end)
    end
    wait()
end
wait()
for _, v in pairs(players:GetChildren()) do
    if v.Character:FindFirstChild('esp') then
        v.Character:FindFirstChild('esp'):Destroy()
    end
end