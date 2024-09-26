repeat task.wait() until game:IsLoaded()

--// Device Spoofer Bypass \\--
loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/modules/fakedrawinglib.lua"))()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Replication"):WaitForChild("Fighter"):WaitForChild("SetControls"):FireServer("MouseKeyboard")

task.wait(0.2)
local SynZ
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local lighting = game:GetService("Lighting")
local LocalMouse = localPlayer:GetMouse()
local Decimals = 2
local Clock = os.clock()
local assetFolder = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.ViewModels
local DeviceSpoofer = "MouseKeyboard"
local SilentAim = false
local ClassKey = nil
local lastKeyCheck = 0
local AimPart = "Head"
local lastExecution = os.clock()
local Functions = {}
local SoundService = game:GetService("SoundService")

--// Fly - Stolen from IY \\--
local FLYING = false
local FlySpeed = 150

local flyingControls = {
    W = false,
    A = false,
    S = false,
    D = false,
    E = false,
    Q = false,
}

function Functions:getRoot(char)
    return char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
end

function Functions:startFly()
    local character = localPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local rootPart = Functions:getRoot(character)

    if not rootPart or not humanoid then return end

    local bodyGyro = Instance.new('BodyGyro')
    local bodyVelocity = Instance.new('BodyVelocity')

    bodyGyro.P = 9e4
    bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.cframe = rootPart.CFrame
    bodyGyro.Parent = rootPart

    bodyVelocity.velocity = Vector3.new(0, 0, 0)
    bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
    bodyVelocity.Parent = rootPart

    FLYING = true
    humanoid.PlatformStand = true

    local function updateFly()
        local direction = Vector3.new(
            (flyingControls.A and -1 or 0) + (flyingControls.D and 1 or 0),
            (flyingControls.Q and -1 or 0) + (flyingControls.E and 1 or 0),
            (flyingControls.W and -1 or 0) + (flyingControls.S and 1 or 0)
        )
        
        direction = direction.Magnitude > 0 and direction.Unit or Vector3.new(0, 0, 0)

        bodyVelocity.velocity = (workspace.CurrentCamera.CFrame:VectorToWorldSpace(direction)) * FlySpeed
        bodyGyro.cframe = workspace.CurrentCamera.CFrame
    end

    self.flyConnection = RunService.RenderStepped:Connect(function()
        if not FLYING or not character or not character.Parent then
            self:stopFly()
            return
        end
        
        updateFly()
    end)
end


function Functions:stopFly()
    FLYING = false

    if self.flyConnection then
        self.flyConnection:Disconnect()
        self.flyConnection = nil
    end

    local character = localPlayer.Character
    if character then
        local rootPart = Functions:getRoot(character)
        if rootPart then
            local bodyGyro = rootPart:FindFirstChildOfClass('BodyGyro')
            if bodyGyro then bodyGyro:Destroy() end

            local bodyVelocity = rootPart:FindFirstChildOfClass('BodyVelocity')
            if bodyVelocity then bodyVelocity:Destroy() end
        end
    end

    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = false
    end
end

-- Closest Player
function Functions:getClosestPlayer()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then 
        return nil
    end

    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, v in ipairs(Players:GetPlayers()) do
        if v ~= player and v.Character then
            local Target = v.Character
            local TargetsPart = Target:FindFirstChild("Head") or Target:FindFirstChild("HumanoidRootPart")
            if TargetsPart then
                local distance = (TargetsPart.Position - humanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    closestPlayer = v
                    shortestDistance = distance
                end
            end
        end
    end

    return closestPlayer
end

function Functions:isVisible(targetPosition, targetCharacter)
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then return false end

    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character, targetCharacter}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.IgnoreWater = true

    local direction = (targetPosition - humanoidRootPart.Position).Unit
    local distance = (targetPosition - humanoidRootPart.Position).Magnitude
    local rayResult = workspace:Raycast(humanoidRootPart.Position, direction * distance, raycastParams)

    if rayResult then
        return rayResult.Instance:IsDescendantOf(targetCharacter)
    end
    
    return true
end


local lastKeyCheck = 0

function Functions:updateClassKey()
    if os.clock() - lastKeyCheck >= 1 then
        lastKeyCheck = os.clock()
        for _, v in pairs(getgc(true)) do
            if typeof(v) == "table" then
                local IsEquipped, ClientFighter = rawget(v, "IsEquipped"), rawget(v, "ClientFighter")
                if ClientFighter and ClientFighter.Player == game:GetService("Players").LocalPlayer and IsEquipped == true then
                    ClassKey = v
                    break
                end
            end
        end
    end
end


--// FOV \\--
local function createFOVCircle()
    local FOV = Drawing.new("Circle")
    FOV.Thickness = 2
    FOV.NumSides = 45
    FOV.Color = Color3.fromRGB(1, 1, 1)
    FOV.Filled = false
    FOV.Visible = false
    return FOV
end

local function updateFOV(FOV, mousePosition, FOVSize)
    FOV.Position = mousePosition + Vector2.new(0, 36)
    FOV.Radius = FOVSize
end

local FOV = createFOVCircle()
local FOVSize = 90

function Functions:isWithinFOV(targetPosition)
    if not FOV.Visible then
        return true
    end

    local camera = workspace.CurrentCamera
    local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    local screenPosition, onScreen = camera:WorldToScreenPoint(targetPosition)

    if not onScreen then
        return false
    end

    local targetScreenPos = Vector2.new(screenPosition.X, screenPosition.Y)
    local distanceFromCenter = (targetScreenPos - screenCenter).Magnitude

    return distanceFromCenter <= FOVSize
end


local FovEnabledConnect
local FovEnabledConnect = RunService.Heartbeat:Connect(function()
    if FOV.Visible and LocalMouse then
        local mousePosition = Vector2.new(LocalMouse.X, LocalMouse.Y)
        updateFOV(FOV, mousePosition, FOVSize)
    else
        if FovEnabledConnect then
            FovEnabled:Disconnect()
        end
    end
end)


--// Esp \\--
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaxKs/gfe/main/Esp.lua"))()

getgenv().global = getgenv()

function global.declare(self, index, value, check)
	if self[index] == nil then
		self[index] = value
	elseif check then
		local methods = { "remove", "Disconnect" }

		for _, method in methods do
			pcall(function()
				value[method](value)
			end)
		end
	end

	return self[index]
end

declare(global, "features", {})

features.toggle = function(self, feature, boolean)
	if self[feature] then
		if boolean == nil then
			self[feature].enabled = not self[feature].enabled
		else
			self[feature].enabled = boolean
		end

		if self[feature].toggle then
			task.spawn(function()
				self[feature]:toggle()
			end)
		end
	end
end

declare(features, "visuals", {
	["enabled"] = true,
	["teamCheck"] = false,
    ["teamColor"] = true,
	["renderDistance"] = 2000,

	["boxes"] = {
		["enabled"] = true,
		["color"] = Color3.fromRGB(255, 255, 255),
		["outline"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(0, 0, 0),
		},
		["filled"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(255, 255, 255),
			["transparency"] = 0.25
		},
	},
	["names"] = {
		["enabled"] = true,
		["color"] = Color3.fromRGB(255, 255, 255),
		["outline"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(0, 0, 0),
		},
	},
	["health"] = {
		["enabled"] = true,
		["color"] = Color3.fromRGB(0, 255, 0),
		["colorLow"] = Color3.fromRGB(255, 0, 0),
		["outline"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(0, 0, 0)
		},
		["text"] = {
			["enabled"] = true,
			["outline"] = {
				["enabled"] = true,
			},
		}
	},
	["distance"] = {
		["enabled"] = true,
		["color"] = Color3.fromRGB(255, 255, 255),
		["outline"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(0, 0, 0),
		},
	},
    ["weapon"] = {
		["enabled"] = true,
		["color"] = Color3.fromRGB(255, 255, 255),
		["outline"] = {
			["enabled"] = true,
			["color"] = Color3.fromRGB(0, 0, 0),
		},
	}
})

local visuals = features.visuals

