local planks = {
    {Vector3.new(-36.49, 4.00, 272.83), Vector3.new(-50, 3.90, 273.68)},
    {Vector3.new(-50, 3.90, 273.68), Vector3.new(-56, 4.00, 272.06)},
    {Vector3.new(-56, 4.00, 272.06), Vector3.new(-60, 4.00, 272.68)},
    {Vector3.new(-60, 4.00, 272.68), Vector3.new(-66, 4.00, 272.77)},
    {Vector3.new(-70, 4.00, 272.48), Vector3.new(-76, 4.00, 272.90)},
    {Vector3.new(-76, 4.00, 272.90), Vector3.new(-80, 4.00, 272.61)},
    {Vector3.new(-46, 4, 333.80), Vector3.new(-50, 4.00, 333.92)},  
    {Vector3.new(-50, 4.00, 333.92), Vector3.new(-56, 4.00, 333.90)},
    {Vector3.new(-56, 4.00, 333.90), Vector3.new(-60, 4.00, 333.29)},
    {Vector3.new(-60, 4.00, 333.29), Vector3.new(-66, 4.00, 333.62)},
    {Vector3.new(-70, 4.00, 333.67), Vector3.new(-76, 4.00, 333.61)},
    {Vector3.new(-76, 4.00, 333.61), Vector3.new(-80, 4.00, 333.39)},
    {Vector3.new(-83, 4.00, 280.59), Vector3.new(-83, 4.00, 291.63)},
    {Vector3.new(-83, 4.00, 291.63), Vector3.new(-83, 4.00, 297.00)},
    {Vector3.new(-83, 4.00, 297.00), Vector3.new(-83, 4.00, 300.00)},
    {Vector3.new(-83, 4.00, 328), Vector3.new(-83, 4.00, 324)},
    {Vector3.new(-83, 4.00, 324), Vector3.new(-83, 4.00, 319)}, 
    {Vector3.new(-83, 4.00, 319), Vector3.new(-83, 4.00, 316)}, 
    {Vector3.new(-83, 4.00, 316), Vector3.new(-83, 4.00, 311)}, 
    {Vector3.new(-28.62917709350586, 1, 274.6474304199219), Vector3.new(-28.789382934570312, 1, 287.67376708984375)},
    {Vector3.new(-29.48893928527832, 1.5000001192092896, 287.6489562988281), Vector3.new(-29.783557891845703, 1, 301.1263427734375)},
    {Vector3.new(-29.77770233154297, 1, 301.9649963378906), Vector3.new(-29.386707305908203, 1, 315.70977783203125)},
    {Vector3.new(-29.49654769897461, 1, 316.50689697265625), Vector3.new(-29.086883544921875, 1, 332.7542724609375)},
    {Vector3.new(-29.609832763671875, 1, 333.483154296875), Vector3.new(-41.7634162902832, 1, 333.5702209472656)}
}

local increment = 0.5
local maxHeight = 70
local height = 1

while height <= maxHeight do
    for _, plank in ipairs(planks) do
        local args = {
            [1] = Vector3.new(plank[1].X, height, plank[1].Z),
            [2] = Vector3.new(plank[2].X, height, plank[2].Z), 
            [3] = workspace.Road.Part, 
            [4] = workspace.Road.Part, 
            [5] = Vector3.new(0, 1, 0) 
        }

        game:GetService("Players").LocalPlayer.Character.Hammer.BuildPlank:FireServer(unpack(args))
    end
    height = height + increment
    wait(0.1) -- if you guys on a laggy device set this number to 2 or 4
end
