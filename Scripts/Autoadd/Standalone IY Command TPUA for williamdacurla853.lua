-- From inf yield
-- fixed by @bobmichealson8 for @williamdacurla

--[[
    LOOK AT SETTINGS AND CHANGE TO YOUR LIKING
    EVERYTHING HERE IS FROM INFINITE YIELD, I JUST MADE THIS COMMAND BE IN A STANDALONE SCRIPT
]]--

local Players=game:GetService("Players")

local SETTINGS={
    ["PlayerNameToTeleportParts"]="NAME HERE" -- put the player's name here
}

local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local frozenParts={}

local function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end

local function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end

local function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

local function getPlayersByName(Name)
	local Name,Len,Found = string.lower(Name),#Name,{}
	for _,v in pairs(Players:GetPlayers()) do
		if Name:sub(0,1) == '@' then
			if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
				table.insert(Found,v)
			end
		else
			if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
				table.insert(Found,v)
			end
		end
	end
	return Found
end

local function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

local function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
			else
				local tokenContent = v.Name
				initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end

if not Forces then
    Forces={}
end

local function CheckPart(part,speaker)
    if part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(speaker.Character) and part.Name ~= "Torso" and part.Name ~= "Head" and part.Name ~= "Right Arm" and part.Name ~= "Left Arm" and part.Name ~= "Right Leg" and part.Name ~= "Left Leg" and part.Name ~= "HumanoidRootPart" then
        return true
    else
        return false
    end
end

local function tpua(args, speaker)
	if sethidden then
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players) do
			for _,part in pairs(workspace:GetDescendants()) do
				if Players[v].Character:FindFirstChild('Head') and CheckPart(part,speaker) then
					for i,c in pairs(part:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local ForceInstance = Instance.new("BodyPosition")
					ForceInstance.Parent = part
					ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					table.insert(Forces, ForceInstance)
					if not table.find(frozenParts,part) then
						table.insert(frozenParts,part)
					end
				end
			end
			for i,c in pairs(Forces) do
				c.Position = Players[v].Character.Head.Position
			end
		end
	end
end

local function releaseForces() -- function to release the forces
    --[[
        this part is made by me
    ]]--

    for i,c in pairs(Forces) do
        c:Destroy()
    end
    table.clear(frozenParts)
    table.clear(Forces)
end

tpua({SETTINGS.PlayerNameToTeleportParts},Players.LocalPlayer)
-- releaseForces() -- UNCOMMENT THIS TO RELEASE ALL OF THE FORCES