--https://www.roblox.com/games/13864661000/Break-In-2-Story

local localplr = game.Players.LocalPlayer
local localname = localplr.Name
local killbadguys = false
local energynochange = false
local addspaces = false
local rainbow = false
local antitp = false
local color
local t = 10
local toc = {}
local dialoguebox = game:GetService("Players").LocalPlayer.PlayerGui.DialogueHolder.Dialogue.Dialogue.Dialogue
local boxes = {}
boxes["Red"] = "http://www.roblox.com/asset/?id=4614567084"
boxes["Blue"] = "rbxassetid://3174861400"
boxes["Yellow"] = "http://www.roblox.com/asset/?id=4691689807"
local textanimmodule = require(game:GetService("Players").LocalPlayer.PlayerScripts.RichText)
local dialogueopen = game:GetService("TweenService"):Create(dialoguebox, TweenInfo.new(0.4), {
    Size = dialoguebox.Size, ImageTransparency = 0
})
local dialogueclose = game:GetService("TweenService"):Create(dialoguebox, TweenInfo.new(0.4), {
    ImageTransparency = 1
})
function openframe(box)
    if box then
        dialoguebox.Image = box
    end
    dialoguebox.Size = UDim2.new(0.4, 0, 0.1, 0)
    dialoguebox.ImageTransparency = 1
    dialoguebox.Visible = true
    dialogueopen:Play()
    wait(dialogueopen.TweenInfo.Time)
end
function closeframe()
    dialogueclose:Play()
    for i,v in pairs(dialoguebox.TextFrame:GetDescendants()) do
        if v:IsA("TextLabel") then
            v.Visible = false
        end
    end
    wait(dialogueclose.TweenInfo.Time)
end
function dodialogue(dialoguesettings)
    local text = dialoguesettings.text
    local font = dialoguesettings.font
    local timebeforeclose = dialoguesettings.timebeforeclose
    local box = dialoguesettings.box
    if not font then
        font = "GothamBold"
    end
    if not timebeforeclose then
        timebeforeclose = 1
    end
    if not box then
        box = boxes["Blue"]
    end
    openframe(box)
    local textanim = textanimmodule:New(game:GetService("Players").LocalPlayer.PlayerGui.DialogueHolder.Dialogue.Dialogue.Dialogue.TextFrame,text,{
        Font = font
    })
    textanim:Animate(true)
    wait(timebeforeclose)
    closeframe()
end
local dialoguesettings = {}
local rainbowify2 = Instance.new("ColorCorrectionEffect",game.Lighting)
rainbowify2.Enabled = false
rainbowify2.Name = "rainbowlol"

local tpservice = game:GetService("TeleportService")
local tphook,tphook2
tphook = hookfunction(tpservice.TeleportToPlaceInstance,newcclosure(function(placeid)
    print("hookfunction detected tpplace")
    if antitp then
        if localplr.Character then
            localplr.Character:PivotTo(game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())].Character:GetPivot())
        end
        print("lol tried to tp get trolled (tpplace)")
        return nil
    else
        print("uhm its tping you might leave")
        print(placeid)
        tphook(service,placeid)
    end
end))
tphook2 = hookfunction(tpservice.Teleport,newcclosure(function(service,placeid)
    print("hookfunction detected tp")
    if antitp then
        if localplr.Character then
            localplr.Character:PivotTo(game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())].Character:GetPivot())
        end
        print("lol tried to tp get trolled (tp)")
        return nil
    else
        print("uhm its tping you might leave")
        print(placeid)
        tphook2(service,placeid)
    end
end))

local lib = loadstring(game:HttpGet("https://pastebin.com/raw/A2Wf3WVh"))()
lib.makelib("Break In 2 (BY 2AREYOUMENTAL110)")
local maintab = lib.maketab("Main")
local lobbytab = lib.maketab("Lobby")
local dialoguetab = lib.maketab("Dialogue (only you can see)")
local cutscenetab = lib.maketab("Cutscene (only you can see)")

lib.ondestroyedfunc = function()
    killbadguys = false
    energynochange = false
    antitp = false
    rainbowify2:Destroy()
    rainbow = false
    for i,v in pairs(toc) do
        v:Disconnect()
    end
end

--------------https://v3rmillion.net/showthread.php?tid=1090447---------
local BlockedRemotes = {
    "IceSlip",
    "Energy"
}
local Events = {
    Fire = true, 
    Invoke = true, 
    FireServer = true, 
    InvokeServer = true,
}

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        for i,v in pairs(BlockedRemotes) do
            if v == self.Name and not checkcaller() and energynochange then return nil end
        end
    end
    return psuedoEnv.__index(self, index, ...)