--// Text Top Right \\--
local ZenithText = Drawing.new("Text")
ZenithText.Visible = true
ZenithText.Position = Vector2.new(Camera.ViewportSize.X - 120, 0)
ZenithText.Size = 15
ZenithText.Color = Color3.fromRGB(255, 255, 0)
ZenithText.Outline = true
ZenithText.Center = true

local function getTimeOfDay()
	local time = game.Lighting:GetMinutesAfterMidnight()
	local hours = math.floor(time / 60)
	local minutes = time % 60
	local timeString = string.format("%02d:%02d", hours, minutes)
	if hours >= 6 and hours < 20 then
		timeString = timeString .. " [Day]"
	else
		timeString = timeString .. " [Night]"
	end
	return "Time of Day: " .. timeString
end

local SetTimeOfDayText = true
coroutine.wrap(function()
    while SetTimeOfDayText do
        ZenithText.Text = "Zenith | Insert to Open/Close\n" .. getTimeOfDay()
        task.wait(1)
    end
end)()

--// Safe Call \\--
function Functions:safeCall(func)
    local success, errorMessage = pcall(func)
    if not success then
        Library:Notify("Error: " .. errorMessage, 2)
    end
end

--// Prediction \\--
function Functions:Predict(aimPartPosition, closestPlayer, humanoidRootPart)
    local targetCharacter = closestPlayer.Character
    local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
    if not targetHumanoidRootPart then return aimPartPosition end

    local targetVelocity = targetHumanoidRootPart.Velocity
    local targetPosition = targetHumanoidRootPart.Position
    local localPosition = humanoidRootPart.Position

    local distanceToTarget = (targetPosition - localPosition).Magnitude
    local projectileSpeed = 3500 
    local timeToImpact = distanceToTarget / projectileSpeed

    local predictedPosition = targetPosition + targetVelocity * timeToImpact

    local targetRotVelocity = targetHumanoidRootPart.RotVelocity
    local targetRotation = targetHumanoidRootPart.CFrame.LookVector
    if targetRotVelocity.Magnitude > 1 then
        local lateralMovement = targetRotation:Cross(targetVelocity.Unit) * (targetVelocity.Magnitude * 0.3)
        predictedPosition = predictedPosition + lateralMovement
    end

    return predictedPosition
end



--// Anti Rspy \\--
if SynZ ~= true then
local SecureFireServer, SecureInvokeServer
local DetectFSHook = true
local FSHookPresent = false
local UpdateFSHookFuncs
do
	local renv = getrenv()
	local fs = idx and idx(Instance.new("RemoteEvent"), "FireServer") or Instance.new("RemoteEvent")["FireServer\0"]
	local is = idx and idx(Instance.new("RemoteFunction"), "InvokeServer") or Instance.new("RemoteFunction")["InvokeServer\0"]

	local RealFireServer, RealInvokeServer = fs, is
	for i,v in pairs(renv) do
		if typeof(i) == "userdata" and typeof(v) == "function" then
			local s,e = pcall(v)
			local type = e and string.match(e, "calling member function (.*)")
				
			if type == "FireServer" then
				RealFireServer = secureclosure(v)
			elseif type == "InvokeServer" then
				RealInvokeServer = secureclosure(v)
			end
		end
		if RealFireServer and RealInvokeServer then
			break
		end
	end

	UpdateFSHookFuncs = function(fireServer, invokeServer)
		RealFireServer = fireServer or fs
		fs = fireServer or fs
		RealInvokeServer = invokeServer or is
		is = invokeServer or is
	end

	local function DummyFS()
		local dummy = Instance.new("RemoteEvent")
		dummy.Name = "[Zenith]"
		local be = Instance.new("BindableEvent")
		be.Event:Connect(dummy.FireServer)
		be:Fire(dummy, "go away with your remotespy skid")
	end

	local function DummyIS()
		local dummy = Instance.new("RemoteFunction")
		dummy.Name = "[Zenith]"
		local be = Instance.new("BindableEvent")
		be.Event:Connect(dummy.InvokeServer)
		be:Fire(dummy, "go away with your remotespy skid")
	end
	
	local Shown = false
	
	local function HookCheck(bool)
		if renv[getupvalue(fs, 1)] and renv[getupvalue(is, 1)] then
			return
		end

		FSHookPresent = true

		if not renv[getupvalue(fs, 1)] then
			fs = nil
		end
		if not renv[getupvalue(is, 1)] then
			is = nil
		end

		local hooksList = {}
		for i,v in pairs(getreg()) do
			if type(v) == "function" and islclosure(v) and is_synapse_function(v) then
				for i,j in pairs(getupvalues(v)) do
					if type(j) == "function" and not islclosure(j) and not is_synapse_function(j) and debug.getinfo(j).nups >= 1 then
						if renv[getupvalue(j, 1)] == Instance.new("RemoteEvent").FireServer then
							fs = j
							table.insert(hooksList, {v, "f"})
						elseif renv[getupvalue(j, 1)] == Instance.new("RemoteFunction").InvokeServer then
							is = j
							table.insert(hooksList, {v, "i"})
						end
					end
				end
			end
			if fs and is then
				break
			end
		end

		if fs and is then
			RealFireServer = fs
			RealInvokeServer = is
			FSHookPresent = false

			local list = ""
			for i,v in pairs(hooksList) do
				local info = debug.getinfo(v[1])
				list = list .. v[2] .. " - " .. info.source .. " - " .. info.currentline .. " - " .. info.name .. "\n"
				for i,v in pairs(getconstants(v[1])) do
					list = list .. i .. " - " .. tostring(v) .. " - " .. typeof(v) .. "\n"
				end
				list = list .. "\n"
			end
			return
		end

		if not Shown then
			Shown = false
			--messagebox("Error: FireServer/InvokeServer hook detected! Some functions will not work until the hook is removed!\n\nIf you didn't run any remotespy-like scripts, check your autoexec.", "[SleepyHub]", 0x00040000 + 0x00010000 + 0x00000010 + 0x00001000)
            --game:GetService("Players").LocalPlayer:Kick("Error: FireServer/InvokeServer hook detected! Some functions will not work until the hook is removed!\n\nIf you didn't run any remotespy-like scripts, check your autoexec")
        else
			local a = Instance.new"ModuleScript"
			a.Name = "[Zenith]: FireServer/InvokeServer is still present!"
			pcall(require, a)
		end
		
		if not bool then
			return Instance.new("BindableEvent").Event:Wait()
		end
	end
	
	SecureFireServer = function(remote, ...)
		if DetectFSHook then
			HookCheck()
			DummyFS()
		end
		return RealFireServer(remote, ...)
	end
	SecureInvokeServer = function(remote, ...)
		if DetectFSHook then
			HookCheck()
			DummyIS()
		end
		return RealInvokeServer(remote, ...)
	end
	--HookCheck(true)
end
end

--// Module changer stuff \\--
local moduleScripts = game:GetService("Players").LocalPlayer.PlayerScripts.Modules:GetDescendants()
local allContent = {}
local AttackSpeed = 100

--// Fetch Functions \\--
local function Brother(keyToFind, tbl, moduleName, maxDepth)
    local queue = {{tbl, moduleName, 0}}

    while #queue > 0 do
        local current = table.remove(queue, 1)
        local currentTable, currentPath, depth = current[1], current[2], current[3]

        if depth > maxDepth then
            return
        end

        if type(currentTable) == "table" then
            for key, value in pairs(currentTable) do
                local newPath = currentPath .. "." .. tostring(key)
                if key == keyToFind then
                    currentTable[key] = AttackSpeed / 100
                end
                if type(value) == "table" then
                    table.insert(queue, {value, newPath, depth + 1})
                end
            end
        end
    end
end

-- // AttackMulti \\--
local function AdjustAttackMulti()
    if #moduleScripts == 0 then
        return
    end

    for _, script in ipairs(moduleScripts) do
        if script:IsA("ModuleScript") then
            local success, scriptContent = pcall(require, script)
            if success then
                allContent[script:GetFullName()] = scriptContent
            else
            end
        end
    end

    local function findAndModifyAttackCooldown(content)
        local maxSearchDepth = 3
        for moduleName, moduleData in pairs(content) do
            Brother("AttackCooldown", moduleData, moduleName, maxSearchDepth)
        end
    end

    findAndModifyAttackCooldown(allContent)
