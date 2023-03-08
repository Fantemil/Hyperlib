local Noclip = nil
local Clip = nil

function noclip()
 Clip = false
 local function Nocl()
  if Clip == false and game.Players.LocalPlayer.Character ~= nil then
   for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
     v.CanCollide = false
    end
   end
  end
  wait(0.21) -- basic optimization
 end
 Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
 if Noclip then Noclip:Disconnect() end
 Clip = true
end

noclip() -- to toggle noclip() and clip()