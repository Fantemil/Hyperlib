local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "gatorade | Zach1256#3148",
    LoadingTitle = "gatorade",
    LoadingSubtitle = "Zach1256#3148",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "gatorade",
       Subtitle = "Zach1256#3148",
       Note = "idk",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "gatorade"
    }
 })

 local Tab = Window:CreateTab("the aa", 4483362458) -- Title, Image
 local TabSection = Tab:CreateSection("aa")

 local Toggle = Tab:CreateToggle({
    Name = "sky aa (z)",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/AvianProjects/Dahood/main/AntilockerV2'),true))()

    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "runs.gg",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        loadstring(game:HttpGet("https://runs.gg/main/loader.lua"))()
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

local Idc = Window:CreateTab("features", 4483362458) -- Title, Image
local IdcSection = Idc:CreateSection("features")

local Button = Tab:CreateButton({
   Name = "fly",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/swag/main/admin_fly"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "flash lock",
   Callback = function()
   
   end,
})

local Button = Tab:CreateButton({
   Name = "hitbox",
   Callback = function()
   _G.PART = "HumanoidRootPart"
_G.PRED = 0.13960
_G.T = 0.7

local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()
local enabled = false
local Target
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
newcclosure(
function(...)
local args = {...}
if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
args[3] = Target[_G.PART].Position + (Target[_G.PART].Velocity * _G.PRED)
return old(unpack(args))
end
return old(...)
end)


game:GetService("RunService").RenderStepped:Connect(function() 
    
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
if mouse.Target == v.Character.HumanoidRootPart then
    Target = v.Character
    enabled = true
end
end
if v ~= game:GetService("Players").LocalPlayer then
if v.Character.BodyEffects:FindFirstChild("K.O").Value == false then 
v.Character.HumanoidRootPart.Size = Vector3.new(20, 20, 20) --change to make smaller
v.Character.HumanoidRootPart.Transparency = _G.T
v.Character.HumanoidRootPart.CanCollide = false
else
v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.CanCollide = false
end
if v.Character:FindFirstChild("GRABBING_CONSTRAINT") then
    v.Character.HumanoidRootPart.Size = Vector3.new(0.1, 0.1, 0.1)
    v.Character.HumanoidRootPart.Transparency = 1
    v.Character.HumanoidRootPart.CanCollide = false
end
end
end
if mouse.Target.Name == "HumanoidRootPart" then
enabled = true
else
enabled = false
end

end)
   end,
})

local Button = Tab:CreateButton({
   Name = "rainbow body",
   Callback = function()
  for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Material = "ForceField"
        spawn(function()
            while wait() do
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("MeshPart") then
                        v.Color = Color3.fromHSV(tick()%5/5,1,1)
                        wait()
                    end
                end 
            end
        end)
    end
end
   end,
})



local Button = Tab:CreateButton({
   Name = "animation pack",
   Callback = function()
  -- Credit for Zackary#1011 for making animation pack/++
--and credit for ilovebee#6666 for giving animations id
 
repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lean") then
    game.ReplicatedStorage.ClientAnimations.Lean:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lay") then
    game.ReplicatedStorage.ClientAnimations.Lay:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance1") then
    game.ReplicatedStorage.ClientAnimations.Dance1:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance2") then
    game.ReplicatedStorage.ClientAnimations.Dance2:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Greet") then
    game.ReplicatedStorage.ClientAnimations.Greet:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Chest Pump") then
    game.ReplicatedStorage.ClientAnimations["Chest Pump"]:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Praying") then
    game.ReplicatedStorage.ClientAnimations.Praying:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TheDefault") then
    game.ReplicatedStorage.ClientAnimations.TheDefault:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Sturdy") then
    game.ReplicatedStorage.ClientAnimations.Sturdy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Rossy") then
    game.ReplicatedStorage.ClientAnimations.Rossy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Griddy") then
    game.ReplicatedStorage.ClientAnimations.Griddy:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TPose") then
    game.ReplicatedStorage.ClientAnimations.TPose:Destroy()
end
 
if game.ReplicatedStorage.ClientAnimations:FindFirstChild("SpeedBlitz") then
    game.ReplicatedStorage.ClientAnimations.SpeedBlitz:Destroy()
end
 
local Animations = game.ReplicatedStorage.ClientAnimations
 
local LeanAnimation = Instance.new("Animation", Animations)
LeanAnimation.Name = "Lean"
LeanAnimation.AnimationId = "rbxassetid://3152375249"
 
local LayAnimation = Instance.new("Animation", Animations)
LayAnimation.Name = "Lay"
LayAnimation.AnimationId = "rbxassetid://3152378852"
 
local Dance1Animation = Instance.new("Animation", Animations)
Dance1Animation.Name = "Dance1"
Dance1Animation.AnimationId = "rbxassetid://3189773368"
 
local Dance2Animation = Instance.new("Animation", Animations)
Dance2Animation.Name = "Dance2"
Dance2Animation.AnimationId = "rbxassetid://3189776546"
 
local GreetAnimation = Instance.new("Animation", Animations)
GreetAnimation.Name = "Greet"
GreetAnimation.AnimationId = "rbxassetid://3189777795"
 
local ChestPumpAnimation = Instance.new("Animation", Animations)
ChestPumpAnimation.Name = "Chest Pump"
ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"
 
local PrayingAnimation = Instance.new("Animation", Animations)
PrayingAnimation.Name = "Praying"
PrayingAnimation.AnimationId = "rbxassetid://3487719500"
 
local TheDefaultAnimation = Instance.new("Animation", Animations)
TheDefaultAnimation.Name = "TheDefault"
TheDefaultAnimation.AnimationId = "rbxassetid://11710529975" -- FIX THIS
 
local SturdyAnimation = Instance.new("Animation", Animations)
SturdyAnimation.Name = "Sturdy"
SturdyAnimation.AnimationId = "rbxassetid://11710524717"
 
local RossyAnimation = Instance.new("Animation", Animations)
RossyAnimation.Name = "Rossy"
RossyAnimation.AnimationId = "rbxassetid://11710527244"
 
local GriddyAnimation = Instance.new("Animation", Animations)
GriddyAnimation.Name = "Griddy"
GriddyAnimation.AnimationId = "rbxassetid://11710529220"
 
local TPoseAnimation = Instance.new("Animation", Animations)
TPoseAnimation.Name = "TPose"
TPoseAnimation.AnimationId = "rbxassetid://11710524200"
 
local SpeedBlitzAnimation = Instance.new("Animation", Animations)
SpeedBlitzAnimation.Name = "SpeedBlitz"
SpeedBlitzAnimation.AnimationId = "rbxassetid://11710541744"
 
function AnimationPack(Character)
    Character:WaitForChild'Humanoid'
    repeat
        wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")
 
    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local AnimationPackPlus = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPlusPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton
    local ScrollingFramePlus = AnimationPackPlus.ScrollingFrame
    local CloseButtonPlus = AnimationPackPlus.CloseButton
 
    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
 
    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
 
    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
 
    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
 
    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
 
    local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)
 
    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
 
    local TheDefault = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TheDefaultAnimation)
 
    local Sturdy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SturdyAnimation)
 
    local Rossy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(RossyAnimation)
 
    local Griddy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GriddyAnimation)
 
    local TPose = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TPoseAnimation)
 
    local SpeedBlitz = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SpeedBlitzAnimation)
 
    AnimationPack.Visible = true
 
    AnimationPackPlus.Visible = true
 
    ScrollingFrame.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
    ScrollingFramePlus.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Chest Pump" then
                v.Name = "ChestPumpButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "The Default" then
                v.Name = "TheDefaultButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Sturdy" then
                v.Name = "SturdyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Rossy" then
                v.Name = "RossyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Griddy" then
                v.Name = "GriddyButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "T Pose" then
                v.Name = "TPoseButton"
            end
        end
    end
 
    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Speed Blitz" then
                v.Name = "SpeedBlitzButton"
            end
        end
    end
 
    function Stop()
        Lean:Stop()
        Lay:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        ChestPump:Stop()
        Praying:Stop()
        TheDefault:Stop()
        Sturdy:Stop()
        Rossy:Stop()
        Griddy:Stop()
        TPose:Stop()
        SpeedBlitz:Stop()
    end
 
    --credit Zackary#1011 (again cuz someone might skid this to their script)
 
    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
    local PrayingTextButton = ScrollingFrame.PrayingButton
    local TheDefaultTextButton = ScrollingFramePlus.TheDefaultButton
    local SturdyTextButton = ScrollingFramePlus.SturdyButton
    local RossyTextButton = ScrollingFramePlus.RossyButton
    local GriddyTextButton = ScrollingFramePlus.GriddyButton
    local TPoseTextButton = ScrollingFramePlus.TPoseButton
    local SpeedBlitzTextButton = ScrollingFramePlus.SpeedBlitzButton
 
    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
            AnimationPackPlus.Visible = false
        end
    end)
    AnimationPackPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == false then
            ScrollingFramePlus.Visible = true
            CloseButtonPlus.Visible = true
            AnimationPack.Visible = false
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
            AnimationPackPlus.Visible = true
        end
    end)
    CloseButtonPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == true then
            ScrollingFramePlus.Visible = false
            CloseButtonPlus.Visible = false
            AnimationPack.Visible = true
        end
    end)
 
    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    ChestPumpTextButton.MouseButton1Click:Connect(function()
        Stop()
        ChestPump:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)
    TheDefaultTextButton.MouseButton1Click:Connect(function()
        Stop()
        TheDefault:Play()
    end)
    SturdyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Sturdy:Play()
    end)
    RossyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Rossy:Play()
    end)
    GriddyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Griddy:Play()
    end)
    TPoseTextButton.MouseButton1Click:Connect(function()
        Stop()
        TPose:Play()
    end)
    SpeedBlitzTextButton.MouseButton1Click:Connect(function()
        Stop()
        SpeedBlitz:Play()
    end)
 
    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)
 
    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        Stop()
    end)
end
AnimationPack(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
end)
   end,
})