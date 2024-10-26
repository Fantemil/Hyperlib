-- CriaÃ§Ã£o da interface do c00lkidd script hub Remake
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")

-- Propriedades da interface principal
ScreenGui.Name = "c00lkiddHubRemake"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0.4, 0, 0.6, 0)
MainFrame.Active = true
MainFrame.Draggable = true

-- FunÃ§Ã£o para criar botÃµes
function createButton(name, text, position, callback)
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Parent = MainFrame
    Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Button.BorderColor3 = Color3.fromRGB(255, 0, 0)
    Button.Position = position
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Font = Enum.Font.SourceSans
    Button.Text = text
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextScaled = true
    Button.MouseButton1Click:Connect(callback)
end

-- FunÃ§Ã£o Disco Fog (nÃ©voa colorida)
local function activateDiscoFog()
    local lighting = game:GetService("Lighting")
    lighting.FogStart = 50 -- DistÃ¢ncia de inÃ­cio da nÃ©voa
    lighting.FogEnd = 200 -- DistÃ¢ncia onde a nÃ©voa desaparece

    -- FunÃ§Ã£o para mudar as cores da nÃ©voa periodicamente
    while true do
        lighting.FogColor = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
        wait(0.5) -- MudanÃ§a de cor a cada meio segundo
    end
end

-- FunÃ§Ã£o Flood (inunda o mapa com Ã¡gua)
local function activateFlood()
    local Terrain = workspace:FindFirstChildOfClass("Terrain") -- Procura o terreno do jogo
    if Terrain then
        -- Cria Ã¡gua em todo o mapa (cobre a Ã¡rea)
        local waterLevel = 50 -- Altura da Ã¡gua (vocÃª pode ajustar conforme o mapa)
        Terrain:FillBlock(CFrame.new(0, waterLevel, 0), Vector3.new(1000, 10, 1000), Enum.Material.Water)
        print("Mapa inundado!")
    else
        print("Terreno nÃ£o encontrado.")
    end
end

-- BotÃ£o Disco Fog
createButton("discoFog", "Disco Fog", UDim2.new(0.55, 0, 0.3, 0), function()
    activateDiscoFog()
    print("Disco Fog ativado!")
end)

-- BotÃ£o Flood
createButton("Flood", "Flood", UDim2.new(0.3, 0, 0.1, 0), function()
    activateFlood()
    print("FunÃ§Ã£o Flood ativada!")
end)

-- Outros botÃµes que vocÃª pode adicionar conforme mostrado no layout
createButton("HardstyleSong", "HARDSTYLE SONG", UDim2.new(0.1, 0, 0.1, 0), function()
    -- CÃ³digo para tocar uma mÃºsica hardstyle (substitua com o som desejado)
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://SOUND_ID_AQUI" -- Coloque o ID da mÃºsica
    sound:Play()
    print("MÃºsica Hardstyle tocando!")
end)

-- Adicione outros botÃµes e funcionalidades conforme necessÃ¡rio