end

--// Set up \\-- 
AdjustAttackMulti()

--// Draw Function \\--
local Drawings = {}
function Functions:Draw(Type, Properties)
    if not Type or not Properties then return end
    local drawing = Drawing.new(Type)
    for i, v in pairs(Properties) do
        drawing[i] = v
    end
    table.insert(Drawings, drawing)
    return drawing
end

--// Hit Table \\--
local hit = {
    EnabledBulletTracer = false,
    BulletTracerColor = Color3.fromRGB(255, 255, 255),
    BulletTracerLifetime = 1.5,
    BulletTracerThickness = 2,
}
local TracerType = {
    ["Lightning Bolt"] = "rbxassetid://12781806168",
    ["Lightning Bolt2"] = "rbxassetid://7151778302",
    ["Laser"] = "rbxassetid://5864341017",
    ["Red Laser"] = "rbxassetid://6333823534",
    ["DNA"] = "rbxassetid://6511613786"
}
local TracerSelected = "Lightning Bolt"

--// Silent Aim \\--
function Functions:GetPlayer(player)
    return player.Character or player.CharacterAdded:Wait()
end

function Functions:GetHrp(character)
    return character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart", 10)
end

local katanaWaiting = false

local function createBulletTracer(RootPart, predictedPosition)
    if not hit.EnabledBulletTracer then return end

    task.spawn(function()
        local Part = workspace:FindFirstChild("BulletTracerPart") or Instance.new("Part")
        Part.CanCollide = false
        Part.Anchored = true
        Part.Transparency = 1
        Part.Parent = workspace

        local Attachment = Part:FindFirstChild("Attachment0") or Instance.new("Attachment", Part)
        Attachment.Position = RootPart.Position

        local Attachment2 = Part:FindFirstChild("Attachment1") or Instance.new("Attachment", Part)
        Attachment2.Position = predictedPosition

        local BulletLine = Part:FindFirstChild("BulletLine") or Instance.new("Beam", Part)
        BulletLine.Enabled = true
        BulletLine.Attachment0 = Attachment
        BulletLine.Attachment1 = Attachment2
        BulletLine.TextureSpeed = 2
        BulletLine.Color = ColorSequence.new(hit.BulletTracerColor)
        BulletLine.Width0 = hit.BulletTracerThickness
        BulletLine.Width1 = hit.BulletTracerThickness

        local textureIds = TracerType
        BulletLine.Texture = textureIds[TracerSelected]

        wait(hit.BulletTracerLifetime)
        Part:Destroy()
    end)
end

function Functions:ItsBlack(player)
    local character = self:GetPlayer(player)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

function Functions:UseItemRemote()
    local remote
    local success, err = pcall(function()
        remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Replication"):WaitForChild("Fighter"):WaitForChild("UseItem")
    end)
    if not success or not remote then
        return nil
    end
    return remote
end

function Functions:EwwKatanas()
    for _,v in pairs(workspace.ViewModels:GetChildren()) do
        if string.lower(v.Name):find("katana") then
            return true
        end
    end
    return false
end

function Functions:ShootFunnyBullet()
    if RageBot and self:EwwKatanas() then
        if not katanaWaiting then
            katanaWaiting = true
        end
        task.wait()
        while self:EwwKatanas() do
            task.wait()
        end
        katanaWaiting = false
    end

    local HitChanceVal = math.random(1, 100)
    if SilentAim and HitChance < 100 and HitChanceVal > HitChance then
        return false
    end

    Functions:updateClassKey()
    local Key = Functions:updateClassKey()   

    local closestPlayer = Functions:getClosestPlayer()
    if not self:ItsBlack(closestPlayer) then
        return false
    end

    local aimPart
    if Wallbang then
        aimPart = closestPlayer.Character:FindFirstChild("RightLeg") or closestPlayer.Character:FindFirstChild("LeftLeg")
    else
        aimPart = closestPlayer.Character:FindFirstChild(AimPart) or closestPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
    
    if not aimPart then
        return false
    end

    local localPlayer = game:GetService("Players").LocalPlayer
    local RootPart = self:GetHrp(localPlayer.Character)
    if not RootPart then
        return false
    end

    local predictedPosition
    if PredictionEnabled then
        predictedPosition = Functions:Predict(aimPart.Position, closestPlayer, RootPart)
    else
        predictedPosition = aimPart.Position
    end

    if not self:isWithinFOV(predictedPosition) then
        return false
    end

    if WallCheck and not Functions:isVisible(predictedPosition, closestPlayer.Character) then
        return false
    end

    local direction = (predictedPosition - RootPart.Position).Unit
    createBulletTracer(RootPart, predictedPosition)

    local remote = self:UseItemRemote()
    if not remote then
        return false
    end

    local success, err = pcall(function()
        remote:FireServer(Key,
        "\19",
        {
            ["\1"] = {
                ["\1"] = {
                    ["\1"] = RootPart.Position.Y + direction.Y,
                    ["\0"] = RootPart.Position.X + direction.X,
                    ["\3"] = direction.Y,
                    ["\2"] = RootPart.Position.Z + direction.Z,
                    ["\5"] = 0,
                    ["\4"] = 0.25709980726242065
                },
                ["\0"] = {
                    ["\1"] = RootPart.Position.Y + direction.Y,
                    ["\0"] = RootPart.Position.X + direction.X,
                    ["\3"] = direction.Y,
                    ["\2"] = RootPart.Position.Z + direction.Z,
                    ["\5"] = 0,
                    ["\4"] = 0.25709035992622375
                },
                ["\3"] = {
                    ["\1"] = 0,
                    ["\0"] = 0,
                    ["\3"] = 0.30453047156333923,
                    ["\2"] = 0,
                    ["\5"] = -0.08829131722450256,
                    ["\4"] = -0.5399969220161438
                },
                ["\2"] = aimPart
            },
            ["\3"] = true,
            ["\2"] = true
        })
    end)

    if not success then

    end

    return success
end

local oldNamecall
local isCallingRemote = false

local function SkipArgs(args)
    local bypassValues = { "\20", "\21", "\24" }
    if typeof(args[2]) == "string" and table.find(bypassValues, args[2]) then
        return true
    end

    if typeof(args[3]) == "table" then
        if typeof(args[3]["\1"]) == "string" then
            return true
        end

        if next(args[3]) == nil then
            return true
        end

        if typeof(args[3]["\2"]) == "string" then
            return true
        end

        for _, value in pairs(args[3]) do
            if typeof(value) == "Vector3" then
                return true
            end
        end
    end

    return false
end

oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and tostring(self) == "UseItem" then
        if isCallingRemote then
            return oldNamecall(self, ...)
        end

        if SkipArgs(args) then
            return oldNamecall(self, ...)
        end

        if (SilentAim or RageBot) and args[2] == "\19" then
            if not Functions or not Functions.ShootFunnyBullet then
                return oldNamecall(self, ...)
            end

            isCallingRemote = true
            local usedSilentAim = Functions:ShootFunnyBullet()
            isCallingRemote = false

            if usedSilentAim then
                return
            end
        end
    end

    return oldNamecall(self, ...)
end)


--// Unlock Fps \\--
setfpscap(20000)

--// Ui
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VaxKs/gfe/main/CustomLinoria'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/VaxKs/gfe/main/OKay%20bro.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/VaxKs/gfe/main/ZenithThemes'))()

--
local Build = "Free"
local Color = "#FF0000"
local Ver = "v1.0"

if Build == "Paid" then
    Color = '#FF0000'
    Ver = "v1.0"
elseif Build == "Free" then 
    Color = '#07ff00'
    Ver = "v1.0"
elseif Build == "Developer" then 
    Color = '#fffe00'
    Ver = "v1.0"
end

