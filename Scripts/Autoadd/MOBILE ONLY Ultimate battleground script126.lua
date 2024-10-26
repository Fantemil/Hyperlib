local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create a window for your GUI
local Window = Rayfield:CreateWindow({
    Name = "ultra battleground script",
    LoadingTitle = "sigma",
    LoadingSubtitle = "By plxyn ",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a folder to save configs
        FileName = "TeleportationGUI"
    }
})

-- Create a tab for the teleportation scripts
local Tab = Window:CreateTab("Teleportation")

local MainTab = Window:CreateTab("instant transmission")

-- Create sections in the tab
local TeleportSection = Tab:CreateSection("Player Teleportation")

local InstantSection = MainTab:CreateSection("Instant Transmission")

-- Player Teleportation Button
Tab:CreateButton({
    Name = "Activate Player Teleportation",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1ixLin/Player-teleportation/main/Alipay"))()
    end,
    Section = TeleportSection
})

-- Instant Transmission Button
MainTab:CreateButton({
    Name = "Activate Instant Transmission",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1ixLin/Instant-transmission/main/File"))()
    end,
    Section = InstantSection
})

-- Notification to confirm GUI load
Rayfield:Notify({
   Title = "GUI Loaded",
   Content = "The Teleportation GUI has been successfully loaded!",
   Duration = 5,
   Image = 4483362458,
   Actions = {
      Okay = {
         Name = "Okay!",
         Callback = function()
            print("GUI has been loaded successfully.")
         end
      },
   },
})