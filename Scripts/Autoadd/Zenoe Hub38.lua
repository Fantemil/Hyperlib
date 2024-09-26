    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Zenoe Hub", "Ocean")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")


    MainSection:NewButton("Back/FrontFlip", "To front flip click z to backflip click x", function()
        wait(5)

    --[[ Info ]]--

    local ver = "2.00"
    local scriptname = "feFlip"


    --[[ Keybinds ]]--

    local FrontflipKey = Enum.KeyCode.Z
    local BackflipKey = Enum.KeyCode.X
    local AirjumpKey = Enum.KeyCode.C


    --[[ Dependencies ]]--

    local ca = game:GetService("ContextActionService")
    local zeezy = game:GetService("Players").LocalPlayer
    local h = 0.0174533
    local antigrav


    --[[ Functions ]]--

    function zeezyFrontflip(act,inp,obj)
        if inp == Enum.UserInputState.Begin then
            zeezy.Character.Humanoid:ChangeState("Jumping")
            wait()
            zeezy.Character.Humanoid.Sit = true
            for i = 1,360 do 
                delay(i/720,function()
                zeezy.Character.Humanoid.Sit = true
                    zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
                end)
            end
            wait(0.55)
            zeezy.Character.Humanoid.Sit = false
        end
    end

    function zeezyBackflip(act,inp,obj)
        if inp == Enum.UserInputState.Begin then
            zeezy.Character.Humanoid:ChangeState("Jumping")
            wait()
            zeezy.Character.Humanoid.Sit = true
            for i = 1,360 do
                delay(i/720,function()
                zeezy.Character.Humanoid.Sit = true
                    zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
                end)
            end
            wait(0.55)
            zeezy.Character.Humanoid.Sit = false
        end
    end

    function zeezyAirjump(act,inp,obj)
        if inp == Enum.UserInputState.Begin then
            zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
            wait()
            zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
        end
    end


    --[[ Binds ]]--

    ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
    ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
    ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)

    --[[ Load Message ]]--

    print(scriptname .. " " .. ver .. " loaded successfully")
    print("made by Zeezy#7203")

    local notifSound = Instance.new("Sound",workspace)
    notifSound.PlaybackSpeed = 1.5
    notifSound.Volume = 0.15
    notifSound.SoundId = "rbxassetid://170765130"
    notifSound.PlayOnRemove = true
    notifSound:Destroy()
    game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully!", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay"})
    end)

    MainSection:NewToggle("Super Human", "Jump High and walk really fast", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)


    MainSection:NewButton("Infinite Yield", "Fe Admin Commands", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    --LOCAL PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")



    PlayerSection:NewSlider("Walkspeed", "How fast you move!", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("Jumppower", "How high you Jump!", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset All WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)


    --Other
    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Other")

    OtherSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/game-hax/uca/main/release/uca.min.lua"))()
    end)

    OtherSection:NewButton("Bypassed Fly", "To fly type in the cmd bar fly and choose a speed", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    OtherSection:NewButton("Noclip", "Lets you walk through walls", function()
        local Noclip = nil
    local Clip = nil

    function noclip()
        Clip = false
        local function Nocl()
            if Clip == false and game.Players.LocalPlayer.Character ~= nil then
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = false
                    end
                end
            end
            wait(0.21) -- basic optimization
        end
        Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
    end

    function clip()
        if Noclip then Noclip:Disconnect() end
        Clip = true
    end

    noclip() -- to toggle noclip() and clip()
    end)
    --Credits
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")

    CreditsSection:NewButton("Made by tatiana_mcl bugs? dm tatiii on d", "Credits", function()
        
    end)

    MainSection:NewButton("Crash CLIENT", "Crashed Client game.", function()
    local function gC()
    while true do
        print("made by tatiii ")
    end
    end
    gC()
    end)

    --ESP
    local Tab = Window:NewTab("ESP")

    local ESPSection = Tab:NewSection("ESP")

    ESPSection:NewButton("Rainbow Tracer", "Turns on ESP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZenOnRoblox/Rainbow-esp/main/.gitignore"))()
    end)


    ESPSection:NewButton("Orange Tracer", "Turns on ESP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Tracers-Script/main/Tracers.lua"))()
    end)

    MainSection:NewButton("Invisible", "Invisible", function()
        print("made by tatiii")

    -- keybind: E
    --Settings:
    local ScriptStarted = false
    local Keybind = "E" --Set to whatever you want, has to be the name of a KeyCode Enum.
    local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
    local NoClip = false --Will make your fake character no clip.

    local Player = game:GetService("Players").LocalPlayer
    local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

    local IsInvisible = false

    RealCharacter.Archivable = true
    local FakeCharacter = RealCharacter:Clone()
    local Part
    Part = Instance.new("Part", workspace)
    Part.Anchored = true
    Part.Size = Vector3.new(200, 1, 200)
    Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
    Part.CanCollide = true
    FakeCharacter.Parent = workspace
    FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

    for i, v in pairs(RealCharacter:GetChildren()) do
    if v:IsA("LocalScript") then
        local clone = v:Clone()
        clone.Disabled = true
        clone.Parent = FakeCharacter
    end
    end
    if Transparency then
    for i, v in pairs(FakeCharacter:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency = 0.7
        end
    end
    end
    local CanInvis = true
    function RealCharacterDied()
    CanInvis = false
    RealCharacter:Destroy()
    RealCharacter = Player.Character
    CanInvis = true
    isinvisible = false
    FakeCharacter:Destroy()
    workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

    RealCharacter.Archivable = true
    FakeCharacter = RealCharacter:Clone()
    Part:Destroy()
    Part = Instance.new("Part", workspace)
    Part.Anchored = true
    Part.Size = Vector3.new(200, 1, 200)
    Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
    Part.CanCollide = true
    FakeCharacter.Parent = workspace
    FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

    for i, v in pairs(RealCharacter:GetChildren()) do
        if v:IsA("LocalScript") then
            local clone = v:Clone()
            clone.Disabled = true
            clone.Parent = FakeCharacter
        end
    end
    if Transparency then
        for i, v in pairs(FakeCharacter:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Transparency = 0.7
            end
        end
    end
    RealCharacter.Humanoid.Died:Connect(function()
    RealCharacter:Destroy()
    FakeCharacter:Destroy()
    end)
    Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
    end
    RealCharacter.Humanoid.Died:Connect(function()
    RealCharacter:Destroy()
    FakeCharacter:Destroy()
    end)
    Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
    local PseudoAnchor
    game:GetService "RunService".RenderStepped:Connect(
    function()
        if PseudoAnchor ~= nil then
            PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
        end
        if NoClip then
        FakeCharacter.Humanoid:ChangeState(11)
        end
    end
    )

    PseudoAnchor = FakeCharacter.HumanoidRootPart
    local function Invisible()
    if IsInvisible == false then
        local StoredCF = RealCharacter.HumanoidRootPart.CFrame
        RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
        FakeCharacter.HumanoidRootPart.CFrame = StoredCF
        RealCharacter.Humanoid:UnequipTools()
        Player.Character = FakeCharacter
        workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
        PseudoAnchor = RealCharacter.HumanoidRootPart
        for i, v in pairs(FakeCharacter:GetChildren()) do
            if v:IsA("LocalScript") then
                v.Disabled = false
            end
        end

        IsInvisible = true
    else
        local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
        FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
        
        RealCharacter.HumanoidRootPart.CFrame = StoredCF
        
        FakeCharacter.Humanoid:UnequipTools()
        Player.Character = RealCharacter
        workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
        PseudoAnchor = FakeCharacter.HumanoidRootPart
        for i, v in pairs(FakeCharacter:GetChildren()) do
            if v:IsA("LocalScript") then
                v.Disabled = true
            end
        end
        IsInvisible = false
    end
    end

    game:GetService("UserInputService").InputBegan:Connect(
    function(key, gamep)
        if gamep then
            return
        end
        if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
            if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                Invisible()
            end
        end
    end
    )
    local Sound = Instance.new("Sound",game:GetService("SoundService"))
    Sound.SoundId = "rbxassetid://232127604"
    Sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisible Toggle Loaded",["Text"] = "Press "..Keybind.." to become change visibility.",["Duration"] = 20,["Button1"] = "Okay."})
    end)

    OtherSection:NewButton("English Or Spanish", "Test", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kona3366/English-or-Spanish-RBLX-Script/main/Obfuscated.lua", true))()
    end)

    OtherSection:NewButton(" Universal Chat Bypasser", "Bypassed the chat filter", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZenOnRoblox/Roblox-chat-bypass/main/.gitignore"))()
    end)