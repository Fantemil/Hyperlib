--[[
██╗  ██╗ █████╗ ███████╗ ██╗ ██╗ ███████╗ █████╗  ██╗██████╗ 
╚██╗██╔╝██╔══██╗██╔════╝████████╗██╔════╝██╔══██╗███║╚════██╗
 ╚███╔╝ ███████║███████╗╚██╔═██╔╝███████╗╚██████║╚██║ █████╔╝
 ██╔██╗ ██╔══██║╚════██║████████╗╚════██║ ╚═══██║ ██║ ╚═══██╗
██╔╝ ██╗██║  ██║███████║╚██╔═██╔╝███████║ █████╔╝ ██║██████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝ ╚═╝ ╚═╝ ╚══════╝ ╚════╝  ╚═╝╚═════╝ 
]]


loadstring(game:HttpGet"https://pastebin.com/raw/3RugAwsm")()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()
local Window = Library:CreateWindow("Sono Ware", Vector2.new(492, 598), Enum.KeyCode.RightControl)
local Aim = Window:CreateTab("Aiming") 
local Aim = Aim:CreateSector("First Section", "left")

local Misc = Window:CreateTab("Misc")
local Misc = Misc:CreateSector("First Section", "left")

local Teleport = Window:CreateTab("Teleport")
local Teleport = Teleport:CreateSector("Teleport", "left")

local AutoBuy = Window:CreateTab("AutoBuy")
local AutoBuy = AutoBuy:CreateSector("AutoBuy", "left")

local Combat = Window:CreateTab("Combat")
local Combat = Combat:CreateSector("Combat", "left")

local Credits = Window:CreateTab("Credits")
local Credits = Credits:CreateSector("Credits", "left")


game.StarterGui:SetCore("SendNotification", {
Title = "Credit";
Text = "unobfusted by xas#5913,",
Duration = 7;
})


Credits:AddButton("Credits Why#8047", function(IhateGayPeople)
   setclipboard("Why#8047")
toclipboard("Why#8047")
end)

Aim:AddButton("Aimlock (q)", function(IhateGayPeople)
    loadstring(game:HttpGet("https://pastebin.com/raw/SsnGV0JQ"))()
end)

Misc:AddButton("Fly", function(IhateGayPeople)
    loadstring(game:HttpGet("https://pastebin.com/raw/EkFstYEx"))()
end)

Misc:AddButton("Remove Jump Cooldown", function(IhateGayPeople)
    loadstring(game:HttpGet("https://pastebin.com/raw/LqaEhXV0"))()
end)

Misc:AddButton("Full Bright", function(IhateGayPeople)
loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/bright/main/README.md"))()
end)

Misc:AddButton("Spy Chat", function(IhateGayPeople)
loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/spychat/main/README.md"))()
end)

Misc:AddButton("Invisible Mask", function(IhateGayPeople)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/Mask/main/README.md"))()
end)

Misc:AddButton("Trash Talk (J)", function(IhateGayPeople)
    loadstring(game:HttpGet("https://pastebin.com/raw/iKawVrzZ"))()
end)

Misc:AddButton("Animation Pack", function(IhateGayPeople)
loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/Animation-PACK/main/README.md"))()
end)

Combat:AddButton("God Mode", function(IhateGayPeople)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/god-mode/main/README.md"))()
end)

Combat:AddButton("God Bullet", function(IhateGayPeople)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/godbullet/main/README.md"))()
end)

Combat:AddButton("Force Rest",function(IhateGayPeople)
     for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v:Destroy()
        end
    end
end)

Misc:AddButton("Fake Marco (Z)", function(IhateGayPeople)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/fake/main/README.md"))()
end)

Combat:AddButton("Anti Bag",function(IhateGayPeople)
    local LP = game.Players.LocalPlayer;
for i,v in ipairs(LP.Character:GetDescendants()) do
if v.Name == "Christmas_Sock" then v:Destroy()
end;
end;
            
LP.Character.ChildAdded:Connect(function()
for i,v in ipairs(LP.Character:GetDescendants()) do
 if v.Name == "Christmas_Sock" then v:Destroy()
end;
end;
end);
end)

Combat:AddButton("Free Fists", function(IhateGayPeople)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bobobexz/free2/main/README.md"))()
end)

