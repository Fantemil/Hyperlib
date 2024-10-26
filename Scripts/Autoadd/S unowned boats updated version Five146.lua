-- Updated Boat Selection Script with Debugging
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Sharkbite 2 ðºð¸ - Thanks for using this script!",
    HidePremium = false,
    IntroEnabled = false,
    ConfigFolder = "SB2Mod"
})

local BoatTab = Window:MakeTab({
    Name = "Free Boat ð¢",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local BoatSection = BoatTab:AddSection({
    Name = "Boat Options"
})

BoatSection:AddDropdown({
    Name = "Select Your Free Boat",
    Default = "1",
    Options = {
        "DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat",
        "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat",
        "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat",
        "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat",
        "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat",
        "MilitarySubmarine", "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile",
        "CruiseShip", "Wildfire", "Titanic", "StealthBoat", "UFO",
        "PyroTank", "Athleteducky", "RGBTurretSleigh", "SeaBreacher", "Britannic",
        "HydroTank"
    },
    Callback = function(selectedBoat)
        print("Attempting to select boat:", selectedBoat)  -- Debugging line
        local success, err = pcall(function()
            game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(selectedBoat)
        end)
        if not success then
            warn("Error while selecting boat:", err)  -- Debugging line
        else
            print("Boat selection successful!")  -- Debugging line
        end
    end    
})