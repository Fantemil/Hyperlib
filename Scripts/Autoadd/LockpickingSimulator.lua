local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Lockpicking Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoFarm",function(bool)
 shared.toggle = bool
 AutoFarm = bool
end)

b:Toggle("AutoSell",function(bool)
 shared.toggle = bool
 AutoSell = bool
end)

f:Toggle("Picks",function(bool)
 shared.toggle = bool
 Picks = bool
end)

f:Toggle("Backpacks",function(bool)
 shared.toggle = bool
 Backpacks = bool
end)

f:Toggle("Stats",function(bool)
 shared.toggle = bool
 Stats = bool
end)

e:Toggle("HideGui",function(bool)
    shared.toggle = bool
    HideGui = bool
end)

e:Toggle("AntiAfk",function(bool)
 shared.toggle = bool
 AntiAfk = bool
end)

u:Button("maxgat5#8395",function()
 setclipboard("maxgat5#8395")
end)

u:Button("Discrod Server",function()
 setclipboard("https://discord.gg/K4txdRSVfq")
end)

if game:GetService("CoreGui"):FindFirstChild("PurchasePromptApp") then
    game:GetService("CoreGui").PurchasePromptApp:Destroy()
end
    
while wait() do
    if HideGui == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
            if v.ClassName == "ScreenGui" then
                if v.Name == "BackpackFull" or v.Name == "LoadingScreen" then
                    v:Destroy()
                end
                v.Enabled = false
            end
        end
    else 
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
            if v.ClassName == "ScreenGui" then
                if v.Name == "BackpackFull" or v.Name == "LoadingScreen" then
                    v:Destroy()
                end
                v.Enabled = true
            end
        end
    end
    
    if Stats == true then
        for i,v in pairs(game:GetService("StarterGui").AbilityShop.Absolute.Frame.Frame.AbilitiesFrameBottom.BottomFrame:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.UpdateEnergyStats:FireServer(v.Name)
        end
    end
    
    if Backpacks == true then
        for i,v in pairs(game:GetService("ReplicatedStorage").BackPacks:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.BuyBackPack:FireServer(i)
        end
    end
    
    if Picks == true then
        game:GetService("ReplicatedStorage").Events.RequestUpgrade:FireServer()
    end
    
    if AutoFarm == true then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ClickDetector" and not v.Parent:FindFirstChild("FinishUnlock") and not v.Parent:FindFirstChild("LockChestScript") then
                fireclickdetector(v, 0) 
            end
        end
    end
    
    if AutoSell == true then
        game:GetService("Workspace").BackPackSell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
        wait(.1)
        game:GetService("Workspace").BackPackSell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
        wait(.1)
    end

 if AntiAfk == true then
  local bb=game:service'VirtualUser'
  bb:CaptureController()
  bb:ClickButton2(Vector2.new())
 end
end