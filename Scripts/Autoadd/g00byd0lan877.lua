local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ChangeSkyboxButton = Instance.new("TextButton")
local BorderSize = 4 -- Tamanho da borda

-- ConfiguraÃ§Ã£o da interface
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Preto
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

-- CriaÃ§Ã£o das bordas vermelhas
local TopBorder = Instance.new("Frame")
TopBorder.Size = UDim2.new(1, 0, 0, BorderSize)
TopBorder.Position = UDim2.new(0, 0, 0, 0)
TopBorder.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
TopBorder.Parent = Frame

local BottomBorder = Instance.new("Frame")
BottomBorder.Size = UDim2.new(1, 0, 0, BorderSize)
BottomBorder.Position = UDim2.new(0, 0, 1, -BorderSize)
BottomBorder.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
BottomBorder.Parent = Frame

local LeftBorder = Instance.new("Frame")
LeftBorder.Size = UDim2.new(0, BorderSize, 1, 0)
LeftBorder.Position = UDim2.new(0, 0, 0, 0)
LeftBorder.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
LeftBorder.Parent = Frame

local RightBorder = Instance.new("Frame")
RightBorder.Size = UDim2.new(0, BorderSize, 1, 0)
RightBorder.Position = UDim2.new(1, -BorderSize, 0, 0)
RightBorder.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
RightBorder.Parent = Frame

-- ConfiguraÃ§Ã£o do botÃ£o
ChangeSkyboxButton.Size = UDim2.new(1, 0, 1, 0)
ChangeSkyboxButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Preto
ChangeSkyboxButton.Text = "Trocar CÃ©u"
ChangeSkyboxButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Branco
ChangeSkyboxButton.Parent = Frame

-- FunÃ§Ã£o para trocar o cÃ©u
local function ChangeSkybox()
    local skyboxID = "rbxassetid://132515767788549"
    local sky = Instance.new("Sky")
    sky.SkyboxBk = skyboxID
    sky.SkyboxDn = skyboxID
    sky.SkyboxFt = skyboxID
    sky.SkyboxLf = skyboxID
    sky.SkyboxRt = skyboxID
    sky.SkyboxUp = skyboxID
    sky.Parent = game.Lighting
end

ChangeSkyboxButton.MouseButton1Click:Connect(ChangeSkybox)