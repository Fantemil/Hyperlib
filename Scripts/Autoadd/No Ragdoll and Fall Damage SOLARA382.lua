local localPlayer = game:GetService('Players').LocalPlayer

local function onCharacterAdded(character)
    if character then
        local humanoidRootPart = character:WaitForChild('HumanoidRootPart');
        
        humanoidRootPart:AddTag('NoFallDamage');
        humanoidRootPart:AddTag('NoRagdoll');
    end
end

onCharacterAdded(localPlayer.Character)
localPlayer.CharacterAdded:Connect(onCharacterAdded)