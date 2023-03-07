--[[
âââââââÂ·    âââ   ââââââââââââââ  âââ    âââ    âââ ââââââ âââââââ ââââââââ
ââââââââ    âââ   âââââââââââââââââââ    âââ    âââââââââââââââââââââââââââ
ââââââââ    âââ   âââââââââ   ââââââ     âââ ââ âââââââââââââââââââââââââ  
ââââââââ    ââââ ââââââââââ   ââââââ     ââââââââââââââââââââââââââââââââ  
ââââââââ     âââââââ ââââââââââââ âââ    âââââââââââââ  ââââââ  âââââââââââ
ââââââââ      âââââ  âââââââââââ  âââ     ââââââââ âââ  ââââââ  âââââââââââ
     2 tap with 70 ping                                                                                                             
]]
-- angy
getgenv().Target = true
-- bark
    getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.1439227582
getgenv().ChatMode = false
getgenv().NotifMode = false
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true
    getgenv().Partz = "HumanoidRootPart"
    --
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
     local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay" 
    Tracer.Anchored = true  
    Tracer.CanCollide = false
    Tracer.Transparency = 0.8
    Tracer.Parent = game.Workspace 
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(14,14,14)
    Tracer.Color = Color3.fromRGB(128,128,128)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 120
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = false
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
     local guimain = Instance.new("Folder", game.CoreGui)
     local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
     local Locking = false
    
     
    --
    if getgenv().valiansh == true then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Loaded ALready :)!",
                   Text = "^",
                   Duration = 1
        
                   })
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = "Get some females "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
         end 
               if getgenv().NotifMode then
       game.StarterGui:SetCore("SendNotification", {
        Title = "";
        Text = "Kill: "..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "bro needs females.. IMAO" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
         end 
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "ezz",
                   Duration = 1
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target isn't enabled",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
 
 function getClosestPlayerToCursor()
  local closestPlayer
  local shortestDistance = circle.Radius

  for i, v in pairs(game.Players:GetPlayers()) do
   if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
    if magnitude < shortestDistance then
     closestPlayer = v
     shortestDistance = magnitude
    end
   end
  end
  return closestPlayer
 end
--
if getgenv().PartMode then
 game:GetService"RunService".Stepped:connect(function()
  if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
   Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
  else
   Tracer.CFrame = CFrame.new(0, 9999, 0)

  end
 end)
end

    
    
    --
 local rawmetatable = getrawmetatable(game)
 local old = rawmetatable.__namecall
 setreadonly(rawmetatable, false)
 rawmetatable.__namecall = newcclosure(function(...)
  local args = {...}
  if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
   args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
   return old(unpack(args))
  end
  return old(...)
 end)
 if getgenv.AirshotFunccc then
 if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Partz = "RightFoot"
    else
        getgenv().Partz = "LowerTorso"
 end
end