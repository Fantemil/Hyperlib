local Config = {
    WindowName = "V.G Hub",
 Color = Color3.fromRGB(255,128,64),
 Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()=="FireServer" and tostring(Self)=="ErrorLoggerRemote" then
            return nil
    end
    return OldNameCall(self, ...)
end)
pcall(function()
for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
    game:GetService("ScriptContext").Error:Connect(
        function(...)
            local Arg = {...}
            local i, v =
                pcall(
                function()
                    return Arg[3].Name
                end
            )
            if i == false then
                return
            end
            v:Fire(...)
        end
    )
end
end)
function FreeForAll(v)
    if getgenv().FreeForAll == false then
        if game.Players.LocalPlayer.Team == v.Team then return false
        else return true end
    else return true end
end

local Utils = require(game:GetService("ReplicatedStorage").Modules.Utils.Utils)
local Player = require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter)
local R =  require(game:GetService("ReplicatedStorage").Modules.Load)("Ragdolls")
local Animal = require(game:GetService("ReplicatedStorage").Modules.Load)("Animal")
local AnimalRiding = require(game:GetService("ReplicatedStorage").Modules.Load)("AnimalRiding")
Keys = {}
OreDeposits = {}
for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetChildren()) do
     if v.ClassName == "Folder" and v:FindFirstChildOfClass("Model") then
        table.insert(OreDeposits, v.Name)
    end
end



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
FreeForAll= false,
WallCheck = false,
Enabled = false,
FOV = 250,
Smoothness = 0.25
}



local Shoot = false

function FreeForAll(v)
    if getgenv().AimBot.FreeForAll == false then
        if game.Players.LocalPlayer.Team == v.Team then return false
        else return true end
    else return true end
end

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
        if FreeForAll(v) then
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
         end
    return Target
end 

game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().AimBot.Enabled == false or Shoot == false then
            return
        end
        ClosestPlayer = GetClosestToCuror()
        if ClosestPlayer then
            local Mouse = game:GetService("UserInputService"):GetMouseLocation()
            local TargetPos = game.workspace.Camera:WorldToViewportPoint(ClosestPlayer.Character.HumanoidRootPart.Position)
            mousemoverel(
                (TargetPos.X - Mouse.X) * getgenv().AimBot.Smoothness,
                (TargetPos.Y - Mouse.Y) * getgenv().AimBot.Smoothness
            )
        end
    end
)



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("The Wild West")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("Auto Sprint", nil, function(State)
sex = State
game:GetService("RunService").Stepped:Connect(
    function()
        if sex then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
        end
    end
)

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

local Toggle1 = Section1:CreateToggle("Aimbot", nil, function(State)
    getgenv().AimBot.Enabled = State
end)

local Toggle1 = Section1:CreateToggle("FreeForAll", nil, function(State)
    getgenv().AimBot.FreeForAll = State
end)

local Toggle1 = Section1:CreateToggle("WallCheck", nil, function(State)
    getgenv().AimBot.WallCheck = State
end)

local Slider2 = Section1:CreateSlider("Aimbot Smoothness", 0,10,nil,false, function(Value)
    getgenv().AimBot.Smoothness = Value
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

local Toggle1 = Section1:CreateToggle("Player Silent Aim", nil, function(State)
getgenv().SilentAim = State
local Ignore = {}
local function ClosestPlayerToCurser()
    local Closest = nil
    local MaxDistance = math.huge
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and
                v.Character.Head.PlayerInfo.Screen.HealthContainer.HealthBar.HealthProgressFrame.Size.X.Scale ~= 0 and FreeForAll(v)
         then
            local AimPoint, Part =
                game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(v.Character.Head.Position)
            if Part then
                local Ignore = {game.Players.LocalPlayer.Character}
                local RayCastPoints = {v.Character.Head.Position}
                local Point = game:GetService("Workspace").CurrentCamera:GetPartsObscuringTarget(RayCastPoints, Ignore)
                local Hitting = false
                for i, x in pairs(Point) do
                    if not x:IsDescendantOf(v.Character) then
                        Hitting = true
                    end
                end
                if Hitting == false then
                    local M =
                        (Vector2.new(AimPoint.X, AimPoint.Y) -
                        Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)).magnitude
                    if M < MaxDistance then
                        MaxDistance = M
                        Closest = v
                    end
                end
            end
        end
    end
    return Closest
end

local OldIndex = Utils.GetMouseHit
Utils.GetMouseHit = function(...)
    local ClosestPlayerToCurser = ClosestPlayerToCurser()
    wait()
    if ClosestPlayerToCurser and ClosestPlayerToCurser.Character and getgenv().SilentAim then
        if ClosestPlayerToCurser.Character:FindFirstChild("Head") then
            return ClosestPlayerToCurser.Character.Head.Position
        end
    end

    return OldIndex(...)
end
end)

local Toggle1 = Section1:CreateToggle("Player Silent FreeForAll", nil, function(State)
getgenv().FreeForAll = State
end)
local Toggle1 = Section1:CreateToggle("Animal Silent Aim", nil, function(State)
getgenv().SilentAnimalAim = State
local Utils = require(game:GetService("ReplicatedStorage").Modules.Utils.Utils)
local Ignore = {}
local function ClosestAnimalToCurser()
    local Closest = nil
    local MaxDistance = math.huge
    for i, v in pairs(game.Workspace.WORKSPACE_Entities.Animals:GetChildren()) do
        if v:FindFirstChild("Body") then
            local AimPoint, Part =
                game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(v.Body.Position)
            if Part then
                local Ignore = {game.Players.LocalPlayer.Character}
                local RayCastPoints = {v.Body.Position}
                local Point = game:GetService("Workspace").CurrentCamera:GetPartsObscuringTarget(RayCastPoints, Ignore)
                local Hitting = false
                for i, x in pairs(Point) do
                    if not x:IsDescendantOf(v) then
                        Hitting = true
                    end
                end
                if Hitting == false then
                    local M =
                        (Vector2.new(AimPoint.X, AimPoint.Y) -
                        Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)).magnitude
                    if M < MaxDistance then
                        MaxDistance = M
                        Closest = v
                    end
                end
            end
        end
    end
    return Closest
end

local OldIndex = Utils.GetMouseHit
Utils.GetMouseHit = function(...)
    local ClosestAnimalToCurser = ClosestAnimalToCurser()
    if ClosestAnimalToCurser and ClosestAnimalToCurser.Body and getgenv().SilentAnimalAim  then
        if ClosestAnimalToCurser:FindFirstChild("Body") then
            return ClosestAnimalToCurser.Body.Position
        end
    end
    return OldIndex(...)
end
end)

