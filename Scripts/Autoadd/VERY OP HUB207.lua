local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("ScriptHUB", "Midnight")
local Hub = Window:NewTab("Hubs")
local HubSection = Hub:NewSection("Main hubs")
HubSection:NewButton("Gigachad Hub", "500+ Scripts Inside!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/OWJBWKQLAISH/GigaChad-Hub/main/Gigachad%20hub%20V5'))()
    print("enjoy")
end)
HubSection:NewButton("DomainX Hub", " h!", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/drakker33/rblx-decaying-winter/main/DecayingWinter.lua"), true))()
    print("enjoy")
end)
HubSection:NewButton("V.Ghub", "Alot of scripts!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    print("enjoy")
end)
HubSection:NewButton("ScriptHUB 2.0", "Beta, Not fully released.", function()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tip52/onionLib/main/main.lua"))()
local mainWin = Library:Window("ScriptHUB 2.0 Beta")
local tab1 = mainWin:CreateTab({"Script One","http://www.roblox.com/asset/?id=7436811843"})
tab1:Line("Check out these main scripts!")
tab1:Button("Admin",function()
loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
  mainWin:Notification({"Notification", "Executed Successfully", 2})
end)
    print("enjoy")
end)
HubSection:NewButton("Alienware", "4 Scripts inside", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/romkich09/keySystem/main/mainKey'),true))()
    print("enjoy")
end)
HubSection:NewButton("Ghost Hub", "20+ Scripts inside", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    print("enjoy")
end)
HubSection:NewButton("JUNKO'S UNIVERSAL HUB", "200+ Scripts inside", function()
loadstring(game:HttpGet("https://pastebin.com/raw/d5BS5qiX"))()
    print("enjoy")
end)
HubSection:NewButton("Lightux", "Alot Scripts inside", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    print("enjoy")
end)
HubSection:NewButton("Shade X", " 12 Scripts inside", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ProjectShade132/Shade-X/main/Shade-X.lua'))()
    print("enjoy")
end)
local Main = Window:NewTab("Scripts")
local MainSection = Main:NewSection("Main scripts")
MainSection:NewButton("Get gear", "Get gears for free!", function()
game.ReplicatedStorage.Aka1:FireServer()
game.ReplicatedStorage.Aka2:FireServer()
game.ReplicatedStorage.Aka3:FireServer()
game.ReplicatedStorage.Aka4:FireServer()
game.ReplicatedStorage.Aka5:FireServer()
game.ReplicatedStorage.Aka6:FireServer()
game.ReplicatedStorage.Aka7:FireServer()
game.ReplicatedStorage.Give:FireServer()
    print("Clicked")
end)
MainSection:NewButton("Fly GUI V3", "Shows the GUI!", function()
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
    print("Clicked")
end)
MainSection:NewButton("Highlight", "Might not work.", function()
local function drawESP(character)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            local box = Instance.new("BoxHandleAdornment")
            box.Size = part.Size + Vector3.new(0.1, 0.1, 0.1) -- Add a small margin around the part
            box.Adornee = part
            box.Parent = part

            -- Customize the appearance of the box
            box.Color3 = Color3.fromRGB(255, 0, 0)
            box.Transparency = 0.5
            box.ZIndex = 1
        end
    end
end

local function executeESP()
    for _, player in ipairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character then
            drawESP(character)
        end
    end
end

local isMobile = game:GetService("UserInputService").TouchEnabled

if isMobile then
    -- Create a ScreenGui to hold the execute button
    local gui = Instance.new("ScreenGui")
    gui.Name = "MobileESPGui"
    gui.Parent = game.Players.LocalPlayer.PlayerGui    
    local executeButton = Instance.new("TextButton")
    executeButton.Size = UDim2.new(0, 100, 0, 50)
    executeButton.Position = UDim2.new(0.5, -50, 0.8, -25)
    executeButton.Text = "Execute ESP"
    executeButton.Parent = gui
    executeButton.MouseButton1Click:Connect(executeESP)
else
    executeESP()
end
    print("Clicked")
end)
MainSection:NewButton("Infinite Yield", "Shows the GUI!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    print("Clicked")
end)
MainSection:NewButton("Keyboard GUI", "For mobile players!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    print("Clicked")
end)
MainSection:NewButton("Greenville", "an OP Gui!", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/GreenVilleEvent/main/README.md'),true))()
    print("Clicked")
end)
MainSection:NewButton("FE Bring", "Shows the GUI!", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/iThJgCAS'),true))()
    print("Clicked")
end)
MainSection:NewButton("FE Audio | Work at a Pizza place", "Play an audio and anyone can hear it!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/pizza-place-audio-player/main/script"))()
    print("Clicked")
