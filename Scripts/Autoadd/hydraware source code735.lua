

loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Toggle("Toggle Silent Aim (FIXED) ", function(a)
  DaHoodSettings.SilentAim = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Toggle("Toggle FOV", function(a)
  Aiming.ShowFOV = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Toggle("Toggle Visiblility Check", function(a)
  Aiming.VisibleCheck = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Slider("FOV Size", 0, 200, function(a)
  Aiming.FOV = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Textbox("Prediction 0.165-0.235", "0.157", function(a)
  DaHoodSettings.Prediction = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Aiming", true):Dropdown("Silent Aim Part", {
  "Head",
  "HumanoidRootPart",
  "UpperTorso"
}, function(a)
  Aiming.AimPart = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Label("Player Scripts")
game.StarterGui:SetCore("SendNotification", {
  Title = "HydraWare",
  Text = "You're Whitelisted",
  Icon = "RBXID OR BLANK",
  Duration = "DURATION IN SECONDS",
  callbakc = bindableFunction,
  Button1 = "Okay"
})
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("Speed Glitch (Q)", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/QW5Whap9"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("Realistic Speed Glitch (X)", function(a)
  function stopTracks()
    for fd, fe in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
      if fe.Animation.AnimationId:match("rbxassetid") then
        fe:Stop()
      end
    end
  end
  function loadAnimation(a)
    if va.AnimationId == a then
      stopTracks()
      va.AnimationId = "1"
    else
      va.AnimationId = a
      game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(va):Play()
    end
  end
  game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(a)
    if a == "x" then
      va = not va
      if va == true then
        stopTracks()
        loadAnimation("rbxassetid://3189777795")
        wait(1.5)
        vb.Parent = vc.Character
        wait(0.15)
        vc.Character:FindFirstChild("Wallet").Parent = vc.Backpack
        wait(0.05)
        repeat
          game:GetService("RunService").Heartbeat:wait()
          keypress(73)
          game:GetService("RunService").Heartbeat:wait()
          keypress(79)
          game:GetService("RunService").Heartbeat:wait()
          keyrelease(73)
          game:GetService("RunService").Heartbeat:wait()
          keyrelease(79)
          game:GetService("RunService").Heartbeat:wait()
        until va == false
      end
    end
  end)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("FLY (X)", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/sUA9m6M6"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Slider("Fov Camera", 80, 200, function(a)
  workspace.CurrentCamera.FieldOfView = a
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("Headless Client Sided", function(a)
  getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1
  getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
  getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("Korblox Client Sided Right Leg", function(a)
  game.Players.LocalPlayer.Character.RightLowerLeg.MeshId = "902942093"
  game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = "1"
  game.Players.LocalPlayer.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
  game.Players.LocalPlayer.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
  game.Players.LocalPlayer.Character.RightFoot.MeshId = "902942089"
  game.Players.LocalPlayer.Character.RightFoot.Transparency = "1"
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Player", false):Button("Trash Talk (J)", function(a)
  repeat
    wait()
  until not game.Players.LocalPlayer
  function TrashTalk(a, j)
    if a.KeyCode == Enum.KeyCode.J and j == false then
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(va[math.random(1, #va)], "All")
    end
  end
  game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():CreateSec-hub ", "dsc.gg/hydraware :)"):Tab("Animations", false):Label("Animations (More Coming Soon)")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Animations", false):Button("Sweat Animation", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/kbpc43dd"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Animations", false):Button("Barbie", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/aEcsXZNf"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Anti-Lock", false):Label("Anti-Lock")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Anti-Lock", false):Button("FIX ANTILOCK", function(a)
  for fe, fg in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if not pairs(game.Players.LocalPlayer.Character:GetChildren()) and fg.Name ~= "Health" and fg.Name ~= "Sound" and fg:FindFirstChild("LocalScript") then
      fg:Destroy()
    end
  end
  game.Players.LocalPlayer.CharacterAdded:Connect(function(a)
    repeat
      wait()
    until not a
    a.ChildAdded:Connect(function(a)
      if not a then
        wait(0.1)
        if a:FindFirstChild("LocalScript") then
          a.LocalScript:FireServer()
        end
      end
    end)
  end)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Anti-Lock", false):Textbox("AntiLock (use -0.10 to -0.60)", "Speed", function(a)
  getgenv().Multiplier = a
end, {clear = false})
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("Sec-hub ", "dsc.gg/hydraware :)"):Tab("Anti-Lock", false):Button("Antilock Improved (Z)", function(a)
  game:service("UserInputService").InputBegan:connect(function(a)
    if a.KeyCode == Enum.KeyCode.Z then
      Enabled = not Enabled
      if Enabled == true then
        repeat
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 2 + 3
          va.Stepped:wait()
        until Enabled == false
      end
    end
  end)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Misc", false):Label("Misc")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Misc", false):Button("RobloxEmoteChanger", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/8GQ3vigb"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Misc", false):Button("RemoveSnow", function(a)
  loadstring(game:HttpGet("https://pastebin.com/raw/QiNan26f"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Misc", false):Toggle("FPS-CHECKER", function(a)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Arth795-scripts/Luashit/main/fps"))()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Label("Teleports")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Double Barrel", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Revolver", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Shotgun", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, 0, -1, 0, 0)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Tactical Shotgun", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135E-08, -0.000604254019, 0.999999821, -8.63220048E-05, -2.60802135E-08, 8.63220048E-05, 1)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Admin Base", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-793.516602, -39.4243698, -884.461304, 0.0423326567, 0.0423326567, -6.6053758E-08, 0.999103546, -2.02919033E-08, 1, 6.9728024E-08, -999103546, -2.31088499E-08, 0.0423326567)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Smg", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("RPG", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448E-08, 2.91038305E-11, 1, -0.000610388815, 0.999999821, 2.91038305E-11, -0.999999762, -0.000610388815, 5.96046448E-08)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Armor", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929E-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929E-07)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("PopCorn", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Casino 1v1", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949E-05, 0.999621451, -5.5798846E-06, 1, -2.92823333E-05, -0.999621451, -6.38268148E-06, -0.0274876002)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Bank", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026E-05, 1, -0.000121808866, 0.999872506, 2.79565484E-05, 0.0159681737)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Teleports", false):Button("Main Food", function(a)
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984E-08, -0.999981582, -1.61653102E-09, 1, -1.03306892E-08, 0.999981582, 1.55389912E-09, -0.0060598203)
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Keybind", false):Label("Keybind")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Keybind", false):Keybind("Toggle", Enum.KeyCode.RightShift, function()
  va:Toggle()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Credits", false):Label("Efial#5338,grave#7264")
loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))():Create("HydraWare ", "dsc.gg/hydraware :)"):Tab("Credits", false):Button("Close Gui", function(a)
  va:close()
end)
loadstring(game:HttpGet("https://pastebin.com/raw/Q4N1CPVf"))().TeamCheck(false)
getgenv().DaHoodSettings = {
  SilentAim = true,
  AimLock = false,
  Prediction = 0.157,
  AimLockKeybind = Enum.KeyCode.E
}
loadstring(game:HttpGet("https://pastebin.com/raw/Q4N1CPVf"))().Check = function()
  if va.Enabled ~= true or va.Selected == vb or va.SelectedPart == nil then
    return false
  end
  if va.Character(va.Selected):WaitForChild("BodyEffects")["K.O"].Value or not va.Character(va.Selected):WaitForChild("BodyEffects")["K.O"].Value then
    return false
  end
  return true
end
game:GetService("RunService"):BindToRenderStep("AimLock", 0, function()
  if va.AimLock and vb.Check() and not vc then
    vd.CFrame = CFrame.lookAt(vd.CFrame.Position, 1 + 2.Position)
  end
end)
if loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))() and loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))() and loadstring(game:HttpGet("https://pastebin.com/raw/gP5kgR6Y"))() then
end