local Window = Library:CreateWindow({
    Size = UDim2.fromOffset(550, 610),
    Title = "Zenith<font color=\"#FFFF00\">.ez</font> | " ..
            "<font color=\"" .. Color .. "\">" .. Build .. "</font>" ..
            " [" .. Ver .. "] | .gg/W7QQVUuX97",
    Center = true,
    AutoShow = true
})

--// Notify \\--
Library:Notify(("Welcome thank you for using [Zenith] - "..Players.LocalPlayer.Name.." ð"), 6)
Library:Notify(("Status: ð¢ - Undetected (Safe to use)"), 6)

local Tabs = {
    Main = Window:AddTab('Main'),
    Visuals = Window:AddTab('Visuals'),
    UISettings = Window:AddTab('settings')
}



--// Tabs \\--
local MainTabBox = Tabs.Main:AddLeftTabbox('Main / Features')
local MainTab = MainTabBox:AddTab('Main / Features')

--// GunMods Tab \\--
local GunModsTabBox = Tabs.Main:AddRightTabbox('Gun / Mods')
local GunModsTab = GunModsTabBox:AddTab('Gun / Mods')

--// Rage Tab \\--
local RageTabBox = Tabs.Main:AddRightTabbox('Rage / Features')
local RageTab = RageTabBox:AddTab('Rage / Features')

--// Skin Changer Tab \\--
local SkinTabBox = Tabs.Main:AddRightTabbox('Skin / Changer')
local SkinChangerTab = SkinTabBox:AddTab('Skin / Changer')

--// Misc Tab \\--
local MiscTabBox = Tabs.Main:AddLeftTabbox('Misc / Features')
local MiscTab = MiscTabBox:AddTab('Misc / Features')

--// Hit sounds \\--
local HitSoundTabbox = Tabs.Main:AddLeftTabbox('Hit / Sound')
local HitSoundTab = HitSoundTabbox:AddTab('Hit / Sound')

--// Gun Visuals \\--
local GunVisualsTabbox = Tabs.Main:AddRightTabbox('Gun / Visuals')
local GunVisualsTab = GunVisualsTabbox:AddTab('Gun / Visuals')

--// Esp Tab \\--
local Boxes = {
	Settings = Tabs.Visuals:AddLeftGroupbox("settings"),
	Boxes = Tabs.Visuals:AddRightGroupbox("boxes"),
	Names = Tabs.Visuals:AddLeftGroupbox("names"),
	Health = Tabs.Visuals:AddRightGroupbox("health"),
	Distance = Tabs.Visuals:AddLeftGroupbox("distance"),
    Weapon = Tabs.Visuals:AddRightGroupbox("weapon"),
    SkyBox = Tabs.Visuals:AddLeftGroupbox("SkyBox"),
}

---// Main Tab \\--

MainTab:AddDropdown('AimPart', {
    Values = {"Head","Torso","UpperTorso","LowerTorso","LeftArm","RightArm","LeftHand","RightHand","LeftLeg","RightLeg","LeftFoot","RightFoot","HumanoidRootPart"},
    Default = 0,
    Multi = false,
    
    Text = 'AimPart',
    Tooltip = false,

    Callback = function(v)
        AimPart = v
    end
})


MainTab:AddToggle("SilentAim", {Text = "Silent Aim", Default = false}):AddKeyPicker('SilentAim', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Silent Aim', NoUI = true}):OnChanged(function(state)
    SilentAim = state
end)

MainTab:AddToggle("Wall Check", {Text = "Wall Check", Default = false}):AddKeyPicker('Wall Check', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Wall Check', NoUI = true}):OnChanged(function(state)
    WallCheck = state
end)

MainTab:AddToggle("Wall Bang", {Text = "Wall Bang", Default = false}):AddKeyPicker('Wall Bang', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Wall Bang', NoUI = true}):OnChanged(function(state)
    Wallbang = state
    if Wallbang then
        WallCheck = false
    end
end)


MainTab:AddToggle("UseFovToggle", {Text = "Use Fov", Default = false}):AddColorPicker('FovColor', {Default = Color3.fromRGB(208, 123, 255), Title = 'Color'}):AddKeyPicker('UseFovKey', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Use Fov', NoUI = true}):OnChanged(function(state)
    FOV.Visible = state
end)
Options.FovColor:OnChanged(function(v)
    FOV.Color = v
end)

MainTab:AddToggle("PredictionEnabled ", {Text = "Prediction", Default = false}):AddKeyPicker('PredictionEnabled', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Prediction', NoUI = true}):OnChanged(function(state)
    PredictionEnabled = state
end)


MainTab:AddSlider('FovSize', {Text = 'Fov Size:', Suffix = "px", Default = 60, Min = 1, Max = 1000, Rounding = 0, Compact = false}):OnChanged(function(Value)
    FOVSize = Value
end)

MainTab:AddSlider('HitChance', {Text = 'Hit Chance:', Suffix = "%", Default = 100, Min = 1, Max = 100, Rounding = 0, Compact = false}):OnChanged(function(Value)
    HitChance = Value
end)

--// Gun Mods Tab \\--
GunModsTab:AddToggle("No Recoil", {Text = "No Recoil",Default = false,}):OnChanged(function(state)
    NoRecoil = state
end)

GunModsTab:AddToggle("No Spread", {Text = "No Spread",Default = false,}):OnChanged(function(state)
    NoSpread = state
end)

GunModsTab:AddToggle("Quick Shot", {Text = "Quick Shot",Default = false,}):OnChanged(function(state)
    QuickShot = state
end)

GunModsTab:AddSlider('AttackSpeed', {
    Text = 'Attack Speed:',
    Suffix = "%",
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Callback = function(value)
        AttackSpeed = value
        AdjustAttackMulti()
    end,
})
--// Misc Tab \\--
MiscTab:AddToggle("SpoofDevice", {Text = "Spoof Device",Default = false,}):OnChanged(function(state)
    SpoofDevice = state
    if SynZ ~= true then
        SecureFireServer(DeviceRemote, DeviceSpoofer)
    else 
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Replication"):WaitForChild("Fighter"):WaitForChild("SetControls"):FireServer(DeviceSpoofer)
    end
end)


MiscTab:AddDropdown('DeviceSpoofer', {
    Values = {"MouseKeyboard","Touch","Gamepad"},
    Default = 1,
    Multi = false,
    
    Text = 'DeviceSpoofer',
    Tooltip = false,

    Callback = function(v)
        DeviceSpoofer = v
    end
})

MiscTab:AddButton('No Flash', function()
    if game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc:FindFirstChild("FlashbangEffect") then 
        game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.FlashbangEffect:Destroy()
    end
end)

MiscTab:AddButton('No Smoke', function()
    if game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc:FindFirstChild("SmokeClouds") then 
        game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.SmokeClouds:Destroy()
    end
end)

--// Rage Tab \\--
local RageBotConnection

RageTab:AddToggle("RageBot", {Text = "Rage Bot", Default = false}):AddKeyPicker('RageBot', {Default = 'None', SyncToggleState = true, Mode = 'Toggle', Text = 'Rage Bot', NoUI = true}):OnChanged(function(state)
    RageBot = state
    local lastExecution = 0
    local executionInterval = 0.1

    if RageBotConnection then
        RageBotConnection:Disconnect()
        RageBotConnection = nil
    end

    if RageBot then
        RageBotConnection = RunService.Heartbeat:Connect(function(deltaTime)
            Functions:safeCall(function()
                if not RageBot then
                    if RageBotConnection then RageBotConnection:Disconnect() end
                    return
                end

                local currentTime = os.clock()
                if currentTime - lastExecution < executionInterval then
                    return
                end

                lastExecution = currentTime

                local closestPlayer = Functions:getClosestPlayer()
                if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Humanoid") then
                    local humanoid = closestPlayer.Character:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health > 0 then
                        Functions:ShootFunnyBullet()
                    end
                end
            end)
        end)
    end
end)

