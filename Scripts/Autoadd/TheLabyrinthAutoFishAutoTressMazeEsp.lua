local Config = {
    WindowName = "V.G Hub",
 Color = Color3.fromRGB(255,128,64),
 Keybind = Enum.KeyCode.RightShift
}
repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)


local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self,...)
    local Args = {...}
    if getnamecallmethod() == "PreloadAsync"  then
            return wait(math.huge)
    end
    return OldNameCall(self,...)
end)

local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()=="InvokeServer" and tostring(Self)=="Ping" then
            return wait(math.huge)
    end
    return OldNameCall(...)
end)

pcall(function()
game:GetService("Workspace").Map.Glade.Doors:remove()
game:GetService("ReplicatedStorage").Resources.Data.Events.Administration:remove()
game:GetService("ReplicatedStorage").Resources.Data.Events.PlayerData:remove()
end)
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
game.Players.LocalPlayer.Character:WaitForChild('Head'):WaitForChild('NameBillboard'):remove() end) end)


for i, v in pairs(game:GetService("Workspace").Map.Maze:GetDescendants()) do
    if string.match(v.Name, "Trap")  then
        v:Destroy()
    end
end

game:GetService("Workspace").Map.Maze.DescendantAdded:Connect(function(v)
        if string.match(v.Name, "Trap")  then
            v:Destroy()
        end
    end
)

Sell = {}
local A = require(game:GetService("ReplicatedStorage").Shared.ItemsModule)
for i,v in pairs(A.Items) do
if i:match("Log") or i:match("Ore")  or i:match("Fish") or not i:match("Bow") then

table.insert(Sell, i)
table.sort(Sell)
end end

loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G_Hub_Extras/main/Woah-hi'))()
local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(22, 13, 56)
Circle.Thickness = 1
Circle.Radius = 250
Circle.Visible = false
Circle.NumSides = 1000
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").RenderStepped:Connect(function()
    local Mouse = game:GetService("UserInputService"):GetMouseLocation()
    Circle.Position = Vector2.new(Mouse.X, Mouse.Y)
end)
getgenv().AimBot = {
WallCheck = false,
Enabled = false,
FOV = 250,
}

local Shoot = false
function NotObstructing(i, v)
    if getgenv().AimBot.WallCheck then
        c = workspace.CurrentCamera.CFrame.p
        a = Ray.new(c, i- c)
        f = workspace:FindPartOnRayWithIgnoreList(a, v)
        return f == nil
    else
        return true
    end
end
game:GetService("UserInputService").InputBegan:Connect(function(v)
    if v.UserInputType == Enum.UserInputType.MouseButton2 then
        Shoot = true
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(v)
    if v.UserInputType == Enum.UserInputType.MouseButton2 then
        Shoot = false
    end
end)

function GetMouse()
    return Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)
end
function GetClosestToCuror()
    MousePos = GetMouse()
    Closest = math.huge
    Target = nil
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0  then
                Point,OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if OnScreen and NotObstructing(v.Character.HumanoidRootPart.Position,{game.Players.LocalPlayer.Character,v.Character}) then
                    Distance = (Vector2.new(Point.X,Point.Y) - MousePos).magnitude
                      if Distance <= getgenv().AimBot.FOV then
                          Closest = Distance
                       Target = v
                  end
               end
            end
         end
    return Target
end 

game:GetService('RunService').Stepped:connect(function()

    if getgenv().AimBot.Enabled == false or Shoot == false then return end
    ClosestPlayer = GetClosestToCuror()
    if ClosestPlayer then
     workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p,ClosestPlayer.Character.HumanoidRootPart.CFrame.p)
    end 

end)



local function getNearestFish()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Glade.Fish:GetChildren()) do
        if v:FindFirstChild("MouseTarget") and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestIngredients()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Glade.Ingredients:GetChildren()) do
        if v:FindFirstChild("MouseTarget") and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestTrees()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Glade.Trees:GetChildren()) do
        if v:FindFirstChild("MouseTarget") and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestOres()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Glade.Ores:GetChildren()) do
        if v:FindFirstChild("MouseTarget")  and v.Properties.Alive.Value ~= false   then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;




local function getNearestFishMaze()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Maze.Fish:GetChildren()) do
        if v:FindFirstChild("MouseTarget")  and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestIngredientsMaze()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Maze.Ingredients:GetChildren()) do
        if v:FindFirstChild("MouseTarget")  and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestTreesMaze()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Maze.Trees:GetChildren()) do
        if v:FindFirstChild("MouseTarget") and v.Properties.Alive.Value ~= false  then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;

