local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mapple7777/UI-Librarys/main/UI-1/UI.lua"))()


local Window = Library:Create("Maine Lock","Da hood")
local Tab1 = Window:Tab("Aimlocks",true)

Tab1:Label("Aimlock")

Tab1:Button("Main Aimlock",function(bool)
    getgenv().AimPart = "HumanoidRootPart"
 getgenv().AimlockKey = "q"
 getgenv().AimRadius = 30
 getgenv().ThirdPerson = true
 getgenv().FirstPerson = true
 getgenv().TeamCheck = false
 getgenv().PredictMovement = true
 getgenv().PredictionVelocity = 6
 local L_27_, L_28_, L_29_, L_30_ =
            game:GetService "Players",
            game:GetService "UserInputService",
            game:GetService "RunService",
            game:GetService "StarterGui"
 local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
            L_27_.LocalPlayer,
            L_27_.LocalPlayer:GetMouse(),
            workspace.CurrentCamera,
            CFrame.new,
            Ray.new,
            Vector3.new,
            Vector2.new
 local L_38_, L_39_, L_40_ = true, false, false
 local L_41_
 getgenv().CiazwareUniversalAimbotLoaded = true
 getgenv().WorldToViewportPoint = function(L_42_arg0)
  return L_33_:WorldToViewportPoint(L_42_arg0)
 end
 getgenv().WorldToScreenPoint = function(L_43_arg0)
  return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
 end
 getgenv().GetObscuringObjects = function(L_44_arg0)
  if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and L_31_.Character:FindFirstChild("Head") then
   local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position, L_31_.Character.Head.Position))
   if L_45_ then
    return L_45_:IsDescendantOf(L_44_arg0)
   end
  end
 end
 getgenv().GetNearestTarget = function()
  local L_46_ = {}
  local L_47_ = {}
  local L_48_ = {}
  for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
   if L_51_forvar1 ~= L_31_ then
    table.insert(L_46_, L_51_forvar1)
   end
  end
  for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
   if L_53_forvar1.Character ~= nil then
    local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
    if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
     local L_55_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
     local L_56_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
                        )
     local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
     local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
     L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
     L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
     L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
     L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
     table.insert(L_48_, L_59_)
    elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
     local L_60_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
     local L_61_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
                        )
     local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
     local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
     L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
     L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
     L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
     L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
     table.insert(L_48_, L_64_)
    end
   end
  end
  if unpack(L_48_) == nil then
   return nil
  end
  local L_49_ = math.floor(math.min(unpack(L_48_)))
  if L_49_ > getgenv().AimRadius then
   return nil
  end
  for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
   if L_66_forvar1.diff == L_49_ then
    return L_66_forvar1.plr
   end
  end
  return nil
 end
 L_32_.KeyDown:Connect(
            function(L_67_arg0)
  if L_67_arg0 == AimlockKey and L_41_ == nil then
   pcall(
                        function()
    if L_39_ ~= true then
     L_39_ = true
    end
    local L_68_
    L_68_ = GetNearestTarget()
    if L_68_ ~= nil then
     L_41_ = L_68_
    end
   end
                    )
  elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
   if L_41_ ~= nil then
    L_41_ = nil
   end
   if L_39_ ~= false then
    L_39_ = false
   end
  end
 end
        )
 L_29_.RenderStepped:Connect(
            function()
  if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
   if
                        (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
                            (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
                     then
    L_40_ = true
   else
    L_40_ = false
   end
  elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
   if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
    L_40_ = true
   else
    L_40_ = false
   end
  elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
   if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
    L_40_ = true
   else
    L_40_ = false
   end
  end
  if L_38_ == true and L_39_ == true then
   if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
    if getgenv().FirstPerson == true then
     if L_40_ == true then
      if getgenv().PredictMovement == true then
       L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
      elseif getgenv().PredictMovement == false then
       L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
      end
     end
    elseif getgenv().ThirdPerson == true then
     if L_40_ == true then
      if getgenv().PredictMovement == true then
       L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
      elseif getgenv().PredictMovement == false then
       L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
      end
     end
    end
   end
  end
 end
        )
end)

Tab1:Textbox("Aimlock Keybind","Q",function(bool)
    getgenv().AimlockKey = bool
end)

Tab1:Textbox("AimLock Prediction","6",function(bool)
    PredictionVelocity = bool
end)

Tab1:Dropdown("AimPart",{"Head","HumanoidRootPart","UpperTorso","LowerTorso"},function(value)
    getgenv().AimPart = value
end)

local Tab2 = Window:Tab("Silent Aim",false)

Tab2:Toggle("Toggle Silent Aim",function(bool)
    DaHoodSettings.SilentAim = bool
end)

Tab2:Toggle("Toggle FOV",function(bool)
    Aiming.ShowFOV = bool
end)

Tab2:Slider("FOV Size",0,200,function(bool)
    Aiming.FOV = bool
end)

Tab2:Textbox("Silent Aim Prediction","0.157",function(bool)
    DaHoodSettings.Prediction = bool
end)

Tab2:Dropdown("Silent Aim Part",{"Head","HumanoidRootPart","UpperTorso","LowerTorso"},function(value)
    Aiming.AimPart = value
end)

local Tab3 = Window:Tab("Player",false)

Tab3:Label("Player Scripts")

game.StarterGui:SetCore("SendNotification", {
    Title = "Maine Lock";
    Text = "Welcome";
    Icon = "RBXID OR BLANK";
    Duration = "DURATION IN SECONDS";
    callbakc = bindableFunction;
    Button1 = "Okay";
})

Tab3:Button("Realistic Speed Glitch (V)",function(bool)
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "v" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end)

Tab3:Button("FLY (X)",function(bool)
    loadstring(game:HttpGet("https://pastebin.com/raw/sUA9m6M6"))()
end)

Tab3:Slider("Fov Camera",80,200,function(text)
    workspace.CurrentCamera.FieldOfView = (text)
end)

Tab3:Button("Tryhard Anims",function(bool)
    while true do
        wait(1)
        for i, player in ipairs(game.Players:GetChildren()) do
        local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    game.Players.LocalPlayer.Character.Humanoid.Jump = false
        end
    end
end)

Tab3:Button("Headless Client Sided",function(bool)
    getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1
    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
end)

Tab3:Button("Korblox Client Sided",function(bool)
 local ply = game.Players.LocalPlayer
 local chr = ply.Character
 chr.RightLowerLeg.MeshId = "902942093"
 chr.RightLowerLeg.Transparency = "1"
 chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
 chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
 chr.RightFoot.MeshId = "902942089"
 chr.RightFoot.Transparency = "1"
end)

Tab3:Button("Trash Talk (J)",function(bool)
    local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "sonney boy";
    "ez";
    "my grandma has more skill than you";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "LMAO";
    "imagine being you right now";
    "xd";
    "don't try LOL";
    "you lose";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "so sad man.";
    "bad";
    "you're nothing";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "run 1s seed";
    "thank you for your time";
    "you were so close!";
    "better luck next time!";
    "rodent";
    "HAHA";
    "ill 5-0";
    "just quit";
    "time to take out the trash";
    "did you get worse?";
    "I'm surprised you haven't quit yet";











}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)

