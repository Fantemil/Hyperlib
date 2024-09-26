local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Control de Velocidad", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- ConfiguraciÃ³n
local Config = {
    NormalSpeed = 16, -- Velocidad normal del juego
    SprintSpeed = 64, -- Velocidad de sprint
    SuperSpeed = 200, -- Velocidad sÃºper rÃ¡pida
    CurrentSpeedMultiplier = 1, -- Multiplicador de velocidad actual
    SprintKey = Enum.KeyCode.LeftShift, -- Tecla para activar el sprint
    SuperSpeedKey = Enum.KeyCode.LeftControl -- Tecla para activar la sÃºper velocidad
}

-- FunciÃ³n para actualizar la velocidad
local function updateSpeed()
    if Humanoid then
        Humanoid.WalkSpeed = Config.NormalSpeed * Config.CurrentSpeedMultiplier
    end
end

-- FunciÃ³n para manejar el cambio de personaje
local function onCharacterAdded(newCharacter)
    Character = newCharacter
    Humanoid = newCharacter:WaitForChild("Humanoid")
    updateSpeed()
end

-- Conectar la funciÃ³n al evento CharacterAdded
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

-- Manejar las entradas del teclado
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    
    if input.KeyCode == Config.SprintKey then
        Config.CurrentSpeedMultiplier = Config.SprintSpeed / Config.NormalSpeed
    elseif input.KeyCode == Config.SuperSpeedKey then
        Config.CurrentSpeedMultiplier = Config.SuperSpeed / Config.NormalSpeed
    end
    
    updateSpeed()
end)

UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    
    if input.KeyCode == Config.SprintKey or input.KeyCode == Config.SuperSpeedKey then
        Config.CurrentSpeedMultiplier = 1
    end
    
    updateSpeed()
end)

-- Crear la pestaÃ±a principal
local MainTab = Window:MakeTab({
    Name = "Velocidad",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- AÃ±adir un slider para la velocidad normal
MainTab:AddSlider({
    Name = "Velocidad Normal",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Velocidad",
    Callback = function(Value)
        Config.NormalSpeed = Value
        updateSpeed()
    end    
})

-- AÃ±adir un slider para la velocidad de sprint
MainTab:AddSlider({
    Name = "Velocidad de Sprint",
    Min = 32,
    Max = 200,
    Default = 32,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Velocidad",
    Callback = function(Value)
        Config.SprintSpeed = Value
    end    
})

-- AÃ±adir un slider para la sÃºper velocidad
MainTab:AddSlider({
    Name = "SÃºper Velocidad",
    Min = 64,
    Max = 500,
    Default = 64,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Velocidad",
    Callback = function(Value)
        Config.SuperSpeed = Value
    end    
})

-- AÃ±adir un selector de tecla para el sprint
MainTab:AddBind({
    Name = "Tecla de Sprint",
    Default = Config.SprintKey,
    Hold = false,
    Callback = function()
        -- Esta funciÃ³n se llamarÃ¡ cuando se presione la tecla
    end,
    Flag = "SprintKey",
    Save = true
})

-- AÃ±adir un selector de tecla para la sÃºper velocidad
MainTab:AddBind({
    Name = "Tecla de SÃºper Velocidad",
    Default = Config.SuperSpeedKey,
    Hold = false,
    Callback = function()
        -- Esta funciÃ³n se llamarÃ¡ cuando se presione la tecla
    end,
    Flag = "SuperSpeedKey",
    Save = true
})

-- Actualizar la velocidad continuamente
RunService.Heartbeat:Connect(updateSpeed)

-- Inicializar la librerÃ­a Orion
OrionLib:Init()

print("Script de control de velocidad cargado. Usa la GUI para ajustar las velocidades y las teclas.")