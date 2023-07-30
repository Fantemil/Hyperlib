local MessageInst = Instance.new("Message", game:GetService("CoreGui"))

-- SETTINGS
local SIMULATE_SND	= false	-- Play all sounds, similar to (but for some reason not the same as) what your victims hear? If FALSE, locally mutes all sounds.
local INTERVAL		= 5.0	-- How often to replay non-looping sounds. 5.0 is recommended, as lower numbers have increased network activity/ping.

if not game:GetService("SoundService").RespectFilteringEnabled then
	local function ForcePlaySounds()
		-- Turn all sounds into the creepy slowed down birds!
		for _, potSound in pairs(game:GetDescendants()) do
			if potSound:IsA("Sound") then
				pcall(function()
				    potSound.Playing = true
				    if not SIMULATE_SND then potSound.Volume = 0 end
				end)
			end
		end
	end
	
	-- Let's give every sound a chance to…play and annoy everyone else!
	ForcePlaySounds()
	
	local RetriggerDelta = 0.0
	game:GetService("RunService").Heartbeat:Connect(function(_delta)
	    RetriggerDelta += _delta
	    
	    if RetriggerDelta >= INTERVAL then
	    	RetriggerDelta = 0.0
	    	ForcePlaySounds()
	    end
	end)
	
	if not SIMULATE_SND then
		MessageInst.Text = "Done! Though you can't hear it, other players are hearing a barrage of all sounds! Check chat. ;)"
	else
		MessageInst.Text = "Done! Everyone on the server can hear the barrage of noises that you're hearing (and more). Cool, huh?"
	end
else
	MessageInst.Text = "This place has RespectFilteringEnabled set, so other players wouldn't hear the sound spam..."
end

game:GetService("Debris"):AddItem(MessageInst, 5.0)