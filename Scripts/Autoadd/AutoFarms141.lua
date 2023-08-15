local allowedPartNames = {
    "Common","Uncommon","Rare","Epic", "Legendary", "Mythical", "Godly", "Runic", "Arcane", "Ascendant",
    "Stellar", "Aquavortex", "Serene", "Nebula", "Eternal", "Paragon", "Immortal",
    "Ethereal", "Astral", "Odyssey", "Lunar", "Glisten", "Celestial", "Divine",
    "Leviathan", "Omnipotent", "Desolation", "Empyrean", "Aurora", "Abyssal",
    "Cosmic", "Chronos", "Beyond", "Hypergiant", "Fool", "gnarp", "Gentleman",
    "sevenCRYSTAL", "TheRARESTblock"
}

while true do
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("Part") and table.find(allowedPartNames, v.Name) and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    wait(0.8)
end