local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local win = SolarisLib:New({
  Name = "Sex Loader",
  FolderToSave = "sliperLoader"
})

local tab = win:Tab("Games")
local tab2 = win:Tab("Credits")
local sec2 = tab2:Section("Games Supported")

local joinBitch = tab:Section("JOIN!")

joinBitch:Button("Join Discord Server", function()
  setclipboard("https://discord.gg/QKkeA7nBYY")
  SolarisLib:Notification("Join", "Discord Server Link Copied")
end)

local sec = tab:Section("Games Supported")

sec:Button("Auto Game Search", function()
  if game.PlaceId == 263761432 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrMcHir/SliperSex/main/Horrific%20Housing.lua"))()
    SolarisLib:Notification("Game Finded", "Horrific Housing.")
  end

  if game.PlaceId == 1962086868 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrMcHir/SliperSex/main/TOH.lua"))()
    SolarisLib:Notification("Game Finded", "Tower Of Hell.")
  end
end)

sec:Button("Horrific Housing", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/MrMcHir/SliperSex/main/Horrific%20Housing.lua'))()
  SolarisLib:Destroy()
end)

sec:Button("Tower Of Hell", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/MrMcHir/SliperSex/main/TOH.lua'))()
end)

-- sec2

local label = sec2:Label("Script Maked: xrer#9221")

sec2:Button("Join Discord Server", function()
  setclipboard("https://discord.gg/QKkeA7nBYY")
  SolarisLib:Notification("Join", "Discord Server Link Copied")
end)