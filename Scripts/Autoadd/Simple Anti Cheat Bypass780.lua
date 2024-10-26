local ACS = {"Anti", "anti", "Ac", "Anti-Cheat", "Anti Cheat", "AC", "ANTI Cheat", "AntiFly", "AntiSpeed", "AntiTP", "AntiTeleport", "AntiDex", "AntiDEX", "AntiFlight", "Anti Remote", "Anti Remote Manipulation"}
local ignore = {"Animate", "Animation", "Attacks", "Bite", "Ability", "Abilities"}

while true do
    local work = game.Workspace:GetDescendants()
    for _, v in pairs(work) do
        if v:IsA("LocalScript") then
            local shouldIgnore = false
            for _, ignoreName in pairs(ignore) do
                if string.find(v.Name, ignoreName) then
                    shouldIgnore = true
                    break
                end
            end
            
            if not shouldIgnore then
                for _, acsName in pairs(ACS) do
                    if string.find(v.Name, acsName) then
                        -- Destroy the LocalScript
                        v:Destroy()

                        -- Print the directory (parent hierarchy)
                        local directory = ""
                        local parent = v.Parent
                        while parent ~= nil do
                            directory = parent.Name .. "/" .. directory
                            parent = parent.Parent
                        end
                        directory = directory .. v.Name
                        print("AC Detected and Destroyed: " .. v.Name .. " | AC Type = LocalScript" .. " | Searching For Other AC's...")
                        break
                    end
                end
            end
        end
    end
    wait(0.5)
end