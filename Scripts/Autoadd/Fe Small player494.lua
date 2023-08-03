--[[simple script made by failedmite57926
Character settings:
Body Type - 0%
Height - 90%
Width - 70%
Head - 100%
Proportions - 100%
]]--

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

local function rm()
 for i,v in pairs(Character:GetDescendants()) do
  if v:IsA("BasePart") then
   if v.Name ~= "Head" then
    for i,cav in pairs(v:GetDescendants()) do
     if cav:IsA("Attachment") then
      if cav:FindFirstChild("OriginalPosition") then
       cav.OriginalPosition:Destroy()
      end
     end
    end
    v:FindFirstChild("OriginalSize"):Destroy()
    if v:FindFirstChild("AvatarPartScaleType") then
     v:FindFirstChild("AvatarPartScaleType"):Destroy()
    end
   end
  end
 end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
wait(0.2)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(0.2)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(0.2)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(0.2)