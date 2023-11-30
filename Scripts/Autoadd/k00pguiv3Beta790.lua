-- // Made by 14anz_exiledAltz \\ --

-- Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- Functions
local colors = {
    SchemeColor = Color3.fromRGB(5, 54, 0),
    Background = Color3.fromRGB(5, 5, 5),
    Header = Color3.fromRGB(5, 5, 5),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(5, 5, 5),
}

local Window = Library.CreateLib("k00pgui • v3.0.0 (Beta)", colors)

-- Home
local Tab = Window:NewTab("k00p's information")
Tab:NewSection("--> Gui Information <--")
Tab:NewSection("Hello, Welcome "..game.Players.LocalPlayer.Name.."!")
Tab:NewSection("--> Local Player Info <--")
Tab:NewSection("Username - "..game.Players.LocalPlayer.Name)
Tab:NewSection("Display Name - "..game.Players.LocalPlayer.DisplayName)
Tab:NewSection("User Id - "..game.Players.LocalPlayer.UserId)
Tab:NewSection("Account Age/Days - "..game.Players.LocalPlayer.AccountAge)
Tab:NewSection("Character Appearance ID - "..game.Players.LocalPlayer.CharacterAppearanceId)
Tab:NewSection("--> Game Info  <--")
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
Tab:NewSection("Game Name - "..GetName.Name)
Tab:NewSection("Game ID - "..game.PlaceId)
Tab:NewSection("Job ID - "..game.JobId)
Tab:NewSection("Max Players - "..game.Players.MaxPlayers)

-- Page 1
local Tab = Window:NewTab("Page 1")
local k00pSection = Tab:NewSection("")

k00pSection:NewButton("k00p's theme", "", function()
local music = Instance.new("Sound", game.Workspace)
music.SoundId = "rbxassetid://1839246711"
music.Volume = 9e9
music.Looped = true
music.PlayOnRemove = false
music:Play()
end)

k00pSection:NewButton("Skybox", "", function()
s = Instance.new("Sky")
s.Name = "k00p"
s.SkyboxBk = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxDn = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxFt = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxLf = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxRt = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxUp = "http://www.roblox.com/asset/?id=9422866248"
s.Parent = game.Lighting
end)

k00pSection:NewButton("Skybox #2", "", function()
s = Instance.new("Sky")
s.Name = "k00p"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11588317701"
s.Parent = game.Lighting
end)

k00pSection:NewButton("Skybox #3", "", function()
s = Instance.new("Sky")
s.Name = "k00p"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11426291165"
s.Parent = game.Lighting
end)

k00pSection:NewButton("Skybox #4", "", function()
s = Instance.new("Sky")
s.Name = "k00p2"
s.SkyboxBk = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxDn = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxFt = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxLf = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxRt = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxUp = "http://www.roblox.com/asset/?id=9018233362"
s.Parent = game.Lighting
end)

k00pSection:NewButton("Skybox #5", "", function()
s = Instance.new("Sky")
s.Name = "k00p3"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11379488396"
s.Parent = game.Lighting
end)

k00pSection:NewButton("Animated Skybox", "", function()
imageOne = "http://www.roblox.com/asset/?id=9018233362"
imageTwo = "http://www.roblox.com/asset/?id=11379488396"
imageThree = "http://www.roblox.com/asset/?id=9018233362"
imageFour = "http://www.roblox.com/asset/?id=11379488396"
imageFive = "http://www.roblox.com/asset/?id=9018233362"
imageSix = "http://www.roblox.com/asset/?id=11379488396"
imageSeven = "http://www.roblox.com/asset/?id=9018233362"
imageEight = "http://www.roblox.com/asset/?id=11379488396"

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne

while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.25)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.25)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.25)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.25)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.25)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.25)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.25)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.25)
end
end)

k00pSection:NewButton("Animated Skybox #2", "", function()
imageOne = "http://www.roblox.com/asset/?id=9422866248"
imageTwo = "http://www.roblox.com/asset/?id=11588317701"
imageThree = "http://www.roblox.com/asset/?id=9422866248"
imageFour = "http://www.roblox.com/asset/?id=11588317701"
imageFive = "http://www.roblox.com/asset/?id=9422866248"
imageSix = "http://www.roblox.com/asset/?id=11588317701"
imageSeven = "http://www.roblox.com/asset/?id=9422866248"
imageEight = "http://www.roblox.com/asset/?id=11588317701"

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne

while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.25)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.25)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.25)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.25)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.25)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.25)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.25)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.25)
end
end)

