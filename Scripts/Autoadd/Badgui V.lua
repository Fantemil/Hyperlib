-- Gui to Lua
-- Version: 3.2

-- Instances:

local ReplicationGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Buttons = Instance.new("Folder")
local ScrollingFrame = Instance.new("ScrollingFrame")
local BigHead = Instance.new("TextButton")
local BumAll = Instance.new("TextButton")
local Colorall = Instance.new("TextButton")
local DecalSpam = Instance.new("TextButton")
local Duckify = Instance.new("TextButton")
local FireAll = Instance.new("TextButton")
local Luigirain = Instance.new("TextButton")
local RainToad = Instance.new("TextButton")
local ThomasEngine = Instance.new("TextButton")
local Unanchor = Instance.new("TextButton")
local BasePlate = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local Personalityall = Instance.new("TextButton")
local SkyBox = Instance.new("TextButton")
local Peircer = Instance.new("TextButton")
local StickAll = Instance.new("TextButton")
local TwigAll = Instance.new("TextButton")
local FireParts = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ReplicationGui.Name = "ReplicationGui"
ReplicationGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ReplicationGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ReplicationGui.ResetOnSpawn = false

Frame.Parent = ReplicationGui
Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.237454101, 0, 0.242971882, 0)
Frame.Size = UDim2.new(0, 395, 0, 274)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 119, 29)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, -9.50611429e-05, 0)
Frame_2.Size = UDim2.new(0, 395, 0, 24)
Frame_2.ZIndex = 2

Buttons.Name = "Buttons"
Buttons.Parent = Frame

ScrollingFrame.Parent = Buttons
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0582990982, 0)
ScrollingFrame.Size = UDim2.new(0, 395, 0, 258)

BigHead.Name = "BigHead"
BigHead.Parent = ScrollingFrame
BigHead.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
BigHead.BorderSizePixel = 0
BigHead.Position = UDim2.new(0, 0, 0.0323792323, 0)
BigHead.Size = UDim2.new(0, 123, 0, 43)
BigHead.AutoButtonColor = false
BigHead.Font = Enum.Font.Code
BigHead.TextColor3 = Color3.fromRGB(255, 255, 255)
BigHead.TextSize = 20.000
BigHead.TextWrapped = true

BumAll.Name = "Bum All"
BumAll.Parent = ScrollingFrame
BumAll.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
BumAll.BorderSizePixel = 0
BumAll.Position = UDim2.new(0.341772139, 0, 0.244879276, 0)
BumAll.Size = UDim2.new(0, 123, 0, 43)
BumAll.AutoButtonColor = false
BumAll.Font = Enum.Font.Code
BumAll.TextColor3 = Color3.fromRGB(255, 255, 255)
BumAll.TextSize = 20.000
BumAll.TextWrapped = true

Colorall.Name = "rainbow all"
Colorall.Parent = ScrollingFrame
Colorall.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Colorall.BorderSizePixel = 0
Colorall.Position = UDim2.new(0.344303787, 0, 0.137131482, 0)
Colorall.Size = UDim2.new(0, 123, 0, 43)
Colorall.AutoButtonColor = false
Colorall.Font = Enum.Font.Code
Colorall.TextColor3 = Color3.fromRGB(255, 255, 255)
Colorall.TextSize = 20.000
Colorall.TextWrapped = true

DecalSpam.Name = "Decal Spam"
DecalSpam.Parent = ScrollingFrame
DecalSpam.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
DecalSpam.BorderSizePixel = 0
DecalSpam.Position = UDim2.new(0.686075926, 0, 0.244879276, 0)
DecalSpam.Size = UDim2.new(0, 123, 0, 43)
DecalSpam.AutoButtonColor = false
DecalSpam.Font = Enum.Font.Code
DecalSpam.TextColor3 = Color3.fromRGB(255, 255, 255)
DecalSpam.TextSize = 20.000
DecalSpam.TextWrapped = true

Duckify.Name = "Duck All"
Duckify.Parent = ScrollingFrame
Duckify.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Duckify.BorderSizePixel = 0
Duckify.Position = UDim2.new(0, 0, 0.137131482, 0)
Duckify.Size = UDim2.new(0, 123, 0, 43)
Duckify.AutoButtonColor = false
Duckify.Font = Enum.Font.Code
Duckify.TextColor3 = Color3.fromRGB(255, 255, 255)
Duckify.TextSize = 20.000
Duckify.TextWrapped = true

