local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Egg Collecting Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local SelectedRebirth = "Option01"
local Rebirth = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.GuiObjects.Frames.Main.Rebirth.Options:GetChildren()) do
    if v.Name ~= "Layout" then
        Rebirth[i] = v.Name
    end
end

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

f:Dropdown("Select Rebirth",Rebirth,true,function(mob)
    SelectedRebirth = mob
end)

e:Toggle("AntiAfk",function(boosl)
    shared.toggle = bool
    AntiAfk = bool
end)
 
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    spawn(function()
        if AutoClicker == true then
            for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
                if not game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    if AutoClicker == true then
                        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                        game:GetService("ReplicatedStorage").Remotes.MainRemote:FireServer("Collect",tool.Name,v.Name)
                    end
                end
                
                if game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") and not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    if AutoClicker == true then
                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                    end
                end
            end
        end
    end)
    
    if AutoSell == true then
        game:GetService("Workspace").TouchPads.Main.Sell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
        wait()
        game:GetService("Workspace").TouchPads.Main.Sell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
        wait()
        game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid.Jump = true
    end
    
    if Rebirth == true then
        game:GetService("ReplicatedStorage").Remotes.MainRemote:FireServer("Rebirth",SelectedRebirth)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end