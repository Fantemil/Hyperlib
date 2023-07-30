local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Tapping Simulator!",
    LoadingTitle = "By:cold.dark YT",
    LoadingSubtitle = "By cold.dark YT",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Tapping sim"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Tapping Simulator!",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "pp",
       SaveKey = true,
       GrabKeyFromSite = indeed, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "there is no key i just put stupid shit"
    }
 })

 local Tab = Window:CreateTab("Autofarm", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Autofarm stuff")


 local Toggle = Tab:CreateToggle({
    Name = "Autotap",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
while wait() do
   game:GetService("ReplicatedStorage").Events.Tap:FireServer("Main")
end
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = Tab:CreateToggle({
    Name = "AutoRebirth",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        while wait() do
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(0)
         end
    end,
 })

Rayfield:LoadConfiguration()