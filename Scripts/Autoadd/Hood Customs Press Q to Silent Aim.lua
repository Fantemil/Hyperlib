--[[
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ
ââââââââââââââââââââââââââââââââââââââââââââââââââââââ

]]
    getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.1337
    getgenv().Partz = "LowerTorso" -- LowerTorso, HumanoidRootPart,Head,UpperTorso

    
     local Locking = false
    local Draw = Drawing.new
local Square = Drawing.new("Square")
Square.Visible = false
Square.Color = Color3.fromRGB(30, 168, 145)
Square.Thickness = 20
Square.Size = Vector2.new(20,20)
Square.Filled = true

    game:GetService("UserInputService").InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               Locking = not Locking
               if Locking then
               Plr =  getClosestPlayerToCursor()
elseif not Locking then
        

         
end
end
end
end)
 function getClosestPlayerToCursor()
  local closestPlayer
  local shortestDistance = math.huge

  for i, v in pairs(game.Players:GetPlayers()) do
   if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
    local pos =  game:GetService"Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new( game.Players.LocalPlayer:GetMouse().X,  game.Players.LocalPlayer:GetMouse().Y)).magnitude
    if magnitude < shortestDistance then
     closestPlayer = v
     shortestDistance = magnitude
    end
   end
  end
  return closestPlayer
 end

 local rawmetatable = getrawmetatable(game)
 local old = rawmetatable.__namecall
 setreadonly(rawmetatable, false)
 rawmetatable.__namecall = newcclosure(function(...)
  local args = {...}
  if Locking and getnamecallmethod() == "FireServer" and args[2] == "GetMousePos" then
   args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
   return old(unpack(args))
  end
  return old(...)
 end)
 
 
game.RunService.Stepped:Connect(function()
    if Plr ~= nil and Locking then
         local Vector, OnScreen = workspace.CurrentCamera:worldToViewportPoint(Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction))
         if OnScreen then
        Square.Visible = true
        Square.Position = Vector2.new(Vector.X,Vector.Y)
        end
        elseif not Locking then
            Square.Visible = false
        end
        
    end)