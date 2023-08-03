local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()

local Gui = Library:AddGui({
        Title = {"Arutus X", "Arsenal"},
        ThemeColor = Color3.fromRGB(0, 255, 0),
        ToggleKey = Enum.KeyCode.RightShift,
})

local Tab = Gui:AddTab("Arsenal")

local Category = Tab:AddCategory("Arsenal")

local Button = Category:AddButton("AimBot", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-Script/main/Aimbot%20Script%20(Without%20FOV).lua")()
end)


local Button = Category:AddButton("Inf Ammo", function()
for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end
spawn(function()
    while true do wait(.1)
        if getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client).getprimaryammo() then
            if getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client).getprimaryammo() == 0 then
                getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client).ammocount = 6
            else
                getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client).ammocount = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client).getprimaryammo()
            end
        end
    end
end)
end)


local Button = Category:AddButton("Esp/tracers", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/5carr3d/esp/main/main.lua'),true))()
end)


local Button = Category:AddButton("Kill All", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MisterGunXD/yes/main/rolve%3C3.lua"))();
end)


local Button = Category:AddButton("Rapid Fire", function()
        local settings = {repeatamount = 4, exceptions = {"SayMessageRequest"}}

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(uh, ...)
   local args = {...}
   local method = getnamecallmethod()
   for i,o in next, settings.exceptions do
       if uh.Name == o then
           return old(uh, ...)
       end
   end
   if method == "FireServer" or method == "InvokeServer" then
       for i = 1,settings.repeatamount do
           old(uh, ...)
       end
   end
   return old(uh, ...)
end

setreadonly(mt, true)
end)