FireAll.Name = "Fire All"
FireAll.Parent = ScrollingFrame
FireAll.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FireAll.BorderSizePixel = 0
FireAll.Position = UDim2.new(0.688607574, 0, 0.0323792323, 0)
FireAll.Size = UDim2.new(0, 123, 0, 43)
FireAll.AutoButtonColor = false
FireAll.Font = Enum.Font.Code
FireAll.TextColor3 = Color3.fromRGB(255, 255, 255)
FireAll.TextSize = 20.000
FireAll.TextWrapped = true

Luigirain.Name = "Rain Luigi"
Luigirain.Parent = ScrollingFrame
Luigirain.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Luigirain.BorderSizePixel = 0
Luigirain.Position = UDim2.new(0.344303787, 0, 0.0323792323, 0)
Luigirain.Size = UDim2.new(0, 123, 0, 43)
Luigirain.AutoButtonColor = false
Luigirain.Font = Enum.Font.Code
Luigirain.TextColor3 = Color3.fromRGB(255, 255, 255)
Luigirain.TextSize = 20.000
Luigirain.TextWrapped = true

RainToad.Name = "Rain Toad"
RainToad.Parent = ScrollingFrame
RainToad.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
RainToad.BorderSizePixel = 0
RainToad.Position = UDim2.new(-0.00253164559, 0, 0.244879276, 0)
RainToad.Size = UDim2.new(0, 123, 0, 43)
RainToad.AutoButtonColor = false
RainToad.Font = Enum.Font.Code
RainToad.TextColor3 = Color3.fromRGB(255, 255, 255)
RainToad.TextSize = 20.000
RainToad.TextWrapped = true

ThomasEngine.Name = "Thomas"
ThomasEngine.Parent = ScrollingFrame
ThomasEngine.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ThomasEngine.BorderSizePixel = 0
ThomasEngine.Position = UDim2.new(0.688607574, 0, 0.137131482, 0)
ThomasEngine.Size = UDim2.new(0, 123, 0, 43)
ThomasEngine.AutoButtonColor = false
ThomasEngine.Font = Enum.Font.Code
ThomasEngine.TextColor3 = Color3.fromRGB(255, 255, 255)
ThomasEngine.TextSize = 20.000
ThomasEngine.TextWrapped = true

Unanchor.Name = "Unanchor"
Unanchor.Parent = ScrollingFrame
Unanchor.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Unanchor.BorderSizePixel = 0
Unanchor.Position = UDim2.new(-0.00253164559, 0, 0.34487924, 0)
Unanchor.Size = UDim2.new(0, 123, 0, 43)
Unanchor.AutoButtonColor = false
Unanchor.Font = Enum.Font.Code
Unanchor.TextColor3 = Color3.fromRGB(255, 255, 255)
Unanchor.TextSize = 20.000
Unanchor.TextWrapped = true

BasePlate.Name = "BasePlate"
BasePlate.Parent = ScrollingFrame
BasePlate.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
BasePlate.BorderSizePixel = 0
BasePlate.Position = UDim2.new(0.341772139, 0, 0.34487924, 0)
BasePlate.Size = UDim2.new(0, 123, 0, 43)
BasePlate.AutoButtonColor = false
BasePlate.Font = Enum.Font.Code
BasePlate.TextColor3 = Color3.fromRGB(255, 255, 255)
BasePlate.TextSize = 20.000
BasePlate.TextWrapped = true

KillAll.Name = "Kill All"
KillAll.Parent = ScrollingFrame
KillAll.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.683544278, 0, 0.34487924, 0)
KillAll.Size = UDim2.new(0, 123, 0, 43)
KillAll.AutoButtonColor = false
KillAll.Font = Enum.Font.Code
KillAll.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAll.TextSize = 20.000
KillAll.TextWrapped = true

Personalityall.Name = "Personality all"
Personalityall.Parent = ScrollingFrame
Personalityall.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Personalityall.BorderSizePixel = 0
Personalityall.Position = UDim2.new(0.686075926, 0, 0.452379227, 0)
Personalityall.Size = UDim2.new(0, 123, 0, 43)
Personalityall.AutoButtonColor = false
Personalityall.Font = Enum.Font.Code
Personalityall.TextColor3 = Color3.fromRGB(255, 255, 255)
Personalityall.TextSize = 20.000
Personalityall.TextWrapped = true

