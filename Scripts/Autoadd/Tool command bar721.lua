--i just find a new way executer
--Update in 10/5/2024
--Cool and new Update
--some of them are patched
--New update in Main
--New update fun





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Tool command bar", "Ocean")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("block fruit")


MainSection:NewButton("HoHo hub", "Block fruit script later put the code", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'),true))()
end)

MainSection:NewButton("ADOX HUB", "pretty Good script", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey'), true))()
end)


local MainSection = Main:NewSection("murderer mystery 2")

MainSection:NewButton("Lunar Hub key: lunarhubnicebye", "you can try other games", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/vwSaraa/LunarHub/main/mm2"),true))()
end)


local MainSection = Main:NewSection("Brookhaven")

MainSection:NewButton("Ice hub patched", "can try other games i think", function()
    loadstring(game:HttpGet(("https://icehub.cf/IceHubLoader"),true))()
end)

MainSection:NewButton("Brookhaven script Key: Graciasporseleccionarnos", "Also can try on other games credit to Aguinaldero for posted", function()
    loadstring(game:HttpGet(("https://paste.myconan.net/498978.txt"),true))()
end)


local MainSection = Main:NewSection("Break in 2 and 1")



MainSection:NewButton("Legend Handles", "Idk if its good or not", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/LOLking123456/Break/main/In"),true))()
end)


MainSection:NewButton("Break in 2 OP", "SO OP", function()
    loadstring(game:HttpGet(("https://freenote.biz/raw/80jXm2Q0a7"),true))()
end)

MainSection:NewButton("Break in 2 kick all", "it instant kick", function()
    loadstring(game:HttpGet(("https://www.cloudbin.org/love"),true))()
end)

MainSection:NewButton("Break in 2 mobile/pc ", "pretty super duper good", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/iDtudtYR"),true))()
end)


local MainSection = Main:NewSection("evade")

MainSection:NewButton("Evade script", "SO OP", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua"),true))()
end)



--Tools

local  Tools = Window:NewTab("Tools")
local ToolsSection = Tools:NewSection("Tools")

ToolsSection:NewSlider("Speed", "fastest", 1000, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
ToolsSection:NewSlider("Jump", "Jump really high", 1000, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


ToolsSection:NewButton("Tp Tool", "Click to Teleport", function()
    mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Equip to Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

--Fun


local Fun = Window:NewTab("Fun")
local FunSection = Fun:NewSection("Just for Fun")

FunSection:NewButton("Sit", "Sit evertime you click it", function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if humanoid and character then
    humanoid.Sit = true  
else
    warn("Humanoid or Character not found.")
end
end)

FunSection:NewButton("Ragdoll click E", "Gets ragdoll", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/gMExk4Ba"),true))()
end)

FunSection:NewButton("Fly", "You can fly everywhere", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"),true))()
end)

FunSection:NewButton("Noclip patched", "you can walk to the wall", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/6T4skKuj"),true))()
end)

FunSection:NewButton("E to Teleport", "Teleport using just keyboard", function()
    local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local mouse = player:GetMouse()

local function teleportToMouse()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = mouse.Hit.p -- Get the position of the mouse in the 3D world
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition) -- Teleport to the mouse position
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.E then
            teleportToMouse()
        end
    end
end)
end)




--Admin script


local Admin = Window:NewTab("Admin")
local AdminSection = Admin:NewSection("Admin Script")

AdminSection:NewButton("Executer", "OP script", function()
    loadstring(game:HttpGet(('https://pastefy.app/Nxm9TReQ/raw'),true))()
end)

AdminSection:NewButton("infinite Yield", "Other Admin script", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

AdminSection:NewButton("Homebrew Admin", "The best Admin script like infinite Yield", function()
    loadstring(game:HttpGetAsync(('https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main'),true))()
end)