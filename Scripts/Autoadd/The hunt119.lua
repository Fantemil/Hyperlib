getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)



getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)
getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Tbao Hub | The hunt")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateToggle("Auto Hoops", function(bool)
print(value)
    getgenv().collectHoopsToggle = bool
    print(shared.toggle)
    if bool then
        collectHoopsToggle()
    end
end)

KillingCheats:CreateToggle("Auto Collect", function(bool)
print(value)
getgenv().collectOrbsToggle = bool
    print(shared.toggle)
    if bool then
        collectOrbsToggle()
    end
end)

KillingCheats:CreateToggle("Auto Rebirth", function(bool)
print(value)
getgenv().autoRebirth = bool
    print(shared.toggle)
    if bool then
        autoRebirth()
    end
end)

KillingCheats:CreateToggle("Auto afk fram", function(bool)
print(value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/17"))()
end)

KillingCheats:CreateTextbox("Walk Speed Enter", function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value 
wait()
end)

KillingCheats:CreateTextbox("Jump Power Enter", function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
wait()
end)