end)
MainSection:NewButton("Infinite Money | Happy Land", "Infinite money in Happy Land", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ZhenX21/FE-Infiniite-money-script/main/source'))()
    print("Clicked")
end)
MainSection:NewButton("Admin Panel2", "A very Overpowered Admin panel!", function()
loadstring(game:HttpGet("https://pastebin.com/raw/d5BS5qiX"))()
    print("Clicked")
end)
MainSection:NewButton("Tool Giver | Brookhaven", "Only in brookhaven!", function()
loadstring(game:HttpGet("https://pastebin.com/raw/Ctqjmtkv", true))()
    print("Clicked")
end)
MainSection:NewButton("Blade ball GUI", "VERY OP!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Fdhkzygaming/LUYHUBNEW/main/V2',true))()
    print("Clicked")
end)
MainSection:NewSlider("Walkspeed", "Changes how you walk", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("Jump Power", "Changes how you jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
local Auto = Window:NewTab("Autofarm")
local AutoSection = Auto:NewSection("Autofarm scripts")
AutoSection:NewButton("Not active | Atomicals", "Autofarm for CDID, not super great tho.", function()
loadstring(game:HttpGet("https://atomic48.xyz/Atomic/AtomicOnTop/Free.lua"))()
    print("Clicked")
end)
AutoSection:NewButton("Greenville", "Autofarm for Greenville!", function()
loadstring(game:HttpGet('https://scripts.luawl.com/hosted/2399/18728/FiberHubFree.lua'))()
    print("Clicked")
end)
AutoSection:NewButton("Car Crushers 2", "Autofarm for Car crushers 2!", function()
loadstring(game:HttpGet('https://scripts.luawl.com/hosted/2399/18728/FiberHubFree.lua'))()
    print("Clicked")
end)
AutoSection:NewButton("Drift Paradise", "Autofarm for Drift Paradise!", function()
loadstring(game:HttpGet('https://scripts.luawl.com/hosted/2399/18728/FiberHubFree.lua'))()    
    print("Clicked")
end)
AutoSection:NewButton(" Blox fruit", "Autofarm for Blox fruit!", function()
getgenv().Banana = {
    AutoFarm = {
        Enabled = false, -- true / false to enable autofarm
        FastMode = true, -- disable this if ur loosing fps
        DoTick = false, -- enable this if ur in first sea if u want
        AntiAFK = true, -- leave it on bruh
        Clump = true, -- disable this if ur not getting much progress
        AutomateStats = false, -- if u want it to auto stat
        AutoStats = {
            ['Melee'] = false,
            ['Defense'] = false,
            ['Sword'] = false,
            ['Gun'] = false,
            ['Demon Fruit'] = false, -- devil fruit
        },
        EquipTool = false, -- auto equip weapon
        Tool = "", -- ex: Ice-Ice / Electro
        Mode = "Questline", -- Questline or Chests
        AttackMode = "Function", -- leave it like this
        AutoBuso = false, -- auto haki
    }
};if Loaded then return end;getgenv().Loaded=true;
local Status, Script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/ao-0/Banana-Inc/main/BananaPortableLoader.rbxm');
if Status then
    loadstring(Script)();
else
    game:GetService('Players').LocalPlayer:Kick('Failed to connect to github');
end
    print("Clicked")
end)
AutoSection:NewButton("Bee factory", " Autofarm for Bee factory!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0BeeFactory'))()
    print("Clicked")
end)
AutoSection:NewButton("Raise a ducky", " Autofarm for raise a ducky!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/Hide/main/Duck"))()
    print("Clicked")
end)
AutoSection:NewButton("Murder Mystery 2", " Autofarm for MM2", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Murder'))()
    print("Clicked")
end)
AutoSection:NewButton("Taxi Boss", " Autofarm for Taxi boss!", function()
loadstring(game:HttpGet("https://pastebin.com/raw/5ScA4pR9"))()
    print("Clicked")
end)
AutoSection:NewButton("Blade Ball", " Autofarm for Blade ball!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/Blade-Nuts"))()
    print("Clicked")
end)
AutoSection:NewButton("Bordr gam", " Autofarm for bordr gam!", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/memejames/New/main/Hub'))()
     print("Clicked") 
end)
AutoSection:NewButton("Punch Simulator", " Autofarm for Punch simulator!", function()
loadstring(game:HttpGet("https://pastebin.com/raw/9eJ2v5qa"))()
     print("Success")
end)
AutoSection:NewButton("Break in 2", "Autofarm for break in 2!", function()
local function fireEventWithArgument(argument) local args = { [1] = argument } game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer(unpack(args)) end for i = 1, 5 do fireEventWithArgument("Strang") fireEventWithArgument("Speed") end 
     print("clicked")
end)
AutoSection:NewButton("Arm wrestle sim", " Autofarm for Arm Wrestle Simulator!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pryxo/Hub/main/Hub"))()
     print("Success")
end)
AutoSection:NewButton("Yeet a plane", " Autofarm for Yeet a plane!", function()
function ThrowPlanes()
   spawn(function()
       while getgenv().ThrowPlanes do
           local args = {
               [1] = Vector3.new(
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
               ),
               [2] = 1
           }
           game:GetService("ReplicatedStorage").Remotes.ThrowPlane:FireServer(unpack(args))
           wait()
       end
   end)
end

function Upgrade()
   spawn(function()
       while getgenv().Upgrade do
           local args = { [1] = "Walkspeed" }
           game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
           local args = { [1] = "Accuracy" }
           game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
           local args = { [1] = "Strength" }
           game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
           wait()
       end
   end)
end

function AutoSpin()
   spawn(function()
       while getgenv().AutoSpin do
           game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Spin"):InvokeServer()
           task.wait()
       end
   end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Yeet A Plane Simulator")

local b = w:CreateFolder("Main")

b:Toggle("Auto Throw (money yes)", function(val) getgenv().ThrowPlanes = val ThrowPlanes() end)
b:Toggle("Upgrade", function(val) getgenv().Upgrade = val Upgrade() end)
b:Toggle("Auto Spin", function(val) getgenv().AutoSpin = val AutoSpin() end)
     print("Success")
end)