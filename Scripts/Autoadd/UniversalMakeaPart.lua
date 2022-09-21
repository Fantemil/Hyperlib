x = game.Players.LocalPlayer.Character.Head.Position.x
y = game.Players.LocalPlayer.Character.Head.Position.y
z = game.Players.LocalPlayer.Character.Head.Position.z

x = x - 0
y = y - 0
z = z - 0

--[[ 
ex) do like this if you want to go up
x = x - 0
y = y - 2
z = z - 0
]]--

local BuildPart = Instance. new("Part",game. Workspace) --Directory of The Part.
BuildPart. Size = Vector3. new(1,1,2) --The Size of the Part.
BuildPart. Position = Vector3. new(x,y,z) --The Position of The Part.
BuildPart. Anchored = true --Anchores The Part.
BuildPart. Transparency = 0.5 -- Transparency of The Part