k00pSection:NewButton("Animated Skybox #3", "", function()
imageOne = "http://www.roblox.com/asset/?id=9698929683"
imageTwo = "http://www.roblox.com/asset/?id=11426291165"
imageThree = "http://www.roblox.com/asset/?id=9698929683"
imageFour = "http://www.roblox.com/asset/?id=11426291165"
imageFive = "http://www.roblox.com/asset/?id=9698929683"
imageSix = "http://www.roblox.com/asset/?id=11426291165"
imageSeven = "http://www.roblox.com/asset/?id=9698929683"
imageEight = "http://www.roblox.com/asset/?id=11426291165"

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne

while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.25)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.25)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.25)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.25)
    Sky.SkyboxBk = imageFive
    Sky.SkyboxDn = imageFive
    Sky.SkyboxFt = imageFive
    Sky.SkyboxLf = imageFive
    Sky.SkyboxRt = imageFive
    Sky.SkyboxUp = imageFive
    wait(0.25)
    Sky.SkyboxBk = imageSix
    Sky.SkyboxDn = imageSix
    Sky.SkyboxFt = imageSix
    Sky.SkyboxLf = imageSix
    Sky.SkyboxRt = imageSix
    Sky.SkyboxUp = imageSix
    wait(0.25)
    Sky.SkyboxBk = imageSeven
    Sky.SkyboxDn = imageSeven
    Sky.SkyboxFt = imageSeven
    Sky.SkyboxLf = imageSeven
    Sky.SkyboxRt = imageSeven
    Sky.SkyboxUp = imageSeven
    wait(0.25)
    Sky.SkyboxBk = imageEight
    Sky.SkyboxDn = imageEight
    Sky.SkyboxFt = imageEight
    Sky.SkyboxLf = imageEight
    Sky.SkyboxRt = imageEight
    Sky.SkyboxUp = imageEight
    wait(0.25)
end
end)

k00pSection:NewButton("Restore Skybox", "", function()
for i,v in pairs(game.Lighting:GetChildren()) do
v:Remove()
end
end)

k00pSection:NewButton("Decal", "", function()
local texture = "rbxassetid://9422866248"

local A = workspace:GetDescendants()
local B = workspace:GetDescendants()
local C = workspace:GetDescendants()
local D = workspace:GetDescendants()
local E = workspace:GetDescendants()
local F = workspace:GetDescendants()

for i,v in pairs(A) do
	if v:IsA("Part") then
		local d = Instance.new("Decal",v)
		v.Decal.Face = "Top"
		v.Decal.Texture = texture 
	end
end

for i,v in pairs(B) do
	if v:IsA("Part") then
		local s = Instance.new("Decal",v)
		s.Face = "Front"
		s.Texture = texture
	end
end

for i,v in pairs(C) do
	if v:IsA("Part") then
		local h = Instance.new("Decal",v)
		h.Face = "Back"
		h.Texture = texture
	end
end

for i,v in pairs(D) do
	if v:IsA("Part") then
		local j = Instance.new("Decal",v)
		j.Face = "Left"
		j.Texture = texture
	end
end

for i,v in pairs(E) do
	if v:IsA("Part") then
		local k = Instance.new("Decal",v)
		k.Face = "Right"
		k.Texture = texture
	end
end

for i,v in pairs(F) do
	if v:IsA("Part") then
		local l = Instance.new("Decal",v)
		l.Face = "Bottom"
		l.Texture = texture
	end
end
end)

k00pSection:NewButton("Decal #2", "", function()
local texture = "rbxassetid://11588317701"

local A = workspace:GetDescendants()
local B = workspace:GetDescendants()
local C = workspace:GetDescendants()
local D = workspace:GetDescendants()
local E = workspace:GetDescendants()
local F = workspace:GetDescendants()

for i,v in pairs(A) do
	if v:IsA("Part") then
		local d = Instance.new("Decal",v)
		v.Decal.Face = "Top"
		v.Decal.Texture = texture 
	end
end

for i,v in pairs(B) do
	if v:IsA("Part") then
		local s = Instance.new("Decal",v)
		s.Face = "Front"
		s.Texture = texture
	end
end

for i,v in pairs(C) do
	if v:IsA("Part") then
		local h = Instance.new("Decal",v)
		h.Face = "Back"
		h.Texture = texture
	end
end

for i,v in pairs(D) do
	if v:IsA("Part") then
		local j = Instance.new("Decal",v)
		j.Face = "Left"
		j.Texture = texture
	end
end

for i,v in pairs(E) do
	if v:IsA("Part") then
		local k = Instance.new("Decal",v)
		k.Face = "Right"
		k.Texture = texture
	end
end

for i,v in pairs(F) do
	if v:IsA("Part") then
		local l = Instance.new("Decal",v)
		l.Face = "Bottom"
		l.Texture = texture
	end
end
end)