--[[
RageTab:AddToggle("KnifeAura", {Text = "Knife Aura", Default = false}):AddKeyPicker('KnifeAura', {Default = 'None', SyncToggleState = true, Mode = 'Toggle', Text = 'Knife Aura', NoUI = false}):OnChanged(function(state)
    KnifeAura = state
    local lastExecution = 0
    local executionInterval = 0.1

    if KnifeAuraConnection then
        KnifeAuraConnection:Disconnect()
        KnifeAuraConnection = nil
    end

    if KnifeAura then
        KnifeAuraConnection = RunService.Heartbeat:Connect(function(deltaTime)
            Functions:safeCall(function()
                local currentTime = os.clock()
                if currentTime - lastExecution < executionInterval then
                    return
                end

                lastExecution = currentTime

                local closestPlayer = Functions:getClosestPlayer()
                if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Humanoid") then
                    local humanoid = closestPlayer.Character:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health > 0 then
                        Functions:forceKnifeAura()
                    end
                end
            end)
        end)
    end
end)
]]

RageTab:AddToggle("Fly", {Text = "Fly", Default = false}):AddKeyPicker('Fly', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'Fly', NoUI = false}):OnChanged(function(state)
    if state then
        Functions:startFly()
    else
        Functions:stopFly()
    end
end)

RageTab:AddSlider('FlySpeed', {Text = 'Fly Speed:', Suffix = "x", Default = 150, Min = 1, Max = 1000, Rounding = 0, Compact = false}):OnChanged(function(Value)
    FlySpeed = Value
end)

local WalkSpeed = 5
local WalkSpeedToggle = false

RageTab:AddToggle("WalkSpeed", {Text = "WalkSpeed", Default = false}):AddKeyPicker('WalkSpeed', {Default = 'Non', SyncToggleState = true, Mode = 'Toggle', Text = 'WalkSpeed', NoUI = false}):OnChanged(function(state)
    WalkSpeedToggle = state
    local player = game:GetService("Players").LocalPlayer

    while WalkSpeedToggle do
        task.wait()
        Functions:safeCall(function()
            if player.Character then
                local character = player.Character
                local humanoid = character:FindFirstChild("Humanoid")
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                
                if humanoid and rootPart then
                    local moveDirection = humanoid.MoveDirection
                    
                    if moveDirection.Magnitude > 0 then
                        local moveVector = moveDirection.Unit * (WalkSpeed / 16)
                        rootPart.CFrame = rootPart.CFrame + Vector3.new(moveVector.X, 0, moveVector.Z)
                    end
                end
            end
        end)
    end
end)

RageTab:AddSlider('WalkSpeed', {Text = 'WalkSpeed:', Suffix = "x", Default = 5, Min = 1, Max = 30, Rounding = 0, Compact = false}):OnChanged(function(Value)
    WalkSpeed = Value
end)



--// Player Esp \\--
Boxes.Settings:AddToggle("Visuals", {
	Text = "enabled",
	Default = false,
})

Toggles.Visuals:OnChanged(function()
	features:toggle("visuals", Toggles.Visuals.Value)
end)

Boxes.Settings:AddToggle("VisualsTeamCheck", {
	Text = "team check",
	Default = false,
})

Toggles.VisualsTeamCheck:OnChanged(function()
	visuals.teamCheck = Toggles.VisualsTeamCheck.Value
end)

Boxes.Settings:AddToggle("VisualsTeamColor", {
	Text = "team color",
	Default = false,
})

Toggles.VisualsTeamColor:OnChanged(function()
	visuals.teamColor = Toggles.VisualsTeamColor.Value
end)

Boxes.Settings:AddSlider("VisualsRenderDistance", {
	Text = "render distance",
	Default = 2000,
	Min = 0,
	Max = 2000,
	Rounding = 0,
	Compact = true,
})

Options.VisualsRenderDistance:OnChanged(function()
	visuals.renderDistance = Options.VisualsRenderDistance.Value
end)

Boxes.Boxes:AddToggle("Boxes", {
	Text = "enabled",
	Default = false,
}):AddColorPicker("BoxesColor", {
	Default = Color3.fromRGB(255, 255, 255),
	Title = "box color",
})

Toggles.Boxes:OnChanged(function()
	visuals.boxes.enabled = Toggles.Boxes.Value
end)

Options.BoxesColor:OnChanged(function()
	visuals.boxes.color = Options.BoxesColor.Value
end)

Boxes.Boxes:AddToggle("BoxesOutline", {
	Text = "outline",
	Default = false,
}):AddColorPicker("BoxesOutlineColor", {
	Default = Color3.fromRGB(0, 0, 0),
	Title = "outline color",
})

Toggles.BoxesOutline:OnChanged(function()
	visuals.boxes.outline.enabled = Toggles.BoxesOutline.Value
end)

Options.BoxesOutlineColor:OnChanged(function()
	visuals.boxes.outline.color = Options.BoxesOutlineColor.Value
end)

Boxes.Boxes:AddToggle("BoxesFilled", {
	Text = "filled",
	Default = false,
}):AddColorPicker("BoxesFilledColor", {
	Default = Color3.fromRGB(255, 255, 255),
	Title = "fill color",
})

Toggles.BoxesFilled:OnChanged(function()
	visuals.boxes.filled.enabled = Toggles.BoxesFilled.Value
end)

Options.BoxesFilledColor:OnChanged(function()
	visuals.boxes.filled.color = Options.BoxesFilledColor.Value
end)

Boxes.Boxes:AddSlider("BoxesFilledTransparency", {
	Text = "transparency",
	Default = 0.25,
	Min = 0,
	Max = 1,
	Rounding = 1,
	Compact = true,
})

Options.BoxesFilledTransparency:OnChanged(function()
	visuals.boxes.filled.transparency = Options.BoxesFilledTransparency.Value
end)

Boxes.Names:AddToggle("Names", {
	Text = "enabled",
	Default = false,
}):AddColorPicker("NamesColor", {
	Default = Color3.fromRGB(255, 255, 255),
	Title = "names color",
})

Toggles.Names:OnChanged(function()
	visuals.names.enabled = Toggles.Names.Value
end)

Options.NamesColor:OnChanged(function()
	visuals.names.color = Options.NamesColor.Value
end)

Boxes.Names:AddToggle("NamesOutline", {
	Text = "outline",
	Default = false,
}):AddColorPicker("NamesOutlineColor", {
	Default = Color3.fromRGB(0, 0, 0),
	Title = "outline color",
})

Toggles.NamesOutline:OnChanged(function()
	visuals.names.outline.enabled = Toggles.NamesOutline.Value
end)

Options.NamesOutlineColor:OnChanged(function()
	visuals.names.outline.color = Options.NamesOutlineColor.Value
end)

Boxes.Health:AddToggle("Health", {
	Text = "enabled",
	Default = false,
}):AddColorPicker("HealthColor", {
	Default = Color3.fromRGB(0, 255, 0),
	Title = "health color",
}):AddColorPicker("HealthLowColor", {
	Default = Color3.fromRGB(255, 0, 0),
	Title = "low health color",
})

Toggles.Health:OnChanged(function()
	visuals.health.enabled = Toggles.Health.Value
end)

Options.HealthColor:OnChanged(function()
	visuals.health.color = Options.HealthColor.Value
end)

Options.HealthLowColor:OnChanged(function()
	visuals.health.colorLow = Options.HealthLowColor.Value
end)

Boxes.Health:AddToggle("HealthOutline", {
	Text = "outline",
	Default = false,
}):AddColorPicker("NamesOutlineColor", {
	Default = Color3.fromRGB(0, 0, 0),
	Title = "outline color",
})

Toggles.HealthOutline:OnChanged(function()
	visuals.health.outline.enabled = Toggles.HealthOutline.Value
end)

Options.NamesOutlineColor:OnChanged(function()
	visuals.health.outline.color = Options.NamesOutlineColor.Value
end)

Boxes.Health:AddToggle("HealthText", {
	Text = "text",
	Default = false,
})

Toggles.HealthText:OnChanged(function()
	visuals.health.text.enabled = Toggles.HealthText.Value
end)

Boxes.Health:AddToggle("HealthTextOutline", {
	Text = "text outline",
	Default = false,
})