SkyBox.Name = "Change Sky"
SkyBox.Parent = ScrollingFrame
SkyBox.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
SkyBox.BorderSizePixel = 0
SkyBox.Position = UDim2.new(0.344303787, 0, 0.452379227, 0)
SkyBox.Size = UDim2.new(0, 123, 0, 43)
SkyBox.AutoButtonColor = false
SkyBox.Font = Enum.Font.Code
SkyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SkyBox.TextSize = 20.000
SkyBox.TextWrapped = true

Peircer.Name = "Penis all"
Peircer.Parent = ScrollingFrame
Peircer.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Peircer.BorderSizePixel = 0
Peircer.Position = UDim2.new(0, 0, 0.452379227, 0)
Peircer.Size = UDim2.new(0, 123, 0, 43)
Peircer.AutoButtonColor = false
Peircer.Font = Enum.Font.Code
Peircer.TextColor3 = Color3.fromRGB(255, 255, 255)
Peircer.TextSize = 20.000
Peircer.TextWrapped = true

StickAll.Name = "Stick All"
StickAll.Parent = ScrollingFrame
StickAll.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
StickAll.BorderSizePixel = 0
StickAll.Position = UDim2.new(0, 0, 0.559879243, 0)
StickAll.Size = UDim2.new(0, 123, 0, 43)
StickAll.AutoButtonColor = false
StickAll.Font = Enum.Font.Code
StickAll.TextColor3 = Color3.fromRGB(255, 255, 255)
StickAll.TextSize = 20.000
StickAll.TextWrapped = true

TwigAll.Name = "blast all"
TwigAll.Parent = ScrollingFrame
TwigAll.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
TwigAll.BorderSizePixel = 0
TwigAll.Position = UDim2.new(0.344303787, 0, 0.559879243, 0)
TwigAll.Size = UDim2.new(0, 123, 0, 43)
TwigAll.AutoButtonColor = false
TwigAll.Font = Enum.Font.Code
TwigAll.TextColor3 = Color3.fromRGB(255, 255, 255)
TwigAll.TextSize = 20.000
TwigAll.TextWrapped = true

FireParts.Name = "Fire Parts"
FireParts.Parent = ScrollingFrame
FireParts.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FireParts.BorderSizePixel = 0
FireParts.Position = UDim2.new(0.686075926, 0, 0.559879243, 0)
FireParts.Size = UDim2.new(0, 123, 0, 43)
FireParts.AutoButtonColor = false
FireParts.Font = Enum.Font.Code
FireParts.TextColor3 = Color3.fromRGB(255, 255, 255)
FireParts.TextSize = 20.000
FireParts.TextWrapped = true

Frame_3.Parent = ReplicationGui
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BackgroundTransparency = 1.000
Frame_3.Position = UDim2.new(0, 0, 0.79919678, 0)
Frame_3.Size = UDim2.new(0, 267, 0, 100)

ImageLabel.Parent = Frame_3
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0337078571, 0, 0.227877513, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 54)
ImageLabel.Image = "rbxassetid://14094866995"

