getgenv().FalconWare = {
	['Global'] = {
        ['Checks'] = {
            Friend = false,
            Crew = false,
            Wall = true
        },
        ['Resolver'] = { Mode = 'Detection', DetectionValue = 50 },
        ['Memory Spoofer'] = { Percentage = 100 --[[ 0 to 100 ]] },
        ['Debug'] = true
        -- Friend_Check = false,
        -- Crew_Check = false,
    },
    ['Bullet Redirection'] = {
        Enabled = true,
        Prediction = 0.1245,
        HitChance = 100,
        ['Keybind'] = {
            Bind = Enum.KeyCode.P,
            Mode = 'Toggle' -- Hold , Toggle
        },
        ['Gun Settings'] = {
            Enabled = true,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = {
                ['FOV'] = { Close = 14, Mid = 12, Far = 7 },
                ['Prediction'] = { Close = 0.1185, Mid = 0.1165, Far = 0.105 },
                ['Hit Chance'] = { Close = 100, Mid = 100, Far = 100 }
            },
            ['Shotguns'] = {
                ['FOV'] = { Close = 18, Mid = 14, Far = 7 },
                ['Prediction'] = { Close = 0.1225, Mid = 0.12, Far = 0.115 },
                ['Hit Chance'] = { Close = 100, Mid = 100, Far = 100 }
            },
            ['Automatics'] = {
                ['FOV'] = { Close = 14, Mid = 12, Far = 7 },
                ['Prediction'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
                ['Hit Chance'] = { Close = 25, Mid = 50, Far = 75 }
            },
            ['Other'] = {
                ['FOV'] = { Close = 14, Mid = 12, Far = 7 },
                ['Prediction'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
                ['Hit Chance'] = { Close = 25, Mid = 50, Far = 75 }
            }
        }
    },
    ['AimAssist'] = {
        Enabled = true,
        Sensitivity = 2,
        ['Easing'] = {
            Style = Enum.EasingStyle.Circular,
            Direction = Enum.EasingDirection.InOut
        },
        ['Ground'] = {
            Part = 'Head',
            Prediction = 0.12,
            Smoothing = 0.1145
        },
        ['Air'] = {
            Part = 'Head',
            Prediction = 0.14,
            Smoothing = 0.12
        },
        ['Checks'] = {
            Disable_On_ThirdPerson = true,
		    Disable_On_Reload = true,
            Disable_When_Not_Holding_Gun = false
        },
        ['Keybind'] = {
            Bind = Enum.KeyCode.C,
            Mode = 'Toggle' -- Hold , Toggle
        },
        ['Gun Settings'] = {
            Enabled = false,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Shotguns'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Automatics'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Other'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            }
        }
    },
    ['TriggerBot'] = {
        Enabled = false,
        Prediction = 0.124,
        Delay = 0.001,
        Keybind = {
            Bind = Enum.KeyCode.X,
            Mode = 'Hold'
        },
        ['Gun Prediction Settings'] = {
            Enabled = false,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
            ['Shotguns'] = { Close = 0.132, Mid = 0.127, Far = 0.124 },
            ['Automatics'] = { Close = 0.132, Mid = 0.1256, Far = 0.1254 },
            ['Other'] = { Close = 0.132, Mid = 0.1256, Far = 0.1254 }
        }
    },
    ['FOVs'] = {
        ['Silent'] = {
            FOVType = "Circle", -- Circle , Box 
            ['Attach To Target'] = {
                Enabled = false,
                Prediction = true
            },
            Visible = false,
            BoxWidth = 55,
            BoxHeight = 85,
            CircleRadius = 100,
            Color = Color3.fromRGB(0, 0, 0),
            Filled = false,
            Transparency = 0.5
        },
        ['Trigger Bot'] = {
            FOVType = "Box", -- Circle , Box
            ['Attach To Target'] = {
                Enabled = true,
                Prediction = true
            },
            Visible = true,
            BoxWidth = 55,
            BoxHeight = 85,
            CircleRadius = 300,
            Color = Color3.fromRGB(255, 255, 255),
            Filled = true,
            Transparency = 0.5
        }
    }
    --[[
    Misc = {
        MemorySpoofer = {
            Percent = 100 -- // %
        },
        SpeedThreshold = 50,
    }
    ]]
}

-- // Load Adonis Bypass
(function()
    -- // Find the detected function
    local DetectedF
    for _, v in ipairs(getgc()) do
        if (typeof(v) == "function" and islclosure(v) and table.find(debug.getconstants(v), ":: Adonis Anti Cheat::\n") and #debug.getupvalues(v) > 0) then
            DetectedF = v
            break
        end
    end

    -- // Make sure found
    if (not DetectedF) then
        return
    end

    -- // Hook disconnect, kill
    local DisconnectF = debug.getupvalue(DetectedF, 7)
    local KillF = debug.getupvalue(DetectedF, 8)
    hookfunction(DisconnectF, function() end)
    hookfunction(KillF, function() end)

    -- // Special hook for detected
    local OldDetectedF
    OldDetectedF = hookfunction(DetectedF, function(action, info, nocrash)
        -- // Check if legit actions
        if (action ~= "_") then
            return coroutine.yield()
        end

        -- // Return default
        return OldDetectedF(action, info, nocrash)
    end)

    -- // Load Anti Kick
    do
        -- // Services
        local Players = game:GetService("Players")

        -- // Vars
        local LocalPlayer = Players.LocalPlayer
        local BlockedMethods = {"Kick", "kick"}

        -- // Index hook
        hookfunction(LocalPlayer.Kick, function() end)

        -- // Namecall hook
        local __namecall
        __namecall = hookmetamethod(game, "__namecall", function(self, ...)
            -- // Check if kick attempt
            if (self == LocalPlayer and table.find(BlockedMethods, getnamecallmethod())) then
                -- // Cancel it
                return
            end

            -- // Return - so everything else that uses namecall does not break
            return __namecall(self, ...)
        end)
    end
end)()

-- // Configuration
local Configuration = {
	['Global'] = {
        ['Checks'] = {
            Friend = false,
            Crew = false,
            Wall = true
        },
        ['Resolver'] = { Mode = 'Always', DetectionValue = 50 },
        ['Memory Spoofer'] = { Percentage = 100 --[[ 0 to 100 ]] }
        -- Friend_Check = false,
        -- Crew_Check = false,
    },
    ['Bullet Redirection'] = {
        Enabled = true,
        Prediction = 0.125765754365423622,
        HitChance = 100,
        ['Keybind'] = {
            Bind = Enum.KeyCode.P,
            Mode = 'Hold' -- Hold , Toggle
        },
        ['Gun Settings'] = {
            Enabled = true,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = {
                ['FOV'] = { Close = 15, Mid = 13, Far = 7 },
                ['Prediction'] = { Close = 0.12, Mid = 0.1185, Far = 0.1085 },
                ['Hit Chance'] = { Close = 100, Mid = 100, Far = 100 }
            },
            ['Shotguns'] = {
                ['FOV'] = { Close = 18, Mid = 14, Far = 7 },
                ['Prediction'] = { Close = 0.1245, Mid = 0.1225, Far = 0.12 },
                ['Hit Chance'] = { Close = 100, Mid = 100, Far = 100 }
            },
            ['Automatics'] = {
                ['FOV'] = { Close = 14, Mid = 12, Far = 7 },
                ['Prediction'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
                ['Hit Chance'] = { Close = 25, Mid = 50, Far = 75 }
            },
            ['Other'] = {
                ['FOV'] = { Close = 14, Mid = 12, Far = 7 },
                ['Prediction'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
                ['Hit Chance'] = { Close = 25, Mid = 50, Far = 75 }
            }
        }
    },
    ['AimAssist'] = {
        Enabled = false,
        Sensitivity = 2,
        ['Easing'] = {
            Style = Enum.EasingStyle.Circular,
            Direction = Enum.EasingDirection.InOut
        },
        ['Ground'] = {
            Part = 'UpperTorso',
            Prediction = 0.125,
            Smoothing = 0.095
        },
        ['Air'] = {
            Part = 'Head',
            Prediction = 0.13,
            Smoothing = 0.105
        },
        ['Checks'] = {
            Disable_On_ThirdPerson = true,
		    Disable_On_Reload = true,
            Disable_When_Not_Holding_Gun = false
        },
        ['Keybind'] = {
            Bind = Enum.KeyCode.C,
            Mode = 'Hold' -- Hold , Toggle
        },
        ['Gun Settings'] = {
            Enabled = false,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Shotguns'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Automatics'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            },
            ['Other'] = {
                ['Part'] = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                ['Air Part'] = { Close = "Head", Mid = "Head", Far = "Head" },
                ['Sensitivity'] = { Close = 2, Mid = 2, Far = 2 },
                ['Smoothing'] = { Close = 0.073, Mid = 0.0745, Far = 0.074 },
                ['Air Smoothing'] = { Close = 0.078, Mid = 0.077, Far = 0.074 },
                ['Prediction'] = { Close = 0.26, Mid = 0.22, Far = 0.2 },
                ['Air Prediction'] = { Close = 0.23, Mid = 0.2, Far = 0.19 }
            }
        }
    },
    ['FOVs'] = {
        ['Silent'] = {
            FOVType = "Circle", -- Circle , Box 
            ['Attach To Target'] = {
                Enabled = false,
                Prediction = false
            },
            Visible = false,
            BoxWidth = 55,
            BoxHeight = 85,
            CircleRadius = 110,
            Color = Color3.fromRGB(255, 255, 255),
            Filled = true,
            Transparency = 0.5
        },
        ['Trigger Bot'] = {
            FOVType = "Box", -- Circle , Box
            ['Attach To Target'] = {
                Enabled = true,
                Prediction = true
            },
            Visible = true,
            BoxWidth = 55,
            BoxHeight = 85,
            CircleRadius = 300,
            Color = Color3.fromRGB(255, 255, 255),
            Filled = true,
            Transparency = 0.5
        }
    },
    ['TriggerBot'] = {
        Enabled = true,
        Prediction = 0.124,
        Delay = 0.001,
        Keybind = {
            Bind = Enum.KeyCode.X,
            Mode = 'Hold'
        },
        ['Gun Prediction Settings'] = {
            Enabled = false,
            ['Distance Detections'] = {
                Close = 35,
                Mid = 65,
                Far = math.huge
            },
            ['Pistols'] = { Close = 0.13, Mid = 0.1256, Far = 0.12125 },
            ['Shotguns'] = { Close = 0.132, Mid = 0.127, Far = 0.124 },
            ['Automatics'] = { Close = 0.132, Mid = 0.1256, Far = 0.1254 },
            ['Other'] = { Close = 0.132, Mid = 0.1256, Far = 0.1254 }
        }
    }
    --[[
    Misc = {
        MemorySpoofer = {
            Percent = 100 -- // %
        },
        SpeedThreshold = 50,
    }
    ]]
}

-- // Combine two tables
local function CombineTables(Base, ToAdd)
    -- // Default
    Base = Base or {}
    ToAdd = ToAdd or {}

    -- // Loop through data we want to add
    for i, v in pairs(ToAdd) do
        -- // Recursive
        local BaseValue = Base[i] or false
        if (typeof(v) == "table" and typeof(BaseValue) == "table") then
            CombineTables(BaseValue, v)
            continue
        end

        -- // Set
        Base[i] = v
    end

    -- // Return
    return Base
end

-- // Setup configuration
Configuration = CombineTables(Configuration, getgenv().FalconWare)
getgenv().FalconWare = Configuration

-- // Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Stats = game:GetService("Stats")
local VirtualInputManager = game:GetService("VirtualInputManager") -- // THIS CAN BE DETECTED BUT BYPASSED :relieved:
local HttpService = game:GetService("HttpService")
local LogService = game:GetService("LogService")

-- // Setup Luraph
if (not LPH_OBFUSCATED) then
    LPH_JIT_MAX = function(...)
        return ...
    end
end

-- // Dependencies
local KeybindHandler
do
    -- // Vars
    local Binds = {}

    -- //
    local Module = {
        TestMode = false
    }
    do
        -- // Returns all or one of the binds
        function Module.Get(Id)
            -- // Return all
            if (not Id) then
                return Binds
            end

            -- // Loop through each bind
            local FoundI = -1
            for i, Bind in ipairs(Binds) do
                -- // Check if id matches
                if (Bind.Id == Id) then
                    -- // Set
                    FoundI = i
                    break
                end
            end

            -- // Make sure we got something
            if (FoundI == -1) then
                return false
            end

            -- // Return
            return Binds[FoundI], FoundI
        end

        -- // Creates a bind
        local ValidInputItems = {"KeyCode", "UserInputType"}
        function Module.CreateBind(Data)
            -- // Make sure we gave a keybind
            local Keybind = typeof(Data.Keybind) == "function" and Data.Keybind() or Data.Keybind
            assert(typeof(Keybind) == "EnumItem" and table.find(ValidInputItems, tostring(Keybind.EnumType)), "Invalid keybind")

            -- // Add to binds
            local Id = HttpService:GenerateGUID()
            table.insert(Binds, {
                Id = Id,
                Keybind = Data.Keybind,
                Callback = Data.Callback or function(State, Bind) end,
                ProcessedCheck = Data.ProcessedCheck or false,
                Hold = Data.Hold or false,
                State = Data.State or false
            })

            -- // Return the Id
            return Id
        end

        -- // Updates a bind's property
        function Module.Update(Id, Property, NewValue)
            -- // Get the bind
            local Bind = Module.Get(Id)
            if (not Bind) then
                return false
            end

            -- // Set
            Bind[Property] = NewValue
            return true
        end

        -- // Updates a bind's keybind
        function Module.UpdateKeybind(Id, NewKeybind)
            return Module.Update(Id, "Keybind", NewKeybind)
        end

        -- // Updates a bind's callback
        function Module.UpdateCallback(Id, NewCallback)
            return Module.Update(Id, "Callback", NewCallback)
        end


        -- // Removes a bind
        function Module.RemoveBind(Id)
            -- // Get the bind
            local _, FoundI = Module.Get(Id)
            if (not FoundI) then
                return false
            end

            -- // Remove
            table.remove(Binds, FoundI)
            return true
        end

        -- // Creates the connection
        function Module.CreateConnection()
            -- // Connects to whenever we make an input
            Module.InputBeganConnection = UserInputService.InputBegan:Connect(function(Input, gameProcessedEvent)
                -- // Loop through all binds
                for _, Bind in ipairs(Binds) do
                    -- // Check
                    local Keybind = Bind.Keybind
                    Keybind = typeof(Keybind) == "function" and Keybind() or Keybind
                    local Property = tostring(Keybind.EnumType)
                    if (Input[Property] ~= Keybind) or (Bind.ProcessedCheck and gameProcessedEvent) then
                        continue
                    end

                    -- // Fire
                    if (Bind.Hold) then
                        Bind.State = true
                    else
                        Bind.State = not Bind.State
                    end

                    Bind.Callback(Bind.State, Bind)
                end
            end)

            -- // See whenever we lift up
            Module.InputEndedConnection = UserInputService.InputEnded:Connect(function(Input, gameProcessedEvent)
                -- // Loop through all binds
                for _, Bind in ipairs(Binds) do
                    -- // Make sure is a hold
                    if (not Bind.Hold) then
                        continue
                    end

                    -- // Check
                    local Keybind = Bind.Keybind
                    Keybind = typeof(Keybind) == "function" and Keybind() or Keybind
                    local Property = tostring(Keybind.EnumType)
                    if (Input[Property] ~= Keybind) or (Bind.ProcessedCheck and gameProcessedEvent) then
                        continue
                    end

                    -- // Fire
                    Bind.State = false
                    Bind.Callback(Bind.State, Bind)
                end
            end)
        end

        -- // Completely destroys everything
        function Module.Destroy(KeepConnection)
            -- // Destroy connection
            if (not KeepConnection) then
                if (Module.InputBeganConnection) then
                    Module.InputBeganConnection:Disconnect()
                    Module.InputBeganConnection = nil
                end

                if (Module.InputEndedConnection) then
                    Module.InputEndedConnection:Disconnect()
                    Module.InputEndedConnection = nil
                end
            end

            -- // Empty binds
            Binds = {}
        end
    end

    -- // Start
    Module.CreateConnection()

    -- // Test + Example usage
    if (Module.TestMode) then
        Module.CreateBind({
            Keybind = Enum.KeyCode.X,
            ProcessedCheck = true,
            Callback = function(State, Bind)
                print(Bind.Keybind.Name .. " was pressed with state " .. tostring(State))
            end
        })
        Module.CreateBind({
            Keybind = Enum.UserInputType.MouseButton2,
            ProcessedCheck = true,
            Callback = function(State, Bind)
                print(Bind.Keybind.Name .. " was pressed with state " .. tostring(State))
            end
        })


        Module.CreateBind({
            Keybind = Enum.UserInputType.MouseButton2,
            ProcessedCheck = true,
            Callback = function(State, Bind)
                local Action = State and "pressed" or "released"
                print(Bind.Keybind.Name .. " was " .. Action)
            end,
            Hold = true
        })
    end

    -- // Return
    KeybindHandler = Module
end

-- // Resolve all weapons
local PlaceId = game.PlaceId
local DaHoodId = {2788229376, 7213786345, 16033173781}
local HoodModdedId = {5602055394, 7951883376}
local HoodCustomId = {9825515356}

local Weapons = {
    Pistols = {},
    Shotguns = {},
    Automatics = {},
    Other = {}
}

if table.find(DaHoodId, PlaceId) then
    Weapons = {
        Pistols = {"[Revolver]", "[Glock]", "[Silencer]"},
        Shotguns = {"[Shotgun]", "[Double-Barrel SG]", "[TacticalShotgun]"},
        Automatics = {"[SMG]", "[P90]", "[LMG]", "[AR]", "[SilencerAR]", "[AK47]", "[DrumGun]"},
        Other = {"[Rifle]"}
    }
elseif table.find(HoodCustomId, PlaceId) then
    Weapons = {
        Pistols = {"[Revolver]", "[Glock]", "[Silencer]"},
        Shotguns = {"[Shotgun]", "[DoubleBarrel]", "[TacticalShotgun]"},
        Automatics = {"[SMG]"},
        Other = {}
    }
elseif table.find(HoodModdedId, PlaceId) then
    Weapons = {
        Pistols = {"[Sniper]", "[Glock]", "[R8]", "[Revolver]", "[Deagle]"},
        Shotguns = {"[TacticalShotgun]", "[Shotgun]", "[Double Barrel SG]"},
        Automatics = {"[AA12]", "[AK-47]", "[Akimbo SMG]", "[AR]", "[Famas]", "[Golden AK-47]", "[HMinigun]", "[LMG]", "[LMinigun]", "[P90]", "[Tec-9]", "[UMP]", "[Vector]", "[DrumGun]", "[SCAR-H]", "[Silencer]", "[SilencerAR]", "[SMG]"},
        Other = {"AUG", "[RPG]", "[Grenade Launcher]", "[Railgun]", "[Flamethrower]", "[FlareGun]", "[Ray Gun]", "[Homing Launcher ]", "[PlasmaRifle]"}
    }
else
    return -- // UNSUPPORTED GAME
end

local function GetUpdatedMouseArg()
    local MousePos

    for i, v in ipairs(game:GetDescendants()) do
        if v:IsA("LocalScript") or v:IsA("ModuleScript") then
            local bytecode = getscriptbytecode(v)
            bytecode = tostring(bytecode)

            for l in bytecode:gmatch("%w+") do
                if l:match("UpdateMousePosI") and l ~= 'UpdateMousePositionI' then
                    MousePos = l
                end
            end
        end
    end
    return MousePos
end

-- // See what the game uses for updating mouse pos
local function GetUpdateMouseArg()
    local Resolve = {
        [2788229376] = GetUpdatedMouseArg(),
        [16033173781] = GetUpdatedMouseArg(),
        [7213786345] = GetUpdatedMouseArg(),
        [5602055394] = "MousePos",
        [7951883376] = "MousePos",
        [9825515356] = "GetMousePos"
    }
    return Resolve[PlaceId] or "UpdateMousePosI"
end

-- // Find MainEvent
local function GetMainEvent()
    -- // Check for special cases
    if (table.find({5602055394, 7951883376}, PlaceId)) then
        return ReplicatedStorage:FindFirstChild("Bullets")
    end

    -- // Default
    return ReplicatedStorage:FindFirstChild("MainEvent")
end

-- // Vars
local R15_LIMBS = {
    "Head", "UpperTorso", "LowerTorso", "LeftLowerLeg", "LeftUpperLeg",
    "RightLowerLeg", "RightUpperLeg", "LeftHand", "LeftLowerArm",
    "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm"
}

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local CurrentGun
local Target
local Hit
local CamlockTarget

local UpdateMouseArg = GetUpdateMouseArg()
local MainEvent = GetMainEvent()

-- // Wait for Data
local OurDataFolder = LocalPlayer:WaitForChild("DataFolder", 1/0)

-- // Create trigger part
local TriggerPart = Instance.new("Part")
TriggerPart.Name = tostring(math.random(1000000, 999999999))
TriggerPart.Size = Vector3.new(1.7, 6, 1.7)
TriggerPart.Parent = Workspace
TriggerPart.Anchored = true
TriggerPart.CanCollide = false
TriggerPart.Transparency = Configuration['Global']['Debug'] and 0.5 or 1

-- // Create FOV
local SilentFOV
local TriggerBotFOV
local AimAssistFOV
local function CreateFOV()
    -- // Vars
    local SilentCustomisation = Configuration['FOVs']['Silent']
    local IsSquare = SilentCustomisation.FOVType == 'Box'
    SilentFOV = Drawing.new(IsSquare and "Square" or "Circle")

    -- // Set
    SilentFOV.Visible = Configuration['FOVs']['Silent'].Visible
    SilentFOV.Transparency = SilentCustomisation.Transparency
    SilentFOV.Color = SilentCustomisation.Color
    SilentFOV.Thickness = 0.1
    SilentFOV.Filled = SilentCustomisation.Filled

    -- // Individual properties
    if (IsSquare) then
        SilentFOV.Size = Vector2.new(SilentCustomisation.BoxWidth, SilentCustomisation.BoxHeight)
    else
        SilentFOV.Radius = SilentCustomisation.CircleRadius
        SilentFOV.NumSides = 100 / 3
    end

    -- // Return
    return SilentFOV
end
CreateFOV()

-- // Update FOV
local function UpdateFOV()
    local SilentCustomisation = Configuration['FOVs']['Silent']

    -- // Circle
    SilentFOV.Visible = SilentCustomisation.Visible
    if (not SilentCustomisation['Attach To Target'].Enabled) then
        SilentFOV.Position = UserInputService:GetMouseLocation()
        return
    end

    -- // Make sure we have a target
    if (not Target) then
        SilentFOV.Visible = false
        return
    end

    local CurrentCamera = Workspace.CurrentCamera
    local TargetPart = Target.Character:FindFirstChild("UpperTorso")
    if (not TargetPart) then
        return
    end

    local TargetPosition = Target.Character.UpperTorso.Position
    local TargetScreenPosition, _ = CurrentCamera:WorldToViewportPoint(TargetPosition)
    local TargetScreenPosition2 = Vector2.new(TargetScreenPosition.X, TargetScreenPosition.Y)

    if (SilentCustomisation['Attach To Target'].Enabled) then
        local SilentAimConfiguration = Configuration['Bullet Redirection']
        local Velocity = IsAntiAim and GetNewVelocity(TargetPart) or TargetPart.Velocity

        if SilentAimConfiguration.Prediction ~= nil then
            Velocity = Velocity * SilentAimConfiguration.Prediction
        end

        if (SilentCustomisation.FOVType == 'Box') then
            local ScaleFactor = 1 / (TargetScreenPosition.Z * math.tan(math.rad(CurrentCamera.FieldOfView / 2)) * 2) * 100

            if (SilentCustomisation['Attach To Target'].Prediction) then
                SilentFOV.Size = Vector2.new(
                    math.floor(SilentCustomisation.BoxWidth * ScaleFactor),
                    math.floor(SilentCustomisation.BoxHeight * ScaleFactor)
                )
            else
                SilentFOV.Size = Vector2.new(
                    math.floor(SilentCustomisation.BoxWidth * ScaleFactor),
                    math.floor(SilentCustomisation.BoxHeight * ScaleFactor)
                )
            end
            SilentFOV.Position = SilentCustomisation['Attach To Target'].Prediction and TargetScreenPosition2 + Vector2.new(Velocity.X, 0) - (SilentFOV.Size / 2) or TargetScreenPosition2 - (SilentFOV.Size / 2)
        else
            local Distance = (CurrentCamera.CFrame.Position - TargetPosition).Magnitude
            
            SilentFOV.Radius = 100 * SilentCustomisation.CircleRadius / Distance
            SilentFOV.Position = SilentCustomisation['Attach To Target'].Prediction and TargetScreenPosition2 + Vector2.new(Velocity.X, 0) or TargetScreenPosition2
        end
    end
end

-- // Updates GunSpecific stuff
local function UpdateGunSpecific()
    -- // Make sure target exists
    if not (Target and CurrentGun) then
        return
    end

    -- // Make sure is enabled
    local SilentAimConfiguration = Configuration['Bullet Redirection']
    local SilentCustomisation = Configuration['FOVs']['Silent']
    local SilentGunSpecific = SilentAimConfiguration['Gun Settings']
    local TriggerBotConfiguration = Configuration.TriggerBot
    local TriggerBotGunSpecific = TriggerBotConfiguration['Gun Prediction Settings']
    local CamlockConfiguration = Configuration.AimAssist
    local CamlockGunSpecific = CamlockConfiguration['Gun Settings']

    if not (SilentGunSpecific.Enabled or TriggerBotGunSpecific.Enabled or CamlockGunSpecific.Enabled) then
        return
    end

    -- // Vars
    local CurrentCamera = Workspace.CurrentCamera
    local Distance = (CurrentCamera.CFrame.Position - Target.Character.UpperTorso.Position).Magnitude

    -- //
    local function SetMatchedData(DetectionType)
        -- // Silent
        if (SilentGunSpecific.Enabled) then
            -- // Set
            local GunSpecificData = SilentGunSpecific[CurrentGun] 
            SilentAimConfiguration.Prediction = GunSpecificData.Prediction[DetectionType]
            SilentAimConfiguration.HitChance = GunSpecificData['Hit Chance'][DetectionType]

            -- // Type specific
            if (not SilentCustomisation['Attach To Target'].Enabled) then
                SilentFOV.Radius = GunSpecificData.FOV[DetectionType] * 3
            end
        end

        -- // Triggerbot
        if (TriggerBotGunSpecific.Enabled) then
            TriggerBotConfiguration.Prediction = TriggerBotGunSpecific[CurrentGun][DetectionType]
        end

        -- // Camlock
        if (CamlockGunSpecific.Enabled) then
            -- // Set for each type
            for _, Type in ipairs({"Prediction", "Air Prediction", "Smoothing", "Air Smoothing", "Sensitivity", "Air Part", "Part"}) do
                CamlockConfiguration[Type] = CamlockGunSpecific[CurrentGun][Type][DetectionType]
            end
        end
    end

    -- // Match the detection distances
    local GunSpecificDetection = SilentGunSpecific['Distance Detections']
    if (Distance <= GunSpecificDetection.Close) then
        SetMatchedData("Close")
    elseif (Distance <= GunSpecificDetection.Mid) then
        SetMatchedData("Mid")
    else
        SetMatchedData("Far")
    end
end

-- // Check if a vector is inside another
local function IsVectorInVector(A, B, Size)
    return A.X >= B.X and A.Y >= B.Y and
    A.X <= B.X + Size.X and A.Y <= B.Y + Size.Y
end

-- // Silent FOV Check
local function InFOV(Character)
    -- // Vars
    local MousePosition = UserInputService:GetMouseLocation()
    local SilentCustomisation = Configuration['FOVs']['Silent']
    
    if (SilentCustomisation['Attach To Target'].Enabled) then
        -- // Box
        if (SilentCustomisation.FOVType == 'Box') then
            return IsVectorInVector(MousePosition, SilentFOV.Position, SilentFOV.Size)
        else
        -- // Circle
            local Distance = (MousePosition - SilentFOV.Position).Magnitude
            return Distance <= SilentFOV.Radius
        end
    end

    -- // FOV type 1
    local SilentRadius = SilentFOV.Radius
    local CurrentCamera = Workspace.CurrentCamera
    for _, LimbName in ipairs(R15_LIMBS) do
        -- // Grab the limb
        local Limb = Character:FindFirstChild(LimbName)
        if (not Limb) then
            return
        end

        -- // Check
        local Position = CurrentCamera:WorldToViewportPoint(Limb.Position)
        local Distance = (Vector2.new(Position.X, Position.Y) - MousePosition).Magnitude
        if (Distance < SilentRadius )then
            return true
        end
    end

    -- // Default
    return false
end

-- // Check if using velocity anti aim
local function AntiAiming(Player)
    return Player.Character.HumanoidRootPart.Velocity.Magnitude > Configuration['Global']['Resolver'].DetectionValue
end

-- // Hitchance
local function SilentHitChance()
    return math.random(0, 100) <= Configuration['Bullet Redirection'].HitChance
end

-- // Check if holding gun
local function CheckHoldingGun()
    -- // Check if we want to disable when not holding
    if (Configuration['AimAssist']['Checks'].Disable_When_Not_Holding_Gun) then
        return CurrentGun ~= nil
    end

    -- // Default
    return true
end

-- // Crew Check
local function CrewCheck(Player)
    -- // Make sure we actually want to check
    if (not Configuration.Global.Crew_Check) then
        return false
    end

    -- // PlaceId check
    if (table.find({5602055394, 7951883376}, PlaceId)) then
        -- // Make sure they have information
        local OurInformation = LocalPlayer:FindFirstChild("Information")
        local TheirInformation = Player:FindFirstChild("Information")
        if not (OurInformation and TheirInformation) then
            return false
        end

        -- // Return if match
        return OurInformation.Crew.Value ~= TheirInformation.Crew.Value
    end

    -- // Make sure we have data folder
    local TheirDataFolder = Player:FindFirstChild("DataFolder")
    if (not TheirDataFolder) then
        return false
    end

    -- // Grab their information
    local TheirInformation = TheirDataFolder:FindFirstChild("Information")
    if (not TheirInformation) then
        return false
    end

    -- // Make sure we both have crew
    local OurCrew = OurDataFolder.Information:FindFirstChild("Crew")
    local TheirCrew = TheirInformation:FindFirstChild("Crew")
    if not (OurCrew and TheirCrew) then
        return false
    end

    -- // Check if either is nil
    OurCrew = OurCrew.Value
    TheirCrew = TheirCrew.Value
    if (not OurCrew or OurCrew == "") or (not TheirCrew or TheirCrew == "") then
        return false
    end

    -- // Check same
    return OurCrew ~= TheirCrew
end

-- // Check if we are friends with player
local function FriendCheck(PlayerId)
    -- // Make sure we want to check
    if (not Configuration.Global.Friend_Check) then
        return false
    end

    -- // Return
    return LocalPlayer:IsFriendsWith(PlayerId)
end

-- // Check if we are in third person
local function DisableOnThirdPerson()
    -- // Make sure we want to check
    if (not Configuration['AimAssist']['Checks'].Disable_On_ThirdPerson) then
        return true
    end

    -- // Return
    local CurrentCamera = Workspace.CurrentCamera
    return (CurrentCamera.CFrame.Position - CurrentCamera.Focus.Position).Magnitude < 0.7 and UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter
end

-- // Get closest part
local function GetClosestPartToCursor(Character)
    -- // Vars
    local CurrentCamera = Workspace.CurrentCamera
    local Closest
    local Distance = 1/0

    -- // Loop through children
    for _, Part in ipairs(Character:GetChildren()) do
        -- // Make sure is a part
        if (not Part:IsA("BasePart")) then
            continue
        end

        -- // Vars
        local Position = CurrentCamera:WorldToViewportPoint(Part.Position)
        Position = Vector2.new(Position.X, Position.Y)
        local Magnitude = (UserInputService:GetMouseLocation() - Position).Magnitude

        -- // Check
        if (Magnitude < Distance) then
            Closest = Part
            Distance = Magnitude
        end
    end

    -- // Return
    return Closest
end

-- // Check if reloading
local function IsReloading()
    -- // Make sure we want to check
    if (not Configuration['AimAssist']['Checks'].Disable_On_Reload) then
        return true
    end

    -- // Specific game checks
    if (PlaceId == 9825515356) then
        return not LocalPlayer.Character.BodyEffects.Reloading.Value
    end

    if (table.find({5602055394, 7951883376}, PlaceId)) then
        return not LocalPlayer.Character.I_LOADED_I.Reload.Value
    end

    -- // Default
    return not LocalPlayer.Character.BodyEffects.Reload.Value
end

-- // Gets the closest point on a part
local function GetClosestPointOnPart(Part)
    -- // Vars
    local PartCFrame = Part.CFrame
    local PartSize = Part.Size
    local PartSizeTransformed = PartSize * (0.93 / 2)

    local MousePosition = UserInputService:GetMouseLocation()
    local CurrentCamera = Workspace.CurrentCamera

    local MouseRay = CurrentCamera:ViewportPointToRay(MousePosition.X, MousePosition.Y)
    local Transformed = PartCFrame:PointToObjectSpace(MouseRay.Origin + (MouseRay.Direction * MouseRay.Direction:Dot(PartCFrame.Position - MouseRay.Origin)))

    -- // Check if we are on target
    if (Mouse.Target == Part) then
        return Mouse.Hit
    end

    -- // Return transformed
    return PartCFrame * Vector3.new(
        math.clamp(Transformed.X, -PartSizeTransformed.X, PartSizeTransformed.X),
        math.clamp(Transformed.Y, -PartSizeTransformed.Y, PartSizeTransformed.Y),
        math.clamp(Transformed.Z, -PartSizeTransformed.Z, PartSizeTransformed.Z)
    )
end

-- // Calculate velocity
local function GetNewVelocity(Part)
    -- // Grab positions
    local LastPosition = Part.Position
    task.wait(0.085)
    local CurrentPosition = Part.Position

    -- // Calculate
    local Velocity = (CurrentPosition - LastPosition) / 0.085
    return Velocity * Vector3.new(1, 0, 1)
end

-- // Custom checks
local function CustomCheck(Player)
    -- // Vars
    local CurrentCameraPosition = Workspace.CurrentCamera.CFrame.Position
    local PlayerCharacter = Player.Character
    local PlayerHRP = PlayerCharacter.HumanoidRootPart
    local Grabbed = PlayerCharacter:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    -- // Cast a ray
    local raycastParms = RaycastParams.new()
    raycastParms.FilterDescendantsInstances = {
        LocalPlayer.Character,
        PlayerCharacter.Parent,
        TriggerPart
    }
    local RaycastResult = Workspace:Raycast(CurrentCameraPosition, PlayerHRP.Position - CurrentCameraPosition)

    -- // KO Checks
    local KOd = false
    if (table.find({5602055394, 7951883376}, PlaceId) and Player:FindFirstChild("Information") and Player.Information:FindFirstChild("KO")) then
        KOd = Player.Information.KO.Value
    else
        if (PlayerCharacter:FindFirstChild("BodyEffects") and PlayerCharacter.BodyEffects:FindFirstChild("K.O")) then
            KOd = PlayerCharacter.BodyEffects["K.O"].Value
        end
    end

    -- // Return
    return not (KOd or Grabbed)
end

-- // Apply normal prediction formula
local function ApplyNormalPredictionFormula(Part)

    local Character = Part.Parent
    local Humanoid = Character:FindFirstChild("Humanoid")
    if (not Humanoid) then
        return
    end


local IsInAir = Humanoid:GetState() == Enum.HumanoidStateType.Freefall or Humanoid:GetState() == Enum.HumanoidStateType.Jumping
local TargetPart = Part
local TargetVelocity = TargetPart.Velocity

local PredictionVelocity = Vector3.new(TargetVelocity.X, 0, TargetVelocity.Z) * Configuration['Bullet Redirection'].Prediction
local Gravity = Workspace.Gravity


if IsInAir then
    local TimeToHit = 2 * PredictionVelocity.Y / Gravity
    local GravityAdjustment = Vector3.new(0, -0.5 * Gravity * TimeToHit * TimeToHit, 0)
    PredictionVelocity = PredictionVelocity + GravityAdjustment

        local YOffset = Vector3.new(0, 0.85, 0) 
        PredictionVelocity = PredictionVelocity + YOffset
    end


local ClosestPoint = GetClosestPointOnPart(Part)
local PredictedCFrame = ClosestPoint + PredictionVelocity

return PredictedCFrame
end

-- // Apply recalculated resolver prediction formula
local function ApplyRecalculatedPredictionFormula(Part)
    -- // Grab closest point and add prediction to it
    local ClosestPoint = GetClosestPointOnPart(Part)
    local PredictionVelocity = GetNewVelocity(Part) * Configuration['Bullet Redirection'].Prediction
    local PredictedCFrame = ClosestPoint + PredictionVelocity

    -- // Return
    return PredictedCFrame
end

-- // Get the closest player to cursor
local function GetClosestPlayerToCursor()
    -- // Vars
    local CurrentCamera = Workspace.CurrentCamera
    local MousePosition = UserInputService:GetMouseLocation()
    local Closest
    local Distance = 1/0

    -- // Loop through all players
    for _, Player in ipairs(Players:GetPlayers()) do
        -- // Ignore local player
        if (Player == LocalPlayer) then
            continue
        end

        -- // Make sure they have a character
        local Character = Player.Character
        if (not Character) then
            continue
        end

        -- // Make sure they have a HRP
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if (not HumanoidRootPart) then
            continue
        end

        -- // Checks...
        if (FriendCheck(Player.UserId) or CrewCheck(Player)) then
            continue
        end

        -- // On screen check
        local Position, OnScreen = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)
        if (not OnScreen) then
            continue
        end

        -- // Custom check
        if (not CustomCheck(Player)) then
            continue
        end

        -- // Distance check (and custom)
        local Magnitude = (Vector2.new(Position.X, Position.Y) - MousePosition).Magnitude
        if (Magnitude < Distance) then
            Closest = Player
            Distance = Magnitude
        end
    end

    -- // Return player
    return Closest
end

-- // Grabs the tool type
local function GetToolType(ToolName)
    -- // Loop through all weapons
    for Type, Guns in pairs(Weapons) do
        -- // Check if inside
        if (table.find(Guns, ToolName)) then
            return Type
        end
    end
end

-- // See when our LocalPlayer's Character is spawned
local Activated
local function OnLocalCharacterAdded(Character)
    -- // Check we have a character
    if (not Character) then
        return
    end

    -- // Vars
    CurrentGun = nil

    -- // See whenever we equip something
    Character.ChildAdded:Connect(function(Tool)
        -- // Make sure is a tool
        if (not Tool:IsA("Tool")) then
            return
        end

        -- // Set
        CurrentGun = GetToolType(Tool.Name)

        -- // See when the tool is activated
        Activated = Tool.Activated:Connect(function()
            -- // Make sure silent is enabled
            if (not Configuration['Bullet Redirection'].Enabled ) then
                return
            end

            -- // Make sure we have target in range
            if not (Target and InFOV(Target.Character) and SilentHitChance()) then
                return
            end

            -- // Fire
            if (table.find({5602055394, 7951883376}, PlaceId)) then
                MainEvent:FireServer(UpdateMouseArg, Hit, "P")
            else
                MainEvent:FireServer(UpdateMouseArg, Hit)
            end
        end)
    end)

    -- // See when we unequip something
    Character.ChildRemoved:Connect(function(Tool)
        -- // Make sure is a tool
        if (not Tool:IsA("Tool")) then
            return
        end

        -- // Set
        CurrentGun = nil
        Activated:Disconnect()
    end)
end
OnLocalCharacterAdded(LocalPlayer.Character)
LocalPlayer.CharacterAdded:Connect(OnLocalCharacterAdded)

-- // See when pressed camlock bind
KeybindHandler.CreateBind({
    Keybind = function() return Configuration['AimAssist'].Keybind.Bind end,
    ProcessedCheck = true,
    Hold = Configuration['AimAssist'].Keybind.Mode == 'Hold',
    Callback = function(Value)
        if (Value) then
            CamlockTarget = GetClosestPlayerToCursor()
            return
        end
        CamlockTarget = nil
    end
})

-- // See when pressed silent bind
KeybindHandler.CreateBind({
    Keybind = function() return Configuration['Bullet Redirection'].Keybind.Bind end,  -- Access the keybind
    ProcessedCheck = true,
    Hold = Configuration['Bullet Redirection'].Keybind.Mode == 'Hold',
    Callback = function(Value)
        if Configuration['Bullet Redirection'].Keybind.Mode == 'Hold' then
            Configuration['Bullet Redirection'].Enabled = Value
            return
        end
        Configuration['Bullet Redirection'].Enabled = not Configuration['Bullet Redirection'].Enabled  -- Toggle the 'Enabled' state
    end
})


-- // See when pressed triggerbot bind
if Configuration['TriggerBot'].Enabled then
    Configuration['TriggerBot'].Enabled = false
end

KeybindHandler.CreateBind({
    Keybind = function() return Configuration['TriggerBot'].Keybind.Bind end,
    ProcessedCheck = true,
    Hold = Configuration['TriggerBot'].Keybind.Mode == 'Hold',
    Callback = function(Value)
        if Configuration['TriggerBot'].Keybind.Mode == 'Hold' then
            Configuration['TriggerBot'].Enabled = Value
            return
        end
        Configuration['TriggerBot'].Enabled = not Configuration['TriggerBot'].Enabled  -- Toggle the 'Enabled' state
    end
})

-- // Memory Spoofer
do
    -- // Configuration
    local SelectedConfiguration = Configuration['Global']['Memory Spoofer'].Percentage / 100

    -- // Vars
    local RobloxGui = CoreGui:WaitForChild("RobloxGui", 9e9)
    local Debug = false

    -- // Debug print
    local function DebugPrint(...)
        if (Debug) then
            print(...)
        end
    end

    -- // Rounds a number to a certain amount of decimal places
    local function math_round(n, scale)
        return ("%." .. (scale or 0) .. "f"):format(n)
    end

    -- // Calculate the amount of untracked memory
    local function GetUntrackedMemory()
        -- // Grab total memory
        local TotalMemory = Stats:GetTotalMemoryUsageMb()

        -- // Remove it all from total
        for i = 0, 24 do
            pcall(function()
                TotalMemory = TotalMemory - Stats:GetMemoryUsageMbForTag(i)
            end)
        end

        -- // Return
        return TotalMemory
    end

    -- // Calculates fake memory
    local function CalculateFakeMemoryTotal(Rounding, Remove)
        Remove = Remove or 0

        -- // Parse current value and decrease
        local UntrackedMemory = math.clamp(GetUntrackedMemory() * SelectedConfiguration, 0, 1/0)
        local Removed = UntrackedMemory + Remove
        local Value = 10000 - Stats:GetTotalMemoryUsageMb() - Removed
        Value = math_round(Value, Rounding)

        -- // Return
        return Value, math_round(UntrackedMemory, Rounding), math_round(Removed, Rounding)
    end

    -- // Done whenever PSViewer stuff is added
    local function OnPSViewerChild(Frame)
        -- // Ensure is frame
        if (not Frame or Frame.Name ~= "Frame") then
            return
        end
        DebugPrint("OnPSViewerChild called")

        -- // Vars
        local Type = Frame:WaitForChild("TextLabel", 9e9)
        DebugPrint("OnPSViewerChild got vars")

        -- // Check type
        if not (Type.Text == "Memory") then
            return
        end

        -- // Resolve labels by their name
        local PSLabels = {}
        for _, v in ipairs(Frame:GetChildren()) do
            -- // Make sure is a label
            if (v.Name ~= "PS_DecoratedValueLabel") then
                continue
            end

            -- // Add
            local Label = v:WaitForChild("Label", 9e9)
            repeat task.wait() until Label.Text ~= "Label"
            local Name = Label.Text:match("(%a+):")
            PSLabels[Name] = Label
        end
        DebugPrint("Initialised PS_Viewer children")

        -- // Set Current

        local CurrentLabel = PSLabels.Current
        CurrentLabel.Text = "Current: " .. CalculateFakeMemoryTotal(2) .. " MB"
        CurrentLabel:GetPropertyChangedSignal("Text"):Connect(function()
            -- // Set
            CurrentLabel.Text = "Current: " .. CalculateFakeMemoryTotal(2) .. " MB"
            DebugPrint("Set Memory Current (PerformanceStats 2)")
        end)

        -- // Set Average

        local AverageLabel = PSLabels.Average
        AverageLabel.Text = "Average: " .. CalculateFakeMemoryTotal(2, math.random(10, 100) / 100) .. " MB"
        AverageLabel:GetPropertyChangedSignal("Text"):Connect(function()
            -- // Set
            AverageLabel.Text = "Average: " .. CalculateFakeMemoryTotal(2, math.random(10, 100) / 100) .. " MB"
            DebugPrint("Set Memory Average (PerformanceStats 2)")
        end)
    end

    -- // Done whenever performance stats exists
    local function OnPerformanceStats(PerformanceStats)
        -- // Make sure it exists
        if (not PerformanceStats) then
            return
        end

        -- // Vars
        local PSViewer = PerformanceStats:WaitForChild("PS_Viewer", 9e9)
        local PSButtons = {}

        -- // Resolve buttons by their name
        for _, v in ipairs(PerformanceStats:GetChildren()) do
            -- // Make sure is a button
            if (v.Name ~= "PS_Button") then
                continue
            end
            -- // Set
            PSButtons[v.StatsMiniTextPanelClass.TitleLabel.Text] = v
        end
        DebugPrint("Initialised PS_Button children")

        -- // Constantly set memory in top left
        local PSButtonsMem = PSButtons.Mem.StatsMiniTextPanelClass.ValueLabel
        PSButtonsMem.Text = CalculateFakeMemoryTotal(2) .. " MB"
        PSButtonsMem:GetPropertyChangedSignal("Text"):Connect(function()
            -- // Set
            PSButtonsMem.Text = CalculateFakeMemoryTotal(2) .. " MB"
            DebugPrint("Set Memory (PerformanceStats)")
        end)

        -- // See when viewer added
        OnPSViewerChild(PSViewer:FindFirstChild("Frame"))
        PSViewer.ChildAdded:Connect(OnPSViewerChild)
    end
    OnPerformanceStats(RobloxGui:FindFirstChild("PerformanceStats"))
    RobloxGui.ChildAdded:Connect(function(child)
        if (child.Name == "PerformanceStats") then
            OnPerformanceStats(child)
        end
    end)

    -- // Whenever graphs spawns
    local function OnLatestEntryText(LatestEntryText)
        -- // Check
        if (not LatestEntryText) then
            DebugPrint("Fake LatestEntryText")
            return
        end

        -- //
        local function Set()
            -- // Set
            LatestEntryText.Text = CalculateFakeMemoryTotal(3)
            DebugPrint("Set Memory (LatestEntryText)")
        end

        -- // See when LatestEntryText changes
        Set()
        LatestEntryText:GetPropertyChangedSignal("Text"):Connect(Set)
    end
    local function OnHoverTextY(HoverTextY)
        -- // Check
        if (not HoverTextY) then
            return
        end

        -- //
        local debounce = false
        local function Set()
            -- // Check
            if (debounce) then
                debounce = false
                return
            end
            debounce = true

            -- // Set
            local _, _, Removed = CalculateFakeMemoryTotal(3)
            local FakeValue = tonumber(HoverTextY.Text) - tonumber(Removed)
            HoverTextY.Text = math_round(FakeValue, 3)
            DebugPrint("Set Memory (HoverTextY)")
        end

        -- // See when HoverTextY changes
        Set()
        HoverTextY:GetPropertyChangedSignal("Text"):Connect(Set)
    end
    local function OnAxisTextY0(AxisTextY0)
        -- // Check
        if (not AxisTextY0) then
            DebugPrint("Fake AxisTextY0")
            return
        end

        -- //
        local debounce = false
        local function Set()
            -- // Check
            if (debounce) then
                debounce = false
                DebugPrint("AxisTextY0 debounce")
                return
            end
            debounce = true

            -- // Set
            local _, _, Removed = CalculateFakeMemoryTotal(3)
            local FakeValue = tonumber(AxisTextY0.Text) - tonumber(Removed)
            AxisTextY0.Text = math_round(FakeValue, 3)
            DebugPrint("Set Memory (AxisTextY0)")
        end

        -- // See when AxisTextY0 changes
        Set()
        AxisTextY0:GetPropertyChangedSignal("Text"):Connect(Set)
    end
    local function OnMemoryGraph(Graph)
        -- // Check
        if (not Graph) then
            return
        end

        DebugPrint("Graph Added")

        -- // Vars
        local graph = Graph:WaitForChild("graph", 9e9)
        local AxisTextY0 = graph:WaitForChild("AxisTextY0", 9e9)
        local LatestEntryText = graph:FindFirstChild("LatestEntryText")
        local HoverTextY = graph:FindFirstChild("HoverTextY", true)

        -- // See whenever latest entry text shows
        graph.DescendantAdded:Connect(function(child)
            -- // Set
            if (child.Name == "LatestEntryText") then
                OnLatestEntryText(child)
            end

            -- // Set
            if (child.Name == "HoverTextY") then
                OnHoverTextY(child)
            end

            -- // Set
            if (child.Name == "AxisTextY0") then
                OnAxisTextY0(child)
            end
        end)

        OnAxisTextY0(AxisTextY0)
        OnLatestEntryText(LatestEntryText)
        OnHoverTextY(HoverTextY)
    end
    local function GetErrorCount()
        -- // Vars
        local Count = 0

        -- // Loop through LogHistory
        for _, Log in ipairs(LogService:GetLogHistory()) do
            -- // Add one if error and not bad error
            if (not Log.message:find("depth exceeded for Instance.TextChanged") and Log.messageType == Enum.MessageType.MessageError) then
                Count += 1
            end
        end

        -- // Return count
        return Count
    end

    -- //
    local function OnClientLog(ClientLog)
        -- // Make sure we have a client log
        if (not ClientLog) then
            return
        end

        DebugPrint("ClientLog added")

        -- // See whenever a message is added
        ClientLog.ChildAdded:Connect(function(child)
            -- // Make sure is a number
            if (tonumber(child.Name) == nil) then
                return
            end

            -- // Check the message
            local Message = child:WaitForChild("msg", 9e9)
            if (Message.Text:find("depth exceeded for Instance.TextChanged")) then
                child.Visible = false
                DebugPrint("Attempt to destroy error")
            end
        end)
    end

    -- // Below requires DevConsole
    local function OnDevConsoleMaster()
        -- // Ensure it exists
        if (not CoreGui:FindFirstChild("DevConsoleMaster")) then
            return
        end

        DebugPrint("DevConsoleMaster added")

        -- // Vars
        local DevConsoleUI = CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI
        local LiveStatsModule = DevConsoleUI.TopBar.LiveStatsModule
        local MemoryUsageDevConsole = LiveStatsModule["MemoryUsage_MB"]

        -- // Constantly set memory in dev console
        MemoryUsageDevConsole.Text = CalculateFakeMemoryTotal(0) .. " MB"
        MemoryUsageDevConsole:GetPropertyChangedSignal("Text"):Connect(function()
            -- // Set
            MemoryUsageDevConsole.Text = CalculateFakeMemoryTotal(0) .. " MB"
            DebugPrint("Set Memory (DevConsole Top)")
        end)
        DebugPrint("Set MemoryUsageDevConsole")

        -- // Constantly set errors
        local LogErrorCount = LiveStatsModule.LogErrorCount
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
            -- // Check
            if (not LogErrorCount.Parent) then
                return Connection:Disconnect()
            end

            -- // Set
            LogErrorCount.Text = tostring(GetErrorCount())
        end)

        -- // Below require on main view
        local function OnMainView(DevConsoleEntries)
            -- // Ensure it exists
            local MainView = DevConsoleUI:FindFirstChild("MainView")
            if (not MainView) then
                return
            end

            DebugPrint("MainView added")

            -- // See when child added
            MainView.ChildAdded:Connect(function(child)
                -- // Check
                DebugPrint("MainView:", child)
                if (child.Name == "ClientLog") then
                    OnClientLog(child)
                end
            end)
            OnClientLog(MainView:FindFirstChild("ClientLog"))

            -- // Vars
            DevConsoleEntries = DevConsoleEntries or MainView:WaitForChild("ClientMemory", 9e9):WaitForChild("Entries", 9e9)

            -- // Set graph
            local function SetGraph(Memory)
                Memory.ChildAdded:Connect(function(child)
                    if (child.Name == "Graph") then
                        OnMemoryGraph(child)
                    end
                end)
                OnMemoryGraph(Memory:FindFirstChild("Graph"))
            end

            -- // Constantly set memory usage in memory tab
            local function SetMemoryUsageDevConsole2()
                -- // Ensure it exists
                local MemoryUsageDevConsole2 = DevConsoleEntries:FindFirstChild("Memory")
                if (not MemoryUsageDevConsole2) then
                    return
                end

                -- // Vars
                SetGraph(MemoryUsageDevConsole2)
                MemoryUsageDevConsole2 = MemoryUsageDevConsole2.value
                MemoryUsageDevConsole2.Text = CalculateFakeMemoryTotal(3)
                MemoryUsageDevConsole2:GetPropertyChangedSignal("Text"):Connect(function()
                    -- // Set
                    MemoryUsageDevConsole2.Text = CalculateFakeMemoryTotal(3)
                    DebugPrint("Set Memory (DevConsole Details)")
                end)

                DebugPrint("Set MemoryUsageDevConsole2")
            end
            SetMemoryUsageDevConsole2()

            -- // Constantly set untracked memory
            local function SetUntrackedMemoryDevConsole()
                -- // Ensure it exists first
                local UntrackedMemoryDevConsole = DevConsoleEntries:FindFirstChild("UntrackedMemory")
                if (not UntrackedMemoryDevConsole) then
                    return
                end

                DebugPrint("UntrackedMemory added")

                -- // Setting and connecting
                UntrackedMemoryDevConsole = UntrackedMemoryDevConsole.value
                UntrackedMemoryDevConsole.Text = select(2, CalculateFakeMemoryTotal(3))
                UntrackedMemoryDevConsole:GetPropertyChangedSignal("Text"):Connect(function()
                    -- // Set
                    UntrackedMemoryDevConsole.Text = select(2, CalculateFakeMemoryTotal(3))
                    DebugPrint("Set Untracked Memory")
                end)

                DebugPrint("Set UntrackedMemoryDevConsole")
            end
            SetUntrackedMemoryDevConsole()

            -- // See whenever the untracked memory thing pops up
            DevConsoleEntries.ChildAdded:Connect(function(child)
                -- // Set, if it does
                if (child.Name == "UntrackedMemory") then
                    SetUntrackedMemoryDevConsole()
                end

                -- // Other memory
                if (child.Name == "Memory") then
                    SetMemoryUsageDevConsole2()
                end
            end)
        end
        task.spawn(OnMainView)
        DevConsoleUI.ChildAdded:Connect(function(child)
            if (child.Name == "MainView") then
                OnMainView()
            end
        end)
    end
    OnDevConsoleMaster()
    CoreGui.ChildAdded:Connect(function(child)
        if (child.Name == "DevConsoleMaster") then
            OnDevConsoleMaster()
        end
    end)
end

-- // Main logic
RunService.Heartbeat:Connect(function(dT)
    -- // Set target
    Target = GetClosestPlayerToCursor()
    local IsAntiAim = Target and AntiAiming(Target)
    UpdateGunSpecific()

    -- // Silent
    if (Configuration['Bullet Redirection'].Enabled) then
        -- // Update stuff
        UpdateFOV()

        -- // Set, depending upon if anti aiming
        if (Target) then
            local Part = GetClosestPartToCursor(Target.Character)
            Hit = IsAntiAim and ApplyRecalculatedPredictionFormula(Part) or ApplyNormalPredictionFormula(Part)
        end
    else
        SilentFOV.Visible = false
    end

    -- // Triggerbot
    local TriggerBotConfiguration = Configuration['TriggerBot'] 
    if (TriggerBotConfiguration.Enabled and Target) then
        -- // Grab a tool, then activate it
        local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if (CurrentGun ~= nil and Mouse.Target == TriggerPart) then
            Tool:Activate()
        end

        -- // Setting trigger part's position
        local TargetCharacter = Target.Character
        local LowerTorso = TargetCharacter.LowerTorso
        local Velocity = IsAntiAim and GetNewVelocity(LowerTorso) or TargetCharacter.HumanoidRootPart.Velocity
        local Prediction = TriggerBotConfiguration.Prediction

        TriggerPart.Position = LowerTorso.Position + (Velocity * Prediction)
    else
        TriggerPart.Position = Vector3.zero
    end

    -- // Camlock
    local CamlockConfiguration = Configuration['AimAssist'] 
    if (Configuration['AimAssist'].Enabled and CamlockTarget and CamlockTarget.Character and DisableOnThirdPerson() and IsReloading() and CheckHoldingGun()) then
        -- // Vars
        local CurrentCamera = Workspace.CurrentCamera
        local TargetCharacter = CamlockTarget.Character
        local MaxOffset = 0.05
        local RandomOffset = Vector3.new(
            math.random(-MaxOffset, MaxOffset),
            math.random(-MaxOffset, MaxOffset),
            math.random(-MaxOffset, MaxOffset)
        )
        local Center = Vector2.new(0.5, 0.5)
        local MousePosition = UserInputService:GetMouseLocation()
        local MouseDelta = (MousePosition.X / CurrentCamera.ViewportSize.X - Center.X) * CamlockConfiguration.Sensitivity

        -- // Figure out air part
        local inAir = TargetCharacter.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
        local Part = inAir and CamlockConfiguration['Air'].Part or CamlockConfiguration['Ground'].Part
        Part = TargetCharacter[Part]

        -- // Figure out what smoothing
        local Smoothing = inAir and CamlockConfiguration['Air'].Smoothing or CamlockConfiguration['Ground'].Smoothing
        local EasedSmoothing = TweenService:GetValue(Smoothing, CamlockConfiguration.Easing.Style, CamlockConfiguration.Easing.Direction)

        -- // Figure out what prediction values to use
        local BasePrediction = inAir and CamlockConfiguration['Air'].Prediction or CamlockConfiguration['Ground'].Prediction
        local Prediction = AntiAiming(CamlockTarget) and (GetNewVelocity(Part) * BasePrediction) or (GetNewVelocity(TargetCharacter.HumanoidRootPart) * BasePrediction)

        -- // Set CFrame
        CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(
            CFrame.new(CurrentCamera.CFrame.Position, Part.Position + Prediction + RandomOffset) * CFrame.Angles(0, MouseDelta, 0),
            EasedSmoothing
        )

        -- // Check if dead
        if (TargetCharacter.BodyEffects["K.O"].Value) then
            CamlockTarget = nil
        end
    end
end)