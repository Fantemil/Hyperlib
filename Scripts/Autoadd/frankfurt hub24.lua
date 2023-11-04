local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("frankfurt hub v1.3", "BloodTheme")
local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("scripts")
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (500) | 0 (16)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewButton("fly gui v3", "ButtonInfo", function()
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
    print("Clicked")
end)
Section:NewButton("bido skins v1.8", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Bido%20Skins%20V1.8"))()
print("Clicked")
end)
Section:NewButton("ice hub", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))() 
print("Clicked")
end)
Section:NewButton("fe player freeze", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/creepstu/fuzzy-octo-giggle/main/Source'))()
print("Clicked")
end)
Section:NewButton("rtx gui", "ButtonInfo", function()
loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
print("Clicked")
end)
Section:NewButton("adopt me gui", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/GameLoader.lua"))()
print("Clicked")
end)
Section:NewButton("fe no lag ", "ButtonInfo", function()
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
print("Clicked")
end)
 Section:NewButton("fe punch fling", "ButtonInfo", function()
loadstring(game:HttpGet(('http://pastefy.app/GvnHVjT5/raw'),true))()
print("Clicked")
end)
Section:NewButton("vehcile fly", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
print("Clicked")
end)
Section:NewButton("cmd x", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', true))()
print("Clicked")
end)
Section:NewButton("infinite yield", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
print("Clicked")
end)
Section:NewButton("telekinesis", "ButtonInfo", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
print("Clicked")
end)
Section:NewButton("free script executer", "ButtonInfo", function()
-- Create a ScreenGui to hold the GUI elements
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create the square tab
local tab = Instance.new("Frame")
tab.Size = UDim2.new(0, 200, 0, 200) -- Size of the tab (adjust as needed)
tab.Position = UDim2.new(0.5, -100, 0.5, -100) -- Centered position initially
tab.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) -- Grey color
tab.Active = true
tab.Draggable = true -- Allow dragging the tab
tab.Parent = gui

-- Create a TextBox for entering Lua script
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0, 100)
textBox.Position = UDim2.new(0, 10, 0, 10)
textBox.Parent = tab

-- Create an "Execute" button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, -15, 0, 30)
executeButton.Position = UDim2.new(0, 10, 1, -40)
executeButton.Text = "Execute"
executeButton.Parent = tab

-- Create a "Clear" button
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, -15, 0, 30)
clearButton.Position = UDim2.new(0.5, 5, 1, -40)
clearButton.Text = "Clear"
clearButton.Parent = tab

-- Function to execute the Lua script in the TextBox
executeButton.MouseButton1Click:Connect(function()
    local scriptToExecute = textBox.Text
    local success, errorMsg = pcall(function()
        loadstring(scriptToExecute)()
    end)
    if not success then
        warn("Error executing script: " .. errorMsg)
    end
end)

-- Function to clear the TextBox
clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)
print("Clicked")
end)
Section:NewButton("orange x hub", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt"))()
print("Clicked")
end)
Section:NewButton("vhub", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/V31nc/2642/Created/VHub"))()
print("Clicked")
end)
Section:NewButton("redz hub Brookhaven rp", "ButtonInfo", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
print("Clicked")
end)
Section:NewButton("fe bypass gui v3", "ButtonInfo", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
print("Clicked")
end)
Section:NewButton("fe iv admin", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodyBurns/Hex/main/Iv%20Admin%20v3.lua"))()
print("Clicked")
end)