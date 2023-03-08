local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/Rgb%20Ui"))()

MAINTTL = "STRAW HUB"

local win = VLib:Window("COBRA KAI", Color3.fromRGB(196, 40, 28))

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

--MAIN SCRIPT
ss:Toggle("Autofarm Bags",function(t)
    farm2 = t
    while farm2 do wait()
        pcall(function()
           game:GetService("ReplicatedStorage").Attack:FireServer(math.random(1,5))
          for i,v in pairs(game:GetService("Workspace").PunchingBag:GetChildren()) do 
             if v:IsA("MeshPart") then 
              v.CFrame = CFrame.new(-150.175339, 17.7124176, 138.312851)
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-150.075424, 17.7124176, 140.618729)
                 VIM:SendKeyEvent(true, Enum.KeyCode.A, false, game)
                end 
             end
          end) 
       end 
    end)

ss:Toggle("Autofarm Pushups",function(t)
    farm = t  
    while farm do wait() 
      pcall(function()
       game:GetService("ReplicatedStorage").Remotes.PushUp:FireServer()
     end)  
  end
end) 

ss:Toggle("Autofarm Situps",function(t)
    farm3 = t 
    while farm3 do wait() 
      pcall(function()
       game:GetService("ReplicatedStorage").Remotes.SitUp:FireServer()
     end)  
  end
end) 

ss:Button("NO STUN",function(t)
    LP.StatsFolder.Stunned:Destroy()
    game:GetService("ReplicatedStorage").Remotes.Stun:Destroy()
end) 

ss:Button("HideName",function()
LP.Character.Head.PlayerHeader:Destroy()    
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

ss:Label("THE BOTTOM FEATURES ARE FOR PEOPLE WITH GAMEPASS")


ss:Toggle("AutoClick Benchpress OP",function(t)
bench = t 
while bench do wait() 
    pcall(function()
game:GetService("ReplicatedStorage").Remotes.Bench:FireServer()
end ) 
end 
end) 

ss:Toggle("AutoUse Dumbells",function(t)
dumb = t 
while dumb do wait() 
    pcall(function()
game:GetService("ReplicatedStorage").Remotes.Dumbell:FireServer("Equip") 
game:GetService("ReplicatedStorage").Remotes.Dumbell:FireServer("Rep",math.random(1,2))
end) 
end 
end) 

ss:Button("Invite Everyone In Dojo",function()
for i,v in pairs(game.Players:GetChildren()) do 
    if v~= game.Players.LocalPlayer then 
game:GetService("ReplicatedStorage").Invite:FireServer(v.Name)
        end   
    end 
end) 



sss:Label("MADE BY VEP#1003")

sss:Label("BUY STRAW HUB NOW")

sss:Button("Copy Straw Hub Discord",function(t)
setclipboard("https://discord.gg/73jRJuYrnc")
end) 