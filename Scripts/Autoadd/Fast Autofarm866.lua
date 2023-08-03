local fpsBoost = fpsBoost or false


if not getconnections then return end
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable()
end

local c = workspace:WaitForChild("__DEBRIS",10)
c.ChildAdded:Connect(function(ch)
    task.wait()
    if fpsBoost then
        ch:Destroy()
    end
end)

local petNet = loadstring(game:HttpGet("https://rawscripts.net/raw/Pet-Simulator-X!-PSX-Safe-Networking-3732"))()

local Food = petNet:getPath("Food")
local Entity = petNet:getPath("Entity")
local Customer = petNet:getPath("Customer")
local Waiter = petNet:getPath("Waiter")
local Appliance = petNet:getPath("Appliance")
local Bakery = petNet:getPath("Bakery")
local player = game:GetService("Players").LocalPlayer

local _L = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework",10):WaitForChild("Library",10));







Food.RandomFoodChoice = function(customerOwnerUID, customerOwnerID, isRichCustomer, isPirateCustomer, isNearTree)
    local spoof = Food.new("45", customerOwnerUID, customerOwnerID, true, true)
    spoof.IsGold = true
    return spoof
end

function Entity:FadeTransparency(targetTransparency, finishedCallback)
	
	local processedCallback = false
	
	for _, child in ipairs(self.model:GetDescendants()) do
		if child.Name == "HumanoidRootPart" or child.Name == "CenterPart" or not child:IsA("BasePart") then
			continue
		end
		if child.Name == "Head" and self.ID == "25" then
			continue
		end
		_L.Functions.FastTween(
			child,
			{Transparency = targetTransparency},
			{0.0000002, "Quad", "Out"}
		).Completed:Connect(function()
			-- race condition? god I hope not
			if finishedCallback and not processedCallback then
				processedCallback = true
				finishedCallback()
			end
		end)
	end
	
end


function Entity:WalkThroughWaypoints(voxelpoints, waypoints, startX, startZ)
    self:PlayLoadedAnimation("walking")
	
	if #voxelpoints == 0 then
		return
	end
	
	if not self:BelongsToMyBakery() and self.stateData.walkingThroughWaypoints then
		repeat wait() until self.isDeleted or not self.stateData.walkingThroughWaypoints
		if self.isDeleted then
			return
		end
	end
	if not self:BelongsToMyBakery() then
		self.stateData.walkingThroughWaypoints = true
	end
	
	-- replication fix?
	if not self:BelongsToMyBakery() then
		self.model.HumanoidRootPart.Anchored = false
	end
	
	for i, v in ipairs(waypoints) do
				
		self.model.HumanoidRootPart.CFrame = CFrame.new(v)
		--self.humanoid.MoveToFinished:Wait()
		local oldX, oldZ = self.xVoxel, self.zVoxel
		self.xVoxel = voxelpoints[i].x
		self.zVoxel = voxelpoints[i].y
		
		-- no need for position table updates if it's not my client.
		-- only the owner of the bakery does pathfinding calculations.
		-- if replication occurs, the host client sends the pathfinding
		-- data.... it is not recalculated
		if self:BelongsToMyBakery() then
			self:GetMyFloor():BroadcastNPCPositionChange(self, oldX, oldZ)
		end
	end	
	
	if not self:BelongsToMyBakery() then
		self.stateData.walkingThroughWaypoints = false
	end
		
	self:StopLoadedAnimation("walking")
	self:PlayLoadedAnimation("idle")
end






function Customer:ChangeToWaitForOrderState()
	
	if self.state ~= "WalkingToSeat" then
		return
	end

	local seatLeaf = self:EntityTable()[self.stateData.seatUID]
	local tableLeaf = self:EntityTable()[self.stateData.tableUID]
			
	if seatLeaf.isDeleted or tableLeaf.isDeleted then
		self:ForcedToLeave()
		return
	end
	
	self:SetCustomerState("ThinkingAboutOrder")
	
	-- make the humanoid sit
	self:SitInSeat(seatLeaf).Completed:Connect(function()
		self.humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		
		-- change voxel position to match the seat
		self.xVoxel = seatLeaf.xVoxel
		self.zVoxel = seatLeaf.zVoxel
		
		coroutine.wrap(function()
			
			-- start reading the menu
			self:ReadMenu()
			if self.isDeleted or self.state ~= "ThinkingAboutOrder" then
				return
			end
			
			-- stop reading the menu
			self:StopReadingMenu()
			
			-- advance to next state
			self:SetCustomerState("DecidedOnOrder")
			
			-- only set my entire group to ready to order when everybody has decided on the order
			local myGroup = {self}
			for _, partner in ipairs(self.stateData.queueGroup) do
				if not partner.isDeleted then
					table.insert(myGroup, partner)
				end
			end
			local foundUndecidedMember = false
			for _, groupMember in ipairs(myGroup) do
				if groupMember.state ~= "DecidedOnOrder" then
					foundUndecidedMember = true
					break
				end
			end
			
			-- if the entire group is ready, then have them say it in sync
			if not foundUndecidedMember then
				for _, groupMember in ipairs(myGroup) do
					groupMember:ReadyToOrder()
				end
			end
			
		end)()
	end)

end


