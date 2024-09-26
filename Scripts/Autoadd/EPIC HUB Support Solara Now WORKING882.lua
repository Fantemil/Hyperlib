local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BlockyCoder/Epic-Hub/main/LibararyGUI"))()
 
-- Assume you've loaded the Library script and created an instance
local UI = Library:Create("[UPD] ðª Scythe Simulator")
 
-- Create a tab in the UI
local Tab1 = UI:CreateTab("Main")
local Tab2 = UI:CreateTab("Egg")


-- Create a toggle switch
UI:CreateToggle(Tab2, "Auto Buy Selected Egge", function(bool)
 getgenv().AutoEgg = bool
                while getgenv().AutoEgg and task.wait() do
                local args = {
                [1] = getgenv().SelectedEgg,
                [2] = 5,
    			[3] = 999990
                }
            game:GetService("ReplicatedStorage").HatchPet:FireServer(unpack(args))
            end

end)

local EGoptions = {"Egg1", "Egg2", "Egg3"}
local dropdown = Library:CreateDropdown(Tab2, "Select Egg", EGoptions, function(Selected)
 getgenv().SelectedEgg = Selected
end)



local options = {"1", "10", "20", "30", "40", "50", "100", "200", "300", "400", "500", "1000", "2000", "3000", "4000", "5000", "10000"}

local dropdown = Library:CreateDropdown(Tab1, "How much quest Pet you wanna equip", options, function(Value)
 DupeAmount = Value
	end)

-- Create a button to demonstrate functionality
UI:CreateButton(Tab1, "Equip Infinite Pet: quest pet", function()
   for i = 1, DupeAmount do
      game:GetService("ReplicatedStorage"):WaitForChild("PetEquip"):FireServer("KrakenPet")
end
end)

-- Create a button to demonstrate functionality
UI:CreateButton(Tab1, "Allows you to equip Inf pets", function()
    -- Assuming you have access to game and game.Players.LocalPlayer
    local player = game.Players.LocalPlayer

    -- Check if PlayerData exists
    if player and player:FindFirstChild("PlayerData") then
        -- Find InventoryInfo under PlayerData
        local inventoryInfo = player.PlayerData:FindFirstChild("InventoryInfo")

        -- Check if InventoryInfo exists and has PetLimit
        if inventoryInfo and inventoryInfo:FindFirstChild("PetLimit") then
            -- Set PetLimit to 1000000
            inventoryInfo.PetLimit.Value = 1000000
            print("Changed PetLimit to 1000000")
        else
            warn("InventoryInfo or PetLimit not found.")
        end
    else
        warn("Player or PlayerData not found.")
    end

end)


-- Create a button to demonstrate functionality
UI:CreateButton(Tab1, "Inf Storage Size", function()
      		-- Assuming you have access to game and game.Players.LocalPlayer
local player = game.Players.LocalPlayer

-- Check if PlayerData exists
if player.PlayerData then
    -- Find InventoryInfo under PlayerData
    local inventoryInfo = player.PlayerData:FindFirstChild("InventoryInfo")

    -- Check if InventoryInfo exists and has StorageSize
    if inventoryInfo and inventoryInfo:FindFirstChild("StorageSize") then
        -- Set StorageSize to 1000000
        inventoryInfo.StorageSize.Value = 1000000
        print("Changed StorageSize to 1000000")
    else
        warn("InventoryInfo or StorageSize not found.")
    end
else
    warn("PlayerData not found!")
end

end)




-- Create a toggle switch
UI:CreateToggle(Tab1, "Spawn Gems (OP)", function(enabled)
   getgenv().Gems = enabled
      while getgenv().Gems == true do
            game:GetService("ReplicatedStorage"):WaitForChild("PlaytimeRewards"):FireServer(7)
game:GetService("RunService").Heartbeat:wait();
  end
   end)


-- Create a toggle switch
UI:CreateToggle(Tab1, "Auto Rebirth", function(enabled)
   getgenv().Rebirth = enabled
      while getgenv().Rebirth == true do
		game:GetService("ReplicatedStorage"):WaitForChild("RebirthPlayer"):FireServer()
game:GetService("RunService").Heartbeat:wait();
  end
   end)


-- Create a button to demonstrate functionality
UI:CreateButton(Tab1, "Claim Quest for without waiting", function()
local player = game.Players.LocalPlayer

-- Check if PlayerData exists
if player.PlayerData then
    local questData = player.PlayerData:FindFirstChild("QuestData")

    -- Check if QuestData exists and has CanClaim
    if questData and questData:FindFirstChild("CanClaim") then
        questData.CanClaim.Value = true
        print("Changed CanClaim to true")
    else
        warn("QuestData or CanClaim not found.")
    end
else
    warn("PlayerData not found!")
end
end)
