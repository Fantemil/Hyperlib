while true do
    wait(1)
    for i,v in pairs(game.Workspace["Glass Bridge"].GlassPane:GetDescendants()) do
    if v.ClassName == "Part" then
    if v.CanCollide == false then
    v.Transparency = 0  
    v.BrickColor = BrickColor.new("Really red")
    else
    v.BrickColor = BrickColor.new("Lime green")
    v.Transparency = 0
    end
    end
    end
    end