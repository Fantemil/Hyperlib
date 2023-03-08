if getgenv().loop ~= nil then getgenv().loop:Disconnect() end
for i,v in pairs(getgc(true)) do
    if typeof(v) ~= 'table' then continue end
    if rawget(v, 'getIsBodyMoverCreatedByGame') then
        v.getIsBodyMoverCreatedByGame = function(gg)
            return true
        end
        
    end
    if rawget(v, 'connectCharacter') then
         v.connectCharacter = function(gg) return wait(9e9) end
    end
 if rawget(v,'Remote')  then
  for i,v in pairs(getconnections(v.Remote:GetPropertyChangedSignal('Name'))) do
      v:Disable()
  end
  v.Remote.Name = v.Name
 end
end
hookfunction(game.Players.LocalPlayer.Kick,function()
    return error('dumbass ez')
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local nevermore = require(game.ReplicatedStorage.Framework.Nevermore)
syn.set_thread_identity(2)
local network = nevermore('Network')
local datahandle = nevermore('DataHandler')
syn.set_thread_identity(7)


local function GetClosest(distane)
 if not (LocalPlayer.Character or LocalPlayer.Character:FindFirstChild('HumanoidRootPart')) then return end 
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then
        return
    end

    local TargetDistance = distane or 50

    local Target

    for i, v in ipairs(Players:GetPlayers()) do
        if
            v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
                v.Character:FindFirstChildWhichIsA("Humanoid").Health ~= 0
         then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end

    return Target
end
local events = game:GetService("ReplicatedStorage").Communication.Events
local functions = game:GetService("ReplicatedStorage").Communication.Functions
local Weapon,Closest,executing = nil,nil,false
local KillLoop = function()
 Closest = GetClosest(13)
 if Closest ~= nil and executing == false then
     executing = true
  pcall(function()
  for i, v in pairs(LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
    if v:FindFirstChild("Hitboxes") ~= nil then
     Weapon = v
    end
   end
  end
  if not Weapon then
  else        
   for i=1,3 do
    local args1 = {
     [1] = Weapon,
     [2] = i
    }  
    events.MeleeSwing:FireServer(unpack(args1))
    wait(.1)
                --events.ReplicateBodyRotation:FireServer({Closest.Character.Head.CFrame,Closest.Character.Head.CFrame,Closest.Character.Head.CFrame,Closest.Character.Head.CFrame,Closest.Character.Head.CFrame})
    local args = {
     [1] = Weapon,
     [2] = Closest.Character.Head,
     [3] = Weapon.Hitboxes.Hitbox,
     [4] = Closest.Character.Head.Position,
     [5] = Closest.Character.Head.CFrame:ToObjectSpace(
      CFrame.new(Closest.Character.Head.Position)
     ),
     [6] = Closest.Character.Head.Position,
    } 
    if datahandle.getSessionDataRoduxStoreForPlayer(Closest):getState().parry.isParrying == false then
     events.MeleeDamage:FireServer(unpack(args))
     events.MeleeDamage:FireServer(unpack(args))
    else
     return
    end
   end
  end
  end)
  executing = false
 end
end
getgenv().loop = game.RunService.Stepped:Connect(KillLoop)