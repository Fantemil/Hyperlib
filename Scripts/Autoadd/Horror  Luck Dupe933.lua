getgenv().settings = {
    toggle = true,
    wait = 0.1
}

while settings.toggle do
    wait(settings.wait)
    local luck = {"Super Luck Potion", "Luck Potion"}
    for _, v in ipairs(luck) do
        local args = {
            [1] = "Equip",
            [2] = v,
            [3] = "Usable"
        }
        game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(unpack(args))
    end
end