k00pSection:NewButton("Decal #3", "", function()
local texture = "rbxassetid://11426291165"

local A = workspace:GetDescendants()
local B = workspace:GetDescendants()
local C = workspace:GetDescendants()
local D = workspace:GetDescendants()
local E = workspace:GetDescendants()
local F = workspace:GetDescendants()

for i,v in pairs(A) do
	if v:IsA("Part") then
		local d = Instance.new("Decal",v)
		v.Decal.Face = "Top"
		v.Decal.Texture = texture 
	end
end

for i,v in pairs(B) do
	if v:IsA("Part") then
		local s = Instance.new("Decal",v)
		s.Face = "Front"
		s.Texture = texture
	end
end

for i,v in pairs(C) do
	if v:IsA("Part") then
		local h = Instance.new("Decal",v)
		h.Face = "Back"
		h.Texture = texture
	end
end

for i,v in pairs(D) do
	if v:IsA("Part") then
		local j = Instance.new("Decal",v)
		j.Face = "Left"
		j.Texture = texture
	end
end

for i,v in pairs(E) do
	if v:IsA("Part") then
		local k = Instance.new("Decal",v)
		k.Face = "Right"
		k.Texture = texture
	end
end

for i,v in pairs(F) do
	if v:IsA("Part") then
		local l = Instance.new("Decal",v)
		l.Face = "Bottom"
		l.Texture = texture
	end
end
end)

k00pSection:NewButton("Decal #4", "", function()
local texture = "rbxassetid://9018233362"

local A = workspace:GetDescendants()
local B = workspace:GetDescendants()
local C = workspace:GetDescendants()
local D = workspace:GetDescendants()
local E = workspace:GetDescendants()
local F = workspace:GetDescendants()

for i,v in pairs(A) do
	if v:IsA("Part") then
		local d = Instance.new("Decal",v)
		v.Decal.Face = "Top"
		v.Decal.Texture = texture 
	end
end

for i,v in pairs(B) do
	if v:IsA("Part") then
		local s = Instance.new("Decal",v)
		s.Face = "Front"
		s.Texture = texture
	end
end

for i,v in pairs(C) do
	if v:IsA("Part") then
		local h = Instance.new("Decal",v)
		h.Face = "Back"
		h.Texture = texture
	end
end

for i,v in pairs(D) do
	if v:IsA("Part") then
		local j = Instance.new("Decal",v)
		j.Face = "Left"
		j.Texture = texture
	end
end

for i,v in pairs(E) do
	if v:IsA("Part") then
		local k = Instance.new("Decal",v)
		k.Face = "Right"
		k.Texture = texture
	end
end

for i,v in pairs(F) do
	if v:IsA("Part") then
		local l = Instance.new("Decal",v)
		l.Face = "Bottom"
		l.Texture = texture
	end
end
end)

k00pSection:NewButton("Decal #5", "", function()
local texture = "rbxassetid://11379488396"

local A = workspace:GetDescendants()
local B = workspace:GetDescendants()
local C = workspace:GetDescendants()
local D = workspace:GetDescendants()
local E = workspace:GetDescendants()
local F = workspace:GetDescendants()

for i,v in pairs(A) do
	if v:IsA("Part") then
		local d = Instance.new("Decal",v)
		v.Decal.Face = "Top"
		v.Decal.Texture = texture 
	end
end

for i,v in pairs(B) do
	if v:IsA("Part") then
		local s = Instance.new("Decal",v)
		s.Face = "Front"
		s.Texture = texture
	end
end

for i,v in pairs(C) do
	if v:IsA("Part") then
		local h = Instance.new("Decal",v)
		h.Face = "Back"
		h.Texture = texture
	end
end

for i,v in pairs(D) do
	if v:IsA("Part") then
		local j = Instance.new("Decal",v)
		j.Face = "Left"
		j.Texture = texture
	end
end

for i,v in pairs(E) do
	if v:IsA("Part") then
		local k = Instance.new("Decal",v)
		k.Face = "Right"
		k.Texture = texture
	end
end

for i,v in pairs(F) do
	if v:IsA("Part") then
		local l = Instance.new("Decal",v)
		l.Face = "Bottom"
		l.Texture = texture
	end
end
end)

k00pSection:NewButton("Decal-Spam", "", function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxDn = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxFt = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxLf = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxRt = "http://www.roblox.com/asset/?id=9422866248"
s.SkyboxUp = "http://www.roblox.com/asset/?id=9422866248"
        s.Parent = game.Lighting
		local ID = 9422866248
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)