local function getNearestOresMaze()
    local TargetDistance = math.huge
    local Target
    for i, v in ipairs(game:GetService("Workspace").Resources.Maze.Ores:GetChildren()) do
        if v:FindFirstChild("MouseTarget")  and v.Properties.Alive.Value ~= false   then
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChildOfClass("Part").Position).Magnitude
            if Mag < TargetDistance then
                TargetDistance = Mag
                Target = v
            end
        end
    end
    return Target
end;


function Invis()
print('cant go invis anymore')
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("The Labyrinth")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")


local Toggle1 = Section1:CreateToggle("Aimbot", nil, function(State)
    getgenv().AimBot.Enabled = State
end)
local Toggle1 = Section1:CreateToggle("WallCheck", nil, function(State)
    getgenv().AimBot.WallCheck = State
end)
local Slider2 = Section1:CreateSlider("Aimbot Radius", 0,1000,nil,false, function(Value)
    getgenv().AimBot.FOV = Value
    Circle.Radius = Value
end)
local Toggle1 = Section1:CreateToggle("Circle Visible", nil, function(State)
   Circle.Visible = State
end)

local Colorpicker3 = Section1:CreateColorpicker("Circle Color", function(Color)
    Circle.Color = Color
end)

local Slider2 = Section1:CreateSlider("Hitbox Radius", 0,50,nil,false, function(Value)
head= Value
end)

local Toggle1 = Section1:CreateToggle("Anti Grass", nil, function(State)
getgenv().Grass = State
if getgenv().Grass then
    sethiddenproperty(workspace.Terrain, "Decoration", false)
else
    sethiddenproperty(workspace.Terrain, "Decoration", true)
end
end)
local Toggle1 = Section1:CreateToggle("Anti Traps", nil, function(State)
getgenv().Traps = State
for i, v in pairs(game:GetService("Workspace").Map.Maze:GetDescendants()) do
    if string.match(v.Name, "Trap")  then if getgenv().Traps then
        v:Destroy()
    end end 
end

game:GetService("Workspace").Map.Maze.DescendantAdded:Connect(function(v)
        if string.match(v.Name, "Trap")  then if getgenv().Traps then
            v:Destroy()
        end end 
    end
)
end)

local Toggle1 = Section1:CreateToggle("Anti Walls", nil, function(State)
getgenv().Trapss = State
for i, v in pairs(game:GetService("Workspace").Map.Maze:GetDescendants()) do
    if v:IsA("BasePart") and v.BrickColor.Name:match("stone") then
        if getgenv().Trapss then
            v.Transparency = 1
            v.CanCollide = false
        else
            v.Transparency = 0
            v.CanCollide = false
        end
    end
end

game:GetService("Workspace").Map.Maze.DescendantAdded:Connect(
    function(v)
        if v:IsA("BasePart") and v.BrickColor.Name:match("stone") then
            if getgenv().Trapss then
                v.Transparency = 1
                v.CanCollide = false
            else
                v.Transparency = 0
                v.CanCollide = false
            end
        end
    end
)
end)

local Toggle1 = Section1:CreateToggle("Auto Sell Selected Item", nil, function(State)
sell = State
while sell do wait()
game:GetService("ReplicatedStorage").Resources.Data.Events.Traffic.Trader:InvokeServer("Sell",Sell,1)
end end)

local Dropdown1 = Section1:CreateDropdown("Select Item To Sell")
Dropdown1:AddToolTip("Select Item To Sell")
for i,v in next, Sell do
Dropdown1:AddOption(v, function(String)
Sell = String
end)
end 
local Toggle1 = Section1:CreateToggle("Hitbox Extender", nil, function(State)
HEAD = State
while HEAD do
    wait()
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            pcall(
                function()
                    v.Character.LowerTorso.CanCollide = false
                    v.Character.LowerTorso.Material = "Neon"
                    v.Character.LowerTorso.Transparency = 0.5
                    v.Character.LowerTorso.Size = Vector3.new(head, head, head)
                    v.Character.HumanoidRootPart.Size = Vector3.new(head, head, head)
                end
            )
        end
    end
end
 end)
