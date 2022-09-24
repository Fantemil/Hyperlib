local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local UiName = library.new("[ Sword Simulator ]", 5013109572)
local Page1 = UiName:addPage("[ Main ]", 9534827279)
local Section1 = Page1:addSection("[ Auto Farm ]")
local Section2 = Page1:addSection("[ Player ]")

Section1:addToggle("Farm Grassland", nil, function(state)
    getgenv().Farm1 = state

    while wait() do
        if getgenv().Farm1 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["1"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm1 == false
                    end
                end
            end)
        end
    end
end)

Section1:addToggle("Farm Savannah", nil, function(state)
    getgenv().Farm2 = state

    while wait() do
        if getgenv().Farm2 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["2"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm2 == false
                    end
                end
            end)
        end
    end
end)

Section1:addToggle("Farm Desert", nil, function(state)
    getgenv().Farm3 = state

    while wait() do
        if getgenv().Farm3 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["3"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm3 == false
                    end
                end
            end)
        end
    end
end)

Section1:addToggle("Farm Cavern", nil, function(state)
    getgenv().Farm4 = state

    while wait() do
        if getgenv().Farm4 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["4"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm4 == false
                    end
                end
            end)
        end
    end
end)

Section1:addToggle("Farm Castle", nil, function(state)
    getgenv().Farm5 = state

    while wait() do
        if getgenv().Farm5 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["5"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm5 == false
                    end
                end
            end)
        end
    end
end)

Section1:addToggle("Farm Volcano", nil, function(state)
    getgenv().Farm5 = state

    while wait() do
        if getgenv().Farm5 == true then
            pcall(function()
                for i,v in pairs(game.Workspace.Mobs["5"]:GetChildren()) do
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                            until v.Humanoid.Health <= 0 or getgenv().Farm5 == false
                    end
                end
            end)
        end
    end
end)

Section2:addSlider("Walk Speed", 0, 20, 500, function(value)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

local Page2 = UiName:addPage("[ Teleport ]", 9534921475)
local Section1 = Page2:addSection("[ Areas ]")

Section1:addButton("Grassland", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(152.473236, 29.0836258, -119.682648, -0.750941813, 2.87273103e-08, -0.660368383, -8.32490343e-08, 1, 1.38169085e-07, 0.660368383, 1.58731964e-07, -0.750941813)
end)

Section1:addButton("Savannah", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(163.91745, 29.4593391, 166.186386, -0.991060555, -5.29431716e-08, -0.133412704, -7.57631398e-08, 1, 1.65971358e-07, 0.133412704, 1.74595428e-07, -0.991060555)
end)

Section1:addButton("Dessert", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.052185, 29.5231819, 541.95459, -0.699051857, 3.97496436e-08, -0.715070963, -6.77457095e-08, 1, 1.21816456e-07, 0.715070963, 1.33599002e-07, -0.699051857)
end)

Section1:addButton("Cavern", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(414.214935, 17.4492569, 857.127686, -0.946507692, 6.00377845e-08, -0.322681248, 4.53679121e-08, 1, 5.29832711e-08, 0.322681248, 3.55097001e-08, -0.946507692)
end)

Section1:addButton("Castle", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(586.893555, 17.2650223, 1251.4187, -0.908450902, -1.71066944e-07, -0.417991579, -1.90551731e-07, 1, 4.880365e-09, 0.417991579, 8.40825933e-08, -0.908450902)
end)

Section1:addButton("Volcano", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(716.413025, 17.7375908, 1621.11255, -0.924997509, 1.12708376e-08, -0.379973173, -1.37098626e-08, 1, 6.30371488e-08, 0.379973173, 6.35185913e-08, -0.924997509)
end)

local Page3 = UiName:addPage("[ Misc ]", 9534834314)
local Section1 = Page3:addSection("[ Settings ]")

Section1:addKeybind("[ Hide Gui ]", N, function(keycall)
    if keycall then
        UiName:toggle()
    end
end)

Section1:addButton("Boost Fps", function()
    sethiddenproperty(game:GetService'Lighting','Technology',Enum.Technology.Voxel)
game:GetService'Lighting'.GlobalShadows = false
game.Workspace.StreamingEnabled = true
for _,v in  ipairs(game.Workspace:GetDescendants()) do
if v:IsA("BasePart") then
v.CastShadow = false
v.Material = Enum.Material.SmoothPlastic
elseif v:IsA("Decal") then
v:Destroy()
end
end
end)

Section1:addButton("Made By Arisezi", function()
    setclipboard("https://discord.gg/arisezimarket")
end)

Section1:addButton("Copy Discord Links", function()
    setclipboard("https://discord.gg/arisezimarket")
end)

local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/NotificationGUI/main/source.lua"))()

MessageBox.Show({Position = UDim2.new(0.5,0,0.5,0), Text = "Welcome", Description = "Thx For Using My Scripts \nDo You Want To Join My Discord Server?", MessageBoxIcon = "Question", MessageBoxButtons = "YesNo", Result = function(res)
   if (res == "Yes") then
       MessageBox.Show({MessageBoxButtons = "OK", Description = "https://discord.gg/arisezimarket", Text = "Discord Links"})
   elseif (res == "No") then
       MessageBox.Show({MessageBoxButtons = "OK", Description = "Good Luck And Have Fun!", Text = "Alright!"})
   end
end})