Toggles.HealthTextOutline:OnChanged(function()
	visuals.health.text.outline.enabled = Toggles.HealthTextOutline.Value
end)

Boxes.Distance:AddToggle("Distance", {
	Text = "enabled",
	Default = false,
}):AddColorPicker("DistanceColor", {
	Default = Color3.fromRGB(255, 255, 255),
	Title = "distance color",
})

Toggles.Distance:OnChanged(function()
	visuals.distance.enabled = Toggles.Distance.Value
end)

Options.DistanceColor:OnChanged(function()
	visuals.distance.color = Options.DistanceColor.Value
end)

Boxes.Distance:AddToggle("DistanceOutline", {
	Text = "outline",
	Default = false,
}):AddColorPicker("DistanceOutlineColor", {
	Default = Color3.fromRGB(0, 0, 0),
	Title = "outline color",
})

Toggles.DistanceOutline:OnChanged(function()
	visuals.distance.outline.enabled = Toggles.DistanceOutline.Value
end)

Options.DistanceOutlineColor:OnChanged(function()
	visuals.distance.outline.color = Options.DistanceOutlineColor.Value
end)

Boxes.Weapon:AddToggle("Weapon", {
	Text = "enabled",
	Default = false,
}):AddColorPicker("WeaponColor", {
	Default = Color3.fromRGB(255, 255, 255),
	Title = "weapon color",
})

Toggles.Weapon:OnChanged(function()
	visuals.weapon.enabled = Toggles.Weapon.Value
end)

Options.WeaponColor:OnChanged(function()
	visuals.weapon.color = Options.WeaponColor.Value
end)

Boxes.Weapon:AddToggle("WeaponOutline", {
	Text = "outline",
	Default = false,
}):AddColorPicker("WeaponOutlineColor", {
	Default = Color3.fromRGB(0, 0, 0),
	Title = "weapon color",
})

Toggles.WeaponOutline:OnChanged(function()
	visuals.weapon.outline.enabled = Toggles.WeaponOutline.Value
end)

Options.WeaponOutlineColor:OnChanged(function()
	visuals.weapon.outline.color = Options.WeaponOutlineColor.Value
end)

--// Sky boxes \\--
local function setupSkybox()
    local lighting = game:GetService("Lighting")

    local Sky = lighting:FindFirstChild("Sky")
    if not Sky then
        Sky = Instance.new("Sky", lighting)
    end

    local skyboxAssetsUrl = "https://raw.githubusercontent.com/VaxKs/gfe/main/Skyboxes"
    local skyboxAssets = loadstring(game:HttpGet(skyboxAssetsUrl))()
    local currentSkybox = 'Default'

    local function updateSkybox(skyboxName)
        if skyboxAssets[skyboxName] then
            local skybox = skyboxAssets[skyboxName]
            local shouldUpdate = Sky.SkyboxBk ~= skybox.SkyboxBk or
                                 Sky.SkyboxDn ~= skybox.SkyboxDn or
                                 Sky.SkyboxFt ~= skybox.SkyboxFt or
                                 Sky.SkyboxLf ~= skybox.SkyboxLf or
                                 Sky.SkyboxRt ~= skybox.SkyboxRt or
                                 Sky.SkyboxUp ~= skybox.SkyboxUp
            if shouldUpdate then
                Sky.SkyboxBk = skybox.SkyboxBk
                Sky.SkyboxDn = skybox.SkyboxDn
                Sky.SkyboxFt = skybox.SkyboxFt
                Sky.SkyboxLf = skybox.SkyboxLf
                Sky.SkyboxRt = skybox.SkyboxRt
                Sky.SkyboxUp = skybox.SkyboxUp
            end
        end
    end

    local function TryToUpdateSkyBoxFN()
        while true do
            task.wait(2)
            local updatedSkyboxAssets = loadstring(game:HttpGet(skyboxAssetsUrl))()
            if updatedSkyboxAssets ~= skyboxAssets then
                skyboxAssets = updatedSkyboxAssets
                updateSkybox(currentSkybox)
            else
                updateSkybox(currentSkybox)
            end
        end
    end

    Boxes.SkyBox:AddDropdown('World_Skybox', {
        Values = { 'Default', 'Neptune', 'Among Us', 'Nebula', 'Vaporwave', 'Clouds', 'Twilight', 'DaBaby', 'Minecraft', 'Chill', 'Redshift', 'Blue Stars', 'Blue Aurora' },
        Default = 1,
        Multi = false,
        Text = 'Custom Skybox:',
        Tooltip = 'Sky Changer',
    }):OnChanged(function(World_Skybox)
        currentSkybox = World_Skybox
        updateSkybox(currentSkybox)
    end)

    coroutine.wrap(TryToUpdateSkyBoxFN)()
end

setupSkybox()

--// Skin Changer \\--
--// Skin Changer \\--
local weaponSkins = {
    ["Bow"] = {"Compound Bow", "Raven Bow"},
    ["Assault Rifle"] = {"AK-47", "AUG"},
    ["Chainsaw"] = {"Blobsaw", "Handsaws"},
    ["RPG"] = {"Nuke Launcher", "RPKEY", "Spaceship Launcher"},
    ["Burst Rifle"] = {"Aqua Burst", "Electro Rifle"},
    ["Exogun"] = {"Singularity", "Wondergun"},
    ["Fists"] = {"Boxing Gloves", "Brass Knuckles"},
    ["Flamethrower"] = {"Lamethrower", "Pixel Flamethrower"},
    ["Flare Gun"] = {"Dynamite Gun", "Firework Gun"},
    ["Freeze Ray"] = {"Bubble Ray", "Temporal Ray"},
    ["Grenade"] = {"Water Balloon", "Whoopee Cushion"},
    ["Grenade Launcher"] = {"Swashbuckler", "Uranium Launcher"},
    ["Handgun"] = {"Blaster"},
    ["Katana"] = {"Lightning Bolt", "Saber"},
    ["Minigun"] = {"Lasergun 3000", "Pixel Minigun"},
    ["Paintball Gun"] = {"Boba Gun", "Slime Gun"},
    ["Revolver"] = {"Sheriff"},
    ["Slingshot"] = {"Goalpost", "Stick"},
    ["Subspace Tripmine"] = {"Don't Press", "Spring"},
    ["Uzi"] = {"Electro Uzi", "Water Uzi"},
    ["Sniper"] = {"Pixel Sniper", "Hyper Sniper"},
    ["Knife"] = {"Karambit", "Chancla"},
}

local originalDescendants = {}
local activeWeapons = {}
local playerName = game:GetService("Players").LocalPlayer.Name
local selectedSkins = {}
local assetFolder = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.ViewModels

function Functions:SaveOriginalGunsNeg(object)
    if object and not originalDescendants[object.Name] then
        originalDescendants[object.Name] = {}
        for _, child in pairs(object:GetChildren()) do
            table.insert(originalDescendants[object.Name], child:Clone())
        end
    end
end

function Functions:PutBackOrigninal(object)
    if object and originalDescendants[object.Name] then
        object:ClearAllChildren()
        for _, originalChild in pairs(originalDescendants[object.Name]) do
            originalChild.Parent = object
        end
        originalDescendants[object.Name] = nil
    end
end

function Functions:swapWeaponSkins(normalWeaponName, skinName, toggleState)
    if not normalWeaponName then
        return
    end
    
    local normalWeapon = assetFolder:FindFirstChild(normalWeaponName)
    if not normalWeapon then
        return
    end

    if toggleState then
        if skinName then
            local skin = assetFolder:FindFirstChild(skinName)
            if not skin then
                return
            end

            self:SaveOriginalGunsNeg(normalWeapon)
            normalWeapon:ClearAllChildren()
            for _, child in pairs(skin:GetChildren()) do
                local newChild = child:Clone()
                newChild.Parent = normalWeapon
            end
            activeWeapons[normalWeaponName] = true
        end
    else
        self:PutBackOrigninal(normalWeapon)
        activeWeapons[normalWeaponName] = nil
    end
