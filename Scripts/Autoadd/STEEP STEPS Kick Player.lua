local target = game.Players['Username Here'] -- replace "Username Here" with the person you want to kick


local spin = Instance.new("BodyAngularVelocity")
spin.AngularVelocity = Vector3.new(99999,99999,99999)
spin.MaxTorque = Vector3.new(math.huge,math.huge,0)
spin.P = math.huge

local plr = game.Players.LocalPlayer

for i,v in pairs(game:GetService("Workspace").playerPlaced[plr.Name .. "_ladder"]:GetChildren()) do
   if isnetworkowner(v) then
       local x = spin:Clone()
       x.Parent = v

       task.spawn(function()
           while isnetworkowner(v) and task.wait() do
               v.CFrame = target.Character.HumanoidRootPart.CFrame
           end
       end)
   end
end