k00pSection:NewButton("Decal-Spam #2", "", function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11588317701"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11588317701"
        s.Parent = game.Lighting
		local ID = 9422866248
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)

k00pSection:NewButton("Decal-Spam #3", "", function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11426291165"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11426291165"
        s.Parent = game.Lighting
		local ID = 11426291165
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz2"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz2"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)

k00pSection:NewButton("Decal-Spam #4", "", function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxDn = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxFt = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxLf = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxRt = "http://www.roblox.com/asset/?id=9018233362"
s.SkyboxUp = "http://www.roblox.com/asset/?id=9018233362"
        s.Parent = game.Lighting
		local ID = 9018233362
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz3"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz3"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)

k00pSection:NewButton("Decal-Spam #5", "", function()
s = Instance.new("Sky")
s.Name = "Skybox"
s.SkyboxBk = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxDn = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxFt = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxLf = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxRt = "http://www.roblox.com/asset/?id=11379488396"
s.SkyboxUp = "http://www.roblox.com/asset/?id=11379488396"
        s.Parent = game.Lighting
		local ID = 9018233362
		function spamDecal(v)
			if v:IsA("Part") then
				for i = 0, 5 do
					D = Instance.new("Decal")
					D.Name = "k00pz4"
					D.Face = i
					D.Parent = v
					D.Texture = ("http://www.roblox.com/asset/?id="..Id)
				end
			else
				if v:IsA("Model") then
					for a,b in pairs(v:GetChildren()) do
						spamDecal(b)
					end
				end
			end
		end
		function decalspam(id)
			Id = id
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA("Part") then
					for i = 0, 5 do
						D = Instance.new("Decal")
						D.Name = "k00pz4"
						D.Face = i
						D.Parent = v
						D.Texture = ("http://www.roblox.com/asset/?id="..id)
					end
				else
					if v:IsA("Model") then
						for a,b in pairs(v:GetChildren()) do
							spamDecal(b)
						end
					end
				end
			end
		end	
decalspam(ID)
end)

k00pSection:NewButton("k00pkiddify", "", function()
 local ID = 9422866248 -- Change your ID here fellas cXz (Image ID)
 local particle = true

-- Don’t change anything down below if you don’t know what are you doing [This script made by cXyzkidd]

if particle == true then
	for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local particle = Instance.new("ParticleEmitter")
			particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
			particle.Parent = v
			particle.Rate = 200
			for i,x in pairs (game.Workspace:GetChildren()) do
				if x:IsA("Model") then
					for i,z in pairs (x:GetChildren()) do
						if z:IsA("Part") then
							local particle2 = Instance.new("ParticleEmitter")
							particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
							particle2.Parent = z
							particle2.Rate = 200
						end
					end
				end
			end
		end
	end
end
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=9422866248"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=9422866248"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=9422866248"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=9422866248"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=9422866248"
wait()
local ID = 9422866248 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)

k00pSection:NewButton("k00pkiddify #2", "", function()
 local ID = 11588317701
 local particle = true

-- Don’t change anything down below if you don’t know what are you doing [This script made by cXyzkidd]

if particle == true then
	for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local particle = Instance.new("ParticleEmitter")
			particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
			particle.Parent = v
			particle.Rate = 200
			for i,x in pairs (game.Workspace:GetChildren()) do
				if x:IsA("Model") then
					for i,z in pairs (x:GetChildren()) do
						if z:IsA("Part") then
							local particle2 = Instance.new("ParticleEmitter")
							particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
							particle2.Parent = z
							particle2.Rate = 200
						end
					end
				end
			end
		end
	end
end
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=11588317701"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=11588317701"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=11588317701"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=11588317701"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=11588317701"
wait()
local ID = 11588317701 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)

k00pSection:NewButton("k00pkiddify #3", "", function()
 local ID = 11426291165
 local particle = true

-- Don’t change anything down below if you don’t know what are you doing [This script made by cXyzkidd]

if particle == true then
	for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local particle = Instance.new("ParticleEmitter")
			particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
			particle.Parent = v
			particle.Rate = 200
			for i,x in pairs (game.Workspace:GetChildren()) do
				if x:IsA("Model") then
					for i,z in pairs (x:GetChildren()) do
						if z:IsA("Part") then
							local particle2 = Instance.new("ParticleEmitter")
							particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
							particle2.Parent = z
							particle2.Rate = 200
						end
					end
				end
			end
		end
	end
end
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=11426291165"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=11426291165"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=11426291165"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=11426291165"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=11426291165"
wait()
local ID = 11426291165 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)

