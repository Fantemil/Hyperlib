pcall(function()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "ItemName" and v.Parent.Name == "Configuration" and v.Parent.Parent.Name == "Bat" and v.Value == "Metal  Bat" then
        _G.MetalBatProximity = v.Parent.Parent:FindFirstChild("ProximityPrompt")
        -- pass
    else
        --- not pass
    end    
end    
task.wait(5)

if workspace:FindFirstChild("FagFolder") then

else    

local fagfolder1 = Instance.new("Folder",workspace)
fagfolder1.Name = "FagFolder"

for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Model 2 " or v.Name == "TransfurPart" then
        v.Parent = fagfolder1
    end    
end  

end

local fagfolder1 = workspace:FindFirstChild("FagFolder")

local W1 = OrionLib:MakeWindow({Name = "Furry Infection", HidePremium = false, SaveConfig = false, ConfigFolder = "Furry Infection"})

OrionLib:MakeNotification({
    Name = "Furry Infection",
    Content = "UseLess Person#7247",
    Image = "rbxassetid://6890648157", --- rbxassetid://4483345998
    Time = 5
})

function notify(name,text)
    OrionLib:MakeNotification({
    Name = name,
    Content = text,
    Image = "rbxassetid://6890648157", --- rbxassetid://4483345998
    Time = 5
})

end

local Toggles = W1:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://6890648157", --- rbxassetid://4483345998
    PremiumOnly = false
})

Toggles:AddToggle({
    Name = "AntiFagInfect",
    Default = false,
    Callback = function(fagjuice1)
        if fagjuice1 then
            fagfolder1.Parent = nil
         else
             fagfolder1.Parent = game:GetService("Workspace")
         end
    end    
})

Toggles:AddToggle({
    Name = "KillAura",
    Default = false,
    Callback = function(kaura)
        spawn(function()
            if kaura then
                _G.killaura = true
                notify("Furry Infection","KillAura On")
            else
                _G.killaura = false
                notify("Furry Infection","KillAura Off")
            end
while _G.killaura do wait()
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do

        
    local lp = game.Players.LocalPlayer
    local character = v.Character
    local charactername = v.Name
    
	if v:IsFriendsWith(game:GetService("Players").LocalPlayer.UserId) then
		--- nothing
	else
        
        if (lp.Character and lp.Character:FindFirstChild("Head") and character:FindFirstChild("Head")) then
            local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                  if mag < 25  then


local ohInstance1 = v.Character.HumanoidRootPart
local ohInstance2 = v.Character.Humanoid
local ohVector33 = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote.Hit:FireServer(ohInstance1, ohInstance2, ohVector33)
end
end
end
end
end)
end
end)
end
})    

Toggles:AddToggle({
    Name = "AutoGetBat",
    Default = false,
    Callback = function(autogetbatt)
        spawn(function()
        if autogetbatt then
            _G.getbatcrack = true
            notify("Furry Infection","AutoGetBat On")
        else
            _G.getbatcrack = false
            notify("Furry Infection","AutoGetBat Off")
        end
while _G.getbatcrack do task.wait()  
    pcall(function()
if game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat") then
    
else    
    local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)    
    fireproximityprompt(_G.MetalBatProximity, 2, false)
    until game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat")
    game:GetService("Players").localPlayer.Character:MoveTo(oldpos)
    notify("Furry Infection","Grabbed Bat")
end
end) 
end
end)

    end    
})

Toggles:AddButton({
	Name = "Kill All",
	Callback = function()
	    pcall(function()
      	for i,v in pairs(game.Players:GetPlayers()) do
            if game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat") then
            if v.Character.Name == game.Players.LocalPlayer.Character.Name then
            
            else
            if v.Character:FindFirstChild("Humanoid").Health <= 0 or v.Character:FindFirstChild("ForceField") then
            
            else    
            if v.Character:FindFirstChild("LLeft Leg") or v.Character:FindFirstChild("Left Leg"):FindFirstChild("LLeft Leg") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position)
                oldposition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                repeat wait()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat") then
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position+Vector3.new(0,3,0))
                    local ohInstance1 = v.Character.HumanoidRootPart
                    local ohInstance2 = v.Character.Humanoid
                    local ohVector33 = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote.Hit:FireServer(ohInstance1, ohInstance2, ohVector33)
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
                    elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then
                        local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)
                        repeat task.wait()
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)    
                        fireproximityprompt(_G.MetalBatProximity, 2, false)
                        until game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat")
                        game:GetService("Players").localPlayer.Character:MoveTo(oldpos)
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then    
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
                        end    
                    end
            until v.Character.Humanoid.Health <= 0
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldposition)
            end
        end
      	end
