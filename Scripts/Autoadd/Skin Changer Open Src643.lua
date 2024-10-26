local weaponSkins = {
    ["Bow"] = {"Compound Bow", "Raven Bow"},
    ["Assault Rifle"] = {"AK-47", "AUG"},
    ["Chainsaw"] = {"Blobsaw", "Handsaws"},
    ["RPG"] = {"Nuke Launcher", "RPKEY", "Spaceship Launcher"},
    ["Burst Rifle"] = {"Aqua Burst", "Electro Rifle"},
    ["Exogun"] = {"Singularity", "Wondergun"},
    ["Fists"] = {"Boxing Gloves", "Brass Knuckles"},
    ["Flamethrower"] = {"Lamethrower", "Pixel Flamethrower"},
    ["Flare Gun"] = {"Dynamite Gun", "Firework Gun"},
    ["Freeze Ray"] = {"Bubble Ray", "Temporal Ray"},
    ["Grenade"] = {"Water Balloon", "Whoopee Cushion"},
    ["Grenade Launcher"] = {"Swashbuckler", "Uranium Launcher"},
    ["Handgun"] = {"Blaster"},
    ["Katana"] = {"Lightning Bolt", "Saber"},
    ["Minigun"] = {"Lasergun 3000", "Pixel Minigun"},
    ["Paintball Gun"] = {"Boba Gun", "Slime Gun"},
    ["Revolver"] = {"Sheriff"},
    ["Slingshot"] = {"Goalpost", "Stick"},
    ["Subspace Tripmine"] = {"Don't Press", "Spring"},
    ["Uzi"] = {"Electro Uzi", "Water Uzi"},
    ["Sniper"] = {"Pixel Sniper", "Hyper Sniper"},
    ["Knife"] = {"Karambit", "Chancla"},
}

local activeWeapons = {}
local playerName = game:GetService("Players").LocalPlayer.Name
local assetFolder = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.ViewModels
local Functions = {}

function Functions:swapWeaponSkins(normalWeaponName, skinName, State)
    if not normalWeaponName then
        return
    end
    
    local normalWeapon = assetFolder:FindFirstChild(normalWeaponName)
    if not normalWeapon then
        return
    end

    if State then
        if skinName then
            local skin = assetFolder:FindFirstChild(skinName)
            if not skin then
                return
            end

            normalWeapon:ClearAllChildren()
            for _, child in pairs(skin:GetChildren()) do
                local newChild = child:Clone()
                newChild.Parent = normalWeapon
            end
            activeWeapons[normalWeaponName] = true
        end
    else
        activeWeapons[normalWeaponName] = nil
    end
end

Functions:swapWeaponSkins("Assault Rifle", "AK-47", true)
Functions:swapWeaponSkins("Chainsaw", "Handsaws", true)
