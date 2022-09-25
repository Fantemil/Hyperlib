--butcher that shit yea

local RunService = game:GetService("RunService")

shared.Visuals = { --// Configuration (Will load default settings if shared.Visuals doesn't exist.)
    Enabled = true,
    CrosshairEnabled = false,
    Boxes = true,
    Healthbar = true,
    Tracers = true,
    Info = true,
    ShowAllyTeam = true,
    UseTeamColor = true,
    AllyColor = Color3.fromRGB(0, 255, 0),
    EnemyColor = Color3.fromRGB(255, 0, 0),
    Crosshair = {
        Size = 5,
        Thickness = 1.5,
        Offset = 5
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/coastss/releases/main/universal_visuals.lua"))()

local lifetime = 5 -- seconds
local material = Enum.Material.ForceField
local thickness = 0.1
local color = Color3.fromRGB(128, 1, 128)

local mt = getrawmetatable(game)
local old = mt.__namecall
local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local lasthittick = tick()
function createBeam(p1, p2)
 local beam = Instance.new("Part", workspace)
 beam.Anchored = true
 beam.CanCollide = false
 beam.Material = material
 beam.Color = color
 beam.Size = Vector3.new(thickness, thickness, (p1 - p2).magnitude)
 beam.CFrame = CFrame.new(p1, p2) * CFrame.new(0, 0, -beam.Size.Z / 2)
 return beam
end

setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == "FireServer" and self.Name == "HitPart" and tick() - lasthittick > 0.005 then
  lasthittick = tick()
  spawn(function()
   local beam = createBeam(lp.Character.Head.CFrame.p, args[2])
   for i = 1, 60 * lifetime do
    rs:Wait()
    beam.Transparency = i / (60 * lifetime)
   end
   beam:Destroy()
  end)
 end
 return old(self, ...)
end)
setreadonly(mt, true)

local lp = game:GetService("Players").LocalPlayer
local client = getsenv(lp.PlayerGui.Client)
local spincurrent = 0
local hitpart = nil
game:GetService('RunService').RenderStepped:Connect(function()
 if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
  if lp.Character and lp.Character:FindFirstChild('Humanoid') and lp.Character:FindFirstChild('HumanoidRootPart') then
   if lp.Character.HumanoidRootPart:FindFirstChild('gamervelocity') then
    lp.Character.HumanoidRootPart.gamervelocity.Velocity = (lp.Character.Humanoid.MoveDirection) * 40
    lp.Character.Humanoid.Jump = true
   else
    lp.Character.Humanoid.Jump = true
    local velocity = Instance.new('BodyVelocity', lp.Character.HumanoidRootPart)
    velocity.Name = 'gamervelocity'
    velocity.maxForce = Vector3.new(100000, 0, 100000)
    velocity.Velocity = (lp.Character.Humanoid.MoveDirection) * 40
   end
  end
 else
  if lp.Character and lp.Character:FindFirstChild('Humanoid') and lp.Character:FindFirstChild('HumanoidRootPart') then
   if lp.Character.HumanoidRootPart:FindFirstChild('gamervelocity') then
    lp.Character.HumanoidRootPart.gamervelocity:Destroy()
   end
  end
 end
    if lp.Character and lp.Character:FindFirstChild('Humanoid') and lp.Character:FindFirstChild('HumanoidRootPart') then
        spincurrent = spincurrent + 45
        lp.Character.Humanoid.AutoRotate = false
        lp.Character.HumanoidRootPart.CFrame = CFrame.new(lp.Character.HumanoidRootPart.Position, lp.Character.HumanoidRootPart.Position + Vector3.new(5,0,0)) * CFrame.Angles(0, math.rad(spincurrent), 0)
    end
    lp.CameraMode = 'Classic'
 lp.CameraMaxZoomDistance = 10
 lp.CameraMinZoomDistance = 10
 workspace.CurrentCamera.FieldOfView = 100
 if workspace.Status.Preparation.Value == false and lp.Character and lp.Character:FindFirstChild('Humanoid') and lp.Character:FindFirstChild('HumanoidRootPart') and lp.Character.Humanoid.Health > 0 then
  for _, player in pairs(game:GetService('Players'):GetPlayers()) do
   if player.Team ~= lp.Team then
    if player.Status.Alive.Value == true and player.Character and not player.Character:FindFirstChild('ForceField') and player.Character:FindFirstChild('Humanoid') and player.Character:FindFirstChild('HeadHB') and player.Character.Humanoid.Health > 0 then
     local collision = lp.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, 1.4, 0)
     local ignore = {workspace.Ray_Ignore, lp.Character, workspace:WaitForChild('Map').Clips}
     local ray = Ray.new(
      collision,
      (player.Character.Head.Position-collision).unit * math.clamp(client.gun.Range.Value, 1000000, 1000000)
                         
     )
     for _, accessory in pairs(player.Character:GetChildren()) do
         if accessory:IsA('Accessory') then
             table.insert(ignore,accessory)
        end
     end
     local hit,pos = workspace:FindPartOnRayWithIgnoreList(ray,ignore,false,true)
     if hit and hit.Parent == player.Character then
      hitpart = player.Character.HeadHB
      if not client.DISABLED then
          client.firebullet().Heartbeat:Wait()
      end
     else
      hitpart = nil
     end
    end
   end
  end
 end
end)
local meta = getrawmetatable(game) 
local index = meta.__index
local realnamecall = meta.__namecall
local newindex = meta.__newindex
setreadonly(meta, false)

wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "V1TAP"; -- the title (ofc)
Text = "Version 1.2 Injected!"; -- what the text says (ofc)
Icon = "rbxassetid://6953153735"; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})

meta.__namecall = newcclosure(function(self,...)
 local args = {...}
 local namecall = getnamecallmethod()
 if namecall == "GetState" then
  return Enum.HumanoidStateType.Physics
 end
 if namecall == "InvokeServer" and self.Name == "Hugh" then
  return
 end
    if namecall == 'FireServer' and self.Name == 'ControlTurn' then
     args[1] = -1
 end
 if namecall == "FindPartOnRayWithIgnoreList" then
  if hitpart and lp.Character then
   local _ = lp.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, 1.4, 0)
   args[1] = Ray.new(_, CFrame.new(_, hitpart.CFrame.p).lookVector.unit * 999)
  end   
 end
 return realnamecall(self, unpack(args))
end)
meta.__index =
    newcclosure(function(self, G)
  if not checkcaller() and self == lp and G == "CameraMode" and lp.Character then
   lp.CameraMode = 'Classic'
            return 20
        end
        return index(self, G)
    end
)