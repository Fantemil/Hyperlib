loadstring(game:HttpGet("https://pastebin.com/raw/9CCnnTzR"))()



------- below is a standalone script i didnt bother including in the pastebin
------- USE IT TO AUTOPICK ALL IDS (dont use this or autosearch while noclipped you'll die)

----
local Client = game.Players.LocalPlayer

local function FillStashList()
	local StashList = {}
	for _, v in workspace.Map:GetChildren() do
		if v.Name == "Id" then
			table.insert(StashList, v)
		end
	end
	
	return StashList
end


local function FiddleWIthPrompts()
	for _, v in workspace.Map:GetChildren() do
		if v.Name == "Id" then
			v.IdPrompt.HoldDuration = 0
			v.IdPrompt.MaxActivationDistance = 100000
			v.IdPrompt.RequiresLineOfSight = false
		end
	end
end



local function AutoSearch(StashList)
	if workspace.Map ~= nil then
		FiddleWIthPrompts()
		for _, crate in pairs(StashList) do
			Client.Character.HumanoidRootPart.CFrame = crate.CFrame * CFrame.new(Vector3.new(0,1,0))
			keypress(0x45)
			task.wait(0.2)
			keyrelease(0x45)
				
		end
	end

end



AutoSearch(FillStashList())
	------