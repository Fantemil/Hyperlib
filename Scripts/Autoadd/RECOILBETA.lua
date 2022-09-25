local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("RECOIL")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoKillEnemy",function(bool)
    shared.toggle = bool
    AutoKillEnemy = bool
end)

b:Toggle("AutoFlag",function(bool)
    shared.toggle = bool
    AutoFlag = bool
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
    if AutoKillEnemy == true then
        function Player()
            local target = nil
            for i, v in pairs(game.Players:GetPlayers()) do
                if game.Workspace:FindFirstChild(v.Name) then
                    if game.Workspace[v.Name]:FindFirstChild("HumanoidRootPart") then
                        if game.Workspace[v.Name]:FindFirstChild("Head") then
                            if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) then
                                if game.Players.LocalPlayer.Name ~= game.Workspace[v.Name] then
                                    local v = game.Workspace[v.Name].HumanoidRootPart
                                    if v.Parent.Name ~= game.Players.LocalPlayer.Name then
                                        if v.Highlight.Friendly.Visible == false then
                                            target = v
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            return target
        end
        local tweenInfo = TweenInfo.new(
        0
        )
        local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart,tweenInfo,{CFrame = CFrame.new(
        Player().Position
        )})
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true
        t:Play()
        wait(0)
        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, Player().Position)
        game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
        wait()
        mouse1press()
        mouse1release()
        wait()
        keypress(0x46)
        keyrelease(0x46)
    end
    
    if AutoFlag == true then
        for i,v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "AFlag" then
                local tweenInfo = TweenInfo.new(
                0
                )
                local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                v.Union.Position
                )})
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                t:Play()
                wait(0)
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                wait(5)
            end
            if v.Name == "BFlag" then
                local tweenInfo = TweenInfo.new(
                0
                )
                local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                v.Union.Position
                )})
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                t:Play()
                wait(0)
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                wait(5)
            end
            if v.Name == "CFlag" then
                local tweenInfo = TweenInfo.new(
                0
                )
                local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                v.Union.Position
                )}) 
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                t:Play()
                wait(0)
                game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                wait(5)
            end
        end
    end
end