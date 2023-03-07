local Player = game:GetService("Players").LocalPlayer
local Beam = Instance.new("Beam",game:GetService("Workspace"))
local Part = Instance.new("Part",game:GetService("Workspace"))
local Attachment = Instance.new("Attachment",Part)
Beam.Attachment1 = Attachment
Beam.Width0 = 0.1
Beam.Width1 = 0.1
Part.CanCollide = false
Part.Transparency = 1
local AimView = false
Player.Chatted:connect(function(text)
 local Args = text:split(" ")
 if Args[1]:match(".view") and Args[2] then
  local Name = Args[2]
  AimView = true
  Beam.Width0 = 0.1
  Beam.Width1 = 0.1
  for _,v in pairs(game:GetService("Players"):GetPlayers()) do
   if string.lower(string.sub(v.Name,1,#Name)) == string.lower(Name) then
    if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("BodyEffects") then
     local Attachment0 = v.Character:FindFirstChild("HumanoidRootPart").RootRigAttachment
     local MousePos = v.Character:FindFirstChild("BodyEffects").MousePos
     while task.wait() do
      if AimView then
       for _,v in pairs(v.Character:GetChildren()) do
        if v:IsA("Tool") then
         if v:FindFirstChild("GunScript") then
          Part.Position = Vector3.new(MousePos.Value.X,MousePos.Value.Y,MousePos.Value.Z)
          Beam.Attachment0 = Attachment0
         end
        end
       end
      end
     end
    end
   end
  end
 elseif Args[1]:match(".unview") then
  AimView = false
  Beam.Width0 = 0
  Beam.Width1 = 0
 end
end)