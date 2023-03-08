local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
local sr = Instance.new("SunRaysEffect",l)
sr.Intensity = 0.075
sr.Spread = 0.01
local df = Instance.new("DepthOfFieldEffect",l)
df.FarIntensity = 0.01
l.GlobalShadows = true
l.Brightness = 0.7
l.ClockTime = 13.5
l.GeographicLatitude = 45
l.TimeOfDay = 16
sethiddenproperty(l,"Technology",4)
sethiddenproperty(l,"ShadowSoftness",1)
sethiddenproperty(t,"Decoration",true)