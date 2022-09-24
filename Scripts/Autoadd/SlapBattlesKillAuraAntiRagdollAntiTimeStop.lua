local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("by Thwartedbrute#5028 & dizy#5334")

local tab1 = w:CreateFolder("Combat")
local tab2 = w:CreateFolder("Visuals")
local tab3 = w:CreateFolder("Misc")

local LocalPlayer = game:GetService("Players").LocalPlayer;
local debounce = false;
local ragdoll_debounce = false;
local ragdoll_debounce_1 = 0;

_G.InfTimestop = false;
_G.PickUpGifts = false;
_G.GiftsEsp = false;
_G.GColor = Color3.fromRGB(111, 255, 0);
_G.HandleEsp = false;
_G.HColor = Color3.fromRGB(0, 166, 255);
_G.SizeOverride = false;
_G.PreventRagdoll = false;
_G.AntiChase = false;
_G.SpamRadio = false;
_G.RemoveColorCorrection = false;
_G.KillAura = false;
_G.KADelay = nil;
_G.AntiTimestop = false;
_G.AdminNotifier = false;

tab1:Toggle("Killaura",function(bool)
    shared.toggle = bool;
    _G.KillAura = bool;
end)

tab1:Slider("Hit Delay",{
    min = 0;
    max = 5;
    precise = true;
},function(value)
    _G.KADelay = value;
end)

tab1:Toggle("Loop Timestop",function(bool)
    shared.toggle = bool;
    _G.InfTimestop = bool;
end)

tab1:Toggle("Anti Ragdoll",function(bool)
    shared.toggle = bool;
    _G.PreventRagdoll = bool;
end)

tab1:Toggle("Anti Chase",function(bool)
    shared.toggle = bool;
    _G.AntiChase = bool;
end)

tab1:Toggle("Anti Timestop",function(bool)
    shared.toggle = bool;
    _G.AntiTimestop = bool;
end)

tab1:Toggle("Glove Reach",function(bool)
    shared.toggle = bool;
    _G.SizeOverride = bool;
end)

tab2:Toggle("Gifts ESP",function(bool)
    shared.toggle = bool;
    _G.GiftsEsp = bool;
end)

tab2:ColorPicker("Gift Color",_G.GColor,function(color) --Default color
    _G.GColor = color;
end)

tab2:Toggle("Reach ESP",function(bool)
    shared.toggle = bool;
    _G.HandleEsp = bool;
end)

tab2:ColorPicker("Reach Color",_G.HColor,function(color) --Default color
    _G.HColor = color;
end)

tab2:Toggle("Hide Visuals",function(bool)
    shared.toggle = bool;
    _G.RemoveColorCorrection = bool;
end)

tab2:Toggle("Leave on Admin's join",function(bool)
    shared.toggle = bool;
    _G.AdminNotifier = bool;
end)

tab3:Toggle("Pick Up Gifts",function(bool)
    shared.toggle = bool;
    _G.PickUpGifts = bool;
end)

tab3:Toggle("Spam Radio",function(bool)
    shared.toggle = bool;
    _G.SpamRadio = bool;
end)

tab3:Bind("Force Timestop",Enum.KeyCode.X,function()
    game:GetService("ReplicatedStorage").TimestopJump:FireServer();
    game:GetService("ReplicatedStorage").Timestopchoir:FireServer();
    game:GetService("ReplicatedStorage").Timestop:FireServer();
end)

tab3:Bind("Force Invisibility",Enum.KeyCode.Z,function()
    game:GetService("ReplicatedStorage").Ghostinvisibilitydeactivated:FireServer();
    game:GetService("ReplicatedStorage").Ghostinvisibilityactivated:FireServer();
end)

tab3:Bind("Force Mail",Enum.KeyCode.E,function()
    game:GetService("ReplicatedStorage").MailSend:FireServer();
end)

tab3:Button("Duck Badge",function()
    fireclickdetector(game:GetService("Workspace")["Arena"]["default island"]["Rubber Ducky"].ClickDetector);
end)

tab3:Button("Court Evidence Badge", function()
    fireclickdetector(game:GetService("Workspace")["Lobby"]["Scene"]["knofe"].ClickDetector);
end)

