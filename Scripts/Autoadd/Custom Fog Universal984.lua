_G.Archivable = true -- true or false
_G.Density = 0.439 -- atmosphere density (0 to 1)
_G.Offset = 1 -- atmosphere offset (0 to 1)
_G.Color = Color3.fromRGB(11, 14, 199) -- rgb(0, 0, 0) / atmosphere color
_G.Decay = Color3.fromRGB(7, 4, 92) -- rgb(0, 0, 0) / atmosphere decay color 
_G.Glare = 0.61 -- atmosphere Glare amount (0 to 1)
_G.Haze = 10 -- atmosphere haze (0 to 10)

--{{ LuxScript Set }}--
-- Density = 0.439 / 0.488
-- Offset = 1
-- Color = 11, 14, 199
-- Decay = 7, 4, 92
-- Glare = 0.61
-- Haze = 10 

loadstring(game:HttpGet('https://raw.githubusercontent.com/dtblue-universal/Scripts/main/Main/Loader/Fog%20Changer.lua'))()