local Toggle1 = Section1:CreateToggle("Auto Invis", nil, function(State)
getgenv().invis = State
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().invis then
Invis()
end end)
end)
local Toggle1 = Section2:CreateToggle("AutoFarm Ore", nil, function(State)
getgenv().Tween1 = State

speed = 15
----------------

game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Tween1 then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------

while getgenv().Tween1 do
    wait()
    pcall(
        function()
            local Time =
                (getNearestOres():FindFirstChild("Rock").CFrame.p -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestOres():FindFirstChild("Rock").CFrame.p)}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestOres():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestOres():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestOres().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestOres():FindFirstChild("MouseTarget").HP == nil
        end
    )
end

end)

local Toggle1 = Section2:CreateToggle("AutoFarm Trees", nil, function(State)
getgenv().Tween = State

speed = 14
----------------

Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Tween then
Invis()
end end)
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Tween then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------

while getgenv().Tween do
    wait()
    pcall(
        function()
            local Time =
                (getNearestTrees():FindFirstChild("MouseTarget").CFrame.p -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestTrees():FindFirstChild("MouseTarget").CFrame.p )}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestTrees():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestTrees():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestTrees().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestTrees():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)

local Toggle1 = Section2:CreateToggle("AutoFarm Ingredients", nil, function(State)
getgenv().Tween2 = State

speed = 15
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Tween2 then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Tween2 then
Invis()
end end)
----------------

while getgenv().Tween2 do
    wait()
    pcall(
        function()
            local Time =
                (getNearestIngredients().MainPart.CFrame.p + Vector3.new(0,0,3) -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestIngredients().MainPart.CFrame.p + Vector3.new(0,0,3))}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestIngredients():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestIngredients():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestIngredients().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestIngredients():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)


local Toggle1 = Section2:CreateToggle("Auto Fish", nil, function(State)
getgenv().Tween3 = State

speed = 15
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Tween3 then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Tween3 then
Invis()
end end)
----------------

while getgenv().Tween3 do
    wait()
    pcall(
        function()
            local Time =
                (getNearestFish():FindFirstChild("WaterBubbles").CFrame.p + Vector3.new(0,0,0) -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestFish():FindFirstChild("WaterBubbles").CFrame.p + Vector3.new(0,0,0))}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestFish():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestFish():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestFish().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestFish():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)


local Toggle1 = Section2:CreateToggle("AutoFarm Ore Maze", nil, function(State)
getgenv().Twee = State

speed = 15
----------------
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Tween1 then
Invis()
end end)
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Twee then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------

while getgenv().Twee do
    wait()
    pcall(
        function()
            local Time =
                (getNearestOresMaze():FindFirstChild("Rock").CFrame.p -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestOresMaze():FindFirstChild("Rock").CFrame.p)}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestOresMaze():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestOresMaze():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestOresMaze().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestOresMaze():FindFirstChild("MouseTarget").HP == nil
        end
    )
end

end)

local Toggle1 = Section2:CreateToggle("AutoFarm Trees Maze", nil, function(State)
getgenv().Twe = State

speed = 15
----------------

Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Twe then
Invis()
end end)
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Twe then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------

while getgenv().Twe do
    wait()
    pcall(
        function()
            local Time =
                (getNearestTreesMaze():FindFirstChild("MouseTarget").CFrame.p -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestTreesMaze():FindFirstChild("MouseTarget").CFrame.p )}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestTreesMaze():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestTreesMaze():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestTreesMaze().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestTreesMaze():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)

local Toggle1 = Section2:CreateToggle("AutoFarm Ingredients Maze", nil, function(State)
getgenv().Twee2 = State

speed = 15
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Twee2 then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().Twee2 then
Invis()
end end)
----------------

while getgenv().Twee2 do
    wait()
    pcall(
        function()
            local Time =
                (getNearestIngredientsMaze().MainPart.CFrame.p + Vector3.new(0,0,3) -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestIngredientsMaze().Model:FindFirstChildOfClass("MeshPart").CFrame.p + Vector3.new(0,0,3))}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestIngredientsMaze():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestIngredientsMaze():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestIngredientsMaze().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestIngredientsMaze():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)


local Toggle1 = Section2:CreateToggle("Auto Fish", nil, function(State)
getgenv().T = State

speed = 15
----------------
game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().T then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
----------------
Invis()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
repeat wait() until game.Players.LocalPlayer.Character
wait(4)
if getgenv().T then
Invis()
end end)
----------------

