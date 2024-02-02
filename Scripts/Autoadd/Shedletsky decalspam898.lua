sound = Instance.new("Sound",workspace)
sound.Name = "Spooky scary skeletons - JonTron"
sound.SoundId = "rbxassetid://138081566"
sound:Play()
sound.Looped = true
local ID = 11741345802
 local Skybox = true
 local particle = true
 
-- DO NOT CHANGE BELOW. UNLESS YOU KNOW WHAT YOU'RE DOING.
 
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Part") then
            local decal1 =Instance.new("Decal")
            local decal2 =Instance.new("Decal")
            local decal3 =Instance.new("Decal")
            local decal4 =Instance.new("Decal")
            local decal5 =Instance.new("Decal")
            local decal6 =Instance.new("Decal")
            decal1.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal2.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal3.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal4.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal5.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal6.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal1.Parent = v
            decal2.Parent = v
            decal3.Parent = v
            decal4.Parent = v
            decal5.Parent = v
            decal6.Parent = v
            decal1.Face = "Front"
            decal2.Face = "Top"
            decal3.Face = "Left"
            decal4.Face = "Right"
            decal5.Face = "Bottom"
            decal6.Face = "Back"
        end
        end
            for i,v in pairs (game.Workspace:GetChildren()) do
            if v:IsA("Model") then
            for i,z in pairs (v:GetChildren()) do
            if z:IsA("Part") then
                        local decal7 =Instance.new("Decal")
            local decal8 =Instance.new("Decal")
            local decal9 =Instance.new("Decal")
            local decal10 =Instance.new("Decal")
            local decal11 =Instance.new("Decal")
            local decal12 =Instance.new("Decal")
            decal7.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal8.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal9.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal10.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal11.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal12.Texture = "http://www.roblox.com/asset/?id=" ..ID
            decal7.Parent = z
            decal8.Parent = z
            decal9.Parent = z
            decal10.Parent = z
            decal11.Parent = z
            decal12.Parent = z
            decal7.Face = "Front"
            decal8.Face = "Top"
            decal9.Face = "Left"
            decal10.Face = "Right"
            decal11.Face = "Bottom"
            decal12.Face = "Back"
            end
            end
            end
            end 
 
 
if Skybox == true then
local sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=14276097038" ..ID
sky.SkyboxDn = "http://www.roblox.com/asset/?id=14276097038" ..ID
sky.SkyboxFt = "http://www.roblox.com/asset/?id=14276097038" ..ID
sky.SkyboxLf = "http://www.roblox.com/asset/?id=14276097038" ..ID
sky.SkyboxRt = "http://www.roblox.com/asset/?id=14276097038" ..ID
sky.SkyboxUp = "http://www.roblox.com/asset/?id=14276097038" ..ID
end
 
if particle == true then
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Part") then
    local particle = Instance.new("ParticleEmitter")
    particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
    particle.Parent = v
    particle.Rate = 200
    for i,x in pairs (game.Workspace:GetChildren()) do
        if x:IsA("Model") then
            for i,z in pairs (x:GetChildren()) do
            if z:IsA("Part") then
                    local particle2 = Instance.new("ParticleEmitter")
    particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
    particle2.Parent = z
    particle2.Rate = 200
                end
            end
        end
        end
        end
        end
end