local Tab4 = Window:Tab("Anti-Lock",false)

Tab4:Label("Anti-Lock")

Tab4:Button("FIX ANTILOCK",function(bool)
  
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                wait(0.1)
                if child:FindFirstChild("LocalScript") then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)

end)

local glitch = false
local clicker = false

Tab4:Textbox("AntiLock (use -0.10 to -0.60)","Speed",function(a)
  
    getgenv().Multiplier = a

end, {
    ["clear"] = false,
})

Tab4:Button("Antilock Improved (Z)",function(bool)
    local userInput = game:service('UserInputService')
    local runService = game:service('RunService')
    
    userInput.InputBegan:connect(function(Key)
        if Key.KeyCode == Enum.KeyCode.Z then
            Enabled = not Enabled
            if Enabled == true then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                    runService.Stepped:wait()
                until Enabled == false
            end
        end
    end)
end)

local Tab5 = Window:Tab("Teleports",false)

Tab5:Label("Teleports")

Tab5:Button("Double Barrel",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab5:Button("Revolver",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab5:Button("Shotgun",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Tab5:Button("Tactical Shotgun",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end)

Tab5:Button("Smg",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab5:Button("RPG",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end)

Tab5:Button("Armor",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
end)

Tab5:Button("PopCorn",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tab5:Button("Casino 1v1",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end)

Tab5:Button("Bank",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end)

Tab5:Button("Main Food",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
end)

local Tab6 = Window:Tab("Keybind",false)

Tab6:Label("Keybind")

Tab6:Keybind("Toggle",Enum.KeyCode.V,function()
    Library:Toggle()
end)

local Tab7 = Window:Tab("Credits",false)

Tab7:Label("creator: known.#0001, mental support: My amazing gf ")

local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/vsVecTqs"))()
Aiming.TeamCheck(false)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.157,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings

function Aiming.Check()
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    if (KOd or Grabbed) then
        return false
    end

    return true
end

local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        local SelectedPart = Aiming.SelectedPart

        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    return __index(t, k)
end)

RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
    end)