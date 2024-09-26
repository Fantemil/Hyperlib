--[[Subscribe to Zaptosis on YouTube for more awesome scripts

Also Subscribe to JN HH Gaming on Youtube

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ

]]

local find1 = game.Lighting:FindFirstChildWhichIsA("BloomEffect") if find1 then

game.Lighting:FindFirstChildWhichIsA("BloomEffect"):Destroy()

end

local find2 = game.Lighting:FindFirstChildWhichIsA("SunRaysEffect") if find2 then

game.Lighting:FindFirstChildWhichIsA("SunRaysEffect"):Destroy()

end

local find3 = game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect") if find3 then

game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect"):Destroy()

end

local find4 = game.Lighting:FindFirstChildWhichIsA("BlurEffect") if find4 then

game.Lighting:FindFirstChildWhichIsA("BlurEffect"):Destroy()

end

local find5 = game.Lighting:FindFirstChildWhichIsA("Sky") if find5 then

game.Lighting:FindFirstChildWhichIsA("Sky"):Destroy()

end

local blem = Instance.new("BloomEffect",game.Lighting)

local sanrey = Instance.new("SunRaysEffect",game.Lighting)

local color = Instance.new("ColorCorrectionEffect",game.Lighting)

local blor = Instance.new("BlurEffect",game.Lighting)

Instance.new("Sky",game.Lighting)

game.Lighting.ExposureCompensation = 0.34

game.Lighting.ShadowSoftness = 1

game.Lighting.EnvironmentDiffuseScale = 0.343

game.Lighting.EnvironmentSpecularScale = 1

game.Lighting.Brightness = 2

game.Lighting.ColorShift_Top = Color3.fromRGB(118,117,108)

game.Lighting.OutdoorAmbient = Color3.fromRGB(141,141,141)

game.Lighting.GeographicLatitude = 100

game.Lighting.Ambient = Color3.fromRGB(112,112,112)

blem.Intensity = 0.5

blem.Size = 22

blem.Threshold = 1.5

sanrey.Intensity = 0.117

sanrey.Spread = 1

blor.Size = 2

color.Contrast = 0.3

color.Saturation = 0.2

color.TintColor = Color3.fromRGB(255,252,224)