else
    local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)    
    fireproximityprompt(_G.MetalBatProximity, 2, false)
    until game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat")
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then    
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
    end  
    game:GetService("Players").localPlayer.Character:MoveTo(oldpos)
end    
end
	    end) 
  end
})

Toggles:AddToggle({
	Name = "Loop Kill All",
	Callback = function(lkillall)
	    spawn(function()
	        if lkillall then
	            _G.killall = true
	            notify("Furry Infection","Loop Kill All On")
	        else
	            _G.killall = false
	            notify("Furry Infection","Loop Kill All Off")
	        end 

while _G.killall do task.wait(1)
	    pcall(function()
      	for i,v in pairs(game.Players:GetPlayers()) do
            if game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat") then
            if v.Character.Name == game.Players.LocalPlayer.Character.Name then
            
            else
            if v.Character:FindFirstChild("Humanoid").Health <= 0 or v.Character:FindFirstChild("ForceField") then
            
            else    
            if v.Character:FindFirstChild("LLeft Leg") or v.Character:FindFirstChild("Left Leg"):FindFirstChild("LLeft Leg") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position)
                oldposition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                repeat task.wait()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat") then
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position+Vector3.new(0,5,0))
                    local ohInstance1 = v.Character.HumanoidRootPart
                    local ohInstance2 = v.Character.Humanoid
                    local ohVector33 = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Remote.Hit:FireServer(ohInstance1, ohInstance2, ohVector33)
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
                    elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then
                        local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)
                        repeat task.wait()
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)    
                        fireproximityprompt(_G.MetalBatProximity, 2, false)
                        until game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat")
                        game:GetService("Players").localPlayer.Character:MoveTo(oldpos)
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then    
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
                        end    
                    end
            until v.Character.Humanoid.Health <= 0
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldposition)
            end
        end
      	end
else
    local oldpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)
    repeat task.wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.0252685546875, 25.781383514404297, 281.36041259765625)    
    fireproximityprompt(_G.MetalBatProximity, 2, false)
    until game.Players.LocalPlayer.Character:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") or game.Players.LocalPlayer.Character:FindFirstChild("Metal  Bat")
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Bat"))
    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat") then    
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Metal  Bat"))
    end  
    game:GetService("Players").localPlayer.Character:MoveTo(oldpos)
end    
end
end)
end
end)
  end
})

Toggles:AddToggle({
	Name = "Auto Escape Grab",
	Callback = function(antigrabbed)
	    spawn(function()
	        if antigrabbed then
	            _G.autoescapegrab = true
	            notify("Furry Infection","Auto Escape Grab On")
	       else 
	           _G.autoescapegrab = false
	           notify("Furry Infection","Auto Escape Grab Off")
	        end
	        
local noescapeser
noescapeser = game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.autoescapegrab then  
    game.Players.LocalPlayer.PlayerGui.EscapeGui.Remote.Hit:InvokeServer()
else
    noescapeser:Disconnect()
end    
end)
end)
end)
end
})	

Toggles:AddToggle({
	Name = "Less Cooldown",
	Callback = function(lesscd)
	    spawn(function()
	        if lesscd then
	            _G.lesscooldown = true
	            notify("Furry Infection","Less Cooldown On")
	        else
	            _G.lesscooldown = false
	            notify("Furry Infection","Less Cooldown Off")
	        end 
        end)
    end
})

local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "Invoke" and tostring(self) == "Cooldown" then
    if _G.lesscooldown then    
        args[1] = 0
    end
    end
    return namecall(self, table.unpack(args))
end) 

end)