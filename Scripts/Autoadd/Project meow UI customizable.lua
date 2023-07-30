getgenv().UwU = loadstring(game:HttpGet"https://raw.githubusercontent.com/L1ZOT/Project-PJM/main/Notifycation")()--Notification Gui thing

getgenv().TabSettings = { --customize yo stuff here
    Background = Color3.fromRGB(27, 27, 27),
    DarkContrast = Color3.fromRGB(35, 35, 35),--Element color
    TextColor = Color3.fromRGB(255, 255, 255),
    Gradient1 = Color3.fromRGB(227, 66, 52),
    Gradient2 = Color3.fromRGB(227, 66, 52),
    DiscordInvite = "https://discord.gg/qwCV4uAGYf",
    DiscordName = "Example Discord"
}


local Players_Table = {}
    for i,v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
    table.insert(Players_Table, v.Name)
    end
end

   local UIlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aidanman14/Test_ui/main/PJMUICustomizable"))()
  
    local Win = UIlib:Window("Test UI", "Testing")
    local Main = Win:Tab("Main")
    local Credits = Win:Tab("Credits")
  
spawn(function()
      pcall(function()
          getgenv().UwU:Notify("Welcome!", "Script Is setting up!") --Notification example lmao
    end)
end)

Main:Button("Button", function()
    print("Buton pressed!")
end)

Main:Toggle("Toggle", false, function(t)
    if t then
     print("true")
     else
        print("false")
    end
end)

Main:Label("Label")

Main:line()

Main:Dropdown("Dropdown", Players_Table, function(t)
    SelectedPlayer = t
end)
     

Main:Textbox("Textbox", "Textbox", function(t)
 print(t)
end)

Main:Slider("Amount Of Power Level (Multipler)", 0, 100, 1, function(t)
   print(t)
  end)


Credits:Button("Destroy Gui", function()
    game.CoreGui:FindFirstChild("Mana"):Destroy()
end)
      
Credits:Button("Rejoin", function()
    local ts = game:GetService("TeleportService")
     local p = game:GetService("Players").LocalPlayer
 ts:Teleport(game.PlaceId, p)
end)

Credits:line()

Credits:Label("UI made by Mana")
Credits:Label("Discord invite thing by Vynixu")
Credits:Label("Edited by Aidanman14")