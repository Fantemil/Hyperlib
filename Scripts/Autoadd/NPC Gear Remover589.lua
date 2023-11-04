--//how to use this is when your holding a tool equip it and unequip it//--

local function checkAndDeleteGear(NPC)
    for _, gear in ipairs(NPC:GetChildren()) do
        if gear:IsA("Tool") and gear.Name == "ClassicSword" then -- change classicsword into the gear the npc is holding
            gear:Destroy()
            break
        end
    end
end

local function checkNPCs()
    local NPCs = game.Workspace:GetDescendants()
    local playerGear = game.Players.LocalPlayer.Character:FindFirstChild("ClassicSword") -- change this too

    for _, NPC in ipairs(NPCs) do
        if NPC:IsA("Model") and NPC:FindFirstChild("Humanoid") then
            if NPC:FindFirstChild("ClassicSword") and not playerGear then -- and this too
                checkAndDeleteGear(NPC)
            end
        end
    end
end

while wait() do
    checkNPCs()
end
