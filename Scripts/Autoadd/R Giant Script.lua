-- OP ASF SCRIPT FR!! BTW THE KING IS BACK --

-- Originally made by failedmite57926 -- 

size = 5 -- from 1 to 5

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function rm()

for i,v in pairs(Character:GetDescendants()) do
if v:IsA("BasePart") then
if v.Name == "Handle" or v.Name == "Head" then
if Character.Head:FindFirstChild("OriginalSize") then
Character.Head.OriginalSize:Destroy()
end
else
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


if size == 1 then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)
end

if size == 2 then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)
end

if size == 3 then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)
end

if size == 4 then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)
end


if size == 5 then
rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
end