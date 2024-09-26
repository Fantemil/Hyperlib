local auraName = "Centrifuge"

local aurasFolder = game:GetService("ReplicatedStorage"):FindFirstChild("Auras")
if not aurasFolder then
    error("Auras folder not found in ReplicatedStorage")
end

local function activateAura(auraName)
    local aura = aurasFolder:FindFirstChild(auraName)
    if not aura then
        error("Aura not found: " .. auraName)
    end

    local args = {aura}
    local remoteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("AuraEquip")
    if not remoteEvent then
        error("Remote event 'GiveAura' not found")
    end

 remoteEvent:FireServer(unpack(args))
end

activateAura(auraName)

for _, item in ipairs(aurasFolder:GetChildren()) do
    if item:IsA("Folder") then
        print(item.Name)
    end
end