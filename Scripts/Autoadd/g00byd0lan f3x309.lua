-- Gui to Lua
-- Version: 1

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local nootnoot = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

nootnoot.Name = "g00byd0lan f3x by skeletons"
nootnoot.Parent = ScreenGui
nootnoot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
nootnoot.BorderColor3 = Color3.fromRGB(0, 0, 0)
nootnoot.BorderSizePixel = 0
nootnoot.Position = UDim2.new(0.886762381, 0, 0.905511796, 0)
nootnoot.Size = UDim2.new(0, 71, 0, 48)
nootnoot.Font = Enum.Font.SourceSansBold
nootnoot.Text = "Darius F3x"
nootnoot.TextColor3 = Color3.fromRGB(255, 255, 255)
nootnoot.TextSize = 14.000
nootnoot.MouseButton1Down:connect(function()
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
    Sky("12169362233")

    -----------------------------------

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
    spam("12169362233")

    -----------
end)