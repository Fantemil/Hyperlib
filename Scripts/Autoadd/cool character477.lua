game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4370512420"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://4416971577"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://4576074471"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://4088050522"
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()

wait(0.1)
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5657143572"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5667210178"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6154060166"

wait(0.1)
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "DarkAuraEffect" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "TheImitatorAura1"
                    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage").Effects:GetChildren()) do
                if v.Name == "TransformationAura" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Torso"]
                    sword2.Name = "TheImitatorAura2"
                    weld.C0 = CFrame.new(0, 2, 0) * CFrame.Angles(0, 0, 0)
                    sword2.Transparency = 1
                end
            end

wait(0.1)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "I love cock";
    Text = "Credit Chaot-tyan#1016";
    Duration = 999999;
    Button1 = "me too bro";
})

wait()
_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [ TheImitator ] *\n' ..Chat, 
          [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

wait(0.1)
local GUI = Instance.new("ScreenGui")
local Scroll = Instance.new("ScrollingFrame")
local Help1 = Instance.new("TextLabel")
local Help2 = Instance.new("TextLabel")
local Help3 = Instance.new("TextLabel")
local Help4 = Instance.new("TextLabel")
local Character = Instance.new("TextLabel")
local Loading = Instance.new("TextLabel")
local Keybinds1 = Instance.new("TextLabel")
local Keybinds2 = Instance.new("TextLabel")
local Keybinds3 = Instance.new("TextLabel")
local Keybinds4 = Instance.new("TextLabel")
local Keybinds5 = Instance.new("TextLabel")
local Keybinds6 = Instance.new("TextLabel")
local Keybinds7 = Instance.new("TextLabel")
local Keybinds8 = Instance.new("TextLabel")
local Keybinds9 = Instance.new("TextLabel")
local Keybinds10 = Instance.new("TextLabel")
local Keybinds11 = Instance.new("TextLabel")
local Keybinds12 = Instance.new("TextLabel")
local Keybinds13 = Instance.new("TextLabel")
local Keybinds14 = Instance.new("TextLabel")
local Keybinds15 = Instance.new("TextLabel")
local Keybinds16 = Instance.new("TextLabel")
local Keybinds17 = Instance.new("TextLabel")
local Keybinds18 = Instance.new("TextLabel")
local Keybinds19 = Instance.new("TextLabel")
local Keybinds20 = Instance.new("TextLabel")
local Keybinds21 = Instance.new("TextLabel")
local Keybinds22 = Instance.new("TextLabel")
local Keybinds23 = Instance.new("TextLabel")
local Keybinds24 = Instance.new("TextLabel")
local Keybinds25 = Instance.new("TextLabel")
local Keybinds26 = Instance.new("TextLabel")
local Keybinds27 = Instance.new("TextLabel")
local Keybinds28 = Instance.new("TextLabel")
local Keybinds29 = Instance.new("TextLabel")
local Keybinds30 = Instance.new("TextLabel")
local Keybinds31 = Instance.new("TextLabel")
local Keybinds32 = Instance.new("TextLabel")
local Keybinds33 = Instance.new("TextLabel")
local Keybinds34 = Instance.new("TextLabel")
local Keybinds35 = Instance.new("TextLabel")
local Keybinds36 = Instance.new("TextLabel")
local Keybinds37 = Instance.new("TextLabel")
local Keybinds38 = Instance.new("TextLabel")
local Keybinds39 = Instance.new("TextLabel")
local Keybinds40 = Instance.new("TextLabel")
local Keybinds41 = Instance.new("TextLabel")
local Keybinds42 = Instance.new("TextLabel")
local Keybinds43 = Instance.new("TextLabel")
local Keybinds44 = Instance.new("TextLabel")
local Keybinds45 = Instance.new("TextLabel")
local Keybinds46 = Instance.new("TextLabel")
local Info1 = Instance.new("TextLabel")
local Info2 = Instance.new("TextLabel")


GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Scroll.Parent = GUI
Scroll.Active = true
Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scroll.BackgroundTransparency = 0.650
Scroll.Position = UDim2.new(-4.97698784e-06, 0, 0.324281979, 0)
Scroll.Size = UDim2.new(0.0002, 412, 0, 519)

Character.Parent = GUI
Character.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Character.BackgroundTransparency = 1.000
Character.Position = UDim2.new(0.0060, 0, 0.273380241, 0)
Character.Size = UDim2.new(0, 412, 0, 31)
Character.Font = Enum.Font.Arcade
Character.Text = [[Character: The Imitator
True character: Chara
Please, read GUI]]
Character.TextColor3 = Color3.fromRGB(0, 0, 0)
Character.TextSize = 20.000
Character.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Character.TextStrokeTransparency = 0.000
Character.TextXAlignment = 0
Character.AutoLocalize = false

Help1.Parent = Scroll
Help1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help1.BackgroundTransparency = 1.000
Help1.Position = UDim2.new(0.0275, 0, 0.001380241, 0)
Help1.Size = UDim2.new(0, 412, 0, 31)
Help1.Font = Enum.Font.Arcade
Help1.Text = "DEFAULT KEYBINDS:"
Help1.TextColor3 = Color3.fromRGB(0, 0, 0)
Help1.TextSize = 20.000
Help1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Help1.TextStrokeTransparency = 0.000
Help1.TextXAlignment = 0
Help1.AutoLocalize = false

Keybinds1.Parent = Scroll
Keybinds1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds1.BackgroundTransparency = 1.000
Keybinds1.Position = UDim2.new(0.0275, 0, 0.011380241, 0)
Keybinds1.Size = UDim2.new(0, 412, 0, 31)
Keybinds1.Font = Enum.Font.Arcade
Keybinds1.Text = "Z - NAN DMG"
Keybinds1.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds1.TextSize = 20.000
Keybinds1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds1.TextStrokeTransparency = 0.000
Keybinds1.TextXAlignment = 0
Keybinds1.AutoLocalize = false

Keybinds2.Parent = Scroll
Keybinds2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds2.BackgroundTransparency = 1.000
Keybinds2.Position = UDim2.new(0.0275, 0, 0.021380241, 0)
Keybinds2.Size = UDim2.new(0, 412, 0, 31)
Keybinds2.Font = Enum.Font.Arcade
Keybinds2.Text = "X - FLING ATTACK"
Keybinds2.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds2.TextSize = 20.000
Keybinds2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds2.TextStrokeTransparency = 0.000
Keybinds2.TextXAlignment = 0
Keybinds2.AutoLocalize = false

Keybinds3.Parent = Scroll
Keybinds3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds3.BackgroundTransparency = 1.000
Keybinds3.Position = UDim2.new(0.0275, 0, 0.031380241, 0)
Keybinds3.Size = UDim2.new(0, 412, 0, 31)
Keybinds3.Font = Enum.Font.Arcade
Keybinds3.Text = "C - FREEZE ATTACK"
Keybinds3.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds3.TextSize = 20.000
Keybinds3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds3.TextStrokeTransparency = 0.000
Keybinds3.TextXAlignment = 0
Keybinds3.AutoLocalize = false

Keybinds4.Parent = Scroll
Keybinds4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds4.BackgroundTransparency = 1.000
Keybinds4.Position = UDim2.new(0.0275, 0, 0.041380241, 0)
Keybinds4.Size = UDim2.new(0, 412, 0, 31)
Keybinds4.Font = Enum.Font.Arcade
Keybinds4.Text = "V - INF ATTACK"
Keybinds4.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds4.TextSize = 20.000
Keybinds4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds4.TextStrokeTransparency = 0.000
Keybinds4.TextXAlignment = 0
Keybinds4.AutoLocalize = false

Keybinds5.Parent = Scroll
Keybinds5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds5.BackgroundTransparency = 1.000
Keybinds5.Position = UDim2.new(0.0275, 0, 0.051380241, 0)
Keybinds5.Size = UDim2.new(0, 412, 0, 31)
Keybinds5.Font = Enum.Font.Arcade
Keybinds5.Text = "Q - ANTIFLING"
Keybinds5.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds5.TextSize = 20.000
Keybinds5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds5.TextStrokeTransparency = 0.000
Keybinds5.TextXAlignment = 0
Keybinds5.AutoLocalize = false

Keybinds6.Parent = Scroll
Keybinds6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds6.BackgroundTransparency = 1.000
Keybinds6.Position = UDim2.new(0.0275, 0, 0.061380241, 0)
Keybinds6.Size = UDim2.new(0, 412, 0, 31)
Keybinds6.Font = Enum.Font.Arcade
Keybinds6.Text = "1 - THREE RED SLASH"
Keybinds6.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds6.TextSize = 20.000
Keybinds6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds6.TextStrokeTransparency = 0.000
Keybinds6.TextXAlignment = 0
Keybinds6.AutoLocalize = false

Keybinds7.Parent = Scroll
Keybinds7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds7.BackgroundTransparency = 1.000
Keybinds7.Position = UDim2.new(0.0275, 0, 0.071380241, 0)
Keybinds7.Size = UDim2.new(0, 412, 0, 31)
Keybinds7.Font = Enum.Font.Arcade
Keybinds7.Text = "2 - ONE YELLOW BALL"
Keybinds7.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds7.TextSize = 20.000
Keybinds7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds7.TextStrokeTransparency = 0.000
Keybinds7.TextXAlignment = 0
Keybinds7.AutoLocalize = false

Keybinds8.Parent = Scroll
Keybinds8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds8.BackgroundTransparency = 1.000
Keybinds8.Position = UDim2.new(0.0275, 0, 0.081380241, 0)
Keybinds8.Size = UDim2.new(0, 412, 0, 31)
Keybinds8.Font = Enum.Font.Arcade
Keybinds8.Text = "3 - STRONG KNOCKBACK"
Keybinds8.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds8.TextSize = 20.000
Keybinds8.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds8.TextStrokeTransparency = 0.000
Keybinds8.TextXAlignment = 0
Keybinds8.AutoLocalize = false

Keybinds9.Parent = Scroll
Keybinds9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds9.BackgroundTransparency = 1.000
Keybinds9.Position = UDim2.new(0.0275, 0, 0.091380241, 0)
Keybinds9.Size = UDim2.new(0, 412, 0, 31)
Keybinds9.Font = Enum.Font.Arcade
Keybinds9.Text = "E - Nothing"
Keybinds9.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds9.TextSize = 20.000
Keybinds9.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds9.TextStrokeTransparency = 0.000
Keybinds9.TextXAlignment = 0
Keybinds9.AutoLocalize = false

Keybinds10.Parent = Scroll
Keybinds10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds10.BackgroundTransparency = 1.000
Keybinds10.Position = UDim2.new(0.0275, 0, 0.101380241, 0)
Keybinds10.Size = UDim2.new(0, 412, 0, 31)
Keybinds10.Font = Enum.Font.Arcade
Keybinds10.Text = "B - GODMODE LOCK ON"
Keybinds10.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds10.TextSize = 20.000
Keybinds10.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds10.TextStrokeTransparency = 0.000
Keybinds10.TextXAlignment = 0
Keybinds10.AutoLocalize = false

Keybinds11.Parent = Scroll
Keybinds11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds11.BackgroundTransparency = 1.000
Keybinds11.Position = UDim2.new(0.0275, 0, 0.111380241, 0)
Keybinds11.Size = UDim2.new(0, 412, 0, 31)
Keybinds11.Font = Enum.Font.Arcade
Keybinds11.Text = "N - GIVE FRISK LVL"
Keybinds11.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds11.TextSize = 20.000
Keybinds11.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds11.TextStrokeTransparency = 0.000
Keybinds11.TextXAlignment = 0
Keybinds11.AutoLocalize = false

Keybinds12.Parent = Scroll
Keybinds12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds12.BackgroundTransparency = 1.000
Keybinds12.Position = UDim2.new(0.0275, 0, 0.121380241, 0)
Keybinds12.Size = UDim2.new(0, 412, 0, 31)
Keybinds12.Font = Enum.Font.Arcade
Keybinds12.Text = "T - Nothing"
Keybinds12.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds12.TextSize = 20.000
Keybinds12.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds12.TextStrokeTransparency = 0.000
Keybinds12.TextXAlignment = 0
Keybinds12.AutoLocalize = false

Keybinds13.Parent = Scroll
Keybinds13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds13.BackgroundTransparency = 1.000
Keybinds13.Position = UDim2.new(0.0275, 0, 0.131380241, 0)
Keybinds13.Size = UDim2.new(0, 412, 0, 31)
Keybinds13.Font = Enum.Font.Arcade
Keybinds13.Text = "M - LMB SELECTED (Need lock on)"
Keybinds13.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds13.TextSize = 20.000
Keybinds13.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds13.TextStrokeTransparency = 0.000
Keybinds13.TextXAlignment = 0
Keybinds13.AutoLocalize = false

Keybinds14.Parent = Scroll
Keybinds14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds14.BackgroundTransparency = 1.000
Keybinds14.Position = UDim2.new(0.0275, 0, 0.141380241, 0)
Keybinds14.Size = UDim2.new(0, 412, 0, 31)
Keybinds14.Font = Enum.Font.Arcade
Keybinds14.Text = "J - MAIN LMB"
Keybinds14.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds14.TextSize = 20.000
Keybinds14.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds14.TextStrokeTransparency = 0.000
Keybinds14.TextXAlignment = 0
Keybinds14.AutoLocalize = false

Keybinds15.Parent = Scroll
Keybinds15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds15.BackgroundTransparency = 1.000
Keybinds15.Position = UDim2.new(0.0275, 0, 0.151380241, 0)
Keybinds15.Size = UDim2.new(0, 412, 0, 31)
Keybinds15.Font = Enum.Font.Arcade
Keybinds15.Text = "4 - CLAPPING"
Keybinds15.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds15.TextSize = 20.000
Keybinds15.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds15.TextStrokeTransparency = 0.000
Keybinds15.TextXAlignment = 0
Keybinds15.AutoLocalize = false

Keybinds16.Parent = Scroll
Keybinds16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds16.BackgroundTransparency = 1.000
Keybinds16.Position = UDim2.new(0.0275, 0, 0.161380241, 0)
Keybinds16.Size = UDim2.new(0, 412, 0, 31)
Keybinds16.Font = Enum.Font.Arcade
Keybinds16.Text = "5 - GIVE PURPLE WINGS"
Keybinds16.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds16.TextSize = 20.000
Keybinds16.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds16.TextStrokeTransparency = 0.000
Keybinds16.TextXAlignment = 0
Keybinds16.AutoLocalize = false

Keybinds17.Parent = Scroll
Keybinds17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds17.BackgroundTransparency = 1.000
Keybinds17.Position = UDim2.new(0.0275, 0, 0.171380241, 0)
Keybinds17.Size = UDim2.new(0, 412, 0, 31)
Keybinds17.Font = Enum.Font.Arcade
Keybinds17.Text = "6 - RECREATE WINGS"
Keybinds17.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds17.TextSize = 20.000
Keybinds17.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds17.TextStrokeTransparency = 0.000
Keybinds17.TextXAlignment = 0
Keybinds17.AutoLocalize = false

Help2.Parent = Scroll
Help2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help2.BackgroundTransparency = 1.000
Help2.Position = UDim2.new(0.0275, 0, 0.201380241, 0)
Help2.Size = UDim2.new(0, 412, 0, 31)
Help2.Font = Enum.Font.Arcade
Help2.Text = "IMITATION OF ATTACKS:"
Help2.TextColor3 = Color3.fromRGB(0, 0, 0)
Help2.TextSize = 20.000
Help2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Help2.TextStrokeTransparency = 0.000
Help2.TextXAlignment = 0
Help2.AutoLocalize = false

Keybinds18.Parent = Scroll
Keybinds18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds18.BackgroundTransparency = 1.000
Keybinds18.Position = UDim2.new(0.0275, 0, 0.211380241, 0)
Keybinds18.Size = UDim2.new(0, 412, 0, 31)
Keybinds18.Font = Enum.Font.Arcade
Keybinds18.Text = "G - 858 DMG ATTACK DUMMY"
Keybinds18.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds18.TextSize = 20.000
Keybinds18.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds18.TextStrokeTransparency = 0.000
Keybinds18.TextXAlignment = 0
Keybinds18.AutoLocalize = false

Keybinds19.Parent = Scroll
Keybinds19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds19.BackgroundTransparency = 1.000
Keybinds19.Position = UDim2.new(0.0275, 0, 0.221380241, 0)
Keybinds19.Size = UDim2.new(0, 412, 0, 31)
Keybinds19.Font = Enum.Font.Arcade
Keybinds19.Text = "H - 1288 DMG ATTACK DUMMY"
Keybinds19.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds19.TextSize = 20.000
Keybinds19.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds19.TextStrokeTransparency = 0.000
Keybinds19.TextXAlignment = 0
Keybinds19.AutoLocalize = false

Keybinds20.Parent = Scroll
Keybinds20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds20.BackgroundTransparency = 1.000
Keybinds20.Position = UDim2.new(0.0275, 0, 0.231380241, 0)
Keybinds20.Size = UDim2.new(0, 412, 0, 31)
Keybinds20.Font = Enum.Font.Arcade
Keybinds20.Text = "Y - 57 DMG ATTACK DUMMY"
Keybinds20.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds20.TextSize = 20.000
Keybinds20.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds20.TextStrokeTransparency = 0.000
Keybinds20.TextXAlignment = 0
Keybinds20.AutoLocalize = false

Keybinds21.Parent = Scroll
Keybinds21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds21.BackgroundTransparency = 1.000
Keybinds21.Position = UDim2.new(0.0275, 0, 0.241380241, 0)
Keybinds21.Size = UDim2.new(0, 412, 0, 31)
Keybinds21.Font = Enum.Font.Arcade
Keybinds21.Text = "U - 429 DMG ATTACK DUMMY"
Keybinds21.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds21.TextSize = 20.000
Keybinds21.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds21.TextStrokeTransparency = 0.000
Keybinds21.TextXAlignment = 0
Keybinds21.AutoLocalize = false

Keybinds22.Parent = Scroll
Keybinds22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds22.BackgroundTransparency = 1.000
Keybinds22.Position = UDim2.new(0.0275, 0, 0.251380241, 0)
Keybinds22.Size = UDim2.new(0, 412, 0, 31)
Keybinds22.Font = Enum.Font.Arcade
Keybinds22.Text = "K - 572 DMG ATTACK DUMMY"
Keybinds22.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds22.TextSize = 20.000
Keybinds22.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds22.TextStrokeTransparency = 0.000
Keybinds22.TextXAlignment = 0
Keybinds22.AutoLocalize = false

Keybinds23.Parent = Scroll
Keybinds23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds23.BackgroundTransparency = 1.000
Keybinds23.Position = UDim2.new(0.0275, 0, 0.261380241, 0)
Keybinds23.Size = UDim2.new(0, 412, 0, 31)
Keybinds23.Font = Enum.Font.Arcade
Keybinds23.Text = "P - 882 DMG ATTACK DUMMY"
Keybinds23.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds23.TextSize = 20.000
Keybinds23.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds23.TextStrokeTransparency = 0.000
Keybinds23.TextXAlignment = 0
Keybinds23.AutoLocalize = false

Keybinds24.Parent = Scroll
Keybinds24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds24.BackgroundTransparency = 1.000
Keybinds24.Position = UDim2.new(0.0275, 0, 0.271380241, 0)
Keybinds24.Size = UDim2.new(0, 412, 0, 31)
Keybinds24.Font = Enum.Font.Arcade
Keybinds24.Text = "7 - 1240 DMG ATTACK DUMMY"
Keybinds24.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds24.TextSize = 20.000
Keybinds24.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds24.TextStrokeTransparency = 0.000
Keybinds24.TextXAlignment = 0
Keybinds24.AutoLocalize = false

Keybinds25.Parent = Scroll
Keybinds25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds25.BackgroundTransparency = 1.000
Keybinds25.Position = UDim2.new(0.0275, 0, 0.281380241, 0)
Keybinds25.Size = UDim2.new(0, 412, 0, 31)
Keybinds25.Font = Enum.Font.Arcade
Keybinds25.Text = "8 - 477 DMG ATTACK DUMMY"
Keybinds25.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds25.TextSize = 20.000
Keybinds25.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds25.TextStrokeTransparency = 0.000
Keybinds25.TextXAlignment = 0
Keybinds25.AutoLocalize = false

Keybinds26.Parent = Scroll
Keybinds26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds26.BackgroundTransparency = 1.000
Keybinds26.Position = UDim2.new(0.0275, 0, 0.291380241, 0)
Keybinds26.Size = UDim2.new(0, 412, 0, 31)
Keybinds26.Font = Enum.Font.Arcade
Keybinds26.Text = "9 - 2003 DMG ATTACK DUMMY"
Keybinds26.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds26.TextSize = 20.000
Keybinds26.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds26.TextStrokeTransparency = 0.000
Keybinds26.TextXAlignment = 0
Keybinds26.AutoLocalize = false

Keybinds27.Parent = Scroll
Keybinds27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds27.BackgroundTransparency = 1.000
Keybinds27.Position = UDim2.new(0.0275, 0, 0.301380241, 0)
Keybinds27.Size = UDim2.new(0, 412, 0, 31)
Keybinds27.Font = Enum.Font.Arcade
Keybinds27.Text = "0 - 725 DMG ATTACK DUMMY"
Keybinds27.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds27.TextSize = 20.000
Keybinds27.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds27.TextStrokeTransparency = 0.000
Keybinds27.TextXAlignment = 0
Keybinds27.AutoLocalize = false

Help3.Parent = Scroll
Help3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help3.BackgroundTransparency = 1.000
Help3.Position = UDim2.new(0.0275, 0, 0.331380241, 0)
Help3.Size = UDim2.new(0, 412, 0, 31)
Help3.Font = Enum.Font.Arcade
Help3.Text = "OTHER 1:"
Help3.TextColor3 = Color3.fromRGB(0, 0, 0)
Help3.TextSize = 20.000
Help3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Help3.TextStrokeTransparency = 0.000
Help3.TextXAlignment = 0
Help3.AutoLocalize = false

Keybinds28.Parent = Scroll
Keybinds28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds28.BackgroundTransparency = 1.000
Keybinds28.Position = UDim2.new(0.0275, 0, 0.341380241, 0)
Keybinds28.Size = UDim2.new(0, 412, 0, 31)
Keybinds28.Font = Enum.Font.Arcade
Keybinds28.Text = "Minus - TP ARENA 1"
Keybinds28.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds28.TextSize = 20.000
Keybinds28.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds28.TextStrokeTransparency = 0.000
Keybinds28.TextXAlignment = 0
Keybinds28.AutoLocalize = false

Keybinds29.Parent = Scroll
Keybinds29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds29.BackgroundTransparency = 1.000
Keybinds29.Position = UDim2.new(0.0275, 0, 0.351380241, 0)
Keybinds29.Size = UDim2.new(0, 412, 0, 31)
Keybinds29.Font = Enum.Font.Arcade
Keybinds29.Text = "+ - TP ARENA 2"
Keybinds29.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds29.TextSize = 20.000
Keybinds29.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds29.TextStrokeTransparency = 0.000
Keybinds29.TextXAlignment = 0
Keybinds29.AutoLocalize = false

Keybinds30.Parent = Scroll
Keybinds30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds30.BackgroundTransparency = 1.000
Keybinds30.Position = UDim2.new(0.0275, 0, 0.361380241, 0)
Keybinds30.Size = UDim2.new(0, 412, 0, 31)
Keybinds30.Font = Enum.Font.Arcade
Keybinds30.Text = "[ - TP SPAWN"
Keybinds30.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds30.TextSize = 20.000
Keybinds30.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds30.TextStrokeTransparency = 0.000
Keybinds30.TextXAlignment = 0
Keybinds30.AutoLocalize = false

Keybinds31.Parent = Scroll
Keybinds31.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds31.BackgroundTransparency = 1.000
Keybinds31.Position = UDim2.new(0.0275, 0, 0.371380241, 0)
Keybinds31.Size = UDim2.new(0, 412, 0, 31)
Keybinds31.Font = Enum.Font.Arcade
Keybinds31.Text = "] - DELETE WHITESCREEN & BLUR"
Keybinds31.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds31.TextSize = 20.000
Keybinds31.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds31.TextStrokeTransparency = 0.000
Keybinds31.TextXAlignment = 0
Keybinds31.AutoLocalize = false

Keybinds32.Parent = Scroll
Keybinds32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds32.BackgroundTransparency = 1.000
Keybinds32.Position = UDim2.new(0.0275, 0, 0.381380241, 0)
Keybinds32.Size = UDim2.new(0, 412, 0, 31)
Keybinds32.Font = Enum.Font.Arcade
Keybinds32.Text = "; - SELECT NOT FE MUSIC"
Keybinds32.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds32.TextSize = 20.000
Keybinds32.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds32.TextStrokeTransparency = 0.000
Keybinds32.TextXAlignment = 0
Keybinds32.AutoLocalize = false

Keybinds33.Parent = Scroll
Keybinds33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds33.BackgroundTransparency = 1.000
Keybinds33.Position = UDim2.new(0.0275, 0, 0.391380241, 0)
Keybinds33.Size = UDim2.new(0, 412, 0, 31)
Keybinds33.Font = Enum.Font.Arcade
Keybinds33.Text = "' - OFF NOT FE MUSIC"
Keybinds33.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds33.TextSize = 20.000
Keybinds33.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds33.TextStrokeTransparency = 0.000
Keybinds33.TextXAlignment = 0
Keybinds33.AutoLocalize = false

Keybinds34.Parent = Scroll
Keybinds34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds34.BackgroundTransparency = 1.000
Keybinds34.Position = UDim2.new(0.0275, 0, 0.401380241, 0)
Keybinds34.Size = UDim2.new(0, 412, 0, 31)
Keybinds34.Font = Enum.Font.Arcade
Keybinds34.Text = "< - SELECT FE MUSIC"
Keybinds34.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds34.TextSize = 20.000
Keybinds34.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds34.TextStrokeTransparency = 0.000
Keybinds34.TextXAlignment = 0
Keybinds34.AutoLocalize = false

Keybinds35.Parent = Scroll
Keybinds35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds35.BackgroundTransparency = 1.000
Keybinds35.Position = UDim2.new(0.0275, 0, 0.411380241, 0)
Keybinds35.Size = UDim2.new(0, 412, 0, 31)
Keybinds35.Font = Enum.Font.Arcade
Keybinds35.Text = "> - ACTIVATED FE MUSIC"
Keybinds35.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds35.TextSize = 20.000
Keybinds35.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds35.TextStrokeTransparency = 0.000
Keybinds35.TextXAlignment = 0
Keybinds35.AutoLocalize = false

Keybinds36.Parent = Scroll
Keybinds36.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds36.BackgroundTransparency = 1.000
Keybinds36.Position = UDim2.new(0.0275, 0, 0.421380241, 0)
Keybinds36.Size = UDim2.new(0, 412, 0, 31)
Keybinds36.Font = Enum.Font.Arcade
Keybinds36.Text = "Hit someone to turn the fe music on"
Keybinds36.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds36.TextSize = 20.000
Keybinds36.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds36.TextStrokeTransparency = 0.000
Keybinds36.TextXAlignment = 0
Keybinds36.AutoLocalize = false

Help4.Parent = Scroll
Help4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Help4.BackgroundTransparency = 1.000
Help4.Position = UDim2.new(0.0275, 0, 0.451380241, 0)
Help4.Size = UDim2.new(0, 412, 0, 31)
Help4.Font = Enum.Font.Arcade
Help4.Text = "OTHER 2:"
Help4.TextColor3 = Color3.fromRGB(0, 0, 0)
Help4.TextSize = 20.000
Help4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Help4.TextStrokeTransparency = 0.000
Help4.TextXAlignment = 0
Help4.AutoLocalize = false

Keybinds37.Parent = Scroll
Keybinds37.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds37.BackgroundTransparency = 1.000
Keybinds37.Position = UDim2.new(0.0275, 0, 0.467380241, 0)
Keybinds37.Size = UDim2.new(0, 412, 0, 31)
Keybinds37.Font = Enum.Font.Arcade
Keybinds37.Text = [[NUM1 - PUT AWAY SWORDS OR GET 
DOWN ON THE FLOOR]]
Keybinds37.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds37.TextSize = 20.000
Keybinds37.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds37.TextStrokeTransparency = 0.000
Keybinds37.TextXAlignment = 0
Keybinds37.AutoLocalize = false

Keybinds38.Parent = Scroll
Keybinds38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds38.BackgroundTransparency = 1.000
Keybinds38.Position = UDim2.new(0.0275, 0, 0.482380241, 0)
Keybinds38.Size = UDim2.new(0, 412, 0, 31)
Keybinds38.Font = Enum.Font.Arcade
Keybinds38.Text = "NUM2 - DELETE PURPLE WINGS"
Keybinds38.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds38.TextSize = 20.000
Keybinds38.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds38.TextStrokeTransparency = 0.000
Keybinds38.TextXAlignment = 0
Keybinds38.AutoLocalize = false

Keybinds39.Parent = Scroll
Keybinds39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds39.BackgroundTransparency = 1.000
Keybinds39.Position = UDim2.new(0.0275, 0, 0.492380241, 0)
Keybinds39.Size = UDim2.new(0, 412, 0, 31)
Keybinds39.Font = Enum.Font.Arcade
Keybinds39.Text = "NUM3 - DELETE UR WIGNS"
Keybinds39.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds39.TextSize = 20.000
Keybinds39.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds39.TextStrokeTransparency = 0.000
Keybinds39.TextXAlignment = 0
Keybinds39.AutoLocalize = false

Keybinds40.Parent = Scroll
Keybinds40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds40.BackgroundTransparency = 1.000
Keybinds40.Position = UDim2.new(0.0275, 0, 0.502380241, 0)
Keybinds40.Size = UDim2.new(0, 412, 0, 31)
Keybinds40.Font = Enum.Font.Arcade
Keybinds40.Text = "NUM4 - STRONGE LMB"
Keybinds40.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds40.TextSize = 20.000
Keybinds40.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds40.TextStrokeTransparency = 0.000
Keybinds40.TextXAlignment = 0
Keybinds40.AutoLocalize = false

Keybinds41.Parent = Scroll
Keybinds41.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds41.BackgroundTransparency = 1.000
Keybinds41.Position = UDim2.new(0.0275, 0, 0.512380241, 0)
Keybinds41.Size = UDim2.new(0, 412, 0, 31)
Keybinds41.Font = Enum.Font.Arcade
Keybinds41.Text = "NUM5 - OTHER LOCK ON"
Keybinds41.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds41.TextSize = 20.000
Keybinds41.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds41.TextStrokeTransparency = 0.000
Keybinds41.TextXAlignment = 0
Keybinds41.AutoLocalize = false

Keybinds42.Parent = Scroll
Keybinds42.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds42.BackgroundTransparency = 1.000
Keybinds42.Position = UDim2.new(0.0275, 0, 0.522380241, 0)
Keybinds42.Size = UDim2.new(0, 412, 0, 31)
Keybinds42.Font = Enum.Font.Arcade
Keybinds42.Text = "NUM6 - REJOIN"
Keybinds42.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds42.TextSize = 20.000
Keybinds42.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds42.TextStrokeTransparency = 0.000
Keybinds42.TextXAlignment = 0
Keybinds42.AutoLocalize = false

Keybinds43.Parent = Scroll
Keybinds43.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds43.BackgroundTransparency = 1.000
Keybinds43.Position = UDim2.new(0.0275, 0, 0.532380241, 0)
Keybinds43.Size = UDim2.new(0, 412, 0, 31)
Keybinds43.Font = Enum.Font.Arcade
Keybinds43.Text = "NUM7 - CHANCE JUMP"
Keybinds43.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds43.TextSize = 20.000
Keybinds43.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds43.TextStrokeTransparency = 0.000
Keybinds43.TextXAlignment = 0
Keybinds43.AutoLocalize = false

Keybinds44.Parent = Scroll
Keybinds44.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds44.BackgroundTransparency = 1.000
Keybinds44.Position = UDim2.new(0.0275, 0, 0.542380241, 0)
Keybinds44.Size = UDim2.new(0, 412, 0, 31)
Keybinds44.Font = Enum.Font.Arcade
Keybinds44.Text = "NUM8 - CHANCE SPEED"
Keybinds44.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds44.TextSize = 20.000
Keybinds44.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds44.TextStrokeTransparency = 0.000
Keybinds44.TextXAlignment = 0
Keybinds44.AutoLocalize = false

Keybinds45.Parent = Scroll
Keybinds45.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds45.BackgroundTransparency = 1.000
Keybinds45.Position = UDim2.new(0.0275, 0, 0.552380241, 0)
Keybinds45.Size = UDim2.new(0, 412, 0, 31)
Keybinds45.Font = Enum.Font.Arcade
Keybinds45.Text = "NUM9 - TP ON TOP"
Keybinds45.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds45.TextSize = 20.000
Keybinds45.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds45.TextStrokeTransparency = 0.000
Keybinds45.TextXAlignment = 0
Keybinds45.AutoLocalize = false

Keybinds46.Parent = Scroll
Keybinds46.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybinds46.BackgroundTransparency = 1.000
Keybinds46.Position = UDim2.new(0.0275, 0, 0.562380241, 0)
Keybinds46.Size = UDim2.new(0, 412, 0, 31)
Keybinds46.Font = Enum.Font.Arcade
Keybinds46.Text = "NUM0 - ???"
Keybinds46.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds46.TextSize = 20.000
Keybinds46.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Keybinds46.TextStrokeTransparency = 0.000
Keybinds46.TextXAlignment = 0
Keybinds46.AutoLocalize = false

Info1.Parent = Scroll
Info1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info1.BackgroundTransparency = 1.000
Info1.Position = UDim2.new(0.0275, 0, 0.852380241, 0)
Info1.Size = UDim2.new(0, 412, 0, 31)
Info1.Font = Enum.Font.Arcade
Info1.Text = [[Discord Chaot-tyan#1016
The attacks were taken from
other people's free scripts
and mine, some of which never
came out.]]
Info1.TextColor3 = Color3.fromRGB(0, 0, 0)
Info1.TextSize = 23.000
Info1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Info1.TextStrokeTransparency = 0.000
Info1.TextXAlignment = 0
Info1.AutoLocalize = false

Info2.Parent = Scroll
Info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info2.BackgroundTransparency = 1.000
Info2.Position = UDim2.new(0.0275, 0, 0.952380241, 0)
Info2.Size = UDim2.new(0, 412, 0, 31)
Info2.Font = Enum.Font.Arcade
Info2.Text = "Enjoy this script! :D"
Info2.TextColor3 = Color3.fromRGB(0, 0, 0)
Info2.TextSize = 23.000
Info2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Info2.TextStrokeTransparency = 0.000
Info2.TextXAlignment = 0
Info2.AutoLocalize = false

local phase = Instance.new('NumberValue')
phase.Parent = game.Players.LocalPlayer.Character
phase.Value = 0
phase.Name = 'Music'

local phase = Instance.new('NumberValue')
phase.Parent = game.Players.LocalPlayer.Character
phase.Value = 0
phase.Name = 'MusicFE'

game.Players.LocalPlayer.Character["Body Colors"].HeadColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.Character["Body Colors"].LeftArmColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.Character["Body Colors"].RightArmColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.Character["Body Colors"].LeftLegColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.Character["Body Colors"].RightLegColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.Character["Body Colors"].TorsoColor3 = Color3.new(0,0,0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "The Imitator"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "ATK|DFN: ???"

wait(0.1)
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 209
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120

wait(0.1)
game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)

wait(0.1)
local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

wait(0.1)
game.Workspace.ServerEffects.ServerCooldown:Destroy()

wait(0.1)
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true

local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = char.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(3.4,1,0.5)*CFrame.Angles(0, 0, math.rad(-160))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = char.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(5.5,4.1,0.5)*CFrame.Angles(0, 0, math.rad(-85))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = char.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,2.8,0.5)*CFrame.Angles(0, 0, math.rad(-65))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = char.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-3.4,1,0.5)*CFrame.Angles(0, 0, math.rad(160))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = char.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-5.5,4.1,0.5)*CFrame.Angles(0, 0, math.rad(85))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = char.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,2.8,0.5)*CFrame.Angles(0, 0, math.rad(65))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(3.4,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-150)),
CFrame.new(4.3,5.5,0.5)*CFrame.Angles(0, 0, math.rad(-55)),
CFrame.new(2,3.5,0.5)*CFrame.Angles(0, 0, math.rad(-65)),
CFrame.new(-3.4,1.5,0.5)*CFrame.Angles(0, 0, math.rad(150)),
CFrame.new(-4.3,5.5,0.5)*CFrame.Angles(0, 0, math.rad(55)),
CFrame.new(-2,3.5,0.5)*CFrame.Angles(0, 0, math.rad(65))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,6,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectile" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
    for i = 1,3 do 
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v.Trail:Destroy()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v.Color = Color3.fromRGB(0, 0, 0)
end
end
end
end
end
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "z" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-NaN Attack- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 199,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap, 
                ["Damage"] = "NaN"
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Fling Attack- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["HitEffect"] = "LightHitEffect", 
                ["Velocity"] = Vector3.new(0,0,0),
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap, 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Freeze Attack- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["HitTime"] = 2.5,
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap,
                ["Damage"] = 0
            }
        }
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Infinity Attack- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
    repeat
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
                ["Velocity"] = Vector3.new(0,-2,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
until game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "q" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Antifling activated- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        antifling = false
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,0,0)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "1" then
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectile", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectile", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectile", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "2" then
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileYellow", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)


wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "3" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Discarded- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 199,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.R then
		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then
			print("mouse cframe teleport")
			local cfr = player:GetMouse().Hit
			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 4, 0))
		else
			print("player cframe teleport")
			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 4, -3))
		end
	end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "b" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-GodMode lock on- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
            while wait(1) do
                for i, v in pairs(game.Players:GetChildren()) do
                    v.Character.Humanoid.Health = math.huge
                end
            end
	end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "n" then
local args = {
    [1] = {
    [1] = getrenv()._G.Pass,
    [2] = "Damage",
    [3] = math.huge,
    [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }

    game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.5)
        local player = game.Players.LocalPlayer
        local Tcf = player.Character:GetPrimaryPartCFrame()
        player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25)
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.5)
        local player = game.Players.LocalPlayer
        local Tcf = player.Character:GetPrimaryPartCFrame()
        player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25)
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.5)
        local player = game.Players.LocalPlayer
        local Tcf = player.Character:GetPrimaryPartCFrame()
        player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25)
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 20,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.5)
        local player = game.Players.LocalPlayer
        local Tcf = player.Character:GetPrimaryPartCFrame()
        player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 25)
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectilePurple", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectilePurple", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499465435"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
local A_1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectilePurple", 
	[3] = "Spawn", 
	[4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "h" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 4)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "GTClownSword"
                    sword2.Color = Color3.fromRGB(0, 0, 0)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
            for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Left Arm"]
                    sword2.Name = "GTClownSword"
                    sword2.Color = Color3.fromRGB(0, 0, 0)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800254068"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348265296"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348301706"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800254068"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348265296"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348301706"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800254068"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348265296"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348301706"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        k:Stop()
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "GTClownSword" then
                    v:Destroy()
                end
            end
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 56
        wait()
        vel:Destroy()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 56
        wait()
        vel:Destroy()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 56
        wait()
        vel:Destroy()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 56
        wait()
        vel:Destroy()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 199,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "y" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
            for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "GTClownSword"
                    sword2.Color = Color3.fromRGB(0, 0, 0)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
                end
            end
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023465437"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.06)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023258012"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023465437"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.06)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023258012"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023465437"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.06)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023258012"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023465437"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.06)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023258012"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023465437"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.06)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7023258012"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.SwordHit, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7499461505"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = Vector3.new(0,20,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.4)
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,70,0)
        wait()
        vel:Destroy()
        char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
        playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4532642774"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = Vector3.new(0,-25,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 1
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "GTClownSword" then
                    v:Destroy()
                end
            end
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "u" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776258610"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.15)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4300091335"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        wait(0.1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = Vector3.new(0,40,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.4)
                local sitstart = Instance.new("Animation") 
        sitstart.AnimationId = "rbxassetid://3198665507" 
        local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
        sitstartplay:Play()
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,63,0) -- change the velocity
        sitstartplay:Play()
        wait(0.5)
        vel:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 43
        char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
        playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
        sitstartplay:Stop()
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776249806"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = Vector3.new(0,-150,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        wait(0.6)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776256280"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = Vector3.new(0,-0.1,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnфimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "m" then
local plr = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local char = workspace[plr.Name]
if char.Type.Value == "Asriel" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776249806"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4300117017"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4456884092"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4300185517"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"
end
if char.Type.Value == "Frisk" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4800160350"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4800262463"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4800630930"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4801041246"
end
if char.Type.Value == "Chara" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4333546395"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348265296"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
end
if char.Type.Value == "Undyne" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4375854929"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4375868784"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4375879535"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4375890815"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4375854929"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776260400"
end
if char.Type.Value == "Betty" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776233108"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5776235173"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5776238345"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776240672"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776243290"
end
if char.Type.Value == "GTFrisk" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5657141412"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5657142368"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5657143572"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5657144478"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5657145846"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5657146851"
end
if char.Type.Value == "SFChara" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4333546395"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348265296"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
end
if char.Type.Value == "XSans" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5079313442"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5079845969"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5973915611"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5079319635"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5079848288"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5973928930"
end
if char.Type.Value == "DeltaSans" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5667194069"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5667196296"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5667206665"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5667210178"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5667215116"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5667213065"
end
if char.Type.Value == "Bunny" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776249806"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776251749"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5776253664"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5776256280"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776258610"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://3201755772"
end
if char.Type.Value == "Stevonnie" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4689494450"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4689497544"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4689503513"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4689505222"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4689506806"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4689531984"
end
if char.Type.Value == "Sakuya" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Selected- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://6154047231"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://6154049326"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://6154050876"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://6154049326"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://6154055740"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6154060166"
end
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "j" then
if game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Main- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5657143572"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5667210178"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6154060166"
end
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "4" then
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7515642035"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "5" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Give Wings Purple- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value

--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true
local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = LockOn.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = LockOn.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.5)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = LockOn.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,0.5)*CFrame.Angles(0, 0, math.rad(65))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = LockOn.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-2,0,0.5)*CFrame.Angles(0, 0, math.rad(-25))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = LockOn.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-2,2,0.5)*CFrame.Angles(0, 0, math.rad(-35))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = LockOn.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,3,0.5)*CFrame.Angles(0, 0, math.rad(-65))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(0)),
CFrame.new(3,3,0.5)*CFrame.Angles(0, 0, math.rad(260)),
CFrame.new(4,5,0.5)*CFrame.Angles(0, 0, math.rad(160)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-0)),
CFrame.new(-3,3,0.5)*CFrame.Angles(0, 0, math.rad(-260)),
CFrame.new(-4,5,0.5)*CFrame.Angles(0, 0, math.rad(-160))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,2,1 do
    spawn(function()
local A_1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectilePurple", 
    [3] = "Spawn",
    [4] = Vector3.new(0, 3000, 0) 
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
if child.Name == "KnifeSlashProjectilePurple" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
 
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "6" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Recreate Wings- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true

local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = char.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(3.4,1,0.5)*CFrame.Angles(0, 0, math.rad(-160))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = char.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(5.5,4.1,0.5)*CFrame.Angles(0, 0, math.rad(-85))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = char.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,2.8,0.5)*CFrame.Angles(0, 0, math.rad(-65))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = char.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-3.4,1,0.5)*CFrame.Angles(0, 0, math.rad(160))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = char.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-5.5,4.1,0.5)*CFrame.Angles(0, 0, math.rad(85))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = char.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,2.8,0.5)*CFrame.Angles(0, 0, math.rad(65))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(3.4,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-150)),
CFrame.new(4.3,5.5,0.5)*CFrame.Angles(0, 0, math.rad(-55)),
CFrame.new(2,3.5,0.5)*CFrame.Angles(0, 0, math.rad(-65)),
CFrame.new(-3.4,1.5,0.5)*CFrame.Angles(0, 0, math.rad(150)),
CFrame.new(-4.3,5.5,0.5)*CFrame.Angles(0, 0, math.rad(55)),
CFrame.new(-2,3.5,0.5)*CFrame.Angles(0, 0, math.rad(65))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,6,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectile" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
    for i = 1,3 do 
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v.Trail:Destroy()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v.Color = Color3.fromRGB(0, 0, 0)
end
end
end
end
end
end
end)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "k" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4300091335"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()  k:AdjustSpeed(2)
        wait(0.05)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = Vector3.new(0,10,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.65)
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,50,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50 -- change the velocity
        wait(0.05)
        vel:Destroy()
        char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
        playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 10
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776233108"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776235173"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776240672"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4300200684"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        wait(0.1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = Vector3.new(0,-5,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.6)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 5
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,-20,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70 -- change the velocity
        wait(0.01)
        vel:Destroy()
        char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
        playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776256280"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.00001,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.3)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
        local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 40)
        wait(0.35)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776249806"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = Vector3.new(0,-100,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,70,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)  
                wait(0.3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,17,0))*5.30 -- change the velocity
                wait(0.5)
                vel:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 77
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
                wait(0.5)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(1, 1, 1), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 0.2, 
					["Type"] = "Knockback", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,  
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
					["Velocity"] = Vector3.new(100, 100, 100), 
					["CombatInv"] = true,
					["Damage"] = 5
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
	      wait(1)
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "7" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.01)
        local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50)
        wait(0.55)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4300091335"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        wait(0.08)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = Vector3.new(0,40,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.3)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
        wait(0.4)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800630930"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4800624938"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(2.5)
        wait(0.02)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1)
        wait(0.1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 150,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "8" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4300091335"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        wait(0.1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = Vector3.new(0,40,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 43
        wait(0.6)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776258610"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        wait(0.07)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = Vector3.new(0,40,0) +
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.2)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 88
        local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70)
        wait(0.6)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776249806"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = Vector3.new(0,-150,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.01)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        wait(0.9)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776256280"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = Vector3.new(0,-0.1,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(0.1)
                local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776260400"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play() k:AdjustSpeed(1.5)
        wait(0.15)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 50,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
                ["Damage"] = 20
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "9" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
            ["Type"] = "Normal",
            ["HitEffect"] = "LightHitEffect3",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
            ["Velocity"] = Vector3.new(0, 28, 0),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
            ["Damage"] = 10
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 16    
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://7019288804"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.7)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(50,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
end
end)

