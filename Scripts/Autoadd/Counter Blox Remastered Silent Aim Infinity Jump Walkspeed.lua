getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Storm99999/RayfieldLibFix2/main/targetlib.lua'))()

local Window = Rayfield:CreateWindow({
 Name = "stormware | cb airlines | v2",
 LoadingTitle = "StormWare",
 LoadingSubtitle = "uehghhh",
})


Rayfield:Notify("stormware cb airlines","have fun booty muncher",10010348543)

local rage1 = Window:CreateTab("Rage")
local rage = rage1:CreateSection("Silent Aim")
local th = rage1:CreateSection("ThirdPerson")
local cammode = ""
local thP = rage1:CreateKeybind({
 Name = "ThirdPerson",
 CurrentKeybind = "T",
 HoldToInteract = false,
 Flag = "Thir", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Keybind)
  game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
        if game.Players.LocalPlayer.CameraMinZoomDistance == 10 then
            game.Players.LocalPlayer.CameraMinZoomDistance = .5    
        else
            game.Players.LocalPlayer.CameraMinZoomDistance = 10
        end
 end,
})
local thP2 = rage1:CreateKeybind({
 Name = "CameraMode",
 CurrentKeybind = "E",
 HoldToInteract = false,
 Flag = "Thifesfsefr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Keybind)
  if cammode == "None" then
      workspace.CurrentCamera.CameraType = "Custom"    
  else
            workspace.CurrentCamera.CameraType = cammode  

     end
 end,
})


local silTog = rage1:CreateToggle({
 Name = "Silent Aim",
 CurrentValue = false,
 Flag = "Sil", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  
     function getplrsname()
for i,v in pairs(game:GetChildren()) do
    if v.ClassName == "Players" then
        return v.Name
    end
    end
end
local players = getplrsname()
local plr = game[players].LocalPlayer
coroutine.resume(coroutine.create(function()
    while  wait(1) do
    coroutine.resume(coroutine.create(function()
    for _,v in pairs(game[players]:GetPlayers()) do
        if v.Name ~= plr.Name and v.Character then
            v.Character.RightUpperLeg.CanCollide = false
            v.Character.RightUpperLeg.Transparency = 10
            v.Character.RightUpperLeg.Size = Vector3.new(35,35,35)
            
            v.Character.LeftUpperLeg.CanCollide = false
            v.Character.LeftUpperLeg.Transparency = 10
            v.Character.LeftUpperLeg.Size = Vector3.new(35,35,35)
            
            v.Character.HeadHB.CanCollide = false
            v.Character.HeadHB.Transparency = 10
            v.Character.HeadHB.Size = Vector3.new(35,35,35)
            
            v.Character.HumanoidRootPart.CanCollide = false
            v.Character.HumanoidRootPart.Transparency = 10
            v.Character.HumanoidRootPart.Size = Vector3.new(35,35,35)
        
        end
    end
    end))
end
end))
 end,
})




local Button = rage1:CreateButton({
 Name = "totally human speed",
 Callback = function()
     local chr = game.Players.LocalPlayer.Character
     local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
     while task.wait() and chr and hum and hum.Parent do
      if hum.MoveDirection.Magnitude > 0 then
        chr:TranslateBy(hum.MoveDirection * 1)
      end
     end
 end,
})

local Button345349898 = rage1:CreateButton({
 Name = "rainbow vm",
 Callback = function()
     while task.wait() do
            for _, vls in pairs(workspace.Camera:GetChildren()) do
                if vls and vls:IsA("Model") then
                    for __, v in pairs(vls:GetChildren()) do
                        if v:IsA("Model") then
                            for i, vv in pairs(v:GetChildren()) do
                            if vv.Name == "Left Arm" then
                                vv.Transparency = .5
                                vv.Material = "Neon"
                                vv.Color = Color3.fromHSV(tick()%5/5,1,1)    
                            end
                            
                            if vv.Name == "Right Arm" then
                                vv.Transparency = .5
                                vv.Material = "Neon"
                                vv.Color = Color3.fromHSV(tick()%5/5,1,1)
                            end
                    end    
                        end
                    end
                end
                     
            end
end
 end,
})

local Button345349898 = rage1:CreateButton({
 Name = "stormware ambience",
 Callback = function()
     while task.wait() do
            game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, 0, 255)
            game.Lighting.ColorCorrection.Brightness = 0.1

        end
 end,
})



local Button3 = rage1:CreateButton({
 Name = "InfJump i think",
 Callback = function()
     game:GetService("UserInputService").JumpRequest:connect(function()
         game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end)
 end,
})

local Button345 = rage1:CreateButton({
 Name = "bunnyhop (dont use with inf jump but w speed)",
 Callback = function()
     while task.wait(0.05) do
            if game.Players.LocalPlayer.Character then
                  game.Players.LocalPlayer.Character.Humanoid.Jump = true   
            end
     end
 end,
})

local Button2 = rage1:CreateButton({
 Name = "AntiAim",
 Callback = function()
     local mt = getrawmetatable(game)
        local namecallold = mt.__namecall
        local index = mt.__index
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(self, ...)
            local Args = {...}
            NamecallMethod = getnamecallmethod()
            if tostring(NamecallMethod) == "FireServer" and tostring(self) == "ControlTurn" then
               
                Args[1] = -1.5962564026167
                return namecallold(self, unpack(Args))
                
            end
            return namecallold(self, ...)
        end)
 end,
})

local Button254353453453453535345 = rage1:CreateButton({
 Name = "MessAim",
 Callback = function()
     local mt = getrawmetatable(game)
        local namecallold = mt.__namecall
        local index = mt.__index
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(self, ...)
            local Args = {...}
            NamecallMethod = getnamecallmethod()
            if tostring(NamecallMethod) == "FireServer" and tostring(self) == "ControlTurn" then
                Args[1] = 1.3962564026167
                local res = math.random(1,3)
               if res == 1 then
                    Args[1] = 1.3962564026167
                    return namecallold(self, unpack(Args))

               end
               
                if res == 2 then
                    Args[1] = -1.5962564026167
                    return namecallold(self, unpack(Args))

                end
           
            if res == 3 then
                    Args[1] = -3.1
                    return namecallold(self, unpack(Args))

               end
               
            
                --return namecallold(self, unpack(Args))
                
            end
            return namecallold(self, ...)
        end)
 end,
})


local Button2 = rage1:CreateButton({
 Name = "destroyhead hitbox",
 Callback = function()
     if game.Players.LocalPlayer.Character then
         game.Players.LocalPlayer.Character.HeadHB:Destroy()    
     end
 end,
})


local Button2565 = rage1:CreateButton({
 Name = "ESP",
 Callback = function()
     local carbon = loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/carbonlib/main/carbonlib.lua"))()

        carbon.loadLib()
        
        
        for i,v in pairs(game.Players:GetPlayers()) do
            carbon.safe_highlight(v.Character, v.Name, 255, 255, 0)
        end

 end,
})

local Paragraph = rage1:CreateParagraph({Title = "CameraMode Spoofing", Content = "This can be used to modify your characters distance from your original viewmodels which will stay in place. This can be toggled, and then you could go behind a wall, but since your Viewmodels are going to stay in place, you can still shoot like you're normally standing there"})

local Dropdown = rage1:CreateDropdown({
 Name = "CameraMode",
 Options = {"Fixed","Orbital", "None"},
 CurrentOption = "None",
 Flag = "cam", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Option)
     cammode = Option
 end,
})