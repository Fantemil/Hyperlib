local Config = {
    WindowName = "V.G Hub",
 Color = Color3.fromRGB(255,128,64),
 Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
pcall(function()
Mobs = {}
for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
if v.ClassName == 'Model' and v:FindFirstChild("Humanoid")  and not table.find(Mobs, v.Name) then
table.insert(Mobs, v.Name)
end end 

local OldNameCall
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...)
    if not checkcaller()  and (B == "WalkSpeed" or B == "JumpPower") then
        return
    end
    return OldNameCall(A, B, ...)
end)
local Quests = require(game:GetService("ReplicatedStorage").Quests.QuestLibrary)
Quest = {}
for i, v in pairs(Quests) do
    table.insert(Quest, i)
end



NPCS = {}
for i,v in pairs(game:GetService("Workspace").QuestNPCs:GetDescendants()) do
if v.ClassName == 'Model' and v:FindFirstChild("Humanoid") then
table.insert(NPCS, v.Name)
end end 

Quirks = {}
for i,v in pairs(game.Players:GetDescendants()) do
if v.ClassName == 'Tool' and  v.Name ~= "Combat" then
table.insert(Quirks, v.Name)
end end 

game:GetService("RunService").Stepped:connect(function()
pcall(function()
if game.Players.LocalPlayer.Character.Head:FindFirstChild("OverheadUI") then
game.Players.LocalPlayer.Character.Head.OverheadUI:remove()
end end) end)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 27
game.Players.LocalPlayer.CharacterAdded:Connect(
    function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        wait(3)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 27
    end
)
end)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Project Hero")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("KillAura", nil, function(State)
Punch = State
while Punch do
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
        "Handle_Combat",
        game:GetService("Players").LocalPlayer.Character,
        3
    )
end
end)

local Toggle1 = Section1:CreateToggle("Equip All Quirks", nil, function(State)
doo = State
while doo do wait(1)
for i,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
if v.ClassName == "Tool" then
v.Parent = game.Players.LocalPlayer.Character
end end end end)


local Toggle1 = Section1:CreateToggle("Mob farm", nil, function(State)
gogo = State
game:GetService("RunService").Stepped:connect(
    function()
        if gogo then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
        end
    end
)

while gogo do
    wait(0.5)
    pcall(
        function()
            for i, v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                if v.ClassName == "Model" and v:FindFirstChild("Humanoid") and v.Name == Mobs and v.Humanoid.Health ~= 0 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,3)
                    for i=1,10 do wait(0.1)
                    if v.HumanoidRootPart then
                    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
                        "Handle_Combat",
                        game:GetService("Players").LocalPlayer.Character,
                        3
                    )
                    end 
                    end
                end
            end
        end
    )
end


end)

local Dropdown1 = Section1:CreateDropdown("Select Mob")
Dropdown1:AddToolTip("Select Mob")
for i,v in next, Mobs do
Dropdown1:AddOption(v, function(String)
Mobs = String
end)
end 

local Toggle1 = Section1:CreateToggle("Auto Invis all", nil, function(State)
gogogo = State
while wait(1) and gogogo do
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
                "Invisibility_Self",
                v.Character,
                true
            )
        end
    end
end
end)
local Toggle1 = Section1:CreateToggle("Loop Invis YourSelf", nil, function(State)
gogogo1 = State
while wait(1) and gogogo1 do
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
        "Invisibility_Self",
        game.Players.LocalPlayer.Character,
        true
    )
end
end)

local Button1 = Section1:CreateButton("Clone Selected Quirk", function()
for i,v in pairs(game.Players:GetDescendants()) do
if v.ClassName == "Tool" and v.Name == Quirks then
local Clone = v:Clone()
v.Parent = game.Players.LocalPlayer.Backpack
end end 
end)


local Dropdown1 = Section1:CreateDropdown("Select Quirk")
Dropdown1:AddToolTip("Select Quirk")
for i,v in next, Quirks do
Dropdown1:AddOption(v, function(String)
Quirks = String
end)
end 

--[[
local Toggle1 = Section1:CreateToggle("Auto Quest", nil, function(State)
fofo = State

while fofo do wait()
repeat wait()
game:GetService("ReplicatedStorage").Quests.AcceptQuest:FireServer(Quest)
until game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == true

repeat wait()
if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == true then
for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
local mobname = string.split(mission.bg.name.Text,"Defeat ")[1]
if(string.find(mobname,"(s)")) then
mobname = string.gsub(mobname,"(s)","")
end

local Dropdown1 = Section1:CreateDropdown("Select Quest")
Dropdown1:AddToolTip("Select Quest")
for i,v in next, Quest do
Dropdown1:AddOption(v, function(String)
Quest = String
end)
end 
]]--


local Toggle1 = Section1:CreateToggle("Auto Kill Players/Annoy", nil, function(State)
sen = State
while wait() and sen do
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
                "Invisibility_Self",
                game.Players.LocalPlayer.Character,
                true
            )
            for i = 1, 20 do
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(
                    "Handle_Combat",
                    game:GetService("Players").LocalPlayer.Character,
                    3
                )

                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(
                    "Grip",
                    game:GetService("Players").LocalPlayer.Character,
                    v.Character
                )
            end
            wait(1)
        end
    end
end
end)

