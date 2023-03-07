local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char:WaitForChild("Humanoid")
local uis = game:GetService("UserInputService")

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()

local Window = Library:CreateWindow({
    Title = 'Balls Script | Raise A Sonic',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
}

local Main = Tabs.Main:AddLeftGroupbox('Automation')

Main:AddToggle('AutoClick', {
    Text = 'Auto Click',
    Default = false,
    Tooltip = 'Auto Clicks Sonic',
})

Toggles.AutoClick:OnChanged(function()
 while Toggles.AutoClick.Value do
  fireclickdetector(game:GetService("Workspace").Sonic.ClickPart.ClickDetector)
  task.wait()
 end
end)

Main:AddToggle('AutoCollect', {
    Text = 'Auto Collect',
    Default = false,
    Tooltip = 'Auto Collects Rings',
})

Toggles.AutoCollect:OnChanged(function()
 while Toggles.AutoCollect.Value do
        if game:GetService("Workspace"):FindFirstChild("Ring") or game:GetService("Workspace"):FindFirstChild("SpecialRing") then
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "Ring" or v.Name == "SpecialRing" then
                    firetouchinterest(char.HumanoidRootPart, v, 0)
                end
            end
        end
        task.wait()
    end
end)

Main:AddToggle('AutoStock', {
    Text = 'Auto Restock Bowl',
    Default = false,
    Tooltip = 'Automatically purchases food when food is finished',
})

Toggles.AutoStock:OnChanged(function()
    if not game:GetService("Workspace").Food.Full.Value and Toggles.AutoStock.Value then
        game:GetService("ReplicatedStorage").Buy:FireServer("Sonic Food")
    end
    game:GetService("Workspace").Food.Full.Changed:Connect(function()
        if not game:GetService("Workspace").Food.Full.Value and Toggles.AutoStock.Value then
            game:GetService("ReplicatedStorage").Buy:FireServer("Sonic Food")
        end
    end)
end)

Main:AddToggle('ShitAura', {
    Text = 'Poop Aura',
    Default = false,
    Tooltip = 'Collects Poop When You Get Close',
})

Toggles.ShitAura:OnChanged(function()
    while Toggles.ShitAura.Value do
        if game:GetService("Workspace"):FindFirstChild("Poop") then
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "Poop" then
                    fireproximityprompt(v:WaitForChild("PoopBottom"):WaitForChild("ProximityPrompt"), 0)
                end
            end
        end
        task.wait()
    end
end)

local Item = Tabs.Main:AddRightGroupbox('Items')

Item:AddButton('Door Key', function()
    if game:GetService("Workspace"):FindFirstChild("Key") then
        local old = char.HumanoidRootPart.CFrame
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Key.CFrame
        task.wait(0.15)
        fireclickdetector(game:GetService("Workspace").Key.ClickDetector)
        task.wait(0.1)
        char.HumanoidRootPart.CFrame = old
    end
end)

Item:AddButton('Among Us Item (Costs 2k)', function()
    if game:GetService("Workspace"):FindFirstChild("WeirdAmongUsThing") then
        local old = char.HumanoidRootPart.CFrame
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").WeirdAmongUsThing.CFrame
        task.wait(0.15)
        fireproximityprompt(game:GetService("Workspace").WeirdAmongUsThing.ProximityPrompt, 0.5)
        task.wait(0.1)
        char.HumanoidRootPart.CFrame = old
    end
end)

Item:AddButton('Pickup All Sticks', function()
    if game:GetService("Workspace"):FindFirstChild("Stick") then
        for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Stick" and v:IsA("Tool") then
                firetouchinterest(char.HumanoidRootPart, v.Handle, 0)
            end
        end
    end
end)

local util = Tabs.Main:AddLeftGroupbox('Utility')

local openPcButton = util:AddButton('Open PC', function()
    if not plr.PlayerGui.Shop.Enabled then
        fireproximityprompt(game:GetService("Workspace").PCOPEN.ProximityPrompt, 0)
    else
        firesignal(plr.PlayerGui.Shop.Frame.TextButton.MouseButton1Click)
    end
end)

openPcButton:AddTooltip('Opens/Closes PC')

local openSussyButton = util:AddButton('Open Sussy Shop', function()
    fireproximityprompt(game:GetService("Workspace").Amogus.RootPart.ProximityPrompt, 0)
end)

local Misc = Tabs.Main:AddRightGroupbox('Misc.')

Misc:AddToggle('WalkSpeed', {
    Text = 'Walk Speed',
    Default = false,
    Tooltip = 'Sets a higher walk speed',
})

Toggles.WalkSpeed:OnChanged(function()
    if Toggles.WalkSpeed.Value then
        hum.WalkSpeed = 100
    else
        hum.WalkSpeed = 16
    end
end)

Misc:AddToggle('infJump', {
    Text = 'Inf Jump',
    Default = false,
    Tooltip = 'Jump as many times',
})

game:GetService("UserInputService").JumpRequest:Connect(function()
    if Toggles.infJump.Value and hum.FloorMaterial == Enum.Material.Air then
        hum:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

local TPs = Tabs.Main:AddLeftGroupbox('Teleports')

TPs:AddButton('Store', function()
    char.HumanoidRootPart.CFrame = CFrame.new(59.7931557, -32.7659721, -121.189156, -9.49949026e-08, -2.65030451e-08, -1, 7.49840581e-08, 1, -2.65030522e-08, 1, -7.49840581e-08, -9.49949026e-08)
end)

TPs:AddButton('House', function()
    char.HumanoidRootPart.CFrame = CFrame.new(-6.38189983, -32.5482826, -9.27236748, 0.999961913, 2.60718895e-08, -0.00872969348, -2.58394373e-08, 1, 2.674056e-08, 0.00872969348, -2.65139715e-08, 0.999961913)
end)

TPs:AddButton('Lake', function()
    char.HumanoidRootPart.CFrame = CFrame.new(64.778038, -31.1089668, -56.339077, -0.0307154097, -5.98806693e-08, -0.99952817, -1.70267811e-09, 1, -5.98566103e-08, 0.99952817, -1.36645514e-10, -0.0307154097)
end)

TPs:AddButton('Campfire', function()
    char.HumanoidRootPart.CFrame = CFrame.new(-65.8135757, -32.7576332, -71.2598572, -0.317304879, 7.86855594e-08, -0.948323607, -3.29907657e-08, 1, 9.40118881e-08, 0.948323607, 6.11163529e-08, -0.317304879)
end)

Misc:AddButton('Destroy UI', function()
    Library.Unloaded = true
    Library:Unload()
end)