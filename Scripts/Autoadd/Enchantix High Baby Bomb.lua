--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- ROYALE HIGH BABY BOMB
-- BY XANE, 2023
-- Go to Enchantix High and use something like Infinite Yield to fly really high
-- above the school's courtyard-thing then execute this script. Your character
-- will start uncontrollably dropping babies everywhere! Vfly is recommended so
-- you can fly faster than any player that owns the flight speed gamepass, so
-- you won't be confronted. This script sadly doesn't crash servers, but it will
-- cause massive lag for as long as you run it.

-- SETTINGS
local AUTO_DROP	= true	-- Automatically drop babies?
local DELAY_TIME	= 0.063	-- How long to wait between spawning babies and dropping them.

-- Remove a baby from this list to not drop it.
local Babies = { "BlondeGirl", "BrownGirl", "RedGirl", "BlackGirl", "BlackBoy", "BrownBoy", "BaldBoy", "RedBoy" }
local BabyFolder = game:GetService("ReplicatedStorage"):FindFirstChild("babycommands")
local YourCharacter = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
local RandomBaby = 0

-- As long as this script is enabled, this code loops.
while true do
	RandomBaby = math.random(1, #Babies)
	
	-- Make the server warp a baby into your arms.
	if BabyFolder:FindFirstChild(string.lower(Babies[RandomBaby])) then
		BabyFolder:FindFirstChild(string.lower(Babies[RandomBaby])):FireServer()
		
		local BabyInBackpack = nil
		while not BabyInBackpack do
			BabyInBackpack = game.Players.LocalPlayer.Backpack:WaitForChild(Babies[RandomBaby], 5)
		end
		
		if BabyInBackpack then
			-- Hold the baby, disable touching it, then DROP IT LIKE IT'S HOT!
			YourCharacter.Humanoid:EquipTool(BabyInBackpack)
			
			local BabyInHand = nil
			while not BabyInHand do
				BabyInHand = YourCharacter:WaitForChild(Babies[RandomBaby], 5)
			end
			
			local BabyHandle = nil
			while not BabyHandle do
				BabyHandle = BabyInHand:WaitForChild("Handle",5)
			end
			
			if BabyInHand and BabyHandle then
				-- BabyFolder.bottle:FireServer()  -- Give the baby a bottle before dropping them.
				BabyHandle.CanTouch = false
				print("Should've made it untouchable.")
				
				-- This script can be automated! Set the flag and babies will drop automatically!
				if AUTO_DROP then
					task.wait(DELAY_TIME)
					BabyInHand.Parent = workspace
					task.wait(DELAY_TIME)
				end
				
				-- BabyHandle:Destroy()
				
				-- Wait until the baby is dropped before continuing.
				-- task.wait(DELAY_TIME)
				local temp_waitTime = 0.0
				while BabyInHand and BabyInHand.Parent ~= workspace do
					temp_waitTime += task.wait()
					
					-- If the baby isn't taken care of, replace it with a new one.
					if temp_waitTime >= 1.25 then
						BabyInHand:Destroy()
						BabyInHand = nil
						task.wait()
						
						-- Additionally, soometimes, empty the player's backpack.
						local BackpackRef = game.Players.LocalPlayer.Backpack
						if BackpackRef then
							BackpackRef:ClearAllChildren()
						end
					end
				end
			else warn("RH BABY DROPPER: Couldn't locate the baby in your hand SOMEHOW.")
			end
		else warn("RH BABY DROPPER: Couldn't locate the baby in your backpack. Here's another one.")
		end
	end
	
	task.wait(0.175)
end