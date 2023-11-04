local soundList = game:GetService("HttpService"):JSONDecode(readfile("sounds"))  -- List to store valid SoundIds
local radio = game.Workspace.speakers.radio
local waitSeconds = 180
local tick = 175
local OldSoundIndex = 0

AddSong = game:GetService("ReplicatedStorage").submitSong

local function isSoundIdInList(soundId)
    for _, existingSoundId in ipairs(soundList) do
        if existingSoundId == soundId then
            return true
        end
    end
    return false
end

while true do
    local newSoundId = radio.sound.SoundId
    if radio.sound.IsLoaded then
        if not isSoundIdInList(newSoundId:sub(14) .. newSoundId:sub(24)) then
        	print("New music: "..newSoundId)
            table.insert(soundList, newSoundId:sub(14) .. newSoundId:sub(24))
            writefile("sounds", game:GetService("HttpService"):JSONEncode(soundList))
    	end
    end
    tick += 1
    if tick == 180 then
    	soundIndex = math.random(1, #soundList)
    	while soundIndex == OldSoundIndex do
    		soundIndex = math.random(1, #soundList)
    		wait()
    	end
    	OldSoundIndex = soundIndex
    	sound = soundList[soundIndex]
    	result = AddSong:InvokeServer(sound)
    	print("Playing: "..sound)
    	print("Response from the server for "..sound..": "..result)
    	tick = 0
    end
	wait(1)
end