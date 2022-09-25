local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("My Salon")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
local can = true
local playerposition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Position + Vector3.new(0,0,0)
--Toggle
b:Toggle("AutoWork",function(bool)
    shared.toggle = bool
    AutoWork = bool
end)

b:Toggle("AutoClean",function(bool)
    shared.toggle = bool
    AutoClean = bool
end)

f:Toggle("Floor",function(bool)
    shared.toggle = bool
    Floor = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if Floor == true then
        game:GetService("ReplicatedStorage").Events.BuyFloor:FireServer()
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Pages:GetChildren()) do
            if v.Name == "Responded" or v.Name == "PROMPT" then
                v:Destroy()
            end
        end
    end
    
    if AutoWork == true then
        game:GetService("ReplicatedStorage").Events.ToggleSalon:FireServer(true)
        game:GetService("ReplicatedStorage").Events.GreetNPCs:FireServer()
        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            if AutoWork == true then
                local args = {v}
                game:GetService("ReplicatedStorage").Events.AttendNPC:FireServer(unpack(args))
            end
        end
    end
    
    if AutoClean == true then
        if can == true then
            can = false
        end
        for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1.Name == "Owner" and v1.ClassName == "ObjectValue" then
                    for i,v2 in pairs(v1.Parent.Trash:GetChildren()) do
                        for i,v3 in pairs(v2:GetChildren()) do
                            if v3.ClassName == "MeshPart" then
                                if AutoClean == true then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v3.CFrame.Position + Vector3.new(0,0,0))
                                    wait()
                                    keypress(0x45) 
                                    keyrelease(0x45)
                                    wait()
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        if can == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(playerposition)
            can = true
        end
    end
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end