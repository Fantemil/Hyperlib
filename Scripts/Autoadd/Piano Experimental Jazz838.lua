-- SETTINGS
local TOTAL_CHORDS		= 768	-- How long the performance lasts in chords.
local CHORD_SIZE		= 4		-- The higher this  number, the more "jazzy" your chords will sound.
local OVERLOAD_CAMPUS2	= false	-- If true, plays all 61 notes on the keyboard consistently. Use this at Campus 2 to screw it up!
local PAUSE_CHORD_MULT	= 0.125	-- How long to pause between each chord. It's always varied, but this determines how long a pause will be at most.

local pianoSpamInbox = workspace.GlobalPianoConnector
local RandomNote = 17 -- I don't know why I set this to 17.

local function MakeRandomBinaryNumber()
	return math.round((math.random()*20)%2)
end

for i = 1, TOTAL_CHORDS do
	RandomNote = math.round((math.random()*61)+1)   -- Use any key on the keyboard, then HIT IT!
	
	if not OVERLOAD_CAMPUS2 then
		for i = 0, math.round(((math.random()*61)%CHORD_SIZE)+1) do -- play a random number of notes from 1-10.
			pianoSpamInbox:FireServer("play", RandomNote+(i*5), MakeRandomBinaryNumber(), MakeRandomBinaryNumber())
		end
	else	-- Play every single note on the piano. SLAM THE KEYS to mess up everyone on the server! (Only does anything at Campus 2.)
		for i = 1, 61 do
			pianoSpamInbox:FireServer("play", i, 1, 1)
		end
	end
	
	if i%16 == 0 then pianoSpamInbox:FireServer("play", RandomNote+15, MakeRandomBinaryNumber(), MakeRandomBinaryNumber()) end
	if not OVERLOAD_CAMPUS2 then task.wait((math.random()*PAUSE_CHORD_MULT)+0.03125)
	else task.wait()
	end
	if i%25 == 0 then print("On chord #" .. i .. "/" .. TOTAL_CHORDS) end
end

script:Destroy()