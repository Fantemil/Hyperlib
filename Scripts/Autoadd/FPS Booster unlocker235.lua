setfpscap(999999999)
for _,v in next,game:GetService("Workspace"):GetDescendants() do
    if v and v:IsA("Model") then
      v.LevelOfDetail = "Disabled"
      v.ModelStreamingMode = "Nonatomic"
    elseif v and (v:IsA("BasePart") and not v:IsA("MeshPart")) then
      v.CastShadow = false
      v.Material = "Plastic"
      v.Reflectance = 0 
      v.MaterialVariant = ""
    elseif v and (v:IsA("Decal") or v:IsA("Texture")) then 
      v.Transparency = 1
    elseif v and v:IsA("MeshPart") then 
      v.CastShadow = false
      v.DoubleSided = false
      v.RenderFidelity = "Performance"
      v.TextureID = 10385902758728957
    elseif v and v:IsA("SpecialMesh") then 
      v.TextureId = 0
    elseif v and v:IsA("ShirtGraphic") then 
      v.Graphic = 0
    elseif v and (v:IsA("Shirt") or v:IsA("Pants")) then 
     v[v.ClassName.."Template"] = 0
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
     v.Enabled = false   
    elseif v:IsA("Explosion") then
     v.BlastPressure = 1
     v.BlastRadius = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
     v.Enabled = false
    elseif v and v:IsA("Beam") then 
     v.Enabled = false
    elseif v and v:IsA("SurfaceAppearance") then
      v:Destroy()
    elseif v and v:IsA("Debris") then 
      v:Destroy()
    elseif v and v:IsA("Attachment") then 
      v.Visible = false
   elseif v and v:IsA("MaterialVariant") then 
    v:Destroy()
      end
    end
   for _,v in next,game:GetService("Lighting"):GetDescendants() do 
     if v and (v:IsA("Sky") or v:IsA("Atmosphere") or v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("Clouds") or v:isA("PostEffect") or v:IsA("ColorCorrectionEffect")) then 
       v:Destroy()
    end
   end
   sethiddenproperty(game:GetService("Lighting"),"Technology",2)
   game:GetService("Lighting").GlobalShadows = 0
   game:GetService("Lighting").FogEnd = 9e9
   game:GetService("Lighting").Brightness = 0
   sethiddenproperty(game:GetService("Workspace"):FindFirstChildOfClass("Terrain"),"Decoration",false)
   game:GetService("Workspace"):FindFirstChildOfClass("Terrain").WaterReflectance = 0 
   game:GetService("Workspace"):FindFirstChildOfClass("Terrain").WaterTransparency = 0.7
   game:GetService("Workspace"):FindFirstChildOfClass("Terrain").WaterWaveSize = 0
   game:GetService("Workspace"):FindFirstChildOfClass("Terrain").WaterWaveSpeed = 0
   game:GetService("Lighting").ChildAdded:Connect(function(addedshit)
     spawn(function()
     v:Destroy()
     end)
   end)
   game:GetService("Workspace").DescendantAdded:Connect(function(addedshit)
     spawn(function()
       if addedshit:IsA("Model") then
      addedshit.LevelOfDetail = "Disabled"
      addedshit.ModelStreamingMode = "Nonatomic"
    elseif (addedshit:IsA("BasePart") and not addedshit:IsA("MeshPart")) then
      addedshit.CastShadow = false
      addedshit.Material = "Plastic"
      addedshit.Reflectance = 0 
      addedshit.MaterialVariant = ""
    elseif (addedshit:IsA("Decal") or addedshit:IsA("Texture")) then 
      addedshit.Transparency = 1
    elseif addedshit:IsA("MeshPart") then 
      addedshit.CastShadow = false
      addedshit.DoubleSided = false
      addedshit.RenderFidelity = "Performance"
      addedshit.TextureID = 10385902758728957
    elseif addedshit:IsA("SpecialMesh") then 
      addedshit.TextureId = 0
    elseif addedshit:IsA("ShirtGraphic") then 
      addedshit.Graphic = 0
    elseif (addedshit:IsA("Shirt") or addedshit:IsA("Pants")) then 
     addedshit[addedshit.ClassName.."Template"] = 0
    elseif addedshit:IsA("Fire") or addedshit:IsA("SpotLight") or addedshit:IsA("Smoke") or addedshit:IsA("Sparkles") then
     addedshit.Enabled = false   
    elseif addedshit:IsA("Explosion") then
     addedshit.BlastPressure = 1
     addedshit.BlastRadius = 1
    elseif addedshit:IsA("ParticleEmitter") or addedshit:IsA("Trail") then
     addedshit.Enabled = false
    elseif addedshit:IsA("Beam") then 
     addedshit.Enabled = false
    elseif addedshit:IsA("SurfaceAppearance") then
      addedshit:Destroy()
    elseif addedshit:IsA("Debris") then 
      addedshit:Destroy()
    elseif addedshit:IsA("Attachment") then 
      addedshit.Visible = false
    elseif addedshit:IsA("MaterialVariant") then 
    addedshit:Destroy()
         end
       end)
     end)