k00pSection:NewButton("k00pkiddify #4", "", function()
 local ID = 9018233362
 local particle = true

-- Don’t change anything down below if you don’t know what are you doing [This script made by cXyzkidd]

if particle == true then
	for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local particle = Instance.new("ParticleEmitter")
			particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
			particle.Parent = v
			particle.Rate = 200
			for i,x in pairs (game.Workspace:GetChildren()) do
				if x:IsA("Model") then
					for i,z in pairs (x:GetChildren()) do
						if z:IsA("Part") then
							local particle2 = Instance.new("ParticleEmitter")
							particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
							particle2.Parent = z
							particle2.Rate = 200
						end
					end
				end
			end
		end
	end
end
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=9018233362"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=9018233362"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=9018233362"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=9018233362"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=9018233362"
wait()
local ID = 9018233362 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)

k00pSection:NewButton("k00pkiddify #5", "", function()
 local ID = 11379488396
 local particle = true

-- Don’t change anything down below if you don’t know what are you doing [This script made by cXyzkidd]

if particle == true then
	for i,v in pairs (game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			local particle = Instance.new("ParticleEmitter")
			particle.Texture = "http://www.roblox.com/asset/?id=" ..ID
			particle.Parent = v
			particle.Rate = 200
			for i,x in pairs (game.Workspace:GetChildren()) do
				if x:IsA("Model") then
					for i,z in pairs (x:GetChildren()) do
						if z:IsA("Part") then
							local particle2 = Instance.new("ParticleEmitter")
							particle2.Texture = "http://www.roblox.com/asset/?id=" ..ID
							particle2.Parent = z
							particle2.Rate = 200
						end
					end
				end
			end
		end
	end
end
wait()
sky = Instance.new("Sky",game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=11379488396"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=11379488396"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=11379488396"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=11379488396"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=11379488396"
wait()
local ID = 11379488396 --id here
function spamDecal(v)
	if v:IsA("Part") then
		for i = 0, 5 do
			D = Instance.new("Decal")
			D.Name = "k00pz_decal_1"
			D.Face = i
			D.Parent = v
			D.Texture = ("http://www.roblox.com/asset/?id="..Id)
		end
	else
		if v:IsA("Model") then
			for a,b in pairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
end
function decalspam(id) --use this function, not the one on top
	Id = id
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			for i= 0, 5 do
				D = Instance.new("Decal")
				D.Name = "k00pz_decal_2"
				D.Face = i
				D.Parent = v
				D.Texture = ("http://www.roblox.com/asset/?id="..id)
			end
		else
			if v:IsA("Model") then
				for a,b in pairs(v:GetChildren()) do
					spamDecal(b)
				end
			end
		end
	end
end
end)

k00pSection:NewTextBox("Change Name", "", function(...)
getgenv().name = (...)

local Plr = game.Players.LocalPlayer
for Index, Value in next, game:GetDescendants() do 
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.Name) 
        if has then 
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end)
    end
end

game.DescendantAdded:Connect(function(Value)
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.Name)
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end)
        if has then 
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end        
    end
end)
end)

