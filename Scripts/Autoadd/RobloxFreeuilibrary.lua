local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/Mb49kKTP"))()


  MAINTTL = "NBT HUB" 

local win = VLib:Window("THREE PIECE", Color3.fromRGB(196, 40, 28))

local ss1 = win:Tab("HOW TO USE")
local ss = win:Tab("MAIN")
local sss = win:Tab("MISC")
local cred = win:Tab("CREDITS")

ss1:Button("Destroy Gui",function()
game.CoreGui["Library"]:Destroy()
end)

local Npc_Table = {}     
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
    if v:IsA("Model") and v:FindFirstChild("NPC") and v:FindFirstChild("AttackScript") and not table.find(Npc_Table,v.Name) then
        table.insert(Npc_Table,v.Name)
    end 
end 

    local tool_table = {}
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(tool_table, v.Name)
        end
    end
    
    distance = 5 
    
    
     ss1:Label("You need to have a fruit inorder to hit mobs")
     ss1:Label("Once you have a fruit auto equip it")
     ss1:Label("then Spam Skills From Misc Tab")
 
 
ss:Dropdown("Select Tool",tool_table,function(SelectedOption)
SelectedWeapon = SelectedOption
end)
    
ss:Toggle("AutoEquip",function(t)
 Equip = t 
    while wait() do 
         if Equip then 
           pcall(function()
              for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                 if v.Name == SelectedWeapon then 
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                   end 
                end
            end)
        end 
    end 
end)  
    
ss:Dropdown("Mobs To Farm",Npc_Table,function(t)
mobs = t     
end) 

ss:Toggle("Autofarm Start",function(t)
    autofarm = t 
    game:GetService("RunService").Stepped:Connect(function()
    if autofarm then
                    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end)
end
end)
                while autofarm do wait()
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                                if v.Name == mobs and v:FindFirstChild("HumanoidRootPart")and v:FindFirstChild("Humanoid") then
                                   wait(.7)
                                    repeat
                                        wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,distance,0),v.HumanoidRootPart.Position)
                                    until v.Humanoid.Health <= 0  or autofarm == false 
                                end
                            end
                        end
                    )
                end
            
end) 

 ss:Slider("Distance",-9,10,3,function(t)
 distance = t     
 end)
 
 ss:Toggle("AutoFarm Fruits",function(t)
fruits = t 
 while fruits do wait() 
     pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("Tool") and v:FindFirstChild("EatScript") then 
         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle.TouchInterest.Parent, 0)
            end 
        end 
     end)  
  end 
end) 
 

sss:Toggle("Spam C Skill",function(t)
skillsC = t 
while skillsC do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.C, false, game)
        end) 
    end
end)
            
sss:Toggle("Spam X Skill",function(t)
skillsX = t 
while skillsX do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.X, false, game)
        end)
    end
end)
            
sss:Toggle("Spam V Skill",function(t)
skillsV = t 
    pcall(function()
while skillsV do wait() 
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game)
        end 
    end)
end)
        
sss:Toggle("Spam E Skill",function(t)
skills = t 
while skills do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.E, false, game)
       end)
    end
end)
          
sss:Toggle("Spam Z Skill",function(t)
skillsZ = t 
while skillsZ do wait() 
    pcall(function()
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
         VIM:SendKeyEvent(true, Enum.KeyCode.Z, false, game)
        end)
     end
end)

cred:Button("Copy Discord Server",function()
setclipboard("paste your discord link here")
end) 

cred:Label("MADE BY ââ·âNiceBBMB#5242")