end)
--------------https://v3rmillion.net/showthread.php?tid=1090447---------
function dobadguy(badguy)
    task.spawn(function()
        if not badguy then return nil end
        repeat
            wait()
            if killbadguys then
                game.ReplicatedStorage.Events.HitBadguy:FireServer(badguy,64.8,4)
            end
        until not badguy or not badguy.Parent
    end)
end

lib.maketextbox("Rainbowness (more lower = faster)",maintab,function(txt)
    local num = tonumber(txt)
    if num then
        t = num
    end
end)
local rainbowtoggle = lib.maketoggle("Rainbowify",maintab,function(bool)
    rainbow = bool
    if not bool then
        lib.updateallcolors_secret(lib.bgcolor)
    end
end)
rainbowtoggle.TextStrokeTransparency = 0
local rainbowtoggle2 = lib.maketoggle("Rainbowify (2)",maintab,function(bool)
    rainbowify2.Enabled = bool
end)
rainbowtoggle2.TextStrokeTransparency = 0

lib.makebutton("Unlock Evil Ending (CLICK WHEN BRUTE HAS CROWBAR OUT, YOU NEED DREAM TEAM AND MAXED STATS)",maintab,function()
    fireclickdetector(workspace.CrowbarBrute.ClickDetector)
    for i=1,3 do
        for i,v in pairs(localplr.Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = localplr.Backpack
            end
        end
        game.ReplicatedStorage.Events.GiveTool:FireServer("GoldPizza")
        local pizza = localplr.Backpack:WaitForChild("GoldPizza",math.huge)
        pizza.Parent = localplr.Character
        game.ReplicatedStorage.Events.CurePlayer:FireServer(localplr,localplr)
        wait(.1)
    end
    fireclickdetector(workspace.CrowbarBrute.ClickDetector)
end)

lib.makebutton("Unlock Secret Ending",maintab,function()
    game.ReplicatedStorage.Events.LarryEndingEvent:FireServer("CrowbarCollected")
    game.ReplicatedStorage.Events.LarryEndingEvent:FireServer("HatCollected",true)
    game.ReplicatedStorage.Events.LarryEndingEvent:FireServer("MaskCollected")
end)

lib.makebutton("Heal All (don't spam or it'll break)",maintab,function()
    for i,v in pairs(localplr.Character:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = localplr.Backpack
        end
    end
    game.ReplicatedStorage.Events.GiveTool:FireServer("GoldenApple")
    local apple = localplr.Backpack:WaitForChild("GoldenApple",math.huge)
    apple.Parent = localplr.Character
    game.ReplicatedStorage.Events.HealTheNoobs:FireServer()
end)

lib.makebutton("Get Dream Team",maintab,function()
    -- uncle pete
    if workspace.TheHouse.Jail:FindFirstChild("Import6") then
        for i,v in pairs(localplr.Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = localplr.Backpack
            end
        end
        game.ReplicatedStorage.Events.GiveTool:FireServer("Key")
        local key = localplr.Backpack:WaitForChild("Key",math.huge)
        key.Parent = localplr.Character
        game.ReplicatedStorage.Events.KeyEvent:FireServer()
    end
    -- twado
    if workspace.TheHouse.SmallCat.Head.BillboardGui.Enabled == false then
        game.ReplicatedStorage.Events.CatFed:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Phone.Phone.Background.InfoScreen.DogInfo.TwadoWants.Text)
        game.ReplicatedStorage.Events.CatUpdate:FireServer(CFrame.new(-196.73828125, 26.994741439819336, -790.2998657226562, 0.05909018963575363, 0, 0.9982526302337646, 0, 1, 0, -0.9982526302337646, 0, 0.05909018963575363))
        game.ReplicatedStorage.Events.GoingInside:FireServer()
    end
    -- detective bradley
    if workspace.AgentBeans.Head:FindFirstChild("sleepingParticle") then
        game.ReplicatedStorage.Events.GiveTool:FireServer("Louise")
        local rat = localplr.Backpack:WaitForChild("Louise",math.huge)
        rat.Parent = localplr.Character
        game.ReplicatedStorage.Events.LouiseGive:FireServer(2)
    end
end)

lib.makebutton("Avoid Humiliation Badge",maintab,function()
    game.ReplicatedStorage.Events.AvoidHumiliation:FireServer()
end)

lib.makebutton("Reformed Badge",maintab,function()
    game.ReplicatedStorage.Events.PunchableQuest:FireServer("Quest","GoldPizza")
    game.ReplicatedStorage.Events.LarryEndingEvent:FireServer("HatCollected",true)
end)

lib.maketoggle("Anti-Teleport To Lobby",maintab,function(bool)
    antitp = bool
end)

lib.makebutton("join a game?? idek",maintab,function()
    game:GetService("TeleportService"):Teleport(13864667823)
end)

lib.makelabel("Food",maintab)
local food = {"Apple","Cookie","Chips","Pizza","Lollipop","GoldenApple","GoldPizza","RainbowPizza","RainbowPizzaBox"}

for i,v in pairs(food) do
    lib.makebutton("Get "..v,maintab,function()
        if v ~= "GoldenApple" and v ~= "RainbowPizzaBox" then
            game.ReplicatedStorage.Events.GiveTool:FireServer(v)
        else
            game.ReplicatedStorage.Events.Vending:FireServer(3,v,"Food",localname,1)
        end
    end)
end

lib.makelabel("Drinks",maintab)
local drinks = {"BloxyCola","ExpiredBloxyCola","Bottle","Battery"}

for i,v in pairs(drinks) do
    lib.makebutton("Get "..v,maintab,function()
        game.ReplicatedStorage.Events.GiveTool:FireServer(v)
    end)
end

lib.makelabel("Weapons",maintab)
local weapons = {"Crowbar1","Crowbar2","Crowbar3","Bat","Pitchfork","Hammer","Wrench","Broom"}

for i,v in pairs(weapons) do
    lib.makebutton("Get "..v,maintab,function()
        game.ReplicatedStorage.Events.Vending:FireServer(3,v,"Weapons",localname,1)
    end)
end

lib.makelabel("Other",maintab)

lib.maketoggle("Energy Doesn't Change",maintab,function(bool)
    energynochange = bool
end)

lib.maketoggle("Phone Gui",maintab,function(bool)
    localplr.PlayerGui.Phone.Phone.Phone.Background.Visible = bool
end)

lib.makebutton("Get Golden Armor (only 1)",maintab,function()
    game.ReplicatedStorage.Events.Vending:FireServer(1,"Armor",localname,150)
    game.ReplicatedStorage.Events.Vending:FireServer(3,"Armor2","Armor",localname,1)
end)

lib.makebutton("Get Medkit",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("MedKit")
end)

lib.makebutton("Get Louise",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("Louise")
end)

lib.makebutton("Get Phone",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("Phone")
end)

lib.makebutton("Get Book",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("Book")
end)

lib.makebutton("Get Ladder",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("Ladder")
end)

lib.makebutton("Get Key For Uncle Pete",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("Key")
end)

lib.makebutton("Get Gold Key For Rainbow Pizza",maintab,function()
    game.ReplicatedStorage.Events.GiveTool:FireServer("GoldKey")
end)

lib.maketoggle("Auto Kill Bad Guys",maintab,function(bool)
    killbadguys = bool
end)

for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "BadGuys" or v.Name == "BadGuysFront" or v.Name == "BadGuysBoss" then
        table.insert(toc,v.ChildAdded:Connect(function(badguy)
            dobadguy(badguy)
        end))
    end
end

if workspace:FindFirstChild("PizzaBossAlec") then
    dobadguy(workspace.PizzaBossAlec:FindFirstChild("BadGuyPizza"))
end

table.insert(toc,workspace.ChildAdded:Connect(function(badguy)
    if badguy.Name == "BadGuyBrute" then
        dobadguy(badguy)
    end
end))

lib.makebutton("Get Hacker Role",lobbytab,function()
    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Phone",true,false)
end)

lib.makebutton("Get Nerd Role",lobbytab,function()
    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Book",true,false)
end)

function docolor(color)
    local dialoguetoggle
    dialoguetoggle = lib.maketoggle(color.." Color",dialoguetab,function(bool)
        if bool then
            dialoguetoggle.BackgroundColor3 = Color3.fromRGB(0,255,0)
            if dialoguesettings.text then
                dialoguesettings.text = dialoguesettings.text.."<Color="..color..">"
            else
                dialoguesettings.text = "<Color="..color..">"
            end
        else
            dialoguetoggle.BackgroundColor3 = Color3.fromRGB(255,0,0)
            if dialoguesettings.text then
                dialoguesettings.text = dialoguesettings.text.."<Color=/>"
            else
                dialoguesettings.text = "<Color=/>"
            end
        end
    end,true)
    dialoguetoggle.BackgroundTransparency = 0.5
    dialoguetoggle.BackgroundColor3 = Color3.fromRGB(255,0,0)
end

function doanimstyle(animstyle)
    local dialoguetoggle
    dialoguetoggle = lib.maketoggle(animstyle.." Animate Style",dialoguetab,function(bool)
        if bool then
            dialoguetoggle.BackgroundColor3 = Color3.fromRGB(0,255,0)
            if dialoguesettings.text then
                dialoguesettings.text = dialoguesettings.text.."<AnimateStyle="..animstyle..">"
            else
                dialoguesettings.text = "<AnimateStyle="..animstyle..">"
            end
        else
            dialoguetoggle.BackgroundColor3 = Color3.fromRGB(255,0,0)
            if dialoguesettings.text then
                dialoguesettings.text = dialoguesettings.text.."<AnimateStyle=/>"
            else
                dialoguesettings.text = "<AnimateStyle=/>"
            end
        end
    end,true)
    dialoguetoggle.BackgroundTransparency = 0.5
    dialoguetoggle.BackgroundColor3 = Color3.fromRGB(255,0,0)
end

lib.makelabel("Colors",dialoguetab)

docolor("Red")
docolor("Green")
docolor("Yellow")
docolor("Blue")
docolor("Blue2")

lib.makelabel("Animate Styles",dialoguetab)

doanimstyle("Rainbow")
doanimstyle("Wiggle")
doanimstyle("Swing")
doanimstyle("Spin")

lib.makelabel("Dialogue And Text",dialoguetab)

lib.maketextbox("Dialogue Text",dialoguetab,function(text)
    if addspaces then
        text = text.." "
    end
    if dialoguesettings.text then
        dialoguesettings.text = dialoguesettings.text..text
    else
        dialoguesettings.text = text
    end
end)

lib.maketextbox("How Much To Wait Until Text Continues",dialoguetab,function(txt)
    local num = tonumber(txt)
    if num then
        if dialoguesettings.text then
            dialoguesettings.text = dialoguesettings.text.."<AnimateYield="..txt..">"
        else
            dialoguesettings.text = "<AnimateYield="..txt..">"
        end
    end
end)

lib.maketoggle("Add Spaces After Text",dialoguetab,function(bool)
    addspaces = bool
end)

lib.makedropdown("Box Color",dialoguetab,{"Red","Blue","Yellow"},function(color)
    local box = boxes[color]
    dialoguesettings.box = box
end)

lib.makedropdown("Font",dialoguetab,{"GothamBold","Garamond"},function(font)
    dialoguesettings.font = font
end)

local dialoguefontbox = lib.maketextbox("Font (but you type it)",dialoguetab,function(txt)
    for i,v in pairs(Enum.Font:GetEnumItems()) do
        if v.Name == txt then
            dialoguesettings.font = v.Name
        end
    end
end)
table.insert(toc,dialoguefontbox.Changed:Connect(function()
    local txt = dialoguefontbox.Text
    local found = false
    for i,v in pairs(Enum.Font:GetEnumItems()) do
        if v.Name == txt then
            dialoguefontbox.Font = v
            found = true
        end
    end
    if not found then
        dialoguefontbox.Font = Enum.Font.Arial
    end
end))

lib.maketextbox("How Much To Wait Until Text Disappears",dialoguetab,function(txt)
    num = tonumber(txt)
    if num then
        dialoguesettings.timebeforeclose = num
    end
end)

lib.makebutton("Copy Dialogue",dialoguetab,function()
    if dialoguesettings.text then
        setclipboard(dialoguesettings.text)
    end
end)

lib.makebutton("Clear Text",dialoguetab,function()
    dialoguesettings.text = ""
end)

lib.makebutton("Do Dialogue",dialoguetab,function()
    dodialogue(dialoguesettings)
end)
table.insert(toc,game:GetService("RunService").RenderStepped:Connect(function()
    color = Color3.fromHSV(tick() % t/t,1,1)
    rainbowtoggle.TextColor3 = color
    rainbowtoggle2.TextColor3 = color
    rainbowify2.TintColor = color
    if rainbow then
        rainbowtoggle.TextColor3 = Color3.fromHSV(1-tick() % t/t,1,1)
        rainbowtoggle2.TextColor3 = Color3.fromHSV(1-tick() % t/t,1,1)
        lib.updateallcolors_secret(color)
    end
    if antitp and localplr.PlayerGui:FindFirstChild("Respawn") then
        if localplr.PlayerGui.Respawn:FindFirstChild("Background") then
            localplr.PlayerGui.Respawn.Background.Visible = false
        end
        if localplr.PlayerGui.Respawn:FindFirstChild("Respawn") and localplr.PlayerGui.Respawn.Respawn:FindFirstChild("Respawn") then
            localplr.PlayerGui.Respawn.Respawn.Respawn.Visible = false
        end
    end
end))
while wait(1) do
    for i,v in pairs(workspace.BadGuyBounds:GetChildren()) do
        v.CanCollide = false
    end
end