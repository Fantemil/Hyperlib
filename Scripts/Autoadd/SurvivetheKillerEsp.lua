_G.white = {"green_bottle", "gas_can", "rope", "shattered_bottle", "shattered_shades", "rusty_lantern", "broken_bulb", "lighter", "broken_bottle"}
_G.blue = {"pickaxe", "old_slycer", "busted_boombox", "tire", "car_engine", "rusty_pipe", "rusty_cleaver", "gen_1"}
_G.red = {"laptop", "welding_goggles", "smartphone", "binoculars", "trophy", "smartwatch"}
_G.violet = {"apocalypse_helmet", "golden_compass", "golden_pocket_watch"}
_G.yellow = {"gold_bars", "pendant", "soul", "treasure_chest"}

function createESPItem(parent, r, g, b, fontSize)
    local bgui = Instance.new("BillboardGui", parent)
    bgui.Name = ("EGUI")
    bgui.AlwaysOnTop = true
    bgui.ExtentsOffset = Vector3.new(0, 0, 0)
    bgui.Size = UDim2.new(1, 0, 1, 0)
    local nam = Instance.new("TextLabel", bgui)
    nam.Text = parent.Parent.Name
    nam.BackgroundTransparency = 1
    nam.TextSize = fontSize
    nam.Font = ("Arial")
    nam.TextColor3 = Color3.fromRGB(r, g, b)
    nam.Size = UDim2.new(1, 0, 1, 0)
end

function eventESPItem(parent)
    for i = 1, #_G.white do
        if parent.Parent.Name == _G.white[i] then
            createESPItem(parent, 242, 243, 243, 10)
        end
    end
    for i = 1, #_G.blue do
        if parent.Parent.Name == _G.blue[i] then
            createESPItem(parent, 13, 105, 172, 10)
        end
    end
    for i = 1, #_G.red do
        if parent.Parent.Name == _G.red[i] then
            createESPItem(parent, 196, 40, 28, 10)
        end
    end
    for i = 1, #_G.violet do
        if parent.Parent.Name == _G.violet[i] then
            createESPItem(parent, 146, 57, 120, 10)
        end
    end
    for i = 1, #_G.yellow do
        if parent.Parent.Name == _G.yellow[i] then
            createESPItem(parent, 245, 205, 48, 10)
        end
    end
end

function enableESPItems()
    if game:GetService("Workspace"):FindFirstChild("CurrentMap") then
        if game:GetService("Workspace").CurrentMap:FindFirstChild("Loot") then
            for _, v in pairs(game:GetService("Workspace").CurrentMap.Loot:GetChildren()) do
                eventESPItem(v.Border)
            end
        end
    end
    game:GetService("Workspace").ChildAdded:connect(function(m)
        if m.Name == "CurrentMap" then
            if m:WaitForChild("Loot") then
                wait(1)
                for _, v in pairs(m.Loot:GetChildren()) do
                    eventESPItem(v.Border)
                end
            end
        end
    end)
end
enableESPItems()