end

local function applySavedSkins()
    for weapon, skin in pairs(selectedSkins) do
        if weaponSkins[weapon] and table.find(weaponSkins[weapon], skin) then
            Functions:swapWeaponSkins(weapon, skin, true)
        end
    end
end

local skinDropdown
local normalWeaponDropdown = SkinChangerTab:AddDropdown('NormalWeapons', {
    Values = {"Assault Rifle", "Bow", "Burst Rifle", "Chainsaw", "Exogun", "Fists", "Flamethrower", "Flare Gun", "Freeze Ray", "Grenade", "Grenade Launcher", "Handgun", "Katana", "Knife", "Minigun", "Paintball Gun", "Revolver", "RPG", "Slingshot", "Sniper", "Subspace Tripmine", "Uzi"},
    Default = 1,
    Multi = false,
    AllowNull = true,
    Text = 'Weapon',
    Tooltip = false,
    Callback = function(v)
        NormalWeapon = v
        local skins = weaponSkins[v] or {}

        if skinDropdown then
            skinDropdown:SetValues(skins)
            Skin = selectedSkins[NormalWeapon] or skins[1]
            skinDropdown:SetValue(Skin)

            Functions:swapWeaponSkins(NormalWeapon, Skin, true)
            Functions:saveSettings()
        end
    end
})

skinDropdown = SkinChangerTab:AddDropdown('Skin', {
    Values = {"PlaceHolder"},
    Default = 1,
    AllowNull = true,
    Multi = false,
    Text = 'Skin',
    Tooltip = false,
    Callback = function(v)
        selectedSkins[NormalWeapon] = v
        Skin = v
        Functions:swapWeaponSkins(NormalWeapon, Skin, true)
        Functions:saveSettings()
    end
})

local HttpService = game:GetService("HttpService")
local settingsFileName = "WeaponSkins.json" 

function Functions:saveSettings()
    writefile(settingsFileName, HttpService:JSONEncode({
        selectedSkins = selectedSkins
    }))
end

function Functions:loadSettings()
    local success, data = pcall(function()
        return HttpService:JSONDecode(readfile(settingsFileName))
    end)
    
    if success and data then
        selectedSkins = data.selectedSkins or {}
        applySavedSkins()
    else

    end
end

Functions:loadSettings()

--* Player Hitsounds *--

local currentVolume = 5
local currentPitch = 1

local sounds = {
    ["Default Headshot"] = "rbxassetid://9119561046",
    ["Default Body"] = "rbxassetid://9114487369",
    Neverlose = "rbxassetid://8726881116",
    Gamesense = "rbxassetid://4817809188",
    One = "rbxassetid://7380502345",
    Bell = "rbxassetid://6534947240",
    Rust = "rbxassetid://1255040462",
    TF2 = "rbxassetid://2868331684",
    Slime = "rbxassetid://6916371803",
    ["Among Us"] = "rbxassetid://5700183626",
    Minecraft = "rbxassetid://4018616850",
    ["CS:GO"] = "rbxassetid://6937353691",
    Saber = "rbxassetid://8415678813",
    Baimware = "rbxassetid://3124331820",
    Osu = "rbxassetid://7149255551",
    ["TF2 Critical"] = "rbxassetid://296102734",
    Bat = "rbxassetid://3333907347",
    ["Call of Duty"] = "rbxassetid://5952120301",
    Bubble = "rbxassetid://6534947588",
    Pick = "rbxassetid://1347140027",
    Pop = "rbxassetid://198598793",
    Bruh = "rbxassetid://4275842574",
    Bamboo = "rbxassetid://3769434519",
    Crowbar = "rbxassetid://546410481",
    Weeb = "rbxassetid://6442965016",
    Beep = "rbxassetid://8177256015",
    Bambi = "rbxassetid://8437203821",
    Stone = "rbxassetid://3581383408",
    ["Old Fatality"] = "rbxassetid://6607142036",
    Click = "rbxassetid://8053704437",
    Ding = "rbxassetid://7149516994",
    Snow = "rbxassetid://6455527632",
    Laser = "rbxassetid://7837461331",
    Mario = "rbxassetid://2815207981",
    Steve = "rbxassetid://4965083997"
}

local CustomHitSounds = false
local HitSound = "Default Headshot"


local function PlayHitSound(soundId)
    if not soundId then
        return
    end
    
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Volume = currentVolume
    sound.Pitch = currentPitch
    sound.Parent = localPlayer:WaitForChild("PlayerGui")
    sound:Play()
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

HitSoundTab:AddToggle("Enabled", {Text = "Enable", Default = false}):OnChanged(function(state)
    CustomHitSounds = state
end)

-- Dropdown to select hit sound
HitSoundTab:AddDropdown('HitSound', {Values = {
    'Default Headshot','Neverlose','Gamesense','One','Bell','Rust','TF2','Slime',
    'Among Us','Minecraft','CS:GO','Saber','Baimware','Osu','TF2 Critical','Bat',
    'Call of Duty','Bubble','Pick','Pop','Bruh','Bamboo','Crowbar','Weeb','Beep',
    'Bambi','Stone','Old Fatality','Click','Ding','Snow','Laser','Mario','Steve','Snowdrake'
}, Default = 1, Multi = false, Text = 'Head Hitsound:'}):OnChanged(function()
    HitSound = Options.HitSound.Value
    local soundId = sounds[HitSound]
    PlayHitSound(soundId)
end)

HitSoundTab:AddSlider('Volume_Slider', {Text = 'Volume', Default = 5, Min = 0, Max = 10, Rounding = 0, Compact = true}):OnChanged(function(vol)
    currentVolume = vol
end)

HitSoundTab:AddSlider('Pitch_Slider', {Text = 'Pitch', Default = 1, Min = 0, Max = 2, Rounding = 2, Compact = true}):OnChanged(function(pitch)
    currentPitch = pitch
end)

HitSoundTab:AddInput('HeadShotHitAssetID', {Default = "rbxassetid://9119561046", Numeric = false, Finished = true, Text = 'Custom Sound:', Placeholder = "rbxassetid://9119561046"}):OnChanged(function(CustomSoundID)
end)

--// Bullet Tracers \\--


GunVisualsTab:AddToggle('BulletTracersToggle', {Text = 'Bullet Tracers', Default = false}):AddColorPicker("BulletTracerColor", {Default = Color3.fromRGB(255, 255, 255)}):OnChanged(function(value)
    hit.EnabledBulletTracer = value
end)

hit.BulletTracerColor = hit.BulletTracerColor or Color3.fromRGB(255, 255, 255)

Options.BulletTracerColor:OnChanged(function(color)
    hit.BulletTracerColor = color
end)

GunVisualsTab:AddSlider('BulletLifetimeSlider', {Text = 'Lifetime:', Suffix = "s", Default = hit.BulletTracerLifetime, Min = 1.5, Max = 5, Rounding = 1}):OnChanged(function(value)
    hit.BulletTracerLifetime = value
end)

GunVisualsTab:AddSlider('TracerThickness', {Text = 'Tracer Thickness:', Suffix = "x", Default = hit.BulletTracerThickness, Min = 1.5, Max = 5, Rounding = 1}):OnChanged(function(value)
    hit.BulletTracerThickness = value
end)

GunVisualsTab:AddDropdown('BulletTracerType', {Values = {'Lightning Bolt', 'Lightning Bolt2', 'Laser', 'Red Laser', 'DNA'}, Default = 1, Text = 'Bullet Tracer Type:'}):OnChanged(function(value)
    TracerSelected = value
end)

-------------------------------------------------------------------------------------------------
--// UI Settings \\--

--// Game
local GameID = Tabs.UISettings:AddLeftGroupbox('Game')
GameID:AddInput('GameID_Check', {Default = 'Game ID', Numeric = true, Finished = false, Text = 'Game ID:', Placeholder = 'Game ID Here'})
GameID:AddButton('Join Game', function()
game:GetService("TeleportService"):Teleport(Options.GameID_Check.Value, plr)
end)