local Toggle1 = Section1:CreateToggle("Auto Money", nil, function(State)
stuff = State
while stuff do
    wait()
    pcall(
        function()
            repeat
                wait()
                if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == false then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestNPCs["Eren Y."].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                game:GetService("ReplicatedStorage").Quests.AcceptQuest:FireServer("CleanUpRestaurant")
                end
            until game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == true
            repeat
                wait()
                if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Trash:GetDescendants()) do
                        if v.ClassName == "ClickDetector" then
                            fireclickdetector(v)
                        end
                    end
                end
            until stuff == false or game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ActiveQuest.Visible == false
        end
    )
end
end)
local Toggle1 = Section1:CreateToggle("Auto Strength", nil, function(State)
st = State
while st do wait(0.5)
game:GetService("ReplicatedStorage").Remotes.To_Server.AddStat:FireServer("StrengthUp",1)
end end)

local Toggle1 = Section1:CreateToggle("Auto Defense", nil, function(State)
st1 = State
while st1 do wait(0.5)
game:GetService("ReplicatedStorage").Remotes.To_Server.AddStat:FireServer("DurabilityUp",1)
end end)


local Toggle1 = Section1:CreateToggle("Auto Stamina", nil, function(State)
st2 = State
while st2 do wait(0.5)
game:GetService("ReplicatedStorage").Remotes.To_Server.AddStat:FireServer("StaminaUp",1)
end end)

local Toggle1 = Section1:CreateToggle("Auto Quirk", nil, function(State)
st3 = State
while st3 do wait(0.5)
game:GetService("ReplicatedStorage").Remotes.To_Server.AddStat:FireServer("QuirkMasteryUp",1)
end end)




local Toggle1 = Section1:CreateToggle("Auto Invis", nil, function(State)
yes = State
local Save = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2228, 1305, 1595)
wait(0.5)
local Clone = game.Players.LocalPlayer.Character.LowerTorso.Root:Clone()
game.Players.LocalPlayer.Character.LowerTorso.Root:remove()
Clone.Parent = game.Players.LocalPlayer.Character.LowerTorso wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Save

game.Players.LocalPlayer.CharacterAdded:Connect(
    function()
        repeat
            wait()
        until game.Player.LocalPlayer.Character
        Wait(4)
        if yes then
        local Save = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2228, 1305, 1595)
        wait(0.5)
        local Clone = game.Players.LocalPlayer.Character.LowerTorso.Root:Clone()
        game.Players.LocalPlayer.Character.LowerTorso.Root:remove()
        Clone.Parent = game.Players.LocalPlayer.Character.LowerTorso wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Save
        end
    end
)
end)

local Toggle1 = Section1:CreateToggle("Anti KnockOut", nil, function(State)
toto = State
game:GetService("RunService").Stepped:connect(
    function()
        pcall(
            function()
                if game.Players.LocalPlayer.Character:FindFirstChild("KnockedOut") then
                    if toto then
                        game.Players.LocalPlayer.Character:FindFirstChild("KnockedOut"):remove()
                    end
                end
            end
        )
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


local TextBox1 = Section2:CreateTextBox("WalkSpeed", "Only numbers", true, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
local TextBox1 = Section2:CreateTextBox("JumpPower", "Only numbers", true, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)
local Toggle1 = Section2:CreateToggle("Infinite Jump", nil, function(State)
Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
 if Infinite then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end) end)


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
                                    if v.ClassName == "Part" or v.ClassName == "MeshPart" then
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
SPEED = 200
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

local Button1 = Section2:CreateButton("Teleport to RandomPlayer", function()
local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
    CFrame.new(
    Vector3.new(
        randomPlayer.Character.Head.Position.X,
        randomPlayer.Character.Head.Position.Y,
        randomPlayer.Character.Head.Position.Z
    )
)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
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
Text = "CharWar Serverhops Toxic Mods screen thingy And Kiriot22 esp";
})

local function copyDiscord()
    setclipboard("https://discord.gg/jdt5z8T5ws")
end

local StarterGui = game:GetService("StarterGui")
local bindable = Instance.new("BindableFunction")

local function sendNotification(titleText, descText)
    StarterGui:SetCore("SendNotification",{
        Title = titleText;
        Text = descText;
        Icon = "";
        Duration = 5;
    })
end

function bindable.OnInvoke(response)
    if response == "Yes" then
        copyDiscord()
        sendNotification("discord link copied")
    end
end

StarterGui:SetCore("SendNotification", {
 Title = "V.G Hub Discord",
 Text = "Copy to clipboard?",
 Duration = 5,
 Callback = bindable,
 Button1 = "Yes",
 Button2 = "No"
})