TextLabel.Parent = Frame_3
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(255, 119, 29)
TextLabel.BorderSizePixel = 2
TextLabel.Position = UDim2.new(0.258426964, 0, 0.25999999, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "badguiV2 developed by BAD\nExecute Scripts Which are replicated to the server."
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function CNUNYID_fake_script() -- BigHead.LocalScript 
	local script = Instance.new('LocalScript', BigHead)

	script.Parent.MouseButton1Click:Connect(function()
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
				[1] = workspace.Part
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
	
	function BigHead(player)
		local chara = player.Character
			spawn(function()
				SetLocked(chara.Head,false)
				MeshResize(chara.Head,Vector3.new(10,10,10))
			end)
	end
	for i,players in game.Players:GetPlayers() do
		BigHead(players)
	end
	end)
end
coroutine.wrap(CNUNYID_fake_script)()
local function UCBQXM_fake_script() -- BumAll.LocalScript 
	local script = Instance.new('LocalScript', BumAll)

	script.Parent.MouseButton1Click:Connect(function()
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
		function Bum(player)
			char = player.Character
			for i,v in char:GetChildren() do
				pcall(function()
					SetLocked(v,false)
				end)
			end
			if player.Character:FindFirstChild("Part1") then
				return
			else
				
			SetAnchor(true,player.Character.HumanoidRootPart)
			spawn(function()
				CreatePart(player.Character:WaitForChild("Right Leg").CFrame * CFrame.new(0,1,0.6),player.Character)
				SetName(player.Character.Part,"Part1")
				CreatePart(player.Character:WaitForChild("Left Leg").CFrame * CFrame.new(0,1,0.6),player.Character)
				SetName(player.Character.Part,"Part2")
			end)
			wait(0.2)
			repeat wait() until char:FindFirstChild("Part2")
			spawn(function()
				AddMesh(char.Part1)
				AddMesh(char.Part2)
				SetMesh(char.Part1,"5697933202")
				SetMesh(char.Part2,"5697933202")
			end)
			wait(0.2)
			repeat wait() until char.Part2:FindFirstChild("Mesh")
			spawn(function()
				MeshResize(char.Part1,Vector3.new(0.5,0.5,0.5))
				MeshResize(char.Part2,Vector3.new(0.5,0.5,0.5))
			end)
			wait(0.2)
			pcall(function()
				Color(char.Part1,char:WaitForChild("Right Leg").Color)
				Color(char.Part2,char:WaitForChild("Left Leg").Color)
			end)
			wait(0.2)
			spawn(function()
				SetCollision(player.Character.Part1,false)
				SetCollision(player.Character.Part2,false)
				Weld(char.Part1,char.HumanoidRootPart,char.Part1)
				Weld(char.Part2,char.Part1,char.Part2)
			end)
				repeat wait() until char.Part2:FindFirstChild("BTWeld")
			spawn(function()
				SetAnchor(false,char.HumanoidRootPart)
				SetAnchor(false,char.Part1)
				SetAnchor(false,char.Part2)
				end)
				repeat wait()
					SetAnchor(false,char.HumanoidRootPart)
					SetAnchor(false,char.Part1)
					SetAnchor(false,char.Part2)
				until char.Part2.Anchored == false
			end
		end
		for i,v in game.Players:GetPlayers() do
			--zzspawn(function()
			pcall(function()
				Bum(v)
			end)
			--end)
		end
	end)
end
coroutine.wrap(UCBQXM_fake_script)()
local function MJHPOM_fake_script() -- Colorall.LocalScript 
	local script = Instance.new('LocalScript', Colorall)

	script.Parent.MouseButton1Click:Connect(function()
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
					[1] = workspace.Part
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
		function randomise()
			for i,v in game.Workspace:GetDescendants() do
				if v:IsA("BasePart") then
					spawn(function()
						SetLocked(v,false)
						Color(v,Color3.new(math.random(0,255),math.random(0,255),math.random(0,255)))
					end)
				end
			end
		end
		while wait() do
			spawn(function()
				randomise()
			end)
		end
	end)
end
coroutine.wrap(MJHPOM_fake_script)()
local function ZYJPOKE_fake_script() -- DecalSpam.LocalScript 
	local script = Instance.new('LocalScript', DecalSpam)

	script.Parent.MouseButton1Click:Connect(function()
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
		spam("83046327")
	end)
end
coroutine.wrap(ZYJPOKE_fake_script)()
local function IGAFG_fake_script() -- Duckify.LocalScript 
	local script = Instance.new('LocalScript', Duckify)

	script.Parent.MouseButton1Click:Connect(function()
		--rgrg
		local player = game.Players.LocalPlayer
		local chara = player.Character
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
					[1] = workspace.Part
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
					[1] = part,
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
						["Part"] = workspace.Part,
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
		function Duckify(player)
			for i,v in player.Character:GetDescendants() do
				if v:IsA("BasePart") then
					pcall(function()
						SetLocked(v,false)
						SetTrans(v,1)
					end)
				end
			end
			char = player.Character
			--spawn(function()
			spawn(function()
				SetAnchor(true,char.HumanoidRootPart)
				CreatePart(char.HumanoidRootPart.CFrame,char)
				SetCollision(char.Part,false)
				SetName(char.Part, "Duck")
			end)
			repeat wait() until char:FindFirstChild("Duck")
			spawn(function()
				SetLocked(char.Duck,false)
				SetLocked(char.HumanoidRootPart,false)
				Weld(char.Duck,char.HumanoidRootPart,char.Duck)
				SetAnchor(false,char.Duck)
				AddMesh(char.Duck)
			end)
			repeat wait() until char.Duck:FindFirstChild("Mesh")
				MeshResize(char.Duck,Vector3.new(8,8,8))
				SetMesh(char.Duck,"10749878672")
				SetTexture(char.Duck,"10749878886")
				SetAnchor(false,char.HumanoidRootPart)
			--end)
		end
		for i,v in game.Players:GetPlayers() do
			--spawn(function()
			Duckify(v)
			--end)
		end
	end)
end
coroutine.wrap(IGAFG_fake_script)()
local function YTBL_fake_script() -- FireAll.LocalScript 
	local script = Instance.new('LocalScript', FireAll)

	script.Parent.MouseButton1Click:Connect(function()
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
					[1] = workspace.Part
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
						["Part"] = workspace.Part,
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
		function AddFire(part)
			local args = {
				[1] = "CreateDecorations",
				[2] = {
					[1] = {
						["Part"] = part,
						["DecorationType"] = "Fire"
					}
				}
			}
			_(args)
		end
	
		function Fire(player)
			for i,v in player.Character:GetDescendants() do
				if v:IsA("BasePart") then
					AddFire(v)
				end
			end
			DestroyPart(player.Character.Head)
		end
	
		for i,v in game.Players:GetPlayers() do
			spawn(function()
				pcall(function()
					Fire(v)
				end)
			end)
		end
	end)
end
coroutine.wrap(YTBL_fake_script)()
local function YNEKD_fake_script() -- Luigirain.LocalScript 
	local script = Instance.new('LocalScript', Luigirain)

	script.Parent.MouseButton1Click:Connect(function()
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
		function CreatePart(cf)
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = cf,
				[4] = workspace
			}
			_(args)
		end
		function DestroyPart(part)
			local args = {
				[1] = "Remove",
				[2] = {
					[1] = workspace.Part
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
					[1] = workspace.Part
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
		hrpcf = player.Character.HumanoidRootPart.CFrame
		while wait(0.5) do
			x = hrpcf.x
			z = hrpcf.z
			randint = math.random(-600,600)
			randint2 = math.random(-600,600)
			xloc = randint + x
			zloc = randint2 + z
			cf = player.Character.HumanoidRootPart.CFrame.y + 400
			spawn(function()
				CreatePart(CFrame.new(math.floor(xloc), math.random(cf,cf+400), math.floor(zloc)))
				for i,v in game.Workspace:GetDescendants() do
					if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
						SetName(v,"b_1337")
						SetAnchor(false,v)
						AddMesh(v)
						Resize(v, Vector3.new(100,100,100),v.CFrame)
						MeshResize(v,Vector3.new(20,20,20))
						SetMesh(v,"1618237875")
						SetTexture(v, "1618237897")
						SetCollision(v,false)
					else
					end
				end
			end)
		end
	end)
end
coroutine.wrap(YNEKD_fake_script)()
local function DSRN_fake_script() -- RainToad.LocalScript 
	local script = Instance.new('LocalScript', RainToad)

	script.Parent.MouseButton1Click:Connect(function()
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
		function CreatePart(cf)
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = cf,
				[4] = workspace
			}
			_(args)
		end
		function DestroyPart(part)
			local args = {
				[1] = "Remove",
				[2] = {
					[1] = workspace.Part
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
					[1] = workspace.Part
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
		hrpcf = player.Character.HumanoidRootPart.CFrame
		while wait(0.5) do
			x = hrpcf.x
			z = hrpcf.z
			randint = math.random(-600,600)
			randint2 = math.random(-600,600)
			xloc = randint + x
			zloc = randint2 + z
			cf = player.Character.HumanoidRootPart.CFrame.y + 400
			spawn(function()
				CreatePart(CFrame.new(math.floor(xloc), math.random(cf,cf+400), math.floor(zloc)))
				for i,v in game.Workspace:GetDescendants() do
					if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
						SetName(v,"b_1337")
						SetAnchor(false,v)
						AddMesh(v)
						Resize(v, Vector3.new(100,100,100),v.CFrame)
						MeshResize(v,Vector3.new(3,3,3))
						SetMesh(v,"614605299")
						SetTexture(v, "614605300")
						SetCollision(v,false)
					else
					end
				end	
			end)
		end
	end)
end
coroutine.wrap(DSRN_fake_script)()
local function ELTQHS_fake_script() -- ThomasEngine.LocalScript 
	local script = Instance.new('LocalScript', ThomasEngine)

	script.Parent.MouseButton1Click:Connect(function()--rgrg
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
					[1] = workspace.Part
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
		function Thomas(player)
			SetAnchor(true,char.HumanoidRootPart)
			CreatePart(char.HumanoidRootPart.CFrame,char)
			SetCollision(char.Part,false)
			SetLocked(char.Part,false)
			CreateSpotlight(char.Part)
			SyncLighting(char.Part,100)
			SetLocked(char.HumanoidRootPart,false)
			Weld(char.Part,char.HumanoidRootPart,char.Part)
			SetAnchor(false,char.Part)
			AddMesh(char.Part)
			MeshResize(char.Part,Vector3.new(3,3,3))
			SetMesh(char.Part,"4340968808")
			SetTexture(char.Part,"4340968918")
			SetAnchor(false,char.HumanoidRootPart)
			char.Humanoid.WalkSpeed = 100
			char.HumanoidRootPart.Touched:connect(function(obj)
				if obj.Parent:FindFirstChild("Humanoid") then
					SetLocked(obj.Parent.Head,false)
					DestroyPart(obj.Parent.Head)
				end
			end)
			game:GetService("RunService").RenderStepped:Connect(function()
				for i,v in char:GetDescendants() do
					if v:IsA("BasePart") then
						char.Humanoid.WalkSpeed = 100
						v.CanCollide = false
					end
				end
			end)
		end
		Thomas(player)
	end)
end
coroutine.wrap(ELTQHS_fake_script)()
local function QAIUFJB_fake_script() -- Unanchor.LocalScript 
	local script = Instance.new('LocalScript', Unanchor)

	script.Parent.MouseButton1Click:Connect(function()
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
				[1] = workspace.Part
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
	
	function Unanchor()
		for i,v in game.Workspace:GetDescendants() do
			spawn(function()
				SetLocked(v,false)
				SetAnchor(false,v)
			end)
		end
	end
	Unanchor()
	end)
end
coroutine.wrap(QAIUFJB_fake_script)()
local function ZLFWJ_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	for i,v in script.Parent:GetChildren() do
		pcall(function()
			v.Text = v.Name
		end)
	end
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
		function CreatePart(cf,parent,types)
			local args = {
				[1] = "CreatePart",
				[2] = types,
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
					[1] = workspace.Part
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
	
		function Material(part,mate)
	
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = part,
						["Material"] = mate
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
	while wait(5) do
		pcall(function()
			for i,v in game.Players.LocalPlayer.Character:GetDescendants() do
				if v:IsA("BasePart") then
					SetLocked(v,true)
				end
			end
		end)
	end
end
coroutine.wrap(ZLFWJ_fake_script)()
local function WPCCWW_fake_script() -- BasePlate.LocalScript 
	local script = Instance.new('LocalScript', BasePlate)

	script.Parent.MouseButton1Click:Connect(function()
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
	function CreatePart(cf,parent,types)
		local args = {
			[1] = "CreatePart",
			[2] = types,
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
				[1] = workspace.Part
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
		
		function Material(part,mate)
	
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = part,
						["Material"] = mate
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
		hrpx = math.floor(char.HumanoidRootPart.CFrame.x)
		hrpz = math.floor(char.HumanoidRootPart.CFrame.z)
		hrpy = math.floor(char.HumanoidRootPart.CFrame.y)
	function SpawnBasePlate()
			CreatePart(CFrame.new(hrpx,hrpy-20,hrpz),workspace,"Spawn")
			for i,v in game.Workspace:GetChildren() do
				if v:IsA("BasePart") and v.CFrame.y == hrpy - 20 and v.CFrame.x == hrpx then
					spawn(function()
						Resize(v,Vector3.new(1000,2,1000),CFrame.new(hrpx,hrpy-20,hrpz))
						Material(v,Enum.Material.Grass)
						Color(v,Color3.fromRGB(25,100,25))
						while wait(1) do
							pcall(function()SetLocked(v,true)end)
						end
					end)
				end
			end
	end
	SpawnBasePlate()
	end)
end
coroutine.wrap(WPCCWW_fake_script)()
local function UMGSN_fake_script() -- KillAll.LocalScript 
	local script = Instance.new('LocalScript', KillAll)

	script.Parent.MouseButton1Click:Connect(function()
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
				[1] = workspace.Part
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
	
	function KillAll()
		for i,v in game.Players:GetPlayers() do
			spawn(function()
				SetLocked(v.Character.Head,false)
				DestroyPart(v.Character.Head)
			end)
		end
	end
	KillAll()
	end)
end
coroutine.wrap(UMGSN_fake_script)()
local function KEYDXW_fake_script() -- Personalityall.LocalScript 
	local script = Instance.new('LocalScript', Personalityall)

	script.Parent.MouseButton1Click:Connect(function()
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
		function Boob(player)
			char = player.Character
			for i,v in char:GetChildren() do
				pcall(function()
					SetLocked(v,false)
				end)
			end
			if player.Character:FindFirstChild("Boob2") then
				return
			else
				
			SetAnchor(true,player.Character.HumanoidRootPart)
			spawn(function()
				CreatePart(player.Character:WaitForChild("Right Leg").CFrame * CFrame.new(0,2,-0.6),player.Character)
				SetName(player.Character.Part,"Boob1")
				CreatePart(player.Character:WaitForChild("Left Leg").CFrame * CFrame.new(0,2,-0.6),player.Character)
				SetName(player.Character.Part,"Boob2")
			end)
			wait(0.2)
			repeat wait() until char:FindFirstChild("Boob2")
			spawn(function()
				AddMesh(char.Boob1)
				AddMesh(char.Boob2)
				SetMesh(char.Boob1,"5697933202")
				SetMesh(char.Boob2,"5697933202")
			end)
			wait(0.2)
			repeat wait() until char.Boob2:FindFirstChild("Mesh")
			MeshResize(char.Boob1,Vector3.new(0.4,0.4,0.4))
			MeshResize(char.Boob2,Vector3.new(0.4,0.4,0.4))
			pcall(function()
				Color(char.Boob1,char:WaitForChild("Torso").Color)
				Color(char.Boob2,char:WaitForChild("Torso").Color)
			end)
			wait(0.2)
			spawn(function()
				SetCollision(player.Character.Boob1,false)
				SetCollision(player.Character.Boob2,false)
				Weld(char.Boob1,char.HumanoidRootPart,char.Boob1)
				Weld(char.Boob2,char.Boob1,char.Boob2)
			end)
				repeat wait() until char.Boob2:FindFirstChild("BTWeld")
				for i,v in char:GetChildren() do
					pcall(function()
						SetLocked(v,false)
					end)
				end
				for i,v in char:GetChildren() do
					pcall(function()
						SetAnchor(false,v)
					end)
				end
			spawn(function()
				SetAnchor(false,char.HumanoidRootPart)
				SetAnchor(false,char.Boob1)
				SetAnchor(false,char.Boob2)
				end)
			end
		end
		for i,v in game.Players:GetPlayers() do
			--spawn(function()
			pcall(function()
				Boob(v)
			end)
			--end)
		end
	end)
end
coroutine.wrap(KEYDXW_fake_script)()
local function MXYYBZ_fake_script() -- SkyBox.LocalScript 
	local script = Instance.new('LocalScript', SkyBox)

	script.Parent.MouseButton1Click:Connect(function()
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
		Sky("83046327")
	end)
end
coroutine.wrap(MXYYBZ_fake_script)()
local function GDBQE_fake_script() -- Peircer.LocalScript 
	local script = Instance.new('LocalScript', Peircer)

	script.Parent.MouseButton1Click:Connect(function()
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
		function Penis(player)
			char = player.Character
			for i,v in char:GetChildren() do
				pcall(function()
					SetLocked(v,false)
				end)
			end
			if player.Character:FindFirstChild("Penis") then
				return
			else
				
	
			SetAnchor(true,player.Character.HumanoidRootPart)
			spawn(function()
				CreatePart(player.Character:WaitForChild("Right Leg").CFrame * CFrame.new(-0.8,1,-0.6),player.Character)
				SetName(player.Character.Part,"Balls1")
				CreatePart(player.Character:WaitForChild("Left Leg").CFrame * CFrame.new(0.8,1,-0.6),player.Character)
				SetName(player.Character.Part,"Balls2")
			end)
			wait(0.2)
			repeat wait() until char:FindFirstChild("Balls2")
			print("done")
			spawn(function()
				CreatePart(player.Character:WaitForChild("Torso").CFrame * CFrame.new(0,-1,-1.3),player.Character)
				SetName(player.Character.Part,"Penis")
				CreatePart(player.Character:WaitForChild("Torso").CFrame * CFrame.new(0,-1,-2.5),player.Character)
				SetName(player.Character.Part,"Head1")
			end)
			repeat wait() until char:FindFirstChild("Head1")
			spawn(function()
				AddMesh(char.Balls1)
				AddMesh(char.Balls2)
				AddMesh(char.Head1)
				AddMesh(char.Penis)
			end)
			repeat wait() until char.Penis:FindFirstChild("Mesh")
			spawn(function()
				SetMesh(char.Penis,"4743972117")
				SetMesh(char.Head1,"4743972117")
				MeshResize(char.Penis,Vector3.new(0.5,0.5,3))
				MeshResize(char.Head1,Vector3.new(0.5,0.5,1))
			end)
			spawn(function()
				Weld(char.Penis,char.HumanoidRootPart,char.Penis)
				SetMesh(char.Balls1,"5697933202")
				SetMesh(char.Balls2,"5697933202")
				MeshResize(char.Balls1,Vector3.new(0.2,0.2,0.2))
				MeshResize(char.Balls2,Vector3.new(0.2,0.2,0.2))
			end)
			wait(0.2)
			pcall(function()
				Color(char.Balls1,char:WaitForChild("Torso").Color)
				Color(char.Balls2,char:WaitForChild("Torso").Color)
				Color(char.Penis,char:WaitForChild("Torso").Color)
				Color(char.Head1, Color3.fromRGB(255,100,100))
			end)
			wait(0.2)
			spawn(function()
				SetCollision(player.Character.Balls1,false)
				SetCollision(player.Character.Balls2,false)
				SetCollision(player.Character.Penis,false)
				SetCollision(player.Character.Head1,false)
			end)
			wait(0.2)
			spawn(function()
				Weld(char.Balls1,char.HumanoidRootPart,char.Balls1)
				Weld(char.Balls2,char.Balls1,char.Balls2)
				Weld(char.Head1,char.Penis,char.Head1)
			end)
			wait(0.2)
			spawn(function()
				SetAnchor(false,char.Balls1)
				SetAnchor(false,char.Balls2)
				SetAnchor(false,char.Penis)
				SetAnchor(false,char.Head1)
				SetAnchor(false,char.HumanoidRootPart)
				end)
				repeat wait()
					SetAnchor(false,char.HumanoidRootPart)
					SetAnchor(false,char.Balls1)
					SetAnchor(false,char.Balls2)
					SetAnchor(false,char.Penis)
					SetAnchor(false,char.Head1)
				until char.Head1.Anchored == false
			end
		end
		for i,v in game.Players:GetPlayers() do
			--spawn(function()
			--pcall(function()
				Penis(player)
			--end)
			--end)
		end
	end)
end
coroutine.wrap(GDBQE_fake_script)()
local function UQCEBIW_fake_script() -- StickAll.LocalScript 
	local script = Instance.new('LocalScript', StickAll)

	script.Parent.MouseButton1Click:Connect(function()
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
		function Stickify()
			for i,v in game.Players:GetPlayers() do
				for i,x in v.Character:GetDescendants() do
					if x:IsA("BasePart") then
						SetLocked(x,false)
					end
				end
				Weld(v.Character.HumanoidRootPart,char.HumanoidRootPart,v.Character.HumanoidRootPart)
			end
		end
		Stickify()
	end)
end
coroutine.wrap(UQCEBIW_fake_script)()
local function PAVETL_fake_script() -- TwigAll.LocalScript 
	local script = Instance.new('LocalScript', TwigAll)

	script.Parent.MouseButton1Click:Connect(function()
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
		function Twig()
			for i,v in game.Players:GetPlayers() do
				for i,x in v.Character:GetDescendants() do
					if x:IsA("BasePart") then
					pcall(function()
					SetLocked(x,false)
					AddMesh(x)
					MeshResize(x,Vector3.new(1,2,0.1))
						end)
					end
				end
			end
		end
		Twig()
	end)
end
coroutine.wrap(PAVETL_fake_script)()
local function RWUMPC_fake_script() -- FireParts.LocalScript 
	local script = Instance.new('LocalScript', FireParts)

	script.Parent.MouseButton1Click:Connect(function()
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
				[1] = workspace.Part
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
		function AddFire(part)
			local args = {
				[1] = "CreateDecorations",
				[2] = {
					[1] = {
						["Part"] = part,
						["DecorationType"] = "Fire"
					}
				}
			}
			_(args)
		end
	function FireParts()
		for i,v in game.Workspace:GetDescendants() do
			spawn(function()
					SetLocked(v,false)
					AddFire(v)
			end)
		end
	end
	FireParts()
	end)
end
coroutine.wrap(RWUMPC_fake_script)()
local function SETN_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(SETN_fake_script)()
local function LRPIF_fake_script() -- ReplicationGui.LocalScript 
	local script = Instance.new('LocalScript', ReplicationGui)

	script.Parent.Parent = game.CoreGui
end
coroutine.wrap(LRPIF_fake_script)()
