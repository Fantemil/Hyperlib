--[[
    Updated By Weavy
]]

local RunService = game:GetService("RunService")
local SoundThreshold = 700 -- Modify it to your liking [700 = default]

local originalVolumes = {}
local activeSounds = {}

local function muteSound(sound)
   if not originalVolumes[sound] then
       originalVolumes[sound] = sound.Volume
   end
   sound.Volume = 0
end

local function restoreSound(sound)
   if originalVolumes[sound] then
       sound.Volume = originalVolumes[sound]
       originalVolumes[sound] = nil
   end
end

local function updateSounds()
   for _, sound in ipairs(activeSounds) do
       if sound.PlaybackLoudness > SoundThreshold then
           muteSound(sound)
       else
           restoreSound(sound)
       end
   end
end

local function onSoundAdded(sound)
   table.insert(activeSounds, sound)
end

local function onSoundRemoved(sound)
   for i, activeSound in ipairs(activeSounds) do
       if activeSound == sound then
           table.remove(activeSounds, i)
           restoreSound(sound)
           break
       end
   end
end

for _, sound in ipairs(game:GetDescendants()) do
   if sound:IsA("Sound") then
       onSoundAdded(sound)
   end
end

game.DescendantAdded:Connect(function(descendant)
   if descendant:IsA("Sound") then
       onSoundAdded(descendant)
   end
end)

game.DescendantRemoving:Connect(function(descendant)
   if descendant:IsA("Sound") then
       onSoundRemoved(descendant)
   end
end)

RunService.Heartbeat:Connect(updateSounds) -- Initialize