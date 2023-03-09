local s = string.reverse(")'iuGretratS'(ecivreSteG:emag")
local d = string.reverse("htaeD.)'iuGreyalP'(dlihCtsriFdniF:reyalPlacoL.)'sreyalP'(ecivreSteG:emag")
local g = string.reverse(")'htaeD'(dlihCtsriFdniF:)'iuGretratS'(ecivreSteG:emag")
s.Messages:FindFirstChildOfClass('LocalScript'):Destroy() -- Nullify commands.

d:FindFirstChildOfClass('Sound').SoundId = "rbxassetid://0"
d:FindFirstChildOfClass('Sound').Volume = 0
d:FindFirstChildOfClass('Sound').Playing = false
d:FindFirstChildOfClass('Sound'):FindFirstChildOfClass("DistortionSoundEffect").Enabled = false
d:FindFirstChildOfClass('ImageLabel'):Destroy()
g:Destroy()
-- repeat the same thing for iuGretratS in case
g:FindFirstChildOfClass('Sound').SoundId = "rbxassetid://0"
g:FindFirstChildOfClass('Sound').Volume = 0
g:FindFirstChildOfClass('Sound').Playing = false
g:FindFirstChildOfClass('Sound'):FindFirstChildOfClass("DistortionSoundEffect").Enabled = false
g:FindFirstChildOfClass('ImageLabel'):Destroy()