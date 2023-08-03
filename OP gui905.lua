if getgenv().loaded then
    error("Already Executed!")
end
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
local win = lib:Window("Tile Game",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
local plr = win:Tab("Player")
local sec = win:Tab("Visual")
local wait = task.wait
local lp = game.Players.LocalPlayer
local function getchar()
    repeat wait() until lp.Character
    lp.Character:WaitForChild("HumanoidRootPart")
    return lp.Character
end
sec:Button("Reveal Path!", function()
    for i,v in pairs(game:GetService("Workspace").Panes:GetDescendants()) do
        if v.Name == "Panel" then
            if v.HitPart:FindFirstChild'TouchInterest'~=nil then
                v.GlassPanel.Color = Color3.new(1,0,0)
            else
                v.GlassPanel.Color = Color3.new(0,1,0)
            end
        end
    end
end)
sec:Button("Reveal Path for everyone! (Once)",function()
    for i,v in pairs(game:GetService("Workspace").Panes:GetDescendants()) do
        if v.Name == "Panel" then
            if v.HitPart:FindFirstChild'TouchInterest'~=nil then
                local char = getchar()
                firetouchinterest(char.HumanoidRootPart,v.HitPart,0)
                firetouchinterest(char.HumanoidRootPart,v.HitPart,1)
            end
        end
    end
    game:GetService("ReplicatedStorage").Remotes.RespawnMe:FireServer()
end)
sec:Toggle("Reveal for everyone! (Looped)",false, function(t)
    getgenv().thing = t
    while thing == true and wait(1) do
        pcall(function()
            local sominhappen = false
            for i,v in pairs(game:GetService("Workspace").Panes:GetDescendants()) do
                if v.Name == "Panel" and v.HitPart:FindFirstChild'TouchInterest'~=nil and not v.GlassPanel.Transparency ~= 1 then
                    local char = getchar()
                    firetouchinterest(char.HumanoidRootPart,v.HitPart,0)
                    firetouchinterest(char.HumanoidRootPart,v.HitPart,1)
                    sominhappen = true
                end
            end
            if sominhappen then
                game:GetService("ReplicatedStorage").Remotes.RespawnMe:FireServer()
            end
        end)
    end
end)
local function getplayers()
    t = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= lp then
            table.insert(t,v.Name)
        end
    end
    if t[#t]==nil then
        t[1] = "No players found!"
    end
    return t
end
plr:Toggle("Auto Farm",false, function(t)
    getgenv().autotoggle = t
    while autotoggle == true and wait() do
        pcall(function()
            local char = getchar()
            firetouchinterest(char.HumanoidRootPart,game:GetService("Workspace").End.EndDoor.EndDoorTeleport,0)
            firetouchinterest(char.HumanoidRootPart,game:GetService("Workspace").End.EndDoor.EndDoorTeleport,1)
        end)
    end
end)
plr:Button("Win!",function()
    pcall(function()
        local char = getchar()
        firetouchinterest(char.HumanoidRootPart,game:GetService("Workspace").End.EndDoor.EndDoorTeleport,0)
        firetouchinterest(char.HumanoidRootPart,game:GetService("Workspace").End.EndDoor.EndDoorTeleport,1)
    end)
end)
getgenv().loaded = ''