local Button = Category:AddButton("Auto Win", function()
        .
-- Version: 2.82
-- Instances:
local AutoFarm = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local Court1 = Instance.new("TextButton")
local Court2 = Instance.new("TextButton")
local Court3 = Instance.new("TextButton")
local Court4 = Instance.new("TextButton")
local Court5 = Instance.new("TextButton")
local Court6 = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local opengui = Instance.new("Frame")
local Open = Instance.new("TextButton")
--Properties:
AutoFarm.Name = "Auto Farm"
AutoFarm.Parent = game.CoreGui
 
Main.Name = "Main"
Main.Parent = AutoFarm
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 3
Main.Position = UDim2.new(0.544776142, 0, 0.148648679, 0)
Main.Size = UDim2.new(0, 411, 0, 383)
Main.Visible = false
Main.Active = true
Main.Draggable = true
 
Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Credits.BorderSizePixel = 3
Credits.Size = UDim2.new(0, 410, 0, 28)
Credits.Font = Enum.Font.SourceSansBold
Credits.Text = "RB World Auto Farm GUI By Exploit Godz#6437"
Credits.TextColor3 = Color3.new(0, 0, 0)
Credits.TextSize = 20
Credits.TextWrapped = true
 
Court1.Name = "Court 1"
Court1.Parent = Main
Court1.BackgroundColor3 = Color3.new(0, 0, 0)
Court1.BorderSizePixel = 3
Court1.Position = UDim2.new(0.275609761, 0, 0.103312343, 0)
Court1.Size = UDim2.new(0, 183, 0, 41)
Court1.Font = Enum.Font.SourceSansBold
Court1.Text = "Court1"
Court1.TextColor3 = Color3.new(0.666667, 0, 0)
Court1.TextSize = 20
Court1.TextWrapped = true
 
Court2.Name = "Court2"
Court2.Parent = Main
Court2.BackgroundColor3 = Color3.new(0, 0, 0)
Court2.BorderSizePixel = 3
Court2.Position = UDim2.new(0.275609761, 0, 0.246030539, 0)
Court2.Size = UDim2.new(0, 183, 0, 41)
Court2.Font = Enum.Font.SourceSansBold
Court2.Text = "Court2"
Court2.TextColor3 = Color3.new(0.666667, 0, 0)
Court2.TextSize = 20
Court2.TextWrapped = true
 
Court3.Name = "Court3"
Court3.Parent = Main
Court3.BackgroundColor3 = Color3.new(0, 0, 0)
Court3.BorderSizePixel = 3
Court3.Position = UDim2.new(0.275609761, 0, 0.393970668, 0)
Court3.Size = UDim2.new(0, 183, 0, 41)
Court3.Font = Enum.Font.SourceSansBold
Court3.Text = "Court3"
Court3.TextColor3 = Color3.new(0.666667, 0, 0)
Court3.TextSize = 20
Court3.TextWrapped = true
 
Court4.Name = "Court4"
Court4.Parent = Main
Court4.BackgroundColor3 = Color3.new(0, 0, 0)
Court4.BorderSizePixel = 3
Court4.Position = UDim2.new(0.275609761, 0, 0.542810321, 0)
Court4.Size = UDim2.new(0, 183, 0, 41)
Court4.Font = Enum.Font.SourceSansBold
Court4.Text = "Court4"
Court4.TextColor3 = Color3.new(0.666667, 0, 0)
Court4.TextSize = 20
Court4.TextWrapped = true
 
Court5.Name = "Court5"
Court5.Parent = Main
Court5.BackgroundColor3 = Color3.new(0, 0, 0)
Court5.BorderSizePixel = 3
Court5.Position = UDim2.new(0.275609761, 0, 0.692600846, 0)
Court5.Size = UDim2.new(0, 183, 0, 41)
Court5.Font = Enum.Font.SourceSansBold
Court5.Text = "Court5"
Court5.TextColor3 = Color3.new(0.666667, 0, 0)
Court5.TextSize = 20
Court5.TextWrapped = true
 
Court6.Name = "Court6"
Court6.Parent = Main
Court6.BackgroundColor3 = Color3.new(0, 0, 0)
Court6.BorderSizePixel = 3
Court6.Position = UDim2.new(0.275609761, 0, 0.846647799, 0)
Court6.Size = UDim2.new(0, 183, 0, 41)
Court6.Font = Enum.Font.SourceSansBold
Court6.Text = "Court6"
Court6.TextColor3 = Color3.new(0.666667, 0, 0)
Court6.TextSize = 20
Court6.TextWrapped = true
 
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.Position = UDim2.new(0.929440379, 0, 0, 0)
Close.Size = UDim2.new(0, 29, 0, 28)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.new(0.666667, 0, 0)
Close.TextSize = 20
Close.TextWrapped = true
 
opengui.Name = "opengui"
opengui.Parent = AutoFarm
opengui.BackgroundColor3 = Color3.new(0, 0, 0)
opengui.BorderSizePixel = 3
opengui.Position = UDim2.new(0, 0, 0.493857503, 0)
opengui.Size = UDim2.new(0, 76, 0, 25)
 
Open.Name = "Open"
Open.Parent = opengui
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 3
Open.Position = UDim2.new(-0.210526317, 0, 0, 0)
Open.Size = UDim2.new(0, 92, 0, 27)
Open.Font = Enum.Font.SourceSansBold
Open.Text = "Open"
Open.TextColor3 = Color3.new(0.666667, 0, 0)
Open.TextSize = 20
Open.TextWrapped = true
-- Scripts:
 
Court1.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 1 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 1 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
Court2.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 2 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 2 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
 
Court3.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 3 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 3 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
Court4.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 4 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 4 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
 
 
Court5.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 5 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 5 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
Court6.MouseButton1Down:connect(function()
for x = 1, 7 do
local A_1 = 6 ----- Change this to what court your on
local A_2 = 1
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
 
local A_1 = 6 ----- Change this to what court your on
local A_2 = 2 
local Event = game:GetService("ReplicatedStorage")["join.court"]
Event:InvokeServer(A_1, A_2)
wait(2)
end
end)
 
Close.MouseButton1Down:connect(function()
Main.Visible = false
opengui.Visible = true
end)
 
Open.MouseButton1Down:connect(function()
Main.Visible = true
opengui.Visible = false
end)
end)


local Button = Category:AddButton("fly", function()
         --ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)


local Button = Category:AddButton("knife aura", function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/The3Bakers4565/Spicy-Bagel/main/Other_Scripts/Arsenal/Knife_Aura.lua"))()
end)


local Bind = Category:AddBind("RightShift", Gui.ToggleKey, function()
        print("Toggled GUI")
end)

Library:Notify("Did You Enjoy It?.", function(bool)
        print("User clicked", bool and "yes" or "no")
end)