while getgenv().T do
    wait()
    pcall(
        function()
            local Time =
                (getNearestFishMaze():FindFirstChild("WaterBubbles").CFrame.p + Vector3.new(0,0,0) -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude / speed
            local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
            local Tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                Info,
                {CFrame = CFrame.new(getNearestFishMaze():FindFirstChild("WaterBubbles").CFrame.p + Vector3.new(0,0,0))}
            )
            Tween:Play()
            repeat
                wait()
                if getNearestFishMaze():FindFirstChild("MouseTarget") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, uwu)
                    wait(2)
                end
            until getNearestFishMaze():FindFirstChild("MouseTarget").HP

            repeat
                wait()
                if getNearestFishMaze().MouseTarget:FindFirstChild("HP") then
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
                end
            until getNearestFishMaze():FindFirstChild("MouseTarget").HP == nil
        end
    )
end
end)

local Toggle1 = Section2:CreateToggle("Tree Esp", nil, function(State)
getgenv().esp = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Tree"
    T.Size = 14
    T.Color = Color3.fromRGB(255, 5, 0)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChild("MainPart") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v.MainPart.Position)
                    if getgenv().esp and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChild("MainPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i, v in pairs(game:GetService("Workspace").Resources.Glade.Trees:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Glade.Trees.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)
for i, v in pairs(game:GetService("Workspace").Resources.Maze.Trees:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Maze.Trees.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)

end)
local Toggle1 = Section2:CreateToggle("Ores Esp", nil, function(State)
getgenv().esp1 = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Tree"
    T.Size = 14
    T.Color = Color3.fromRGB(0, 255, 0)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChild("MainPart") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v.MainPart.Position)
                    if getgenv().esp1 and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChild("MainPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i, v in pairs(game:GetService("Workspace").Resources.Glade.Ores:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Glade.Ores.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)
for i, v in pairs(game:GetService("Workspace").Resources.Maze.Ores:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Maze.Ores.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)

end)
local Toggle1 = Section2:CreateToggle("Ingredients Esp", nil, function(State)
getgenv().esp2 = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Tree"
    T.Size = 14
    T.Color = Color3.fromRGB(0, 0, 255)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChild("MainPart") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v.MainPart.Position)
                    if getgenv().esp2 and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChild("MainPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i, v in pairs(game:GetService("Workspace").Resources.Glade.Ingredients:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Glade.Ingredients.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)
for i, v in pairs(game:GetService("Workspace").Resources.Maze.Ingredients:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Maze.Ingredients.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)

end)

local Toggle1 = Section2:CreateToggle("Fish Esp", nil, function(State)
getgenv().esp3 = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Tree"
    T.Size = 14
    T.Color = Color3.fromRGB(0, 255, 255)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChild("MainPart") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v.MainPart.Position)
                    if getgenv().esp3 and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChild("MainPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i, v in pairs(game:GetService("Workspace").Resources.Glade.Fish:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Glade.Fish.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)
for i, v in pairs(game:GetService("Workspace").Resources.Maze.Fish:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("MainPart") then
        esp(v)
    end
end
game:GetService("Workspace").Resources.Maze.Fish.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") and string.match(v.Name, "MainPart") then
            esp(v.Parent)
        end
    end
)

end)
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

local Toggle1 = Section1:CreateToggle("Player Esp", nil, function(State)
    ESP:Toggle(State)
end)
local Toggle1 = Section1:CreateToggle("Tracers Esp", nil, function(State)
    ESP.Tracers = State
end)
local Toggle1 = Section1:CreateToggle("Name Esp", nil, function(State)
    ESP.Names = State
end)
local Toggle1 = Section1:CreateToggle("Boxes Esp", nil, function(State)
    ESP.Boxes = State
end)



