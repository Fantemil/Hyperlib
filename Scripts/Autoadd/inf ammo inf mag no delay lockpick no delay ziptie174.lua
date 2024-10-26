local plr = game.Players.LocalPlayer
local char = plr.Character
local backpack = plr.Backpack

while true do
    wait(0.1)
    local zipties = char:FindFirstChild("Zipties")
    if zipties then
        zipties:SetAttribute("ZipTime", 0)
    end
    local Lockpick = char:FindFirstChild("Lockpick")
    if Lockpick then
        Lockpick:SetAttribute("BaseLockpickTime", 0)
    end

    local tool = char:FindFirstChildWhichIsA("Tool")
    if tool then
        tool:SetAttribute("Ammo", math.huge)
        tool:SetAttribute("ClipSize", math.huge)
    end

    for _, v in pairs(backpack:GetChildren()) do
        if v:IsA("Tool") then
            v:SetAttribute("Ammo", math.huge)
            v:SetAttribute("ClipSize", math.huge)
        end
    end
end