k00pSection:NewButton("Change Character Color to Green", "", function()
presets = {"Bright green"}
while true do
wait(0.5)
ye = game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()
for i,v in pairs(ye) do
if v.className == "Part" then
v.BrickColor = BrickColor.new(presets[math.random(1,#presets)])
end
end
end
end)

k00pSection:NewButton("Chat", "", function()
for i,v in pairs(game.Players:GetChildren()) do 
game:GetService("Chat"):Chat(v.Character.Head,"TEAM K00PKIDD JOIN TODAY!") 
end
end)

k00pSection:NewButton("Chat #2", "", function()
for i,v in pairs(game.Players:GetChildren()) do 
game:GetService("Chat"):Chat(v.Character.Head,"TEAM K00PKIDD WAS HERE!") 
end
end)

k00pSection:NewButton("Chat #3", "", function()
for i,v in pairs(game.Players:GetChildren()) do 
game:GetService("Chat"):Chat(v.Character.Head,"HAXED BY TEAM K00PKIDD!") 
end
end)

k00pSection:NewButton("Chat #4", "", function()
for i,v in pairs(game.Players:GetChildren()) do 
game:GetService("Chat"):Chat(v.Character.Head,"TEAM K00PKIDD ON TOP!") 
end
end)

k00pSection:NewButton("Particle", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=9698929683"
pe.VelocitySpread = 50
end
end)

k00pSection:NewButton("Particle #2", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=11426291165"
pe.VelocitySpread = 50
end
end)

k00pSection:NewButton("Particle #3", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=9422866248"
pe.VelocitySpread = 50
end
end)

k00pSection:NewButton("Particle #4", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=11588317701"
pe.VelocitySpread = 50
end
end)

k00pSection:NewButton("Particle #5", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=9018233362"
pe.VelocitySpread = 50
end
end)

k00pSection:NewButton("Particle #6", "", function()
local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=11379488396"
pe.VelocitySpread = 50
end
end)

local k00pSection = Tab:NewSection("")

-- Page 2
local Tab = Window:NewTab("Page 2")
local k00p2Section = Tab:NewSection("")

k00p2Section:NewButton("Explosion Random", "", function()
while true do
			explosion = Instance.new("Explosion")
			explosion.Position =  Vector3.new(math.random(-500,500),math.random(1,500),math.random(-1000,500))
			explosion.Parent = game.Workspace
			wait()
		end
end)

k00p2Section:NewButton("Disco", "", function()
local Lighting = game:GetService("Lighting")
local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
		function zigzag(X) 
			return math.acos(math.cos(X*math.pi))/math.pi
		end
		Counter = 0
		Lighting.TimeOfDay = "12:00"
		while wait(0.1) do 
			ColorCorrection.TintColor = Color3.fromHSV(zigzag(Counter),1,1)
			Lighting.Ambient = Color3.fromHSV(zigzag(Counter),1,1)
			Counter += 0.01
	end
end)

k00p2Section:NewButton("Fire brick on sky", "", function()
while true do
		part = Instance.new("Part")
		part.Position =  Vector3.new(math.random(-1000,1000),math.random(1,1000),math.random(-1000,1000))
		part.Parent = game.Workspace
		part.BrickColor = BrickColor.new("green")
		fire = Instance.new("Fire")
		fire.Size = 75
		fire.Parent = part
        part.Anchored = true
        wait(0.5)
	end
end)

k00p2Section:NewButton("Fire brick raining", "", function()
while true do
		part = Instance.new("Part")
		part.Position =  Vector3.new(math.random(-500,500),math.random(1,500),math.random(-500,500))
		part.Parent = game.Workspace
		part.BrickColor = BrickColor.new("green")
		fire = Instance.new("Fire")
		fire.Size = 75
		fire.Parent = part
        part.Anchored = false
        wait(0.5)
	end
end)

k00p2Section:NewButton("Jumpscare", "", function()
for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me and not v.PlayerGui:FindFirstChild("k00pkidd's Jumpscare") and v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui",v.PlayerGui)
				newgui.Name = "k00p's Jumpscare"
				local newimage = Instance.new("ImageLabel",newgui)
				newimage.Image = "http://www.roblox.com/Asset/?id=9018233362"
				newimage.Size = UDim2.new(1,1,1,1)
				local s = Instance.new("Sound",newgui)
				s.SoundId = "rbxassetid://9069609200"
				s.Volume = 9e9
				s.Looped = true
				s:Play()
				print("Screamed "..v.Name)
				while wait(9) do

					newimage.Parent:Destroy()
wait(3)
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://8894394467"
		k00p.Volume = 10
        k00p.Pitch = 0.85
		k00p:Play()

				end
			end)
		end
	end
end)

k00p2Section:NewButton("Jumpscare #2", "", function()
for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= me and not v.PlayerGui:FindFirstChild("k00pkidd's Jumpscare") and v:FindFirstChild("PlayerGui") then
			spawn(function()
				local newgui = Instance.new("ScreenGui",v.PlayerGui)
				newgui.Name = "k00p's Jumpscare"
				local newimage = Instance.new("ImageLabel",newgui)
				newimage.Image = "http://www.roblox.com/Asset/?id=11379488396"
				newimage.Size = UDim2.new(1,1,1,1)
				local s = Instance.new("Sound",newgui)
				s.SoundId = "rbxassetid://8683380188"
				s.Volume = 9e9
				s.Looped = true
				s:Play()
				print("Screamed "..v.Name)
				while wait(9) do

					newimage.Parent:Destroy()
wait(3)
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://8894394467"
		k00p.Volume = 10
        k00p.Pitch = 0.85
		k00p:Play()

				end
			end)
		end
	end
end)

k00p2Section:NewTextBox("Hint", "", function(...)
local h = Instance.new("Hint")
h.Parent = Workspace 
h.Text = (...)
wait(10)
h:Remove()
end)

k00p2Section:NewButton("Animated Hint", "", function()
local h = Instance.new("Hint")
h.Text = ""
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TE"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K0"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00P"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PK"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKID"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TOD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TODA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TODAY"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TODAY!"
h.Parent = workspace
wait(0.1)
end)

k00p2Section:NewButton("Animated Hint (Reverse)", "", function()
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TODAY"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TODA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TOD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN TO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOIN"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JOI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD JO"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD J"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKIDD"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKID"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PKI"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00PK"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00P"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K00"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K0"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM K"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEAM"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TEA"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "TE"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = "T"
h.Parent = workspace
wait(0.1)
local h = Instance.new("Hint")
h.Text = ""
h.Parent = workspace
wait(0.1)
h:Remove()
end)

k00p2Section:NewTextBox("Message", "", function(...)
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = (...)
wait(5)
msg:Remove()
end)

k00p2Section:NewButton("Animated Message", "", function()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "T"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TE"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEA"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K0"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00P"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PK"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKI"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKID"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD J"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JO"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOI"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN T"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN TO"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN TOD"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN TODA"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN TODAY"
wait(0.1)
msg:Remove()
local msg = Instance.new("Message")
msg.Parent = Workspace 
msg.Text = "TEAM K00PKIDD JOIN TODAY!"
wait(5)
msg:Remove()
end)

local k00p2Section = Tab:NewSection("")

-- Page 3
local Tab = Window:NewTab("Page 3")
local k00p3Section = Tab:NewSection("")

k00p3Section:NewButton("Teleport to k00paraz's w0rld", "", function()
local ICC = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local LoadingFrame = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local PercentageBar = Instance.new("ImageLabel")
local Label = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

ICC.Name = "ICC"
ICC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ICC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ICC.ResetOnSpawn = true

ImageLabel.Parent = ICC
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=9018233362"

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = ImageLabel
LoadingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(-0.000821621623, 0, 0.814750969, 0)
LoadingFrame.Size = UDim2.new(0.338442117, 0, 0.19506079, 0)

Frame.Name = "Frame"
Frame.Parent = LoadingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.204075292, 0, -0.198473275, 0)
Frame.Size = UDim2.new(0.525885582, 0, 0.368852466, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.383419693, 0, 0, 0)
TextLabel.Size = UDim2.new(0.616580307, 0, 0.577777803, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

PercentageBar.Name = "PercentageBar"
PercentageBar.Parent = LoadingFrame
PercentageBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PercentageBar.BackgroundTransparency = 1.000
PercentageBar.Position = UDim2.new(0.0326975472, 0, 0.577336967, 0)
PercentageBar.Size = UDim2.new(0.934604824, 0, 0.295081973, 0)
PercentageBar.Image = "rbxassetid://3570695787"
PercentageBar.ImageColor3 = Color3.fromRGB(255, 0, 0)
PercentageBar.ScaleType = Enum.ScaleType.Slice
PercentageBar.SliceCenter = Rect.new(100, 100, 100, 100)
PercentageBar.SliceScale = 0.120

Label.Name = "Label"
Label.Parent = PercentageBar
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = "100%"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00198846636, 0, 0.846784174, 0)
TextLabel_2.Size = UDim2.new(0.339608967, 0, 0.0428137034, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Now joining k00paraz's w0rld.."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0562912859, 0, 0.899411678, 0)
TextLabel_3.Size = UDim2.new(0.223557532, 0, 0.0245394632, 0)
TextLabel_3.Font = Enum.Font.SourceSansItalic
TextLabel_3.Text = "A place of pure homeless joy.."
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = true

ImageLabel_2.Parent = ScreenGui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.Visible = false
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=9018233362"
game:GetService("TeleportService"):Teleport(12476784915)
wait(3)
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://8894394467"
		k00p.Volume = 10
        k00p.Pitch = 0.85
		k00p:Play()
end)

k00p3Section:NewButton("Teleport to k00pkidd's realm", "", function()
local ICC = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local LoadingFrame = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local PercentageBar = Instance.new("ImageLabel")
local Label = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

ICC.Name = "ICC"
ICC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ICC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ICC.ResetOnSpawn = true

ImageLabel.Parent = ICC
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=9018233362"

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = ImageLabel
LoadingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(-0.000821621623, 0, 0.814750969, 0)
LoadingFrame.Size = UDim2.new(0.338442117, 0, 0.19506079, 0)

Frame.Name = "Frame"
Frame.Parent = LoadingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.204075292, 0, -0.198473275, 0)
Frame.Size = UDim2.new(0.525885582, 0, 0.368852466, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.383419693, 0, 0, 0)
TextLabel.Size = UDim2.new(0.616580307, 0, 0.577777803, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

PercentageBar.Name = "PercentageBar"
PercentageBar.Parent = LoadingFrame
PercentageBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PercentageBar.BackgroundTransparency = 1.000
PercentageBar.Position = UDim2.new(0.0326975472, 0, 0.577336967, 0)
PercentageBar.Size = UDim2.new(0.934604824, 0, 0.295081973, 0)
PercentageBar.Image = "rbxassetid://3570695787"
PercentageBar.ImageColor3 = Color3.fromRGB(255, 0, 0)
PercentageBar.ScaleType = Enum.ScaleType.Slice
PercentageBar.SliceCenter = Rect.new(100, 100, 100, 100)
PercentageBar.SliceScale = 0.120

Label.Name = "Label"
Label.Parent = PercentageBar
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = "100%"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00198846636, 0, 0.846784174, 0)
TextLabel_2.Size = UDim2.new(0.339608967, 0, 0.0428137034, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Now joining k00pkidd realm.."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0562912859, 0, 0.899411678, 0)
TextLabel_3.Size = UDim2.new(0.223557532, 0, 0.0245394632, 0)
TextLabel_3.Font = Enum.Font.SourceSansItalic
TextLabel_3.Text = "A place of pure homeless joy.."
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = true

ImageLabel_2.Parent = ScreenGui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.Visible = false
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=9018233362"
game:GetService("TeleportService"):Teleport(12697496575)
wait(3)
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://8894394467"
		k00p.Volume = 10
        k00p.Pitch = 0.85
		k00p:Play()
end)

k00p3Section:NewButton("Add Anti-Leave", "", function()
local v6 = game:GetService("TeleportService")
local v10 = game:GetService("Players").LocalPlayer
	game:GetService("GuiService").MenuOpened:Connect(function()
		v6:Teleport(game.PlaceId, v10)
end)
local ICC = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local LoadingFrame = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local PercentageBar = Instance.new("ImageLabel")
local Label = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel_2 = Instance.new("ImageLabel")

--Properties:

ICC.Name = "ICC"
ICC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ICC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ICC.ResetOnSpawn = true

ImageLabel.Parent = ICC
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=9018233362"

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = ImageLabel
LoadingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(-0.000821621623, 0, 0.814750969, 0)
LoadingFrame.Size = UDim2.new(0.338442117, 0, 0.19506079, 0)

Frame.Name = "Frame"
Frame.Parent = LoadingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.204075292, 0, -0.198473275, 0)
Frame.Size = UDim2.new(0.525885582, 0, 0.368852466, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.383419693, 0, 0, 0)
TextLabel.Size = UDim2.new(0.616580307, 0, 0.577777803, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

PercentageBar.Name = "PercentageBar"
PercentageBar.Parent = LoadingFrame
PercentageBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PercentageBar.BackgroundTransparency = 1.000
PercentageBar.Position = UDim2.new(0.0326975472, 0, 0.577336967, 0)
PercentageBar.Size = UDim2.new(0.934604824, 0, 0.295081973, 0)
PercentageBar.Image = "rbxassetid://3570695787"
PercentageBar.ImageColor3 = Color3.fromRGB(35, 35, 35)
PercentageBar.ScaleType = Enum.ScaleType.Slice
PercentageBar.SliceCenter = Rect.new(100, 100, 100, 100)
PercentageBar.SliceScale = 0.120

Label.Name = "Label"
Label.Parent = PercentageBar
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = ""
Label.TextColor3 = Color3.fromRGB(35, 35, 35)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.00198846636, 0, 0.846784174, 0)
TextLabel_2.Size = UDim2.new(0.339608967, 0, 0.0428137034, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Now add anti leave.."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 18.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0562912859, 0, 0.899411678, 0)
TextLabel_3.Size = UDim2.new(0.223557532, 0, 0.0245394632, 0)
TextLabel_3.Font = Enum.Font.SourceSansItalic
TextLabel_3.Text = "Now add anti leave.."
TextLabel_3.TextColor3 = Color3.fromRGB(35, 35, 35)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 20.000
TextLabel_3.TextWrapped = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = false

ImageLabel_2.Parent = ScreenGui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.Visible = false
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=9018233362"
wait(3)
k00p = Instance.new("Sound", game.Workspace)
		k00p.Name = "k00p's Sound"
		k00p.SoundId = "rbxassetid://8894394467"
		k00p.Volume = 10
        k00p.Pitch = 0.85
		k00p:Play()
end)

k00p3Section:NewButton("Notification", "", function()
while true do 
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "team k00pkidd",
        Text = "JOIN TEAM K00PKIDD TODAY!",
        Icon = "http://www.roblox.com/asset/?id=9698929683",
        Callback = Function
    })
    wait(1)
end
end)

k00p3Section:NewButton("Notification #2", "", function()
while true do 
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "team k00pkidd #2",
        Text = "TEAM K00PKIDD WAS HERE!",
        Icon = "http://www.roblox.com/asset/?id=11426291165",
        Callback = Function
    })
    wait(1)
end
end)

local k00p3Section = Tab:NewSection("")
-- The next page will come soon.