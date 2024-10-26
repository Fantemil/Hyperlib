Tilt methods
local player = game.Players.LocalPlayer

while true do
    wait(0.01)
    player.Character.HumanoidRootPart.Tilt.P = 4000
end

#2

-- conf
local inclinacionMaximaLado = 35 -- Grados mÃ¡ximos de inclinaciÃ³n hacia los lados
local inclinacionMaximaAdelante = 50 -- Grados mÃ¡ximos de inclinaciÃ³n hacia adelante
local velocidadInclinacion = 0.05 -- Velocidad de inclinaciÃ³n

-- a
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local inclinacionActualLado = 0
local inclinacionActualAdelante = 0
local inclinacionDeseadaLado = 0
local inclinacionDeseadaAdelante = 1

-- tt
local function inclinar(deltaLado, deltaAdelante)
    inclinacionDeseadaLado = inclinacionDeseadaLado + deltaLado
    inclinacionDeseadaAdelante = inclinacionDeseadaAdelante + deltaAdelante
    
    inclinacionDeseadaLado = math.clamp(inclinacionDeseadaLado, -inclinacionMaximaLado, inclinacionMaximaLado)
    inclinacionDeseadaAdelante = math.clamp(inclinacionDeseadaAdelante, -inclinacionMaximaAdelante, inclinacionMaximaAdelante)
end

-- 5
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    -- Verificar si el personaje estÃ¡ en el aire
    if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        if input.KeyCode == Enum.KeyCode.A then
            inclinar(-0, 0)
        elseif input.KeyCode == Enum.KeyCode.D then
            inclinar(0, 0)
        elseif input.KeyCode == Enum.KeyCode.W then
            inclinar(0, -5)
        end
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    -- 10
    if input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
        inclinacionDeseadaLado = 0
    elseif input.KeyCode == Enum.KeyCode.W then
        inclinacionDeseadaAdelante = 0
    end
end)

-- 20
RunService.RenderStepped:Connect(function()
    -- Interpolar gradualmente hacia la inclinaciÃ³n deseada
    inclinacionActualLado = inclinacionActualLado + (inclinacionDeseadaLado - inclinacionActualLado) * velocidadInclinacion
    inclinacionActualAdelante = inclinacionActualAdelante + (inclinacionDeseadaAdelante - inclinacionActualAdelante) * velocidadInclinacion
    
    -- 30
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local humanoidRootCFrame = rootPart.CFrame
    local newCFrame = humanoidRootCFrame * CFrame.Angles(math.rad(inclinacionActualAdelante), 0, math.rad(inclinacionActualLado))
    rootPart.CFrame = newCFrame
end)

(hella bugged btw) (also is not mine)


Jump methods

-- hi

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")
local rootPart = player.Character:WaitForChild("HumanoidRootPart")

local jumpBoostVelocity = Vector3.new(0, 2, 0) -- baka
local boostDuration = 0.1 -- baka

local function onJumpRequest()
    -- aa
    rootPart.Velocity = rootPart.Velocity + jumpBoostVelocity
    wait(boostDuration)
end

humanoid.Jumping:Connect(onJumpRequest)

(gatekeepÃ¬ng the another jump method bc is pretty easy to patch heh....)


Bokuto (Auto Rotate method and the only that works)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local cam = workspace.CurrentCamera
local rs = game:GetService("RunService")

rs.RenderStepped:Connect(function()
    if not humanoid.FloorMaterial then
        humanoid.AutoRotate = false
        local direction = cam.CFrame.LookVector
        humanoid:Move(direction, true)
    else
        humanoid.AutoRotate = true
    end
end)


(u cant spike, this is made for setters)


Prediction line (idk if works, was made with chat gpt !!)

local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local predictionTime, timeStep = 2, 0.1 -- Tiempo y paso de tiempo para la predicciÃ³n
local lineLength = 30 -- Longitud de la lÃ­nea de predicciÃ³n

local bodyParts = {
    "Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand",
    "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg",
    "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"
}

local function setup



Speed methods ( Infinite Yield)

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

and :tpwalk 0.5

S3 quick step (basically nishinoya)

-- a
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local UserInputService = game:GetService("UserInputService")
local dashSpeed = 100 -- Velocidad del dash
local dashDuration = 0.2 -- DuraciÃ³n del dash en segundos

-- dash
local function dash()
    local camera = game.Workspace.CurrentCamera
    local moveDirection = Vector3.new(0, 0, 0)
    
    -- idk
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        moveDirection = moveDirection + camera.CFrame.LookVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        moveDirection = moveDirection - camera.CFrame.LookVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        moveDirection = moveDirection - camera.CFrame.RightVector
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        moveDirection = moveDirection + camera.CFrame.RightVector
    end
    
    -- hawk 1: Boo
    moveDirection = Vector3.new(moveDirection.X, 0, moveDirection.Z)
    
    -- Hawk 2ahhhi
    if moveDirection.Magnitude > 0 then
        moveDirection = moveDirection.Unit
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = moveDirection * dashSpeed
        bodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bodyVelocity.Parent = humanoidRootPart
        
        -- the
        game.Debris:AddItem(bodyVelocity, dashDuration)
    end
end

-- money
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.B then
        dash()
    end
end) 

(press B)


