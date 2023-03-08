local player = game.Players.LocalPlayer

local virtualuser = game:GetService("VirtualUser")

local exit = false

function mousedown()
 virtualuser:ClickButton1(Vector2.new(200, 200))
end

function raycast(position, direction, params)
 local ray = workspace:Raycast(position, direction, params)
 return ray
end

function findclosestplayer(max, part)
 local lastdist = max
 local closest = nil

 for i,v in pairs(game.Players:GetPlayers()) do
  if v ~= nil and v.Character and v ~= game.Players.LocalPlayer then
   local targetchar = v.Character
   local targethrp = targetchar:FindFirstChild("HumanoidRootPart")
   local targethum = targetchar:FindFirstChildOfClass("Humanoid")

   if targethrp and targethum then
    -- Checks

    local thisdist = math.abs((targethrp.Position - part.Position).Magnitude)

    if thisdist > lastdist then
     --print("TooFar")
     continue
    end

    if targetchar.Head:FindFirstChild("UnoReverseCard") then
     print("WasReversed")
     continue
    end

    if targetchar:FindFirstChild("isInArena") then
     if targetchar.isInArena.Value == false then
      print("NotInArena")
      continue
     end
    end

    if targethum.Name == "FrozenHumanoid" then
     print("FrozenHumanoid")
     continue
    end

    local rayparams = RaycastParams.new()
    rayparams.FilterType = Enum.RaycastFilterType.Blacklist
    rayparams.FilterDescendantsInstances = {targetchar}

    local ray = raycast(targethrp.Position - Vector3.new(0, -4, 0), Vector3.new(0, -20, 0), rayparams)

    --print(raycast)

    if ray == nil then
     print("InAir")
     break
    end
    
    closest = v
    lastdist = thisdist
   end
  end
 end

 return closest
end

game:GetService("UserInputService").InputBegan:Connect(function(inp, gamep)
 if not exit and inp.KeyCode == Enum.KeyCode.R then
  exit = true
 end
end)

spawn(function()
 while wait() do
  local scc, err = pcall(function()
   local char = player.Character or player.CharacterAdded:Wait()
   local hum = char:FindFirstChild("Humanoid")
   local hrp = char:FindFirstChild("HumanoidRootPart")

   hum.Health = 0
   
   wait(100)
  end)

  if not scc then warn(err) end

  if exit then
   break
  end
 end
end)

while wait() do 
 local scc, err = pcall(function()
  local char = player.Character or player.CharacterAdded:Wait()
  local hum = char:FindFirstChild("Humanoid")
  local hrp = char:FindFirstChild("HumanoidRootPart")

  if char and hum and hrp and char:FindFirstChild("isInArena") then
   if char.isInArena.Value == false then
    local portal = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1")

    hum:MoveTo(portal.Position)
   else
    local closest = findclosestplayer(4000, hrp)

    --print(closest)

    if closest ~= nil and closest.Character then
     local target = closest.Character
     local targethrp = target.HumanoidRootPart

     hum:MoveTo(targethrp.Position)

     mousedown()
    end
   end
  end
 end)

 if not scc then warn(err) end

 if exit then
  break
 end
end