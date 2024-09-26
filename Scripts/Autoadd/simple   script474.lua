local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Bread Hub",
    LoadingTitle = "Bread Hub",
    LoadingSubtitle = "By sims",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Bread Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local MainTab = Window:CreateTab("Auto Farm", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Auto clicker")

 Rayfield:Notify({
    Title = "you executed this Hub successfully!",
    Content = "Nice Hub for this game!",
    Duration = 5,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })

 local Button = MainTab:CreateButton({
    Name = "Auto clicker start",
    Callback = function()
        getgenv().farmer = true;

while wait() do
    if getgenv().farmer == true then
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PowerUp"):FireServer()
    end
end
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Auto clicker stop",
    Callback = function()
        getgenv().farmer = False;

        while wait() do
            if getgenv().farmer == true then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PowerUp"):FireServer()
            end
        end
    end,
 })

 local MainSection = MainTab:CreateSection("Fight Nps Auto clicker")

 local Button = MainTab:CreateButton({
    Name = "Fight Auto clicker start",
    Callback = function()
        getgenv().farmer = true;

        while wait() do
            if getgenv().farmer == true then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer()
            end
        end
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Fight Auto clicker stop",
    Callback = function()
        getgenv().farmer = false;

        while wait() do
            if getgenv().farmer == true then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Damage"):FireServer()
            end
        end
    end,
 })