Combat:AddToggle("Anti Slow", false, function(Anti)
    if Anti == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
        end)
    elseif Anti == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
    end
    end)
    

    Combat:AddToggle("Reach", false, function(value)
        if value == true then
            game:GetService('RunService'):BindToRenderStep("Reach", 0 , function(value)
                local success, err = pcall(function()
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        elseif value == false then
            game:GetService('RunService'):UnbindFromRenderStep("Reach")
        end
    
    end)



    Combat:AddToggle("Auto Stomp", false, function(value)
        if value == true then
            game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
            end)
        elseif value == false then
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
        end
    end)

 Combat:AddToggle("Anti Fling", false, function(value)
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = value
    end)

getgenv().SpinBotSpeed = 20

Combat:AddToggle("Spin Bot", false, function(state)
    function getRoot(char)
                local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('UpperTorso')
                return rootPart
            end

            if state == true then
                local Spin = Instance.new("BodyAngularVelocity")
                Spin.Name = "Spinning"
                Spin.Parent = getRoot(game.Players.LocalPlayer.Character)
                Spin.MaxTorque = Vector3.new(0, math.huge, 0)
                Spin.AngularVelocity = Vector3.new(0,getgenv().SpinBotSpeed,0)
            else
                for i,v in pairs(getRoot(game.Players.LocalPlayer.Character):GetChildren()) do
                    if v.Name == "Spinning" then
                        v:Destroy()
                    end
                end
            end
        end)

Combat:AddSlider("Spin Speed", 1, 20, 50, 1, function(value)
getgenv().SpinBotSpeed = value
end)


    AutoBuy:AddButton("Revolver", function(IhateGayPeople)
    local plr = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[Revolver] - $1300"]
    local savedsilencerpos = plr.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)

    fireclickdetector(game.Workspace.Ignored.Shop["[Revolver] - $1300"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[Revolver] - $1300"].ClickDetector)

       plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end)

       AutoBuy:AddButton("Revolver Ammo", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["12 [Revolver Ammo] - $75"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["12 [Revolver Ammo] - $75"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["12 [Revolver Ammo] - $75"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("Double Barrel", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("Double Barrel Ammo", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)


        AutoBuy:AddButton("Shotgun", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Shotgun] - $1250"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[Shotgun] - $1250"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Shotgun] - $1250"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("Shotgun Ammo", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["20 [Shotgun Ammo] - $60"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("SMG", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("SMG Ammo", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("AR", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[AR] - $1000"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[AR] - $1000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[AR] - $1000"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

        AutoBuy:AddButton("AR Ammo", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["100 [AR Ammo] - $75"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["100 [AR Ammo] - $75"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["100 [AR Ammo] - $75"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)



        AutoBuy:AddButton("High-Medium Armor", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

       AutoBuy:AddButton("[Medium Armor] - $1600", function(IhateGayPeople)
        local plr = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Medium Armor] - $1600"]
        local savedsilencerpos = plr.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)

        fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1600"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1600"].ClickDetector)

        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end)

Teleport:AddButton("Church", function(IhateGayPeople)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.299988, 18.8493252, 31.7999744, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Teleport:AddButton("Admin Base", function(IhateGayPeople)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872.853516, -34.4276848, -538.013306, -0.999724388, -3.9898886e-08, -0.0234765243, -3.9204977e-08, 1, -3.00177518e-08, 0.0234765243, -2.90890814e-08, -0.999724388)
end)
  
Teleport:AddButton("Admin Guns", function(IhateGayPeople)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-808.708557, -39.6492004, -932.789368, 0.999899805, 2.01343173e-08, -0.0141554065, -2.17800533e-08, 1, -1.16108232e-07, 0.0141554065, 1.16404912e-07, 0.999899805)
end)

Teleport:AddButton("Admin Guns", function(IhateGayPeople)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872.853516, -34.4276848, -538.013306, -0.999724388, -3.9898886e-08, -0.0234765243, -3.9204977e-08, 1, -3.00177518e-08, 0.0234765243, -2.90890814e-08, -0.999724388)
end)

Teleport:AddButton("Admin Food", function(IhateGayPeople)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-788.053406, -39.6492004, -932.951233, 0.998369277, 2.46515359e-08, 0.0570784509, -2.8773524e-08, 1, 7.13949646e-08, -0.0570784509, -7.29209759e-08, 0.998369277)
end)

Teleport:AddButton("Ufo", function(IhateGayPeople)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.85052466, 132, -736.571106, -0.0460956171, -4.24733706e-08, -0.998937011, 7.26012459e-08, 1, -4.58687275e-08, 0.998937011, -7.46384217e-08, -0.0460956171)
end)

Teleport:AddButton("Casino", function(IhateGayPeople)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Teleport:AddButton("Bank", function(IhateGayPeople)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.891174, 80.2145309, -257.177429, 0.0479469746, -5.14644114e-08, 0.998850107, -3.12971538e-09, 1, 5.16738901e-08, -0.998850107, -5.60372015e-09, 0.0479469746)
end)

Teleport:AddButton("Taco", function(IhateGayPeople)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584.026855, 48.1605072, -474.033936, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Aim:AddToggle("Enabled", false, function(state)
    Aiming.Enabled = state
end)

Aim:AddToggle("Wall Check", false, function(state)
    Aiming.VisibleCheck = state
end)

Aim:AddToggle("Show Fov", false, function(state)
 Aiming.ShowFOV = state 
end)

Aim:AddSlider("HitChance", 0, 100, 100, 1, function(state)
Aiming.HitChance = state
end)

Aim:AddSlider("Draw Fov", 0, 60, 100, 1, function(state)
Aiming.FOV = state
end)

Aim:AddSlider("Fov Sides", 1, 70, 70, 1, function(state)
Aiming.FOVSides = state
end)

Aim:AddDropdown("AimPart", {"Head", "HumanoidRootPart", "UpperTorso", "LeftFoot", "LowerTorso"}, "Head",  true, function(dropdown)
    Aiming.TargetPart = dropdown
end)

local ColorToggle = Aim:AddToggle("ColorPicker w/Toggle", false, function(state)

end)

ColorToggle:AddColorpicker(Color3.fromRGB(255, 255,255), function(state)
Aiming.FOVColour = state
end)

local ToggleBind = Aim:AddToggle("Keybind w/Toggle", false, function(state)

end)

ToggleBind:AddKeybind()

Aim:CreateConfigSystem("right") --this is the config system