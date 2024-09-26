local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local window = PabloLib:Create(
"Projeto LKB I Money Grab Simulator OP", -- Name here.
"Enabled", -- If you want draggable set here to "Enabled" if you dont want set to "Disabled".
"p" -- You can put any keybind here to open close.
)

-- menus --

local tab1 = window:CreateTab("Farm")
local tab2 = window:CreateTab("UI")

-- botÃ£os

tab1:CreateButton("Infinity Strenght", function()
print(value)
spawn(function()
while true do
local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage").Event.Train:FireServer(unpack(args))
wait(0.0001)
end
end)
end)

tab1:CreateButton("Infinity Wins", function()
print(value)
while true do
local args = {
    [1] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
}

game:GetService("ReplicatedStorage").Event.WinGain:FireServer(unpack(args))
wait(0.0000000000000000000001) end
end)

tab1:CreateButton("Infinity Rebirth", function()
print(value)
spawn(function()
while true do
  local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").Event.HealthAdd:FireServer(unpack(args))
wait(0.00001)
end
end)
end)

tab1:CreateButton("Infinity Enchant", function()
print(value)
spawn(function()
while true do
local args = {
    [1] = 0,
    [2] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
}

game:GetService("ReplicatedStorage").Event.Enchanted:FireServer(unpack(args))
wait(0.00001)
end
end)
end)

tab2:CreateButton("Close UI", function()
print(value)
PabloLib:Close()
end)

tab1:CreateInfo("/e Admin Inf Power")
tab1:CreateInfo("Easy Game")
tab1:CreateInfo("Projeto LKB Scripts")
tab1:CreateLabel("Label")
  
tab2:CreateWarning("Create By Projeto LKB")
tab2:CreateWarning("https://scriptblox.com")
tab2:CreateWarning("https://scriptblox.com/u/7FN38VNS9VL38GJDQ09Z")