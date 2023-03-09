_G.Enabled = true

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

spawn(function()
    while true do
        wait(5)
        if _G.Enabled then
            local start = Vector3.new(41.5, 56.5, 71.5)
            for i,tile in pairs(game.Workspace.MS.Parts:GetChildren()) do
                local posx = (tile.Position.X - start.x) / 5
                local posz = (tile.Position.Z - start.Z) / 5
                tile.Name = tostring(posx) .. "|" .. tostring(posz)
            end
        else
            break
        end
    end
end)

while true do
    wait(0.3)
    if _G.Enabled then
        if game.Workspace.MS.Parts:FindFirstChild("0|0") then
            pcall(function() -- to spare you some time
                local numbertiles = {}
                
                for i,tile in pairs(game.Workspace.MS.Parts:GetChildren()) do
                    if tile.BrickColor == BrickColor.new("Daisy orange") then
                        table.insert(numbertiles, tile)
                    end
                end
                
                for i,tile in pairs(numbertiles) do
                    local tilepos = Split(tile.Name, "|")
                    local tilex = tonumber(tilepos[1])
                    local tilez = tonumber(tilepos[2])
                    local totalnearbybombs = 0
                    local totalpossiblebombs = 0
                    local safetiles = {}
                    for x=-1, 1, 1 do
                        for z=-1, 1, 1 do
                            if game.Workspace.MS.Parts:FindFirstChild(tostring(tilex + x) .. "|" .. tostring(tilez + z)) then
                                local nearbytile = game.Workspace.MS.Parts[tostring(tilex + x) .. "|" .. tostring(tilez + z)]
                                if nearbytile.BrickColor == BrickColor.new("Really red") then
                                    totalpossiblebombs = totalpossiblebombs + 1
                                    totalnearbybombs = totalnearbybombs + 1
                                end
                                if nearbytile.BrickColor == BrickColor.new("Moss") or nearbytile.BrickColor == BrickColor.new("Shamrock") then
                                    totalpossiblebombs = totalpossiblebombs + 1
                                    table.insert(safetiles, nearbytile)
                                end
                            end
                        end
                    end
                    
                    --print(tile.Name, tonumber(tile.SurfaceGui.TextLabel.Text), totalnearbybombs, totalpossiblebombs)
                    if totalnearbybombs == tonumber(tile.SurfaceGui.TextLabel.Text) then
                        for i,stile in pairs(safetiles) do
                            if stile.Color ~= Color3.new(0, 1, 0) then
                                stile.Color = Color3.new(0, 1, 0)
                            end
                        end
                    elseif totalpossiblebombs == tonumber(tile.SurfaceGui.TextLabel.Text) then
                        for i,stile in pairs(safetiles) do
                            if stile:FindFirstChild("TouchInterest") then
                                stile.TouchInterest:Destroy()
                            end
                            if stile.Color ~= Color3.new(1, 0, 0) then
                                stile.Color = Color3.new(1, 0, 0)
                            end
                        end
                    end
                end
            end)
        end
    else
        break
    end
end