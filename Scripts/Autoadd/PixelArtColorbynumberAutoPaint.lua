function GetOwner()
 local stringy
 
 for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetDescendants()) do
  if v.Name == "OwnerFace" and v.Parent.Name == "SpawnLocation" then 
   if v:FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == tostring("rbxthumb://type=AvatarHeadShot&id="..game:GetService("Players").LocalPlayer.UserId.."&w=420&h=420") then
    stringy = tostring("rbxthumb://type=AvatarHeadShot&id="..game:GetService("Players").LocalPlayer.UserId.."&w=420&h=420")
   end
  end
 end

 for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetDescendants()) do
  if v.Name == "OwnerFace" and v.Parent.Name == "SpawnLocation" then 
   if v:FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == stringy then
    stringy = v
   end
  end
 end
 return stringy.Parent.Parent
end

local R = false

function Build()
    if R == false then 
        R = true
     local remote = game:GetService("ReplicatedStorage").Knit.Services.PixelGeneratorService.RF.DrawPixel
     for i,v in pairs(GetOwner().Draw:GetChildren()) do
      if v.Name == "Part" and v:FindFirstChild("Texture").Transparency == 0 then
       remote:InvokeServer(v)
      end
     end
    end
    R = false
end

function IsNoSurvivors()
    local te = 0
    for i,v in pairs(GetOwner().Draw:GetChildren()) do
  if v.Name == "Part" and v:FindFirstChild("Texture") then
   if v.Name == "Part" and v:FindFirstChild("Texture").Transparency ~= 0.75 or v:FindFirstChild("Texture").Transparency ~= 0 then
    te = te + 1
   end
  end
 end
    return te
end

while IsNoSurvivors() ~= 0 do
 wait()
 Build()
end