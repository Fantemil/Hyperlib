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
 
wait()