local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Event = ReplicatedStorage.Events.Spin

local keepLevel = false
local rarities = {
    ["Common"] = false,
    ["Uncommon"] = false,
    ["Rare"] = true,
    ["Exotic"] = true,
    ["Legendary"] = true,
    ["Heavenly"] = true
}

while true do
    local Element, Rarity = Event:InvokeServer(keepLevel)
    if rarities[Rarity] then
        local answer = messagebox("You got a " .. Rarity .. " " .. Element .. "!" .. "Keep?", "Sowd AutoSpin", 4)
        if answer == 6 then
            break
        end
    end
    task.wait()
end