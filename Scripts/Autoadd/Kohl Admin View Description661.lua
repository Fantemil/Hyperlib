local library = loadstring(game:HttpGetAsync("https://pastebin.com/raw/M0Tv0XM2"))()
local Players = {}

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game:GetService("Players").LocalPlayer then
        table.insert(Players, v.Name)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(NewPlayer)
    table.insert(Players, NewPlayer.Name)
end)

game:GetService("Players").PlayerRemoving:Connect(function(RemovedPlayer)
    for i,v in pairs(Players) do
        if v == RemovedPlayer.Name then
            table.remove(Players, i)
        end
    end
end)

local AP = library:CreateWindow("Admin")
local SvrO = library:CreateWindow("Server OOF")
local XTRA = library:CreateWindow("Extra")
local CRDTS = library:CreateWindow("Credits")

AP:Section("General")

AP:Button("Get Admin", function()
    if game:GetService("Workspace").Terrain["_Game"].Admin.Pads["Touch to get admin"]:FindFirstChild("Head") then
        firetouchinterest(game:GetService("Workspace").Terrain["_Game"].Admin.Pads["Touch to get admin"].Head,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
        firetouchinterest(game:GetService("Workspace").Terrain["_Game"].Admin.Pads["Touch to get admin"].Head,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
    end
end)

AP:Button("Reset Admin Panels", function()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
end)

local t = AP:Toggle('Visible Spawn Pads', {flag = "toggle1"})

coroutine.wrap(function()
    while wait() do
        if AP.flags.toggle1 == true then
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn1.Transparency = 0
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn2.Transparency = 0
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn3.Transparency = 0
        else
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn1.Transparency = 1
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn2.Transparency = 1
            game:GetService("Workspace").Terrain["_Game"].Workspace.Spawn3.Transparency = 1
        end
    end
end)()

local tv2 = AP:Toggle('Workspace Unlock', {flag = "toggle2"})

coroutine.wrap(function()
    while wait() do
        if AP.flags.toggle2 == true then
            for i, v in pairs(game.Workspace:GetDescendants()) do 
                if v:IsA("Part") or v:IsA("MeshPart") then
                    v.Locked = false
            end
        end
    else
        for i, v in pairs(game.Workspace:GetDescendants()) do 
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.Locked = true
        end
    end
end
end
end)()

local tv3 = AP:Toggle('Persistant Admin', {flag = "toggle3"})

coroutine.wrap(function()
    while wait() do
        if AP.flags.toggle3 == true then
            local lp = game:GetService("Players").LocalPlayer
            
            if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(lp.Name.."'s admin") then
                print("Yo")
            else
                firetouchinterest(game:GetService("Workspace").Terrain["_Game"].Admin.Pads["Touch to get admin"].Head,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
                firetouchinterest(game:GetService("Workspace").Terrain["_Game"].Admin.Pads["Touch to get admin"].Head,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
            end
        end
    end
end)()

AP:Section("Player Menu")

SvrO:Section("Abusive Menu")

local tv5 = SvrO:Toggle('Part Spam', {flag = "toggle5"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle5 == true then
            game:GetService'Players':Chat(("part 1/1/1"))
        end
    end
end)()

local tv6 = SvrO:Toggle('Respawn + Explode', {flag = "toggle6"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle6 == true then
            game:GetService'Players':Chat(("respawn others"))
            game:GetService'Players':Chat(("explode others"))
        end
    end
end)()

local tv7 = SvrO:Toggle('Punish', {flag = "toggle7"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle7 == true then
            game:GetService'Players':Chat(("punish others"))
        end
    end
end)()

local tv8 = SvrO:Toggle('Kill', {flag = "toggle8"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle8 == true then
            game:GetService'Players':Chat(("kill others"))
        end
    end
end)()

local tv11 = SvrO:Toggle('Blind', {flag = "toggle11"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle11 == true then
            game:GetService'Players':Chat(("blind others"))
        end
    end
end)()

local tv20 = SvrO:Toggle('Fling', {flag = "toggle20"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle20 == true then
            game:GetService'Players':Chat(("blind others"))
        end
    end
end)()

local tv27 = SvrO:Toggle('Jail', {flag = "toggle27"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle27 == true then
            game:GetService'Players':Chat(("jail others"))
        end
    end
end)()

SvrO:Section("Protection")

local tv9 = SvrO:Toggle('ForceField', {flag = "toggle9"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle9 == true then
            game:GetService'Players':Chat(("ff all"))
        end
    end
end)()

local tv10 = SvrO:Toggle('Crash Protection', {flag = "toggle10"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if SvrO.flags.toggle10 == true then
            game:GetService'Players':Chat(("thaw all"))
            game:GetService'Players':Chat(("unsize"))
        end
    end
end)()

local tv21 = SvrO:Toggle('Anti-Punish', {flag = "toggle21"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle21 == true then
            game:GetService'Players':Chat(("unpunish all"))
        end
    end
end)()

local tv28 = SvrO:Toggle('God mode', {flag = "toggle28"})

coroutine.wrap(function()
    while wait() do
        if SvrO.flags.toggle28 == true then
            game:GetService'Players':Chat(("god all"))
        end
    end
end)()

XTRA:Section("Others")

XTRA:Button("MASSIVE GEAR GUI!!!", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/RavyarTheBest/ef8b4029b50dce9dcf3c0cb4f1785ccf/raw/546f078c53f2debcb3ecc69620a49c6f4f3db01e/gistfile1.txt"))()
end)

XTRA:Button("Fetch Music Id", function()
    if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
        setclipboard(game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId)
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "Music asset id copied to clipboard"})
    else
        print("Could not find music id")
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = "Could not find music"})
    end
end)

local Box = XTRA:Box("Silent CMD", {flag = "CMD", type = "string"}, function(New, Old, Enter)
    game:GetService'Players':Chat((New))
end)

local tv14 = XTRA:Toggle('â  Spam CMD', {flag = "toggle14"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if XTRA.flags.toggle14 == true then
            game:GetService'Players':Chat((game:GetService("CoreGui").ScreenGui.Container.Extra.container.Frame["Silent CMD"].Box.Text))
        end
    end
end)()

SvrO:Section("Your Protection")

local tv12 = SvrO:Toggle('Anti-Punish', {flag = "toggle12"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if SvrO.flags.toggle12 == true then
            game:GetService'Players':Chat(("unpunish me"))
        end
    end
end)()

local tv13 = SvrO:Toggle('Anti-Blind', {flag = "toggle13"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if SvrO.flags.toggle13 == true then
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
                game.Players.LocalPlayer.PlayerGui.EFFECTGUIBLIND:Destroy()
            end
        end
    end
end)()

local tv26 = XTRA:Toggle('Anti-Music', {flag = "toggle26"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if XTRA.flags.toggle26 == true then
            game:GetService'Players':Chat((":music 04853490637458634576358963745805758635706345645"))
        end
    end
end)()

XTRA:Section("Teleports")

XTRA:Button("House", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, 8, 73)
end)

XTRA:Button("Obby Start", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40, 4, -22)
end)

XTRA:Button("Front House", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41, 4, 34)
end)

XTRA:Button("Back House", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30, 4, 113)
end)

AP:Dropdown("Dropdown", {location = shared, flag = "Dropdown", list = Players}, function(Select)
    PlayerSelected = Select
end)

local KLPLR = AP:Button("Kill Player", function()
    game:GetService'Players':Chat(("kill "..PlayerSelected))
end)

local PNPLR = AP:Button("Punish Player", function()
    game:GetService'Players':Chat(("punish "..PlayerSelected))
end)

local BPLR = AP:Button("Blind Player", function()
    game:GetService'Players':Chat(("blind "..PlayerSelected))
end)

local FPLR = AP:Button("Fling Player", function()
    game:GetService'Players':Chat(("fling "..PlayerSelected))
end)

local tv15 = AP:Toggle('Explode + Respawn PLR', {flag = "toggle15"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if AP.flags.toggle15 == true then
            game:GetService'Players':Chat(("explode "..PlayerSelected))
            game:GetService'Players':Chat(("respawn "..PlayerSelected))
        end
    end
end)()

local tv16 = AP:Toggle('Kill Player', {flag = "toggle16"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if AP.flags.toggle16 == true then
            game:GetService'Players':Chat(("kill "..PlayerSelected))
        end
    end
end)()

local tv17 = AP:Toggle('Jail Player', {flag = "toggle17"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if AP.flags.toggle17 == true then
            game:GetService'Players':Chat(("jail "..PlayerSelected))
        end
    end
end)()

local tv18 = AP:Toggle('Fling Player', {flag = "toggle18"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if AP.flags.toggle18 == true then
            game:GetService'Players':Chat(("fling "..PlayerSelected))
        end
    end
end)()

local tv18 = AP:Toggle('Blind Player', {flag = "toggle19"})

coroutine.wrap(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        if AP.flags.toggle19 == true then
            game:GetService'Players':Chat(("blind "..PlayerSelected))
        end
    end
end)()

XTRA:Section("Removing")

XTRA:Button("Remove Obby Walls", function()
    game:GetService("Workspace").Terrain["_Game"].Workspace["Obby Box"]:Destroy()
end)

XTRA:Button("Remove Kill Parts", function()
    game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:Destroy()
end)

CRDTS:Section("Descendo The Monke