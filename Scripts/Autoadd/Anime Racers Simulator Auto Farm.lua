-- Made by rudeDev

-- do not edit or script will not work

local function main()

local Main = game:GetService("Workspace").WorldTracks["Demon Slayer"].RaceWalls:GetChildren()

local Walls = {}

for i = 1, #Main do
    table.insert(Walls, game:GetService("Workspace").WorldTracks["Demon Slayer"].RaceWalls[""..i..""])
end

local function getRoot(player)
    local Char = player.Character or player.CharacterAdded:Wait()
    return Char:WaitForChild("HumanoidRootPart")
end

for i,v in pairs(Walls) do
    local MainPart = nil
    for i,v in pairs(v:GetDescendants()) do
        if v ~= nil then
            if string.lower(tostring(v.Name)) == "coinamount" and v:FindFirstChild("TouchInterest") then
                MainPart = v
            end
        end
    end
    if MainPart == nil then
        error("No part found in wall "..v.Name)
    end
    if MainPart ~= nil then
        firetouchinterest(getRoot(game:GetService("Players").LocalPlayer), MainPart, 0)
        wait()
        firetouchinterest(getRoot(game:GetService("Players").LocalPlayer), MainPart, 1)
    end
end

end

while true do
    main()
    wait(5)
end

-- do not edit or script will not work