local Slider2 = Section2:CreateSlider("WalkSpeed", 0,30,nil,false, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

local Slider2 = Section2:CreateSlider("JumpPower", 0,100,nil,false, function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

local Slider2 = Section2:CreateSlider("Gravity", 0,196.2,nil,false, function(Value)
game.Workspace.Gravity = Value
end)

local Toggle1 = Section1:CreateToggle("FullBright", nil, function(State)
FullBright = State
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
game.Lighting.Changed:connect(
    function()
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
    end
)
end)


local Toggle1 = Section2:CreateToggle("G PlatFormNoclip", nil, function(State)
yes44 = State
noclip = false
game:GetService("RunService").Stepped:connect(
    function()
        if noclip then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
)
game.Players.LocalPlayer:GetMouse().KeyDown:connect(
    function(key)
        if key == "g" then
            if yes44 then
                noclip = not noclip
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
    end
)
end)
local Toggle1 = Section2:CreateToggle("N NonePlatFormNoclip", nil, function(State)
hoe = State
game.Players.LocalPlayer:GetMouse().KeyDown:connect(
    function(v)
        if v == "n" then
            NoClip = not NoClip
            game:GetService("RunService").Stepped:connect(
                function()
                    if NoClip then
                     if hoe then
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(
                                function()
                                    if v:IsA("BasePart") then
                                        v.CanCollide = false
                                    end
                                end
                            )
                        end
                    end
                end
            end
            )
        end
    end
)
end)


local Toggle1 = Section2:CreateToggle("B Fly", nil, function(State)
sex2 = State
local Max = 0
local Players = game.Players
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
Mouse.KeyDown:connect(function(k)
if k:lower() == 'b' then
Max = Max + 1
getgenv().Fly = false
if sex2 then
local T = LP.Character.UpperTorso
local S = {
F = 0,
B = 0,
L = 0,
R = 0
}
local S2 = {
F = 0,
B = 0,
L = 0,
R = 0
}
local SPEED = 5
local function FLY()
getgenv().Fly = true
local BodyGyro = Instance.new('BodyGyro', T)
local BodyVelocity = Instance.new('BodyVelocity', T)
BodyGyro.P = 9e4
BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BodyGyro.cframe = T.CFrame
BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat
wait()
LP.Character.Humanoid.PlatformStand = false
if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
SPEED = 30
elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
BodyVelocity.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
S2 = {
F = S.F,
B = S.B,
L = S.L,
R = S.R
}
elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
BodyVelocity.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
end
BodyGyro.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not getgenv().Fly
S = {
F = 0,
B = 0,
L = 0,
R = 0
}
S2 = {
F = 0,
B = 0,
L = 0,
R = 0
}
SPEED = 0
BodyGyro:destroy()
BodyVelocity:destroy()
LP.Character.Humanoid.PlatformStand = false
end)
end
Mouse.KeyDown:connect(function(k)
if k:lower() == 'w' then
S.F = 1
elseif k:lower() == 's' then
S.B = -1
elseif k:lower() == 'a' then
S.L = -1
elseif k:lower() == 'd' then
S.R = 1
end
end)
Mouse.KeyUp:connect(function(k)
if k:lower() == 'w' then
S.F = 0
elseif k:lower() == 's' then
S.B = 0
elseif k:lower() == 'a' then
S.L = 0
elseif k:lower() == 'd' then
S.R = 0
end
end)
FLY()
if Max == 2 then
getgenv().Fly = false
Max = 0
end
end
end
end)
end)
local Button1 = Section2:CreateButton("Anti Lag", function()
for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then --- i stole this from the actual game LOL >-<
        v.Material = Enum.Material.SmoothPlastic
        if v:IsA("Texture") then
            v:Destroy()
        end
    end
end

end)

local Button1 = Section2:CreateButton("Lag Switch F3", function()
local X = false
local C = settings()

game:service "UserInputService".InputEnded:connect(
    function(V)
        if V.KeyCode == Enum.KeyCode.F3 then
            X = not X
            C.Network.IncomingReplicationLag = X and 10 or 0
        end
    end
)
end) 
local Button1 = Section2:CreateButton("ServerHop", function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport() 
end)
local Button1 = Section2:CreateButton("Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) end)

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
 Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
 Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits DekuDimz#7960")
Section3:CreateLabel("Credits AlexR32#3232 Ui")
Section3:CreateLabel("Credits e621")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
 Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)
-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image")
local Option7 = Dropdown3:AddOption("Default", function(String)
 Window:SetBackground("2151741365")
end)
local Option8 = Dropdown3:AddOption("Hearts", function(String)
 Window:SetBackground("6073763717")
end)
local Option9 = Dropdown3:AddOption("Abstract", function(String)
 Window:SetBackground("6073743871")
end)
local Option10 = Dropdown3:AddOption("Hexagon", function(String)
 Window:SetBackground("6073628839")
end)
local Option11 = Dropdown3:AddOption("Circles", function(String)
 Window:SetBackground("6071579801")
end)
local Option12 = Dropdown3:AddOption("Lace With Flowers", function(String)
 Window:SetBackground("6071575925")
end)
local Option13 = Dropdown3:AddOption("Floral", function(String)
 Window:SetBackground("5553946656")
end)
Option7:SetOption()

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
 Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
 Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
 Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)