wait(0.1)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "0" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Imitation- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348265296"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348265296"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://7019288804"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.2, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(50,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 40
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Minus then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-TP Arena 1- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local player = game.Players.LocalPlayer
        player.Character:SetPrimaryPartCFrame(CFrame.new(11000, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Equals then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-TP Arena 2- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local player = game.Players.LocalPlayer
        player.Character:SetPrimaryPartCFrame(CFrame.new(12000, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.LeftBracket then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-TP Spawn- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local player = game.Players.LocalPlayer
        player.Character:SetPrimaryPartCFrame(CFrame.new(941, 326, -74))
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.RightBracket then
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
                        if v.Name == "WhiteScreen" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
        spawn(
            function()
                repeat
                    wait()
                    for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
                        if v.Name == "Blur" then
                            v:Destroy()
                        end
                    end
                until false
            end
        )
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Semicolon then
	if game.Players.LocalPlayer.Character.Music.Value == 0 then
	game.Players.LocalPlayer.Character.Music.Value = 1
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://5800187486" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 1 then
	game.Players.LocalPlayer.Character.Music.Value = 2
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6158621008" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 2 then
	game.Players.LocalPlayer.Character.Music.Value = 3
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6158635768" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 3 then
	game.Players.LocalPlayer.Character.Music.Value = 4
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://4487220408" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 4 then
	game.Players.LocalPlayer.Character.Music.Value = 5
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://5925423741" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 5 then
	game.Players.LocalPlayer.Character.Music.Value = 6
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://4538576008" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 6 then
	game.Players.LocalPlayer.Character.Music.Value = 7
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://4725616368" 
Sound.Name = "1Megalo Strike Back"
	elseif game.Players.LocalPlayer.Character.Music.Value == 7 then
	game.Players.LocalPlayer.Character.Music.Value = 0
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://3337357801" 
Sound.Name = "1Megalo Strike Back"
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Quote then
	game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"].Playing = false
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Comma then
	if game.Players.LocalPlayer.Character.MusicFE.Value == 0 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 1
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-SSchara- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 1 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 2
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Betty- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 2 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 3
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Stevonnie- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 3 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 4
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-ReaperChara- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 4 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 5
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-DeltaSans- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 5 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 6
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Sakuya1- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 6 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 7
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Sakuya2- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 7 then
	game.Players.LocalPlayer.Character.MusicFE.Value = 0
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Asriel- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.Period then
	if game.Players.LocalPlayer.Character.MusicFE.Value == 0 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.Asriel.Transformation1Playlist["1Burn"], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 1 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.SFChara.HurtPlaylist["1SSChara"], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 2 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.Betty.DeathPlaylist[1], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 3 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.Stevonnie.StarterPlaylist["1Megalo Strike Back"], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 4 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.My.TransformedPlaylist["1Bunny"], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 5 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.DeltaSans.StarterPlaylist[1], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 6 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.Sakuya.StarterPlaylist[1], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
	elseif game.Players.LocalPlayer.Character.MusicFE.Value == 7 then
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.SleepingSans,
                ["Velocity"] = Vector3.new(0,-0.0001,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Resources.Character.CustomMusic.Sakuya.HitPlaylist[1], 
                ["Damage"] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadOne then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "GTClownSword" then
                    v:Destroy()
                end
            end
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadTwo then
    for i = 1,20 do 
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectilePurple' then
v:Destroy()
end
end
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadThree then
    for i = 1,6 do 
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v:Destroy()
end
end
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadFour then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-LMB Stronge- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456898259"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456898259"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4456898259"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4456898259"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4456898259"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456898259"
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadFive then
repeat
	wait()
                game.Players.LocalPlayer.Backpack.Main.LockOnScript.UnLock.Value = true
until toggle == false
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadSix then
wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadSix then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Rejoin- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        game:GetService("TeleportService"):Teleport(3198259055, LocalPlayer)
end
end)
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadSeven then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Chance Jump- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
if game.Players.LocalPlayer.Character.Humanoid.JumpPower == 120 then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 1000
elseif game.Players.LocalPlayer.Character.Humanoid.JumpPower == 1000 then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadEight then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-Chance Speed- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
if game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value == 209 then
    game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 1000
elseif game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value == 1000 then
    game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 209
end
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadNine then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [ The Imitator ] *
-TP Top- ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local player = game.Players.LocalPlayer
        player.Character:SetPrimaryPartCFrame(CFrame.new(553.984, 1674.12, 563.642))
end
end)

wait(0.1)
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end
	if inputs.KeyCode == Enum.KeyCode.KeypadNine then
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Nothing";
    Text = "Telegramm @Chaot-tyan";
    Duration = 999999;
    Button1 = "Cool";
})
end
end)

wait(0.5)
Loading.Parent = GUI
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.Position = UDim2.new(0.0060, 0, 0.867380241, 0)
Loading.Size = UDim2.new(0, 412, 0, 31)
Loading.Font = Enum.Font.Arcade
Loading.Text = "Script loading complete"
Loading.TextColor3 = Color3.fromRGB(0, 0, 0)
Loading.TextSize = 40.000
Loading.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Loading.TextStrokeTransparency = 0.000
Loading.TextXAlignment = 0
Loading.AutoLocalize = false