tab3:Button("Brazil Badge", function()
    firetouchinterest(game:GetService("Workspace")["Lobby"]["brazil"]["portal"]);
end)

tab3:Button("Obama Glove Badge", function()
    fireclickdetector(game:GetService("Workspace")["Lobby"]["Obama"].ClickDetector);
end)

tab3:Button("TP to Arena", function()
    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(38, 0, 60);
end)

tab3:Button("TP to Lobby", function()
    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-339.448792, 324.929474, -1.96081245);
end)

game:GetService("RunService").Heartbeat:Connect(function()
    spawn(function()
        if _G.InfTimestop then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                if LocalPlayer.Character.isInArena.Value == true and game:GetService("Workspace"):FindFirstChild("universaltimestop") == nil then
                    game:GetService("ReplicatedStorage").TimestopJump:FireServer();
                    game:GetService("ReplicatedStorage").Timestopchoir:FireServer();
                    game:GetService("ReplicatedStorage").Timestop:FireServer();
                end
            end
        end
    end)

    spawn(function()
        if _G.HandleEsp then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                for _,v in pairs(LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if not v:FindFirstChildOfClass("BoxHandleAdornment") then
                                local box = Instance.new("BoxHandleAdornment", v);
                                box.Adornee = v:FindFirstChild("Glove");
                                box.Size = v:FindFirstChild("Glove").Size;
                                box.AlwaysOnTop = true;
                                box.Transparency = 0.7;
                                box.Color3 = _G.HColor;
                            elseif v:FindFirstChildOfClass("BoxHandleAdornment") ~= nil then
                                if v:FindFirstChildOfClass("BoxHandleAdornment").Size ~= v:FindFirstChild("Glove").Size then
                                    v:FindFirstChildOfClass("BoxHandleAdornment"):Destroy();
                                end
                            end
                        end
                    end
                end
            end
        elseif not _G.HandleEsp then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                for _,v in pairs(LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if v:FindFirstChildOfClass("BoxHandleAdornment") ~= nil then
                                v:FindFirstChildOfClass("BoxHandleAdornment"):Destroy();
                            end
                        end
                    end
                end
            end
        end
    end)

    spawn(function()
        if _G.SizeOverride then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                for _,v in pairs(LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v.Name ~= "Radio" then
                        if v:FindFirstChild("Glove") ~= nil then
                            if v:FindFirstChild("Glove"):FindFirstChildOfClass("Texture") then v:FindFirstChild("Glove"):FindFirstChildOfClass("Texture"):Destroy() end
                            v:FindFirstChild("Glove").Size = Vector3.new(50.5, 30.5, 30.7);
                            v:FindFirstChild("Glove").Transparency = 1;
                        end
                    end
                end
            end
        end
    end)

    pcall(function()
        if _G.PreventRagdoll then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                if LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand == true then LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false; end
                if LocalPlayer.Character:WaitForChild("Ragdolled") ~= nil then
                    if LocalPlayer.Character:WaitForChild("Ragdolled").Value == false then hum_cframe = LocalPlayer.Character:FindFirstChild("Torso").CFrame; end
                    if ragdoll_debounce == true then if ragdoll_debounce_1 < 6 then LocalPlayer.Character:FindFirstChild("Torso").CFrame = hum_cframe; ragdoll_debounce = false; elseif ragdoll_debounce_1 == 6 then ragdoll_debounce_1 = 0; ragdoll_debounce = false; end end
                    if LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
                        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
                        LocalPlayer.Character:FindFirstChild("Head").Anchored = true;
                        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = true;
                        LocalPlayer.Character:FindFirstChild("Torso").Anchored = true;
                        --LocalPlayer.Character:FindFirstChild("Torso").CFrame = hum_cframe;
                        ragdoll_debounce = true;
                        for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                            if v.Name == "Head" or v.Name == "Torso" or v.Name == "Left Arm" or v.Name == "Right Arm" or v.Name == "Left Leg" or v.Name == "Right Leg" or v.Name == "HumanoidRootPart" or v.Name == "Torso" then
                                for _,r in pairs(v:GetChildren()) do
                                    if r:IsA("BallSocketConstrait") or r:IsA("BodyVelocity") or r:IsA("BodyAngularVelocity") then
                                        r:Destroy();
                                    elseif r:IsA("Attachment") then
                                        if r.Name == "a0" or r.Name == "a1" or r.Name == "torsoweld" then
                                            r:Destroy();
                                        end
                                    end
                                end
                            elseif string.sub(v.Name, 0, 8) == "FakePart" then
                                v.Anchored = true;
                                v.CanCollide = false;
                            elseif v.Name == "Icecube" then
                                LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
                                v:Destroy();
                            end
                        end
                    elseif LocalPlayer.Character:WaitForChild("Ragdolled").Value == false then
                        LocalPlayer.Character:FindFirstChild("Head").Anchored = false;
                        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Anchored = false;
                        LocalPlayer.Character:FindFirstChild("Torso").Anchored = false;
                    end
                end
            end
        end
    end)

    spawn(function()
        if _G.SpamRadio then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                if LocalPlayer.Backpack:FindFirstChild("Radio") ~= nil then
                    LocalPlayer.Backpack:FindFirstChild("Radio")["Handle"]["Sound"]["ID"].Value = 5361902748;
                    LocalPlayer.Backpack:FindFirstChild("Radio").Parent = LocalPlayer.Character;
                elseif LocalPlayer.Character:FindFirstChild("Radio") ~= nil then
                    LocalPlayer.Character:FindFirstChild("Radio")["Handle"]["Sound"]["ID"].Value = 5361902748;
                    LocalPlayer.Character:FindFirstChild("Radio"):Activate();
                    LocalPlayer.Character:FindFirstChild("Radio").Parent = LocalPlayer.Backpack;
                end
            end
        end
    end)

    spawn(function()
        if _G.AntiChase then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                if LocalPlayer.Character:FindFirstChild("CHASED") or LocalPlayer.Character:FindFirstChild("CHASE")  then
                    for _,v in pairs(LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Part") or v:IsA("MeshPart") then
                            v.Anchored = false;
                        elseif v:IsA("BoolValue") and v.Name == "Ragdolled" then
                            v.Value = false;
                        end
                    end
                end
            end
        end
    end)

    pcall(function()
        if _G.AntiTimestop then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character:WaitForChild("Torso").Transparency == 0 then
                if game:GetService("Workspace"):FindFirstChild("universaltimestop") ~= nil then
                    LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
                    LocalPlayer.Character:FindFirstChild("TSVulnerability").Value = false;
                    for _,v in pairs(LocalPlayer.Character:GetChildren()) do
                        if v:IsA("MeshPart") or v:IsA("Part") then
                            v.Anchored = false;
                        end
                    end
                elseif not game:GetService("Workspace"):FindFirstChild("universaltimestop") then
                    LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
                    LocalPlayer.Character:FindFirstChild("TSVulnerability").Value = true;
                end
            end
        end
    end)

    spawn(function()
        if _G.RemoveColorCorrection then
            if game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect") then
                game:GetService("Lighting"):FindFirstChildOfClass("ColorCorrectionEffect"):Destroy();
            end
               
            for _,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
                if v.Name == "VineThudImageScreenGUI" or v.Name == "MailPopup" or v.Name == "MittenBlind" then 
                    v:Destroy();
                end
            end

            for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
                if p.Name == "wall" or p.Name == "BusModel" then
                    p.CanCollide = false;
                    p.CanTouch = false;
                    p.Transparency = 0.8;
                end
            end
                    
            for _,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Character:FindFirstChild("rock") then
                    v.Character:FindFirstChild("rock").CanTouch = false;
                    v.Character:FindFirstChild("rock").CanCollide = false;
                end
            end
        end
    end)

    pcall(function()
        if _G.KillAura then
            for _,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Name ~= LocalPlayer.Name then
                    if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and not debounce and LocalPlayer.Character.isInArena ~= nil and LocalPlayer.Character.isInArena.Value == true then 
                        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Character:FindFirstChild("Torso").Transparency == 0 and v.Character:FindFirstChild("rock") == nil then
                            if (LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position-v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 30 then
                                if LocalPlayer.Character:FindFirstChild("Diamond") then
                                    LocalPlayer.Character:FindFirstChild("Diamond"):Activate();
                                    game:GetService("ReplicatedStorage").DiamondHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Extended") then
                                    LocalPlayer.Character:FindFirstChild("Extended"):Activate();
                                    game:GetService("ReplicatedStorage").ExtendedHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Brick") then
                                    LocalPlayer.Character:FindFirstChild("Brick"):Activate();
                                    game:GetService("ReplicatedStorage").BrickHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Snow") then
                                    LocalPlayer.Character:FindFirstChild("Snow"):Activate();
                                    game:GetService("ReplicatedStorage").SnowHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Flash") then
                                    LocalPlayer.Character:FindFirstChild("Flash"):Activate();
                                    game:GetService("ReplicatedStorage").FlashHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Swapper") then
                                    LocalPlayer.Character:FindFirstChild("Swapper"):Activate();
                                    game:GetService("ReplicatedStorage").SwapperHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Bull") then
                                    LocalPlayer.Character:FindFirstChild("Bull"):Activate();
                                    game:GetService("ReplicatedStorage").BullHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Dice") then
                                    LocalPlayer.Character:FindFirstChild("Dice"):Activate();
                                    game:GetService("ReplicatedStorage").DiceHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Ghost") then
                                    LocalPlayer.Character:FindFirstChild("Ghost"):Activate();
                                    game:GetService("ReplicatedStorage").GhostHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Thanos") then
                                    LocalPlayer.Character:FindFirstChild("Thanos"):Activate();
                                    game:GetService("ReplicatedStorage").ThanosHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Stun") then
                                    LocalPlayer.Character:FindFirstChild("Stun"):Activate();
                                    game:GetService("ReplicatedStorage").HtStun:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("ãZA HANDOã") then
                                    LocalPlayer.Character:FindFirstChild("ãZA HANDOã"):Activate();
                                    game:GetService("ReplicatedStorage").zhramt:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Pusher") then
                                    LocalPlayer.Character:FindFirstChild("Pusher"):Activate();
                                    game:GetService("ReplicatedStorage").PusherHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Space") then
                                    LocalPlayer.Character:FindFirstChild("Space"):Activate();
                                    game:GetService("ReplicatedStorage").HtSpace:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Dream") then
                                    LocalPlayer.Character:FindFirstChild("Dream"):Activate();
                                    game:GetService("ReplicatedStorage").Dreamhit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Mail") then
                                    LocalPlayer.Character:FindFirstChild("Mail"):Activate();
                                    game:GetService("ReplicatedStorage").MailHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Golden") then
                                    LocalPlayer.Character:FindFirstChild("Golden"):Activate();
                                    game:GetService("ReplicatedStorage").GoldenHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Cheeky") then
                                    LocalPlayer.Character:FindFirstChild("Cheeky"):Activate();
                                    game:GetService("ReplicatedStorage").CheekyHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Reaper") then
                                    LocalPlayer.Character:FindFirstChild("Reaper"):Activate();
                                    game:GetService("ReplicatedStorage").ReaperHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Replica") then
                                    LocalPlayer.Character:FindFirstChild("Replica"):Activate();
                                    game:GetService("ReplicatedStorage").ReplicaHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Defense") then
                                    LocalPlayer.Character:FindFirstChild("Defense"):Activate();
                                    game:GetService("ReplicatedStorage").DefenseHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Killstreak") then
                                    local kills = string.sub(LocalPlayer.PlayerGui:FindFirstChild("Kills"):FindFirstChildOfClass("TextLabel").Text, 0, 7);
                                    LocalPlayer.Character:FindFirstChild("Killstreak"):Activate();
                                    game:GetService("ReplicatedStorage").KSHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"], kills);
                                elseif LocalPlayer.Character:FindFirstChild("Reverse") then
                                    LocalPlayer.Character:FindFirstChild("Reverse"):Activate();
                                    game:GetService("ReplicatedStorage").ReverseHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Shukuchi") then
                                    LocalPlayer.Character:FindFirstChild("Shukuchi"):Activate();
                                    game:GetService("ReplicatedStorage").ShukuchiHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Duelist") then
                                    LocalPlayer.Character:FindFirstChild("Duelist"):Activate();
                                    game:GetService("ReplicatedStorage").DuelistHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("woah") then
                                    LocalPlayer.Character:FindFirstChild("woah"):Activate();
                                    game:GetService("ReplicatedStorage").woahHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Ice") then
                                    LocalPlayer.Character:FindFirstChild("Ice"):Activate();
                                    game:GetService("ReplicatedStorage").IceHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Adios") then
                                    LocalPlayer.Character:FindFirstChild("Adios"):Activate();
                                    game:GetService("ReplicatedStorage").hitAdios:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("God's Hand") then
                                    LocalPlayer.Character:FindFirstChild("God's Hand"):Activate();
                                    game:GetService("ReplicatedStorage").Godshand:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("OVERKILL") then
                                    LocalPlayer.Character:FindFirstChild("OVERKILL"):Activate();
                                    game:GetService("ReplicatedStorage").Overkillhit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Acrobat") then
                                    LocalPlayer.Character:FindFirstChild("Acrobat"):Activate();
                                    game:GetService("ReplicatedStorage").AcHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("MEGAROCK") then
                                    LocalPlayer.Character:FindFirstChild("MEGAROCK"):Activate();
                                    game:GetService("ReplicatedStorage").DiamondHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Plague") then
                                    LocalPlayer.Character:FindFirstChild("Plague"):Activate();
                                    game:GetService("ReplicatedStorage").PlagueHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("Hallow Jack") then
                                    LocalPlayer.Character:FindFirstChild("Hallow Jack"):Activate();
                                    game:GetService("ReplicatedStorage").HallowHIT:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("[REDACTED]") then
                                    LocalPlayer.Character:FindFirstChild("[REDACTED]"):Activate();
                                    game:GetService("ReplicatedStorage").ReHit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("bus") then
                                    LocalPlayer.Character:FindFirstChild("bus"):Activate();
                                    game:GetService("ReplicatedStorage").hitbus:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                elseif LocalPlayer.Character:FindFirstChild("obama") then
                                    LocalPlayer.Character:FindFirstChild("obama"):Activate();
                                    game:GetService("ReplicatedStorage").Obamahit:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                end
                                debounce = true;
                                delay(_G.KADelay, function()
                                    debounce = false;
                                end)
                            elseif (LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position-v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 10 then
                                if LocalPlayer.Character:FindFirstChild("Default") then
                                    LocalPlayer.Character:FindFirstChild("Default"):Activate();
                                    game:GetService("ReplicatedStorage").b:FireServer(game:GetService("Workspace")[v.Name]["Right Arm"]);
                                end
                                debounce = true;
                                delay(_G.KADelay, function()
                                    debounce = false;
                                end)
                            end
                        end
                    end
                end
            end
        else
            if debounce then debounce = false; end
        end
    end)

    pcall(function()
        if _G.PickUpGifts then
            if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and LocalPlayer.Character.isInArena ~= nil and LocalPlayer.Character.isInArena.Value == true then
                for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == "Gift" and v.Transparency == 0 then
                        --firetouchinterest(LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v);
                        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame;
                    end
                end
            end
        end
    end)

    spawn(function()
        if _G.GiftsEsp then
            if LocalPlayer.Character ~= nil then
                for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == "Gift" and v:FindFirstChildOfClass("BoxHandleAdornment") == nil then
                        local box = Instance.new("BoxHandleAdornment", v);
                        box.Adornee = v;
                        box.Size = v.Size;
                        box.AlwaysOnTop = true;
                        box.Transparency = 0.6;
                        box.Color3 = _G.GColor;
                    end
                end
            end
        end
    end)
        
    pcall(function()
        if _G.AdminNotifier then
            if game:GetService("Players"):FindFirstChild("PimGameFreak") or game:GetService("Players"):FindFirstChild("buffwagon") or game:GetService("Players"):FindFirstChild("Astronaxtic") or game:GetService("Players"):FindFirstChild("Villadyne") or ame:GetService("Players"):FindFirstChild("undeadtaIIie") then
                LocalPlayer:Kick(" [dizy's script] Admin joined! Join on other server. ")
            end
        end
    end)
end)

Player = game.Players.LocalPlayer.Character.Name

workspace[Player].isInArena:Destroy()
wait()
workspace[Player].IsInDefaultArena:Destroy()
wait()
workspace[Player].Ragdolled:Destroy()