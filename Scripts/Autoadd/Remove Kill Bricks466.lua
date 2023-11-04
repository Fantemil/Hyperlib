-- kr4sk
Kill = workspace.WorldMap.KillBricks
for i,v in ipairs(Kill:GetDescendants()) do
    if v.Name == "KillBrick" or "Platform" then
        v:Destroy()
    end
end