if syn then
game.StarterGui:SetCore("SendNotification", {
Title = "garfield";
Text = "skipped compat cuz ur cool (synapse x user detected)";
Icon = "";
Duration = 5;
})
else
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/lua-releases/main/iris-compat.lua"))()
end
for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
if v.Name == "Topbar" then
if v.Parent.Name == "Main" then
v.Parent.Parent:Destroy()
end
end
end
local Config = {
WindowName = "Type Racer",
Color = Color3.fromRGB(170, 170, 255),
Keybind = Enum.KeyCode.RightBracket
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
local Autofarm = Window:CreateTab("Features")
local farmauto = Autofarm:CreateSection("AutoType")
local Toggles = {
Autofarming = false,
aDelay = 0.05,
randomDelay = false
}
farmauto:CreateToggle("AutoType",false,function(t)
Toggles.Autofarming = t
end)
farmauto:CreateToggle("Randomize Delay",false,function(t)
Toggles.randomDelay = t
end)
farmauto:CreateSlider("Delay",0,1,0.05,false, function(Value)
Toggles.aDelay = Value
end)
spawn(function()
while true do
pcall(function()
if Toggles.Autofarming == true then
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Main.RaceScreen.TextBox.Text ..= game:GetService("Workspace").SelectionBox.Adornee['SurfaceGui']['TextLabel'].Text
end
end)
pcall(function()
if Toggles.randomDelay == true then
Toggles.aDelay = math.random(0.03,1)
end
end)
wait(Toggles.aDelay)
end
end)