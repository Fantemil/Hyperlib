local weapon = game:GetService("Workspace").Weapon -- Change "Weapon" to the name of the weapon model in Workspace
local armor = game:GetService("Workspace").Armor -- Change "Armor" to the name of the armor model in Workspace
local player = game:GetService("Players").LocalPlayer

local weaponSpawned = false
local armorSpawned = false

local function spawnWeapon()
    local weaponClone = weapon:Clone()
    weaponClone.Parent = player.Character
    weaponClone.Handle.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2) -- Change the position offset of the weapon spawn
    weaponClone.Handle.Velocity = Vector3.new(0, 0, 0) -- Prevent the weapon from inheriting the player's velocity
    weaponSpawned = true
end

local function spawnArmor()
    local armorClone = armor:Clone()
    armorClone.Parent = player.Character
    armorClone.Handle.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, -2) -- Change the position offset of the armor spawn
    armorClone.Handle.Velocity = Vector3.new(0, 0, 0) -- Prevent the armor from inheriting the player's velocity
    armorSpawned = true
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.E and not gameProcessedEvent then
        if not weaponSpawned then
            spawnWeapon()
        end
        if not armorSpawned then
            spawnArmor()
        end
    end
end)