function Customer:ChangeToEatingState()
	
	coroutine.wrap(function()
		if self.state == "EatingFood" then
			return
		end
		
		-- first, check for silverware
		local myFloor = self:GetMyFloor()
		table.sort(myFloor.silverwareTrays, function(a, b)
			local aDist = math.abs(self.xVoxel - a.xVoxel) + math.abs(self.zVoxel - a.zVoxel)
			local bDist = math.abs(self.xVoxel - b.xVoxel) + math.abs(self.zVoxel - b.zVoxel)
			return aDist < bDist
		end)
		table.sort(myFloor.goldSilverwareTrays, function(a, b)
			local aDist = math.abs(self.xVoxel - a.xVoxel) + math.abs(self.zVoxel - a.zVoxel)
			local bDist = math.abs(self.xVoxel - b.xVoxel) + math.abs(self.zVoxel - b.zVoxel)
			return aDist < bDist
		end)
		
		self:SetCustomerState("EatingFood")
		
		-- if there's a path to me, delete it
		if self.stateData.pathToMe then
			_L.Variables.MyBakery:CleanupAnimatedPath()
			self.stateData.pathToMe = nil
		end

		local didSaladCheck = false
		local function checkForSaladBars(isWalkingFromSilverware, doWalkBackToSeat)
			didSaladCheck = true
			local didWalkToSalad = false
			-- walk to salad bar sometimes
			local isWalkingToSaladBar = false
			for _, saladBar in ipairs(myFloor.saladBars) do
				if math.random() < 0.20 then

					if not isWalkingFromSilverware then
						self:StandUp()
					end
					
					isWalkingToSaladBar = true
					didWalkToSalad = true
					local sx, sy, sz = self.xVoxel, self.yVoxel, self.zVoxel
					self:WalkToPoint(saladBar.xVoxel, saladBar.yVoxel, saladBar.zVoxel, function()
						if saladBar.isDeleted then
							isWalkingToSaladBar = false
							self:ForcedToLeave()
							return
						end

						self:FaceEntity(saladBar)
						_L.SFX.Play(5708685167, saladBar.model.PrimaryPart)
						_L.Network.Fire("AwardTipWithVerification", self.UID, saladBar.UID, self.stateData.foodOrder.ID, isWalkingFromSilverware)

						if doWalkBackToSeat then
							self:WalkToPoint(sx, sy, sz, function()
								isWalkingToSaladBar = false
								if self.stateData.mySeat.isDeleted then
									self:ForcedToLeave()
									return
								end
								self:SitInSeat(self.stateData.mySeat)
							end)
						else
							isWalkingToSaladBar = false
						end
					end)   
					break
				end
			end
			if isWalkingToSaladBar then
				repeat wait() until not isWalkingToSaladBar
			end
			return didWalkToSalad
		end
		
		local didDessertCheck = false
		local function checkForDessertBars(isWalkingFromSilverware, doWalkBackToSeat)
			didDessertCheck = true
			local didWalkToDessert = false
			-- walk to salad bar sometimes
			local isWalkingToDessertBar = false
			for _, dessertBar in ipairs(myFloor.dessertBars) do
				if math.random() < 0.20 then
					
					if not isWalkingFromSilverware then
						self:StandUp()
					end
					
					isWalkingToDessertBar = true
					didWalkToDessert = true
					local sx, sy, sz = self.xVoxel, self.yVoxel, self.zVoxel
					self:WalkToPoint(dessertBar.xVoxel, dessertBar.yVoxel, dessertBar.zVoxel, function()
						if dessertBar.isDeleted then
							isWalkingToDessertBar = false
							self:ForcedToLeave()
							return
						end
						
						self:FaceEntity(dessertBar)
						_L.SFX.Play(5708685167, dessertBar.model.PrimaryPart)
						_L.Network.Fire("AwardTipWithVerification", self.UID, dessertBar.UID, self.stateData.foodOrder.ID, isWalkingFromSilverware)
						
						if doWalkBackToSeat then
							self:WalkToPoint(sx, sy, sz, function()
								isWalkingToDessertBar = false
								if self.stateData.mySeat.isDeleted then
									self:ForcedToLeave()
									return
								end
								self:SitInSeat(self.stateData.mySeat)
							end)
						else
							isWalkingToDessertBar = false
						end
					end)   
					break
				end
			end
			if isWalkingToDessertBar then
				repeat wait() until not isWalkingToDessertBar
			end
			return didWalkToDessert
		end
		
		-- create food model for the customer
		if not self.stateData.foodOrder then
			self:ForcedToLeave()
			return
		end
		local myTable = self:EntityTable()[self.stateData.tableUID]
		local mySeat = self:EntityTable()[self.stateData.seatUID]
		if not myTable or not mySeat then
			_L.Print("CRITICAL: COULDN'T FIND CUSTOMERS TABLE WHEN EATING", true)
			return
		end
		local myFloor = myTable:GetMyFloor()
		local worldPos = myFloor:WorldPositionFromVoxel(mySeat:GetFacePosition())
		local tableRoot = myTable.model.PrimaryPart
		local tableTop = Vector3.new(worldPos.X, tableRoot.Position.Y + tableRoot.Size.Y/2, worldPos.Z)
		local foodOffset = (-1.1)*mySeat:GetFaceDirection() + Vector3.new(0, self.stateData.foodOrder.data.model.PrimaryPart.Size.Y/2, 0)
		local foodCF = CFrame.new(tableTop + foodOffset)
		self:CreateMyFoodModel(foodCF)
		
		local isWalkingToTray = false
		local wasWalkingToTray = false
		local trayUID = false
		local forkModel = nil
		local spoonModel = nil
		local welds = {}
		local function walkToTray(tray)
			isWalkingToTray = true
			wasWalkingToTray = true
			trayUID = tray.UID
			self:StandUp()
			local sx, sy, sz = self.xVoxel, self.yVoxel, self.zVoxel
			self:WalkToPoint(tray.xVoxel, tray.yVoxel, tray.zVoxel, function()
				if tray.isDeleted then
					isWalkingToTray = false
					self:ForcedToLeave()
					return
				end
				local sounds = {5601560377, 5601560515, 5601560641}
				_L.SFX.Play(sounds[math.random(#sounds)], tray.model.PrimaryPart)
				self:FaceEntity(tray)

				if not checkForSaladBars(true, false) then
					checkForDessertBars(true, false)
				end
				
				self:WalkToPoint(sx, sy, sz, function()
					isWalkingToTray = false
					if self.stateData.mySeat.isDeleted then
						self:ForcedToLeave()
						return
					end
					self:SitInSeat(self.stateData.mySeat)
					
					-- hold silverware
					local isGold = tray.ID == "25"
					local function weldToHand(part, hand)
						local weld = Instance.new("Weld", part)
						weld.Part0 = part 
						weld.Part1 = hand
						weld.C0 = CFrame.Angles(-math.pi/2, 0, 0)
						table.insert(welds, weld)
					end
					if isGold then
						forkModel = game.ReplicatedStorage.Assets.Models["Luxury Fork"]:Clone()
						spoonModel = game.ReplicatedStorage.Assets.Models["Luxury Spoon"]:Clone()
						forkModel.Parent = self.model
						spoonModel.Parent = self.model
						weldToHand(forkModel, self.model.RightHand)
						weldToHand(spoonModel, self.model.LeftHand)
					else
						forkModel = game.ReplicatedStorage.Assets.Models["Default Fork"]:Clone()
						spoonModel = game.ReplicatedStorage.Assets.Models["Default Spoon"]:Clone()
						forkModel.Parent = self.model
						spoonModel.Parent = self.model
						weldToHand(forkModel, self.model.RightHand)
						weldToHand(spoonModel, self.model.LeftHand)
					end
				end)
			end)
		end
		
		if #myFloor.goldSilverwareTrays > 0 then
			walkToTray(myFloor.goldSilverwareTrays[1])
		elseif #myFloor.silverwareTrays > 0 then
			local goodRoll = false
			for i = 1, #myFloor.silverwareTrays do
				if true then
					goodRoll = true
				end
			end
			if goodRoll then
				walkToTray(myFloor.silverwareTrays[1])
			end
		end
		
		if isWalkingToTray then
			repeat wait() until not isWalkingToTray
		end

		if not didSaladCheck then
			if not checkForSaladBars(false, true) then
				checkForDessertBars(false, true)
			end
		end
			
		-- play eating animation
		self:PlayLoadedAnimation("eating")

		-- play served sound
		_L.SFX.Play(5205174537, self.model.PrimaryPart, nil, 0.60)
		
		-- play eating looped sound
		local pitch = 1 + (math.random() - 0.50)*0.10
		local eatSound = math.random() < 0.50 and 5029600710 or 5029600543
		self.stateData.loopedEatingSound = _L.SFX.Play(eatSound, self.model.PrimaryPart, pitch, 0.85, 35, nil, true)
			
		coroutine.wrap(function()
			
			-- eat timing is determined by the server.   //no, it's not, -bluwud
			local forceLeaveTip = true
			if not self.isDeleted and self.state == "EatingFood" then
				if self.stateData.loopedEatingSound then
					self.stateData.loopedEatingSound = self.stateData.loopedEatingSound:Destroy()
				end
				self.stateData.foodOrder:ChangeToDirtyDish()
				self:StopLoadedAnimation("eating")
				self:ChangeToReadyToExitState(forceLeaveTip)
				
				if forkModel then
					forkModel:Destroy()
					spoonModel:Destroy()
					for _, weld in ipairs(welds) do
						weld:Destroy()
					end
					welds = {}
				end
			end
		end)()
	end)()
	
end



function Customer:ChangeToExitingState(wasForcedToLeave, forcedToLeaveTip)
		
	if self.isDeleted then
		return
	end
	
	self.leaving = true
	self:SetCustomerState("WalkingToExit")
	
	-- remove customer from table
	local myTable = self:EntityTable()[self.stateData.tableUID]
	if myTable and not myTable.isDeleted then
		myTable:RemoveCustomerFromTable(self)
	end
	
	local myFloor = self:GetMyFloor()
				
	coroutine.wrap(function()
		if wasForcedToLeave then
			self:TimedEmoji("MadEmoji", 2)
		else
			if math.random() < 0.30 or _L.Variables.MyBakery.isTutorial then
				self:TimedEmoji("HappyEmoji", 2.5)
			end
		end
		
		-- make humanoid stand
		self:StandUp()
		
		local function goToExitAndLeave()
			self:WalkToNewFloor(_L.Variables.MyBakery.floors[1], function()
				local vx, vy, vz = _L.Variables.MyBakery:GetCustomerStartVoxel(1)
				self:WalkToPoint(vx, vy, vz, function()	
					self:FadeTransparency(1, function()
						self:LeaveBakery()
					end)					
				end, nil, true)
			end)
		end
		
		local isLeavingTip = false
		local isGoingForGumball = false
		local isGoingForCandy = false
		local isGoingForArcade = false
		local isGoingForPopcorn = false
		local isGoingForSoda = false
		local isGoingForBowl = false
						
		-- is there a tip jar on this floor? if so, roll to leave tip
		if not wasForcedToLeave then
			local tipJars = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "Tip Jar")
			if #tipJars > 0 then
				for _, tipJar in ipairs(tipJars) do
					local tipChance = tipJar.ID == "14" and 0.05 or tipJar.ID == "19" and 0.50 or tipJar.ID == "26" and 0.40 or 0
					if true or forcedToLeaveTip or self:IsVIPCustomer() then
						isLeavingTip = true
						self:WalkToPoint(tipJar.xVoxel, tipJar.yVoxel, tipJar.zVoxel, function()
							if tipJar.isDeleted or self.isDeleted or not self.stateData or not self.stateData.foodOrder then
								goToExitAndLeave()
								return
							end
							
							-- happy emoji at tip jar
							self:TimedEmoji("VeryHappyEmoji", 2.5)
							
							_L.Network.Fire("AwardTipWithVerification", self.UID, tipJar.UID, self.stateData.foodOrder.ID)
							_L.SFX.Play(5839737230, tipJar.model.PrimaryPart)
							
							self:FaceEntity(tipJar)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
		end
		
		if not isLeavingTip then
			local candyBowls = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "CandyBowl")
			if #candyBowls > 0 then
				for _, bowl in ipairs(candyBowls) do
					if true and bowl.level and bowl.level > 0 then
						isGoingForBowl = true
						self:WalkToPoint(bowl.xVoxel, bowl.yVoxel, bowl.zVoxel, function()
							if bowl.isDeleted or not self.stateData or not self.stateData.foodOrder or bowl.level <= 0 then
								goToExitAndLeave()
								return
							end
							
							-- happy emoji at tip jar
							self:TimedEmoji("VeryHappyEmoji", 2.5)

							_L.Network.Fire("AwardTipWithVerification", self.UID, bowl.UID, self.stateData.foodOrder.ID)
							_L.SFX.Play(5057746151, bowl.model.PrimaryPart)

							self:FaceEntity(bowl)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
		end
		
		-- only go for gumball if we're not leaving a tip
		if not isLeavingTip and not isGoingForBowl then
			
			local gumballMachines = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "GumballMachine")
			if #gumballMachines > 0 then
				for _, gumballMachine in ipairs(gumballMachines) do
					if true then
						isGoingForGumball = true
						
						local fx, fy, fz = gumballMachine:GetFacePosition()
						if not myFloor:IsValidVoxel(fx, fy, fz) then
							fx, fy, fz = gumballMachine.xVoxel, gumballMachine.yVoxel, gumballMachine.zVoxel
						end
						self:WalkToPoint(fx, fy, fz, function()
							if gumballMachine.isDeleted or self.isDeleted then
								goToExitAndLeave()
								return
							end
							
							-- gumball tip
							if self.stateData.foodOrder then
								_L.Network.Fire("AwardTipWithVerification", self.UID, gumballMachine.UID, self.stateData.foodOrder.ID)
							end
							
							-- gumball sound
							_L.SFX.Play(5205171179, gumballMachine.model.PrimaryPart.Position)
							
							-- gumball emoji
							self:TimedEmoji("VeryHappyEmoji", 2.5)
							self:FaceEntity(gumballMachine)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
			
		end
		
		if not isLeavingTip and not isGoingForGumball and not isGoingForBowl then
			local candyMachines = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "CandyMachine")
			if #candyMachines > 0 then
				for _, candyMachine in ipairs(candyMachines) do
					if true then
						isGoingForCandy = true
						
						local fx, fy, fz = candyMachine:GetFacePosition()
						if not myFloor:IsValidVoxel(fx, fy, fz) then
							fx, fy, fz = candyMachine.xVoxel, candyMachine.yVoxel, candyMachine.zVoxel
						end
						self:WalkToPoint(fx, fy, fz, function()
							if candyMachine.isDeleted or self.isDeleted then
								goToExitAndLeave()
								return
							end
							
							_L.SFX.Play(5601560734, candyMachine.model.PrimaryPart)
							
							-- gumball tip
							if self.stateData.foodOrder then
								_L.Network.Fire("AwardTipWithVerification", self.UID, candyMachine.UID, self.stateData.foodOrder.ID)
							end
							
							-- gumball emoji
							self:TimedEmoji("VeryHappyEmoji", 2.5)
							self:FaceEntity(candyMachine)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
		end
		
		-- check for popcorn machine
		if not isLeavingTip and not isGoingForGumball and not isGoingForCandy and not isGoingForBowl then
			
			local popcornMachines = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "PopcornMachine")
			if #popcornMachines > 0 then
				for _, popcornMachine in ipairs(popcornMachines) do
					if true then
						isGoingForPopcorn = true
						
						local fx, fy, fz = popcornMachine:GetFacePosition()
						if not myFloor:IsValidVoxel(fx, fy, fz) then
							fx, fy, fz = popcornMachine.xVoxel, popcornMachine.yVoxel, popcornMachine.zVoxel
						end
						self:WalkToPoint(fx, fy, fz, function()
							if popcornMachine.isDeleted or self.isDeleted then
								goToExitAndLeave()
								return
							end
							
							_L.SFX.Play(5625433552, popcornMachine.model.PrimaryPart)
							
							-- popcorn tip
							if self.stateData.foodOrder then
								_L.Network.Fire("AwardTipWithVerification", self.UID, popcornMachine.UID, self.stateData.foodOrder.ID)
							end
							
							-- gumball emoji
							self:TimedEmoji("VeryHappyEmoji", 2.5)
							self:FaceEntity(popcornMachine)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
			
		end

		-- check for soda machine
		if not isLeavingTip and not isGoingForGumball and not isGoingForCandy and not isGoingForPopcorn and not wasForcedToLeave and not isGoingForBowl then
			local sodaMachines = myFloor:GetEntitiesFromClassAndSubClass("Appliance", "SodaMachine")
			if #sodaMachines > 0 then
				for _, sodaMachine in ipairs(sodaMachines) do
					if true then
						isGoingForSoda = true

						local fx, fy, fz = sodaMachine:GetFacePosition()
						if not myFloor:IsValidVoxel(fx, fy, fz) then
							fx, fy, fz = sodaMachine.xVoxel, sodaMachine.yVoxel, sodaMachine.zVoxel
						end
						self:WalkToPoint(fx, fy, fz, function()
							if sodaMachine.isDeleted or self.isDeleted then
								goToExitAndLeave()
								return
							end

							_L.SFX.Play(5708685354, sodaMachine.model.PrimaryPart)

							-- soda tip
							if self.stateData.foodOrder then
								_L.Network.Fire("AwardTipWithVerification", self.UID, sodaMachine.UID, self.stateData.foodOrder.ID)
							end

							-- gumball emoji
							self:TimedEmoji("VeryHappyEmoji", 2.5)
							self:FaceEntity(sodaMachine)
							goToExitAndLeave()
						end)
						break
					end
				end
			end
		end
		
		-- check for arcade machine
		if not isLeavingTip and not isGoingForGumball and not isGoingForCandy and not isGoingForPopcorn and not isGoingForSoda and not wasForcedToLeave and not isGoingForBowl then
			local arcadeMachines = myFloor:GetEntitiesFromClassAndSubClass("Furniture", "ArcadeMachine")
			if #arcadeMachines > 0 then
				local indices = _L.Functions.RandomIndices(arcadeMachines)
				for _, index in ipairs(indices) do
					local arcadeMachine = arcadeMachines[index]
					if arcadeMachine.arcadeState ~= "Highscore" then
						continue
					end
					if arcadeMachine.busy then
						continue
					end
					arcadeMachine.busy = true
					isGoingForArcade = true
					local fx, fy, fz = arcadeMachine:GetFacePosition()
					if not myFloor:IsValidVoxel(fx, fy, fz) then
						fx, fy, fz = arcadeMachine.xVoxel, arcadeMachine.yVoxel, arcadeMachine.zVoxel
					end
					self:WalkToPoint(fx, fy, fz, function()
						
						if arcadeMachine.isDeleted or self.isDeleted then
							goToExitAndLeave()
							return
						end
												
						self:FaceEntity(arcadeMachine)
						
						-- play game (halts thread until done)
						arcadeMachine:PlayGameWithCustomer(self)
						
						arcadeMachine.busy = false
						
						goToExitAndLeave()
						
					end)
					break
				end
			end
		end
		
		-- check for celebrity customer
		local isGoingForCelebrity = false
		(function()
			if isLeavingTip or isGoingForGumball or isGoingForCandy or isGoingForPopcorn or isGoingForArcade or isGoingForSoda or isGoingForBowl then
				return
			end
			if _L.Variables.MyBakery.nameCounters["Celebrity Customer"] == 0 then
				return
			end
			
			local celebrity = _L.Variables.MyBakery:SearchForCelebrity()
			if not celebrity or celebrity.isDeleted or celebrity.stateData.celebrityApproachCount >= 3 then
				return
			end
			
			local function isValidCelebState()
				local validCelebStates = {
					ThinkingAboutOrder = true,
					DecidedOnOrder = true,
					WaitingToOrder = true,
					WaitingForFood = true,
					EatingFood = true
				}
				return not celebrity.isDeleted and validCelebStates[celebrity.state]
			end
			
			if not isValidCelebState() then
				return
			end
			
			isGoingForCelebrity = true
			celebrity.stateData.celebrityApproachCount += 1
			
			self:WalkToNewFloor(celebrity:GetMyFloor(), function()
				if not isValidCelebState() then
					if not celebrity.isDeleted then
						celebrity.stateData.celebrityApproachCount -= 1
					end
					goToExitAndLeave()
					return
				end
				
				self:WalkToPoint(celebrity.xVoxel, celebrity.yVoxel, celebrity.zVoxel, function()
					if not isValidCelebState() then
						if not celebrity.isDeleted then
							celebrity.stateData.celebrityApproachCount -= 1
						end
						goToExitAndLeave()
						return
					end
					
					celebrity.stateData.celebrityApproachCount -= 1
					
					_L.SFX.Play(5278932469, celebrity.model.PrimaryPart.Position)
					self:FaceEntity(celebrity)
					self:TimedEmoji("Starstruck", 2.5)
					self:PlayLoadedAnimation("wave")
					goToExitAndLeave()
				end)
			end)
		end)()
		if not isLeavingTip and not isGoingForGumball and not isGoingForCelebrity and not isGoingForCandy and not isGoingForArcade and not isGoingForPopcorn and not isGoingForBowl then
			goToExitAndLeave()
		end
	end)()
end


function Waiter:StartActionLoop()
	coroutine.wrap(function()
		while not self.isDeleted do
			self:PerformAction()
			wait()
		end
	end)()
end


function Waiter:CheckForDishPickup()
	
	local myFloor = self:GetMyFloor()
	local selectedDishChair, selectedDishChairFloor = nil
	
	-- check other floors for dishes
	local indices = _L.Functions.RandomIndices(_L.Variables.MyBakery.floors)
	
	--check my floor first
	if true then
		for i, index in ipairs(indices) do
			if index == myFloor.floorLevel then
				table.remove(indices, i)
				table.insert(indices, 1, myFloor.floorLevel)
				break
			end
		end
	end
	
	for _, index in ipairs(indices) do
		local thisFloor = _L.Variables.MyBakery.floors[index]
		local dishIndices = _L.Functions.RandomIndices(thisFloor.dishChairs)
		for _, dishIndex in ipairs(dishIndices) do
			local dishChair = thisFloor.dishChairs[dishIndex]
			if dishChair.isDeleted or dishChair.stateData.flaggedByWaiterForDishPickup or not dishChair.stateData.dish or dishChair.stateData.dish.isDeleted then
				continue
			end
			selectedDishChair = dishChair
			selectedDishChairFloor = dishChair:GetMyFloor()
			break
		end
		if selectedDishChair then
			break
		end
	end
	
	if not selectedDishChair then
		return false
	end

	local dishwashers = myFloor:GatherDishwashersOnAnyFloor()
	if #dishwashers == 0 then
		return false
	end
	
	-- chair that has an attached dish to go to
	local dishChair = selectedDishChair
	dishChair.stateData.flaggedByWaiterForDishPickup = true
	
	local dishwasher = dishwashers[math.random(#dishwashers)]
	dishwasher.stateData.dishWasherTargetCount += 1
	
	-- flag the dish with the targeted dishwasher
	dishChair.stateData.dish.flaggedDishwasherUID = dishwasher.UID

	self.state = "WalkingToPickupDish"
	
	self:WalkToNewFloor(dishChair:GetMyFloor(), function()
		
		if dishChair.isDeleted or not dishChair.stateData.dish then
			dishwasher.stateData.dishWasherTargetCount -= 1
			self.state = "Idle"
			return
		end
		
		self:WalkToPoint(dishChair.xVoxel, dishChair.yVoxel, dishChair.zVoxel, function()
			
			if dishChair.isDeleted or not dishChair.stateData.dish then
				dishwasher.stateData.dishWasherTargetCount -= 1
				self.state = "Idle"
				return
			end
			
			dishChair.stateData.flaggedByWaiterForDishPickup = false
			
			if not dishChair.stateData.dish or dishChair.stateData.dish.isDeleted then
				dishwasher.stateData.dishWasherTargetCount -= 1
				self.state = "Idle"
				return
			end
			
			-- dish is good.  delete it and remove
			if dishChair.stateData.dish and dishChair.stateData.dish.model then
				
				-- remove dishChair from available
				for i, dishChairEntry in ipairs(selectedDishChairFloor.dishChairs) do
					if dishChairEntry == selectedDishChair then
						table.remove(selectedDishChairFloor.dishChairs, i)
						break
					end
				end
				
				-- stop the interact
				dishChair.stateData.dish:CleanupInteract()
				
				-- play dish sound
				if dishChair.stateData.dish.model and dishChair.stateData.dish.model.PrimaryPart then
					local dishSounds = {5205173686, 5205173942}
					_L.SFX.Play(dishSounds[math.random(#dishSounds)], dishChair.stateData.dish.model:GetPrimaryPartCFrame().p)
				end
				
				-- pick up the money and dish (if necessary)
				dishChair.stateData.dish:MoneyPickedUp()
				dishChair.stateData.dish:DestroyModel()
				dishChair.stateData.dish = nil
				
				-- hold the dish I'm delivering
				self:HoldDirtyDish()

			end
			
			self:FaceEntity(dishChair)

			if dishwasher.isDeleted then
				self:StopLoadedAnimation("hold")
				if self.stateData.heldDish then
					self.stateData.heldDish = self.stateData.heldDish:Destroy()
				end
				self.state = "Idle"
				return
			end
			
			-- walk to the dishwasher to deposit
			-- TODO face direction
			self:WalkToNewFloor(dishwasher:GetMyFloor(), function()
				
				if dishwasher.isDeleted then
					self:StopLoadedAnimation("hold")
					if self.stateData.heldDish then
						self.stateData.heldDish = self.stateData.heldDish:Destroy()
					end
					self.state = "Idle"
					return
				end
				
				self:WalkToPoint(dishwasher.xVoxel, dishwasher.yVoxel, dishwasher.zVoxel, function()
					
					-- put down the dish
					self:DropFood()
					
					if dishwasher.isDeleted then
						self.state = "Idle"
						return
					end
					dishwasher:AddDish()
					
					self:FaceEntity(dishwasher)

					self:ResetAllStates()
		
				end)
			end)
		end)
	end)
	
	return true
	
end


function Waiter:WalkToNewFloor(targetFloor, finishedCallback)
	
	local currentFloor = self:GetMyFloor()
		
	if not targetFloor or currentFloor.floorLevel == targetFloor.floorLevel then
		if finishedCallback then finishedCallback() end
		return
	end
	
	
	self:TransitionToDifferentFloor(targetFloor)
	if finishedCallback then
		finishedCallback()
	end
	
end

function Waiter:CheckForFoodDelivery()
	
	-- gather all order stands
	local myFloor = self:GetMyFloor()
	local orderStands = myFloor:GatherOrderStandsWithDeliveryReady()
	
	if #orderStands == 0 then
				
		-- if there are no order stands on my floor, search for floors that might need help
		local indices = _L.Functions.RandomIndices(_L.Variables.MyBakery.floors)
		for _, index in ipairs(indices) do
			local floor = _L.Variables.MyBakery.floors[index]
			if floor ~= myFloor then
				if not floor:HasAtLeastOneIdleStateOfClass("Waiter") then
					-- gather order stands on this floor
					orderStands = floor:GatherOrderStandsWithDeliveryReady()
					if #orderStands > 0 then
						break
					end
				end
			end
		end
		
		-- STILL nothing? abort
		if #orderStands == 0 then
			return false
		end
	end
	
	-- select a random order stand to deliver from
	local orderStand = orderStands[math.random(#orderStands)]
	if not orderStand then
		return false
	end
	
	orderStand.stateData.foodReadyTargetCount = orderStand.stateData.foodReadyTargetCount + 1
	
	self.state = "WalkingToPickupFood"
	
	-- walk to the order stand
	self:WalkToNewFloor(orderStand:GetMyFloor(), function()
		
		-- no need to kick out the customer, they've already been removed.
		-- just reset the waiter back to idle
		if orderStand.isDeleted then
			self.state = "Idle"
			return
		end
		
		self:WalkToPoint(orderStand.xVoxel, orderStand.yVoxel, orderStand.zVoxel, function()
			
			if orderStand.isDeleted then
				self.state = "Idle"
				return
			end
			
			orderStand.stateData.foodReadyTargetCount = orderStand.stateData.foodReadyTargetCount - 1
			
			-- it's possible that the user already cleared the queue...
			if #orderStand.stateData.foodReadyList == 0 then
				self.state = "Idle"
				return
			end
			
			-- grab some food off of the top of the queue
			local selectedFoodOrder = orderStand.stateData.foodReadyList[1]
			selectedFoodOrder.isGold = true
			table.remove(orderStand.stateData.foodReadyList, 1)
			if selectedFoodOrder.isGold then
				_L.SFX.Play(5370840758, orderStand.model.PrimaryPart)
			end
			
			-- delete this list item
			selectedFoodOrder:DestroyPopupListItemUI()
			
			-- the customer that I should deliver to...
			local customerOfOrder = self:EntityTable()[selectedFoodOrder.customerOwnerUID]
			if not customerOfOrder then
				_L.Print("CRITICAL: customer owner of food not found", true)
				self.state = "Idle"
				return false
			end
			
			
			-- pause to face the order stand for a little bit
			self:FaceEntity(orderStand)
			-- hold the dish I'm delivering
			self:HoldFood(selectedFoodOrder.ID, selectedFoodOrder.isGold)
			
			self.state = "WalkingToDeliverFood"
			
			if customerOfOrder.isDeleted then
				self.state = "Idle"
				self.stateData.heldDish = self.stateData.heldDish:Destroy()
				return
			end
			
			-- walk to the customer to deliver...
			self:WalkToNewFloor(customerOfOrder:GetMyFloor(), function()
				self:WalkToPoint(customerOfOrder.xVoxel, customerOfOrder.yVoxel, customerOfOrder.zVoxel, function()
					
					self:DropFood()
					
					if customerOfOrder.isDeleted then
						_L.Print("CRITICAL: walked to customer, but they were forced to leave.  aborting", true)
						self.state = "Idle"
						return
					end
					
					customerOfOrder:ChangeToEatingState()
					
					-- face the customer
					self:FaceEntity(customerOfOrder)
					
					-- award XP for delivering food
					_L.Network.Fire("AwardWaiterExperienceForDeliveringOrderWithVerification", self.UID)
					-- free the waiter back up
					self.state = "Idle"
				end)
			end)
		end)
	end)
	
	return true
end


function Waiter:CheckForCustomerOrder()
	
	local myFloor = self:GetMyFloor()
	
	-- find a customer that is waiting to order
	local waitingCustomer = myFloor:GetCustomerWaitingToOrder()
	
	if not waitingCustomer then
		
		-- if there's no customer on my current floor, check if other floors need help
		local indices = _L.Functions.RandomIndices(_L.Variables.MyBakery.floors)
		for _, index in ipairs(indices) do
			local floor = _L.Variables.MyBakery.floors[index]
			if floor ~= myFloor then
				if not floor:HasAtLeastOneIdleStateOfClass("Waiter") then
					waitingCustomer = floor:GetCustomerWaitingToOrder()
					if waitingCustomer then
						break
					end
				end
			end
		end
		
		-- still nothing? abort
		if not waitingCustomer then
			return false
		end
	end
	
	self.state = "WalkingToTakeOrder"
	
	-- find the entire customer group
	local customerGroup = {waitingCustomer}
	for _, customerPartner in ipairs(waitingCustomer.stateData.queueGroup) do
		if customerPartner.state == "WaitingToOrder" and not customerPartner.waiterIsAttendingToFoodOrder then
			table.insert(customerGroup, customerPartner)
		end
	end	
	
	-- tag debounce, not allowing other waiters to interfere
	for _, seatedCustomer in ipairs(customerGroup) do
		seatedCustomer.waiterIsAttendingToFoodOrder = true
	end
	
	local function untagGroup()
		for _, seatedCustomer in ipairs(customerGroup) do
			seatedCustomer.waiterIsAttendingToFoodOrder = false
		end
	end
	
	-- walk to the seated group
	local firstCustomer = customerGroup[1]
	local groupTable = self:EntityTable()[firstCustomer.stateData.tableUID]
	if not groupTable or groupTable.isDeleted then
		self.state = "Idle"
		return
	end
	local tx, ty, tz = groupTable.xVoxel, groupTable.yVoxel, groupTable.zVoxel
	
	local customerFloor = firstCustomer:GetMyFloor()
	self:WalkToNewFloor(customerFloor, function()
		if firstCustomer.leaving or firstCustomer.isDeleted then
			self.state = "Idle"
			return
		end
		self:WalkToPoint(tx, ty, tz, function()
			
			if firstCustomer.isDeleted or firstCustomer.leaving then
				self.state = "Idle"
				return
			end
			
			-- order stand to deposit the orders in
			local orderStand = customerFloor:FindOrderStandOnAnyFloor()
			if not orderStand then
				_L.Print("CRITICAL: NO ORDER STAND FOUND!", true)
				untagGroup()
				self.state = "Idle"
				self:TimedEmoji("ConcernedEmoji", 2)
				return
			end
			
			-- stop interacting
			local firstCustomer = customerGroup[1]
			if firstCustomer then
				firstCustomer:StopGroupEmoji()
				firstCustomer:CleanupGroupInteract()
			end
						
			-- check for customers in the group still waiting to have their
			-- order taken.  it's possible that the user took one or
			-- more of their orders
			local groupOrder = {}
			local tookOrdersFrom = {}
			for _, seatedCustomer in ipairs(customerGroup) do
				if seatedCustomer.state == "WaitingToOrder" then
					table.insert(tookOrdersFrom, seatedCustomer)
					groupOrder[seatedCustomer.UID] = _L.Food.RandomFoodChoice(seatedCustomer.UID, seatedCustomer.ID, seatedCustomer:IsRichCustomer(), seatedCustomer:IsPirateCustomer(), seatedCustomer.isNearTree)
					seatedCustomer.state = "WaitingForFood"
					seatedCustomer:StopChat()
				end
			end
			
			-- if no orders are taken, abort
			if #tookOrdersFrom == 0 then
				self.state = "Idle"
				return
			end
			
			-- take order animation
			self:PlayLoadedAnimation("write")
			for _, customer in ipairs(customerGroup) do
				self:FaceEntity(customer)
			end
			self:StopLoadedAnimation("write")
			
			self.state = "WalkingToDropoffOrder"
			
			self:WalkToNewFloor(orderStand:GetMyFloor(), function()
				
				if orderStand.isDeleted then
					for _, customer in ipairs(customerGroup) do
						customer:ForcedToLeave()
					end
					self.state = "Idle"
					return
				end
				
				self:WalkToPoint(orderStand.xVoxel, orderStand.yVoxel, orderStand.zVoxel, function()
					
					if orderStand.isDeleted then
						for _, customer in ipairs(customerGroup) do
							customer:ForcedToLeave()
						end
						self.state = "Idle"
						return
					end
					
					-- deposit each of the orders
					for _, orderedCustomer in ipairs(tookOrdersFrom) do
						if orderedCustomer.isDeleted then
							continue
						end
						orderedCustomer:ChangeToWaitingForFoodState(groupOrder[orderedCustomer.UID])
						orderStand:AddFoodToQueue(groupOrder[orderedCustomer.UID])
					end
					
					-- award XP for taking an order
					_L.Network.Fire("AwardWaiterExperienceForTakingOrderWithVerification", self.UID)
					
					-- face deposit location
					self:FaceEntity(orderStand)
					
					-- free up the waiter for more actions
					self.state = "Idle"
					
				end)
			end)
			
		end)
	end)
	
	return true
	
end

function Waiter:CheckForQueuedCustomers()
	
	if not _L.Variables.MyBakery.isOpen then
		return false
	end
	
	
	local myFloor = self:GetMyFloor()
	
	-- if I'm not on the first floor, only go to help if there is nobody
	-- idle on the first floor
	if myFloor.floorLevel ~= 1 then
		if _L.Variables.MyBakery.floors[1]:HasAtLeastOneIdleStateOfClass("Waiter") then
			return false
		end
		
		-- only allow myself to go de-queue a customer if there are 5 or less waiters
		-- on the first floor.  no need to overdo it.
		if #_L.Variables.MyBakery.floors[1].waiters > 5 then
			return false
		end
	end
		
	-- search for the top of the queue customer group that is ready
	-- to be seated
	local readyCustomerGroup = nil
	for _, customerGroup in ipairs(_L.Variables.MyBakery.customerQueue) do
		if customerGroup[1].state == "WaitingForSeat" and not customerGroup[1].waiterIsAttendingToInQueue then
			readyCustomerGroup = customerGroup
			break
		end
	end
		
	if not readyCustomerGroup then
		return false
	end
	
	-- tag each customer as attended to
	for _, customer in ipairs(readyCustomerGroup) do
		customer.waiterIsAttendingToInQueue = true
	end
	local firstCustomer = readyCustomerGroup[1]
	
	-- waiter is attending to me but I still haven't been seated?  timeout
	coroutine.wrap(function()
		wait()
		if #readyCustomerGroup == 0 then
			return
		end
		if readyCustomerGroup[1].waiterIsAttendingToInQueue and readyCustomerGroup[1].state == "WaitingForSeat" then
			--_L.Print("timeout successful")
			for _, customer in ipairs(readyCustomerGroup) do
				customer.waiterIsAttendingToInQueue = false
			end
		end
	end)()
	
	self.state = "WalkingToQueuedCustomerGroup"
	
	-- walk to one of the customers in the queue group
	

			
			-- it's possible that the user sends the customers to their
			-- seat before we get there.  if so, abort
			if firstCustomer.state ~= "WaitingForSeat" or firstCustomer.stateData.busyWalking then
				-- untag attending
				for _, customer in ipairs(readyCustomerGroup) do
					customer.waiterIsAttendingToInQueue = false
				end
				self:ResetAllStates()
				return
			end
			
			-- stop user pings
			firstCustomer:CleanupGroupInteract()
			firstCustomer:StopGroupEmoji()
			
			-- seat the customer group
			_L.Variables.MyBakery:SeatQueuedCustomerGroup(firstCustomer)
			
			-- update positioning
			_L.Variables.MyBakery:UpdateCustomerQueuePositioning()
			
			-- face the group
			self:FaceEntity(firstCustomer)
			
			-- free the waiter up
			self.state = "Idle"
	
	return true
	
end








local rng = Random.new()


function Bakery:AddCustomersToQueueIfNecessary(kickCustomerIfNecessary, UIDBatch)
		
	-- helper function
	local function goToSeat(customer, doNotPlaySound)
		if customer.state ~= "WaitingForSeat"  then
			-- error sound
			if not doNotPlaySound then
				_L.Audio.Play(5074110087, player.PlayerGui)
			end
			return
		end
		customer:StopGroupEmoji()
		customer:CleanupGroupInteract()		
		
		self:SeatQueuedCustomerGroup(customer)
		self:UpdateCustomerQueuePositioning()	
		
		-- click sound
		if not doNotPlaySound then
			_L.Audio.Play(5074101610, player.PlayerGui)
		end
	end
		
	-- max queue size of 4
	if #self.customerQueue >= 4 then
		return 0
	end
	
	-- every customer is initially on the first floor
	local firstFloor = self.floors[1]
	
	-- grab all available seats.  search floors at random until a seat group is found
	local selectedTable, selectedSeatGroup
	local indices = _L.Functions.RandomIndices(_L.Variables.MyBakery.floors)
	for _, index in ipairs(indices) do
		local floor = self.floors[index]
		selectedTable, selectedSeatGroup = floor:GetAvailableSeatGroupings()
		if selectedTable and selectedSeatGroup then
			break
		end
	end
	
	if not (selectedTable and selectedSeatGroup) then
		
		-- if we didn't find a seat and kickCustomerIfNecessary (for VIP customers), then
		-- kick a random customer for the VIP customer
		if kickCustomerIfNecessary then
			local didKickCustomer = false
			for _, floor in ipairs(self.floors) do
				for _, customer in ipairs(floor.customers) do
					if customer.state ~= "ReadyToExit" then
						customer:ForcedToLeave()
						didKickCustomer = true
						break
					end
				end
				if didKickCustomer then
					break
				end
			end
			
		end
		
		return 0
	end
	local queueEntry = {}
	
	local didPlayVIPCustomerSound = false
	
	-- if a vip is forced (royal set), let the server know
	local vipOverride = {}
	local johnDoeOverride = {}
	local pirateOverride = {}
	local youtuberOverride = {}
	local shadowOverride = {}
	local corruptedVIPOverride = {}
	local santaOverride = {}
	local elfOverride = {}
	local treeTable = {}
	  
	-- create customers to fill this seat grouping
	local containsGhostOrSpecial = false
	for i, seatGroup in pairs(selectedSeatGroup) do
		local seat = seatGroup
		local tabl = selectedTable
		
		local forceVIPCustomer = false
		local forceShadowCustomer = false
		local forceJohnDoeCustomer = false
		local forcePirateCustomer = false
		local forceYoutuberCustomer = false
		local forceSantaCustomer = false
		local forceElfCustomer = false
		
		-- look for a nearby christmas tree
		local floor = self.floors[seat.floorLevel]
		for _, entity in ipairs(floor:GetEntitiesFromClassAndSubClass("Furniture", "ChristmasTree")) do
			local dist = math.sqrt(math.pow(entity.xVoxel - seat.xVoxel, 2) + math.pow(entity.zVoxel - seat.zVoxel, 2))
			if dist < 4*math.sqrt(2)+0.1 then
				treeTable[i] = true
				break
			end
		end
		
		-- royal table logic
		local overrideUID = nil
		if seat.ID == "43" and tabl.ID == "44" then
			forceVIPCustomer = true
			overrideUID = seat.UID
		elseif seat.ID == "43" then
			forceVIPCustomer = true
			overrideUID = seat.UID
		elseif tabl.ID == "44" then
			forceVIPCustomer = true
			overrideUID = tabl.UID
		end
		
		if forceVIPCustomer then
			UIDBatch[i].ID = "13"
			vipOverride[i] = overrideUID
		end
		
		-- royal halloween table logic
		if not forceVIPCustomer then
			if seat.ID == "98" and tabl.ID == "99" then
				forceShadowCustomer = true
				overrideUID = seat.UID
			elseif seat.ID == "98" then
				forceShadowCustomer = true
				overrideUID = seat.UID
			elseif tabl.ID == "99" then
				forceShadowCustomer = true
				overrideUID = tabl.UID
			end
			-- 1% chance for haunted customer, otherwise corrupted VIP
			if forceShadowCustomer then
					UIDBatch[i].ID = "26"
					corruptedVIPOverride[i] = overrideUID
			end
		end
		
		-- John Doe Table Logic
		if not forceVIPCustomer then
			if seat.ID == "216" and tabl.ID == "217" then
				forceJohnDoeCustomer = true
				overrideUID = seat.UID
			elseif seat.ID == "216" then
				forceJohnDoeCustomer = true
				overrideUID = seat.UID
			elseif tabl.ID == "217" then
				forceJohnDoeCustomer = true
				overrideUID = tabl.UID
			end
			--Force John Doe
			if forceJohnDoeCustomer then
			--	if math.random() < 0.005 then
					UIDBatch[i].ID = "29"
					johnDoeOverride[i] = overrideUID
			--	else
					--UIDBatch[i].ID = "26"
					--corruptedVIPOverride[i] = overrideUID
				end
			end
	--	end
			
		-- pirate table logic
		if not forceVIPCustomer and not forceShadowCustomer then
			if seat.ID == "74" and tabl.ID == "75" then
				forcePirateCustomer = true
				overrideUID = seat.UID
			elseif seat.ID == "74" then
				forcePirateCustomer = true
				overrideUID = seat.UID
			elseif tabl.ID == "75" then
				forcePirateCustomer = true
				overrideUID = tabl.UID
			end
			
			if forcePirateCustomer then
				UIDBatch[i].ID = "21"
				pirateOverride[i] = overrideUID
			end
		end
		
		-- gamer table logic
		if not forceVIPCustomer and not forcePirateCustomer and not forceShadowCustomer then
			if seat.ID == "84" and tabl.ID == "85" then
				forceYoutuberCustomer = true
				overrideUID = seat.UID
			elseif seat.ID == "84" then
				forceYoutuberCustomer = true
				overrideUID = seat.UID
			elseif tabl.ID == "85" then
				forceYoutuberCustomer = true
				overrideUID = tabl.UID
			end
			
			if forceYoutuberCustomer then
				UIDBatch[i].ID = "22"
				youtuberOverride[i] = overrideUID
			end
		end
		
		-- santa table logic
		if not forceVIPCustomer and not forcePirateCustomer and not forceShadowCustomer and not forceYoutuberCustomer then
			if seat.ID == "108" and true then
				forceSantaCustomer = true
				overrideUID = seat.UID
				UIDBatch[i].ID = "27"
				santaOverride[i] = overrideUID
			end
		end
		
		-- elf table logic
		if not forceVIPCustomer and not forcePirateCustomer and not forceShadowCustomer and not forceYoutuberCustomer and not forceSantaCustomer then 
			if seat.ID == "110" and tabl.ID == "111" then
				forceElfCustomer = true
				overrideUID = seat.UID
			elseif seat.ID == "110" then
				forceElfCustomer = true
				overrideUID = seat.UID
			elseif tabl.ID == "111" then
				forceElfCustomer = true
				overrideUID = tabl.UID
			end
			
			if forceElfCustomer then
				UIDBatch[i].ID = "28"
				elfOverride[i] = overrideUID
			end
		end
		
		local sx, sy, sz = self:GetCustomerStartVoxel(i, #selectedSeatGroup)
		local fx, fy, fz = self:GetCustomerQueueVoxel(i, -5, #selectedSeatGroup)		
		local createdCustomer = _L.Customer.CreateRandomCustomer(UIDBatch[i], sx, sy, sz)
		local worldStart = firstFloor:WorldPositionFromVoxel(sx, sy, sz)
		local queueFront = firstFloor:WorldPositionFromVoxel(fx, fy, fz)
		createdCustomer.stateData.seatUID = seat.UID
		createdCustomer.stateData.tableUID = tabl.UID
		createdCustomer.stateData.queuePosition = #self.customerQueue + 1
		createdCustomer.isNearTree = treeTable[i] ~= nil
		createdCustomer:SetVoxelPosition(self:GetCustomerStartVoxel(i, #selectedSeatGroup))
		
		-- center the customer group...... remember that max group size is 4
		if createdCustomer:BelongsToMyBakery() then
			if #selectedSeatGroup % 2 == 0 then
				createdCustomer.model:SetPrimaryPartCFrame(CFrame.new(worldStart + Vector3.new(0, 2, 0), queueFront))
			elseif #selectedSeatGroup == 1 then
				local startCFrame = CFrame.new(worldStart + Vector3.new(0, 2, 0)) * CFrame.Angles(0, self.baseAngle, 0) * CFrame.new(2, 0, 0)
				local faceCFrame = CFrame.new(queueFront) * CFrame.Angles(0, self.baseAngle, 0) * CFrame.new(2, 0, 0)
				createdCustomer.model:SetPrimaryPartCFrame(CFrame.new(startCFrame.p, faceCFrame.p))
			elseif #selectedSeatGroup == 3 then
				local startCFrame = CFrame.new(worldStart + Vector3.new(0, 2, 0)) * CFrame.Angles(0, self.baseAngle, 0) * CFrame.new(-2, 0, 0)
				local faceCFrame = CFrame.new(queueFront) * CFrame.Angles(0, self.baseAngle, 0) * CFrame.new(-2, 0, 0)
				createdCustomer.model:SetPrimaryPartCFrame(CFrame.new(startCFrame.p, faceCFrame.p))
			end
		end
		
		-- special customer notifications
		if _L.PlayerSettings.GetSetting("Notifications") == "Enabled" then
			-- Haunted Horseman
			if createdCustomer.ID == "25" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5839736886, player.PlayerGui, nil, 1)
				_L.Alert.Message("The Headless Horseman has entered your Restaurant!")
			end
			
			-- Santa
			if createdCustomer.ID == "27" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play("6106142958", player.PlayerGui)
				_L.Alert.Message("Santa has entered your Restaurant!")
			end
			
			-- VIP customer? play sound for at least one
			if createdCustomer.ID == "13" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5174014731, player.PlayerGui)
				_L.Alert.Message("A VIP Customer has entered your Restaurant!")
			end
			
			-- celebrity customer?
			if createdCustomer.ID == "20" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5278932246, player.PlayerGui)
				_L.Alert.Message("A Celebrity Customer has entered your Restaurant!")
			end
			
			-- pirate customer
			if createdCustomer.ID == "21" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5601560215, player.PlayerGui, nil, 0.25)
				_L.Alert.Message("A Pirate Customer has entered your Restaurant!")
			end
			
			-- youtuber customer
			if createdCustomer.ID == "22" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5625433365, player.PlayerGui, nil, 0.25)
				_L.Alert.Message("A Youtuber Customer has entered your Restaurant!")
			end
			
			-- corrupted VIP
			if createdCustomer.ID == "26" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5839737683, player.PlayerGui, nil, 0.25)
				_L.Alert.Message("A Haunted VIP Customer has entered your Restaurant!")
			end
			
			--John Doe
			if createdCustomer.ID == "29" and not didPlayVIPCustomerSound then
				didPlayVIPCustomerSound = true
				_L.SFX.Play(5839737683, player.PlayerGui, nil, 0.25)
				_L.Alert.Message("John Doe has entered your Restaurant!")
			end
		end
		
		if createdCustomer.ID == "14" or createdCustomer.ID == "15" then
			containsGhostOrSpecial = true
		end
		
		-- finally give the customer a parent (prevents weird teleporting from corner thing)
		createdCustomer.model.Parent = createdCustomer.cachedParent
		createdCustomer:FadeTransparency(createdCustomer:GetMyTransparency())
		
		-- replication event.. customer created
		_L.Replication.SendEvent("CustomerCreated", createdCustomer:ToUIDData())
		
		-- tutorial table + flag
		if self.isTutorial then
			table.insert(self.tutorial.firstCustomerWave, createdCustomer)
			self.tutorial.hasAllowedFirstWaveOfCustomers = true
		end
		
		seat:SetIsOccupied(createdCustomer)
		tabl:AddCustomerAtTable(createdCustomer)
		
		createdCustomer:Emoji("WaitingForSeat", true)
		
		createdCustomer:Interact(function()
			goToSeat(createdCustomer)
		end)
		
		-- celebrity customer flag
		if createdCustomer.ID == "20" then
			_L.Variables.MyBakery.activeCelebrity = true
		end
		
		table.insert(queueEntry, createdCustomer)
	
	end
		
	-- initialize each customer's queue group.  the customer can NOT be
	-- inside of their own queue group, since cyclic tables are not permitted
	for _, customer0 in ipairs(queueEntry) do
		customer0.stateData.queueGroup = {}
		for _, customer1 in ipairs(queueEntry) do
			if customer0 ~= customer1 then
				table.insert(customer0.stateData.queueGroup, customer1)
			end
		end
	end
	
	table.insert(self.customerQueue, queueEntry)
	
	if not containsGhostOrSpecial then
		self:UpdateCustomerQueuePositioning()	
	else
		goToSeat(queueEntry[1], true)
	end
		
	return #selectedSeatGroup, vipOverride, pirateOverride, youtuberOverride, shadowOverride, corruptedVIPOverride, santaOverride, elfOverride, johnDoeOverride, treeTable

end


local bakeryData = _L.Variables.UIDData
if not bakeryData then
    repeat wait() bakeryData = _L.Variables.UIDData until bakeryData
end

--"🐈"-bluwu
local Wells = {"101","49","50"}
local Slots = {"57"}
local UNIT_SECOND = 1
local UNIT_MINUTE = UNIT_SECOND * 60
local SLOT_REFRESH = UNIT_MINUTE * 10

local function useWell(wellUID, wellId)
    local event = "RequestWishingWellUsage"
    if wellId == "101" then
        event = "RequestHauntedWishingWellUsage"
    end
    _L.Network.Fire(event,wellUID)
end
coroutine.wrap(function()
    while true do
        for i,v in next, bakeryData["Furniture"] do
            local ID = v.ID
            if ID and table.find(Wells,ID) and v.ClassName == "Furniture" then
                task.spawn(function()
                    local event = "GetWishingWellRefreshTime"
                    if ID == "101" then
                        event = "GetHauntedWishingWellRefreshTime"
                    end
                    local cooldown = _L.Network.Invoke(event,v.UID)
                    if not isOnCooldown then
                        useWell(v.UID, ID)
                    end
                end)
            end
            if ID and table.find(Slots,ID) then
                task.spawn(function()
                    local cooldown = _L.Network.Invoke("GetSlotRefreshTime")
                    if cooldown == 0 then
                        _L.Network.Fire("RequestSlotUsage", v.UID)
                    end
                end)
            end
        end
		task.wait(3)
	end
end)()