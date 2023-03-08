local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/Rgb%20Ui"))()

MAINTTL = "PRON HUB"

local win = VLib:Window("Fighting Academy", Color3.fromRGB(196, 40, 28))

local ss = win:Tab("MAIN")
local sss = win:Tab("CREDITS")

--ANTI AFK 
pcall(function()
    local VirtualUser=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    warn("anti-afk")
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
       end)
    end) 

--GLOBALS 
LP = game.Players.LocalPlayer
VIM = game:GetService("VirtualInputManager")


ss:Toggle("Auto-Punch",function(t)
    farm1 = t  
    while farm1 do wait() 
      pcall(function()
       local args = {[1] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.boxing:FireServer(unpack(args))
     end)  
  end
end) 

ss:Toggle("Auto-BenchPress",function(t)
    farm2 = t  
    while farm2 do wait() 
      pcall(function()
       local args = {[1] = "supin",[2] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.Gym:FireServer(unpack(args))
     end)  
  end
end) 

ss:Toggle("Autofarm-Pushups",function(t)
    farm3 = t  
    while farm3 do wait() 
      pcall(function()
      local args = {[1] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.PushUpActive:FireServer(unpack(args))
     end)  
  end
end) 

ss:Toggle("Autofarm-Situps",function(t)
    farm4 = t 
    while farm3 do wait() 
      pcall(function()
       local args = {[1] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.SitUpsActive:FireServer(unpack(args))
     end)  
  end
end) 

ss:Toggle("Autofarm-Pullups",function(t)
    farm5 = t 
    while farm5 do wait() 
      pcall(function()
      local args = {[1] = "bar",[2] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.Gym:FireServer(unpack(args))
     end)  
  end
end) 

ss:Toggle("Autofarm-Speed",function(t)
    farm5 = t 
    while farm5 do wait() 
      pcall(function()
      local args = {[1] = "speed",[2] = game:GetService("Players").LocalPlayer}game:GetService("ReplicatedStorage").Events.Gym:FireServer(unpack(args))
     end)  
  end
end) 


sss:Label("TPS")


ss:Button("Teleport To BoxingBag",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1014, 10, -1146)
end)

ss:Button("Teleport To BenchPress",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1050, 10, -1156)
end)

ss:Button("Teleport To Pull-Ups",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1048, 13, -1215)
end)

ss:Button("Teleport To SpeedRun",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-998, 11, -1239)
end)

ss:Button("Teleport To Equiptment Store",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390, 9, -659)
end)

ss:Button("Teleport To Pushup Quest",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-949, 9, -683)
end)

ss:Button("Teleport To BenchPress Quest",function(t)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-972, 9, -700)
end)


ss:Button("Hide Accesory",function()
    ss:Button("Remove Accesory", function(t)
    local player = game.Players.LocalPlayer
    for i,v in pairs(player.Character:GetChildren()) do
       if v.ClassName == "Accessory" or v.Name == "Belt" or v.Name == "Shirt" or v.Name == "Pants" then
           v:Destroy()
           local player = game.Players.LocalPlayer
           for i,v in pairs(player.Character.Head:GetChildren()) do
                   if v:IsA("Decal") then
                   v:remove()
                   end
               end
       end
    end
end)
end) 

sss:Label("MADE BY")