Key = {["Weapons"] = {}}


local Toggle1 = Section1:CreateToggle("Anti Ragdoll", nil, function(State)
AntiRagdoll = State
Keys["Ragdoll"] = hookfunction(Player.Ragdoll, function(...)
    if AntiRagdoll and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
        return;
    end
    return Keys["Ragdoll"](...)
end)
end) 

local Toggle1 = Section1:CreateToggle("Infinite animal Boosts", nil, function(State)
InfiniteBoosts = State
Keys["Animal-Mount"] =
    hookfunction(
    Animal.Mount,
    function(...)
        if InfiniteBoosts then
            Keys["Animal-Mount"](...)
            local RidingAnimal = AnimalRiding.GetRidingAnimal()
            RidingAnimal.MaxBoosts = math.huge
            RidingAnimal.Boosts = math.huge

            return
        end
        return Keys["Animal-Mount"](...)
    end
)
end)


local Toggle1 = Section1:CreateToggle("InstantBreakFree", nil, function(State)
getgenv().InstantBreakFree = State
    Keys["EnterRagdoll"] = hookfunction(R.EnterRagdoll, function(...)
    if getgenv().InstantBreakFree then
        coroutine.resume(coroutine.create(function()
            local Start = tick()
            repeat
                wait()
            until require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter):CanBreakFree() or Start - tick() > 4
            require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter).BreakFreePerc = 5
        end))
    end
    return Keys["EnterRagdoll"](...)
end)
end) 

local Toggle1 = Section1:CreateToggle("AutoGetUp", nil, function(State)
getgenv().AutoGetUp = State
Keys["EnterRagdoll"] = hookfunction(R.EnterRagdoll, function(...)
    if getgenv().AutoGetUp then
        coroutine.resume(coroutine.create(function()
            local Start = tick()
            repeat
                wait()
            until require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter):CanGetUp() or Start - tick() > 2
            if require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter).IsRagdolledSelf then
                require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter):GetUp()
            end
        end))
    end
end)
end)

local Toggle1 = Section1:CreateToggle("infinite Stamina", nil, function(State)
Infinite = State
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()=="FireServer" and tostring(Self)=="LowerStamina" and Infinite then
            return wait(math.huge)
    end
    return OldNameCall(...)
end) 
end)


local Toggle1 = Section1:CreateToggle("NoFall Damage", nil, function(State)
NoFall = State
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()=="FireServer" and tostring(Self)=="DamageSelf" and NoFall then
            return nil
    end
    return OldNameCall(...)
end) 
end)
local Toggle1 = Section1:CreateToggle("Animal AntiRagdoll", nil, function(State)
AntiAnimalRagdoll = State
Animal.Ragdoll = function(...)
    if AntiAnimalRagdoll then
        return;
    end
    return Core["Animal-Ragdoll"](...)
end
end)

local Toggle1 = Section2:CreateToggle("NoRecoil", nil, function(State)
NoRecoil = State
for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "BaseRecoil") then
        v.BaseRecoil = NoRecoil == false and Key["Weapons"][i].BaseRecoil or 0
    end
