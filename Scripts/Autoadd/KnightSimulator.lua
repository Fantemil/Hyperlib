local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Knight Simulator", 5013109572)


local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}


local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Auto Farm")
local section2 = page:addSection("Misc&Cred")


section1:addToggle("Start Farm", nil, function(value)
   getgenv().autofarm = value
end)

coroutine.wrap(function()
   while wait() do
       if getgenv().autofarm == true then
           pcall(function()
               for i,v in pairs(game.Workspace.Enemies.Lobby:GetDescendants()) do
                       if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                           repeat
                               wait()
                               local vu = game:GetService("VirtualUser")
                               vu:ClickButton1(Vector2.new(0,0))
                               local humroot = game.Players.LocalPlayer.Character.HumanoidRootPart
                               humroot.CFrame = CFrame.new(v.HitBox.Position)
                               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,-5,0) * CFrame.Angles(math.rad(90),0,0)
                           until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                   end
               end
           end)
       end
   end
end)()

game:GetService("RunService").RenderStepped:Connect(function()
   if autofarm == true then
       game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
end)

section2:addKeybind("Hide Keybind", N, function(keycall)
   if keycall then
       venyx:toggle()
   end
end)

section2:addButton("Fickoeizy x)", function()
   print("https://discord.gg/9bRfh6Uu4r")
end)

local theme = venyx:addPage("Themes", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end


venyx:SelectPage(venyx.pages[1], true)