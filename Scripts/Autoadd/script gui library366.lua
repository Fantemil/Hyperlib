-- if you donât understand please create ticket on our server https://discord.gg/pTmc8uEqJr
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/scarlet1837/gui-scarlet-script/refs/heads/main/library.lua"))()

-- Create the main GUI
local gui, sidebar, mainFrame = library:CreateMainGUI("Scarlet Script")
if gui and sidebar and mainFrame then
    print("Main GUI created successfully")
end

-- Create tabs
local homeTab = library:CreateTab("Home", sidebar, mainFrame)  -- Corrected from 'hometab' to 'homeTab'
if homeTab then
    print("Home tab created successfully")
end

local creditsTab = library:CreateTab("Credits", sidebar, mainFrame)
if creditsTab then
    print("Credits tab created successfully")
end

-- Create buttons for the Home tab
local homeButton = library:CreateButton("Scarlet Script", homeTab, function()
    print("Scarlet Script button clicked!")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/scarlet1837/a/main/Tpwalk"))()
end)

-- Create a button for the Credits tab
local creditsButton = library:CreateButton("Script Test", creditsTab, function()
    print("Script Test button clicked!")
    -- Add your script code here
end)
print("Button added to Credits tab successfully")

-- Initialize the library to show the first tab
library:Initialize()
print("GUI initialized successfully")