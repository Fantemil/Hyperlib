_G.Enabled = true
if not _G.Enabled then
    d()
end

local camera = game.Workspace.CurrentCamera
local screensize = camera.ViewportSize


local updater = game:GetService("ReplicatedStorage").CustomiseBooth
function update(text)
    local args = {
        [1] = "Update",
        [2] = {
            ["DescriptionText"] = text,
            ["ImageId"] = 0
        }
    }
    
    updater:FireServer(unpack(args))
end

local shirtpooll = {"ð§", "ð", "ð", "ð"}
local shirtpool = {
    ["ð§"] = "ð",
    ["ð"] = "ð´",
    ["ð"] = "ð³",
    ["ð"] = "ðµ",
}

local colours = {
    ["ð¤"] = {0, 0, 0},
    ["ð¿"] = {192, 192, 192},
    ["ð"] = {128, 128, 128},
    ["ð¤"] = {255, 255, 255},
    ["ð"]=  {128, 0, 0},
    ["â¤ï¸"] = {255, 0, 0},
    ["ð"] = {128, 0, 128},
    ["ð¸"] = {255, 0, 255},
    ["ð³"] = {0, 128, 0},
    ["ð"] = {0, 255, 0},
    ["ð¦"] = {128, 128, 0},
    ["ð"] = {255, 255, 0},
    ["ðµ"] = {0, 0, 128},
    ["ð"] = {0, 0, 255},
    ["ð§ª"] = {0, 128, 128},
    ["ð"] = {0, 255, 255},
}

function getcolorforrange(r, g, b)
    local closestint = 100000000000000000
    local closestcolour = ""
    
    for i, colour in pairs(colours) do
        local totalint = ((r - colour[1])^2) + ((g - colour[2])^2) + ((b - colour[3])^2) ^ (1/2)
        if totalint < closestint then
            closestint = totalint
            closestcolour = i
        end
    end
    return closestcolour
end

local mx = 61
local my = 30
while _G.Enabled do
    local topost = ""
    for y=1, screensize.y, math.floor(screensize.y / my) do
        for x=1, screensize.x, math.floor(screensize.x / mx) do
            local ray = camera:ScreenPointToRay(x, y)
            local rayResult = game.Workspace:Raycast(ray.Origin, ray.Direction * 5000)
            local rc
            if rayResult then
                local ri = rayResult.Instance
                if ri.Parent:FindFirstChild("Shirt") then
                    if ri.Parent:FindFirstChild("snes") then
                        local sc = ri.Parent.snes.Value
                        topost = topost .. shirtpooll[sc]
                    else
                        local sval = Instance.new("IntValue")
                        sval.Name = "snes"
                        sval.Parent = rayResult.Instance.Parent
                        sval.Value = math.random(1, #shirtpooll)
                        topost = topost .. shirtpooll[sval.Value]
                    end
                elseif ri.Parent:FindFirstChild("Pants") then
                    if ri.Parent:FindFirstChild("snes") then
                        local sc = ri.Parent.snes.Value
                        topost = topost .. shirtpool[shirtpooll[sc]]
                    else
                        local sval = Instance.new("IntValue")
                        sval.Name = "snes"
                        sval.Parent = rayResult.Instance.Parent
                        sval.Value = math.random(1, #shirtpooll)
                        topost = topost .. shirtpool[shirtpooll[sval.Value]]
                    end
                else
                    rc = ri.Color
                    topost = topost .. getcolorforrange(rc.R * 255, rc.G * 255, rc.B * 255)
                end
            else
                topost = topost .. "ð"
            end
        end
        topost = topost .. "\n"
    end
    coroutine.wrap(update)(topost)
    task.wait(.03)
end