GameID:AddButton('Copy Join Code', function()
setclipboard(("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s')"):format(game.PlaceId, game.JobId))
Library:Notify("Copied Join Code!", 5)
end)

GameID:AddButton('Rejoin Server', function()
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
Library:Notify('Rejoining Server!', 30)
end)

--// Menu
local MenuGroup = Tabs.UISettings:AddRightGroupbox('Menu')

MenuGroup:AddLabel(' Made by:<font color="#FFFF00"> vax_ks</font> ð', true)

MenuGroup:AddButton('Unload Script', function()
    Library:Unload()
    for i, v in pairs(Toggles) do
        v:SetValue(false)
    end
    SetTimeOfDayText = false 

    if ZenithText then 
        ZenithText:Destroy()
    end
    if FOV then
        FOV:Remove()
        FOV = nil
    end

    Library:Notify('Unloaded!', 1)
end)

MenuGroup:AddButton('Panic Button', function()
for i,v in pairs(Toggles) do
    v:SetValue(false)
        Library:Notify('Panic Button!', 1)
    end
end)

MenuGroup:AddButton('Copy Discord', function()
    if pcall(setclipboard,"https://discord.gg/Skgd2FAuKv") then
        Library:Notify('Successfully copied discord link to your clipboard!', 5)
    end
end)

MenuGroup:AddToggle('WatermarkToggle', { Text = 'Watermark', Default = false, Tooltip = nil })
Toggles.WatermarkToggle:OnChanged(function()
    while Toggles.WatermarkToggle.Value do task.wait(1)
    local fps = string.format('%.0f', game.Stats.Workspace.Heartbeat:GetValue())
    local ping = string.format('%.0f', game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
    Library:SetWatermark('Zenith - FPS: ' .. fps .. ' | Ping: ' .. ping .. ' | [Rivals]')
    Library:SetWatermarkVisibility(true)
end
Library:SetWatermarkVisibility(false)
end)

MenuGroup:AddToggle('UISettings_KeybindFrameVisibility', {Text = 'Keybind', Default = true}):OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.UISettings_KeybindFrameVisibility.Value
end)

MenuGroup:AddLabel('Menu Keybind'):AddKeyPicker('MenuKeybind', { Default = 'Insert', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind

--// Save manager
SaveManager:SetLibrary(Library)
SaveManager:SetFolder('Zenith/Configs')
SaveManager:BuildConfigSection(Tabs.UISettings)
SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()

--// Theme manager
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder('Zenith/themes')
ThemeManager:ApplyToTab(Tabs.UISettings)

--// Script Loaded
local Time = (string.format("%."..tostring(Decimals).."f", os.clock() - Clock))
Library:Notify(("Script [Loaded] In - "..tostring(Time).."s"), 15)

--Wrapping function - needed to unload(Keep at end of script)
loadstring(game:HttpGet('https://raw.githubusercontent.com/VaxKs/gfe/main/LoadManger'))


-- Setup fly control
function Functions:FlyStufffzzz()
    if self.flyControlConnection then
        self.flyControlConnection:Disconnect()
    end

    self.flyControlConnection = localPlayer.CharacterAdded:Connect(function(character)
        if FLYING then
            repeat task.wait() until character:FindFirstChild("HumanoidRootPart")
            Functions:startFly()
        end
    end)

    local mouse = localPlayer:GetMouse()

    mouse.KeyDown:Connect(function(key)
        local upperKey = key:upper()
        if flyingControls[upperKey] ~= nil then
            flyingControls[upperKey] = true
        end
    end)

    mouse.KeyUp:Connect(function(key)
        local upperKey = key:upper()
        if flyingControls[upperKey] ~= nil then
            flyingControls[upperKey] = false
        end
    end)
end
Functions:FlyStufffzzz()

--// Gun Mods \\--

local function setupGunMods()
    if SynZ then
        return
    end

    local clientItemModule = require(localPlayer.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter.ClientItem)
    local inputFunc = clientItemModule.Input

    local NoRecoil = NoRecoil
    local NoSpread = NoSpread
    local QuickShot = QuickShot

    if NoRecoil or NoSpread or QuickShot then
        local oldInputFunc = inputFunc
        
        inputFunc = function(...)
            local args = {...}
            
            if type(args[1]) == "table" then
                if NoRecoil then
                    args[1].Info.ShootRecoil = 0
                end
                if NoSpread then
                    args[1].Info.ShootSpread = 0
                end
                if QuickShot then
                    args[1].Info.QuickShotCooldown = 0
                end
            end

            return oldInputFunc(...)
        end
    end
end

local function setupHitSound()
    local localPlayer = game:GetService("Players").LocalPlayer

    local sounds = {
        ["Default Headshot"] = "rbxassetid://9119561046",
        ["Default Body"] = "rbxassetid://9114487369",
        Neverlose = "rbxassetid://8726881116",
        Gamesense = "rbxassetid://4817809188",
        One = "rbxassetid://7380502345",
        Bell = "rbxassetid://6534947240",
        Rust = "rbxassetid://1255040462",
        TF2 = "rbxassetid://2868331684",
        Slime = "rbxassetid://6916371803",
        ["Among Us"] = "rbxassetid://5700183626",
        Minecraft = "rbxassetid://4018616850",
        ["CS:GO"] = "rbxassetid://6937353691",
        Saber = "rbxassetid://8415678813",
        Baimware = "rbxassetid://3124331820",
        Osu = "rbxassetid://7149255551",
        ["TF2 Critical"] = "rbxassetid://296102734",
        Bat = "rbxassetid://3333907347",
        ["Call of Duty"] = "rbxassetid://5952120301",
        Bubble = "rbxassetid://6534947588",
        Pick = "rbxassetid://1347140027",
        Pop = "rbxassetid://198598793",
        Bruh = "rbxassetid://4275842574",
        Bamboo = "rbxassetid://3769434519",
        Crowbar = "rbxassetid://546410481",
        Weeb = "rbxassetid://6442965016",
        Beep = "rbxassetid://8177256015",
        Bambi = "rbxassetid://8437203821",
        Stone = "rbxassetid://3581383408",
        ["Old Fatality"] = "rbxassetid://6607142036",
        Click = "rbxassetid://8053704437",
        Ding = "rbxassetid://7149516994",
        Snow = "rbxassetid://6455527632",
        Laser = "rbxassetid://7837461331",
        Mario = "rbxassetid://2815207981",
        Steve = "rbxassetid://4965083997"
    }
    
    local function playCustomHitSound()
        local soundId = sounds[HitSound]
        if not soundId then return end

        local customSound = Instance.new("Sound")
        customSound.SoundId = soundId
        customSound.Volume = currentVolume
        customSound.Pitch = currentPitch
        customSound.Parent = localPlayer:WaitForChild("PlayerGui")
        customSound:Play()
        customSound.Ended:Connect(function()
            customSound:Destroy()
        end)
    end

    local function onSoundAdded(sound)
        if CustomHitSounds and sound:IsA("Sound") then
            sound:Stop()
            playCustomHitSound()
            sound:Destroy()
        end
    end

    local function FindSoundToMakeHitsound()
        local RunService = game:GetService("RunService")
        RunService.Heartbeat:Connect(function()
            local clientViewModel = localPlayer.PlayerScripts:FindFirstChild("Modules")
                and localPlayer.PlayerScripts.Modules:FindFirstChild("ClientReplicatedClasses")
                and localPlayer.PlayerScripts.Modules.ClientReplicatedClasses:FindFirstChild("ClientFighter")
                and localPlayer.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter:FindFirstChild("ClientItem")
                and localPlayer.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter.ClientItem:FindFirstChild("ClientViewModel")

            if clientViewModel then
                for _, descendant in ipairs(clientViewModel:GetDescendants()) do
                    if descendant:IsA("Sound") and not descendant:GetAttribute("Processed") then
                        onSoundAdded(descendant)
                        descendant:SetAttribute("Processed", true)
                    end
                end
            else
            end
        end)
    end

    FindSoundToMakeHitsound()
end

--Setup
setupGunMods()
setupHitSound()