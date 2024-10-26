-- If you're gonna use any source inside the script please credit me. 

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("ð± Giant Survival! - Free - ð¦¶", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

local function reset()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

local Weapons = {
    "Minigun",
    "Crossbow",
    "Slingshot",
    "Revolver",
    "Banana Pistol",
    "Potato Launcher",
    "Paintball Gun",
    "SCAR",
    "Double Barrel Shotgun",
    "Ray Gun",
    "Plunger Rifle",
    "Space Rifle",
    "SMG",
    "Sniper",
    "Black Hole Gun",
    "Crazy Futuristic Minigun",
    "Biochemical Blaster",
    "Lava Pistol",
    "Golden Pistol",
    "Fireworks Launcher"
}

local Gears = {
    "Gravity Coil",
    "Speed Coil",
    "Super Gravity Coil",
    "Super Speed Coil",
    "Cash Magnet",
    "Infinity Coil"
}

local selectedWeapon = nil
local selectedGear = nil

tab.newDropdown("Weapons", "Select Desired Weapon", Weapons, function(selected)
    selectedWeapon = selected
end)

tab.newButton("Equip Weapon", "Equip Selected Weapon", function()
    if selectedWeapon then
        workspace.__THINGS.__REMOTES.weaponequipped:FireServer({
            [1] = selectedWeapon
        })
        reset()
    else
        print("No weapon selected")
    end
end)

tab.newDropdown("Gears", "Select Desired Gear", Gears, function(selectedg)
    selectedGear = selectedg
end)

tab.newButton("Equip Gear", "Equip Selected Gear", function()
    if selectedGear then
        workspace.__THINGS.__REMOTES.gearequipped:FireServer({
            [1] = selectedGear
        })
        reset()
    else
        print("No gear selected")
    end
end)

local fMoney = false
local fLevelxMoney = false

tab.newToggle("Farm Money", "Toggle", false, function(bool)
    fMoney = bool
    while fMoney do
        task.wait(0.000000000000001)
        workspace.__THINGS.__REMOTES.currencycollected:FireServer({})
    end
end)

tab.newToggle("Farm Level-Money", "Toggle", false, function(toggled)
    fLevelxMoney = toggled
    local workspace = game:GetService("Workspace")
    local remote = workspace.__THINGS.__REMOTES.giant_dealdamage
    local lastPositions = {}
    local firingGiants = {}

    for i = 1, 11 do
        local model = workspace:FindFirstChild("Giant_" .. i)
        if model and model:FindFirstChild("HumanoidRootPart") then
            lastPositions[i] = model.HumanoidRootPart.Position
        end
    end

    local function checkMovement()
        for i = 1, 11 do
            local model = workspace:FindFirstChild("Giant_" .. i)
            if model and model:FindFirstChild("HumanoidRootPart") then
                local currentPosition = model.HumanoidRootPart.Position
                if lastPositions[i] and currentPosition ~= lastPositions[i] then
                    lastPositions[i] = currentPosition
                    if not firingGiants[i] then
                        firingGiants[i] = true
                        spawn(function()
                            while firingGiants[i] and fLevelxMoney do
                                local args = {
                                    [1] = {
                                        [1] = "Giant_" .. i,
                                        [2] = 20,
                                        [3] = 0
                                    }
                                }
                                remote:FireServer(unpack(args))
                                task.wait(0.00000000000001)
                            end
                        end)
                    end
                end
            end
        end
    end

    while fLevelxMoney do
        checkMovement()
        task.wait(1)
    end
end)