end
end)

local Toggle1 = Section2:CreateToggle("NoSpread", nil, function(State)
NoSpread = State
for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "BaseRecoil") then
        v.FanAccuracy = NoSpread == false and Key["Weapons"][i].FanAccuracy or 1
        v.ProjectileAccuracy = NoSpread == false and Key["Weapons"][i].ProjectileAccuracy or 1
    end
end
end)


local Toggle1 = Section2:CreateToggle("Wallbang", nil, function(State)
Wallbang = State
for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "BaseRecoil") then
        v.ProjectilePenetration = Wallbang == false and Key["Weapons"][i].ProjectilePenetration or 9e9
    end
end
end)
local Toggle1 = Section2:CreateToggle("InstantReload", nil, function(State)
InstantReload = State
for i, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "BaseRecoil") then
        v.ReloadSpeed = InstantReload == false and Key["Weapons"][i].ReloadSpeed or 1000
        v.LoadSpeed = InstantReload == false and Key["Weapons"][i].LoadSpeed or 1000
        v.LoadEndSpeed = InstantReload == false and Key["Weapons"][i].LoadEndSpeed or 1000
    end
end
end)

local Toggle1 = Section1:CreateToggle("Anti Rain", nil, function(State)
rain = State
local save = game:GetService("ReplicatedStorage").GlobalWeather.RainPercent.Value
game:GetService("RunService").Stepped:Connect(
    function()
        if rain then
            game:GetService("ReplicatedStorage").GlobalWeather.RainPercent.Value = 0
        else
            game:GetService("ReplicatedStorage").GlobalWeather.RainPercent.Value = save
        end
    end
)
end)


local Toggle1 = Section2:CreateToggle("Ore Esp", nil, function(State)
getgenv().esp = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Ore"
    T.Size = 14
    T.Color = Color3.fromRGB(203, 214, 73)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChildOfClass("MeshPart")  then wait()
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v:FindFirstChildOfClass("MeshPart").Position)
                    if getgenv().esp and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v:FindFirstChildOfClass("MeshPart").Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChildOfClass("MeshPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end



for i, v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetChildren()) do
    if table.find(OreDeposits, v.Name) then
        for i, v in pairs(v:GetChildren()) do
            if v:FindFirstChildOfClass("MeshPart").Name:match("Ore") then
                esp(v)
            end
        end
    end
end
end)

local Toggle1 = Section2:CreateToggle("Animal Esp", nil, function(State)
getgenv().esp3 = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "Ore"
    T.Size = 14
    T.Color = Color3.fromRGB(203, 0, 0)
    local function update()
        local Re
        Re =
            game:GetService("RunService").Stepped:Connect(
            function()
                pcall(
                    function()
                        if v and v:FindFirstChildOfClass("MeshPart") then
                            wait()
                            local Vector, Screen =
                                workspace.CurrentCamera:WorldToViewportPoint(
                                v:FindFirstChildOfClass("MeshPart").Position
                            )
                            if getgenv().esp3 and Screen then
                                T.Position = Vector2.new(Vector.X, Vector.Y)
                                T.Visible = true
                                T.Text = v.Name
                            else
                                T.Visible = false
                            end
                        elseif v:FindFirstChildOfClass("MeshPart") == nil then
                            T:Remove()
                            Re:disconnect()
                        end
                    end
                )
            end
        )
    end
    update()
end
for i, v in pairs(game.Workspace.WORKSPACE_Entities.Animals:GetChildren()) do
    if v.ClassName == "Model" and v:FindFirstChildOfClass("MeshPart") and not v.Name:match("Horse") then
        esp(v)
    end
end
game.Workspace.WORKSPACE_Entities.Animals.ChildAdded:Connect(
    function(v)
        if v:IsA("Model") and not v.Name:match("Horse") then
            esp(v)
        end
    end
)

end)

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

local Toggle1 = Section2:CreateToggle("Player Esp", nil, function(State)
    ESP:Toggle(State)
end)
local Toggle1 = Section2:CreateToggle("Tracers Esp", nil, function(State)
    ESP.Tracers = State
end)
local Toggle1 = Section2:CreateToggle("Name Esp", nil, function(State)
    ESP.Names = State
end)
local Toggle1 = Section2:CreateToggle("Boxes Esp", nil, function(State)
    ESP.Boxes = State
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
Section3:CreateLabel("Credits FruitBux")
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


game.StarterGui:SetCore("SendNotification", {
Title = "Warning";
Text = "RightControl to toggle";
})
game.StarterGui:SetCore("SendNotification", {
Title = "Credis";
Text = "CharWar Serverhops Toxic Mods screen thingy And Kiriot22 esp,IY for fly script inspiration";
})

game.StarterGui:SetCore("SendNotification", {
Title = "Warning";
Text = "Im not responsible for bans use at your own risk";
})