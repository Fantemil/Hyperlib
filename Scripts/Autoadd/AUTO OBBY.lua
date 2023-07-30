
local rootDir = game.Workspace;
local function containsNumber(str)
	return string.match(str, "%d+") ~= nil;
end
local function searchDescendants(obj)
	local topFolders = {};
	local topPriority = {"stage","floor","level","checkpoint"};
	for _, descendant in pairs(obj:GetDescendants()) do
		if ((descendant ~= game:GetService("Players"):GetPlayers()) and (descendant:IsA("Folder") or descendant:IsA("Model"))) then
			local name = descendant.Name;
			if containsNumber(name) then
				local num = tonumber(name:match("%d+"));
				topFolders[num] = topFolders[num] or {};
				table.insert(topFolders[num], descendant);
			else
				for _, keyword in ipairs(topPriority) do
					if string.find(string.lower(name), keyword) then
						topFolders[#topFolders + 1] = {descendant};
						break;
					end
				end
			end
		end
	end
	local humanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	for _, folderList in pairs(topFolders) do
		for _, folder in ipairs(folderList) do
			local searchFolder = (folder:IsA("BasePart") and folder.Parent) or folder;
			for _, part in ipairs(searchFolder:GetDescendants()) do
				if (part and part:IsA("BasePart")) then
					humanoidRootPart.CFrame = part.CFrame;
					wait(0.1);
					break;
				end
			end
		end
	end
end
searchDescendants(rootDir);
