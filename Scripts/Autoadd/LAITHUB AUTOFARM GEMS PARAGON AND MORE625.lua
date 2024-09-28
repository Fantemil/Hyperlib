-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ Ð¾Ð±ÑÐµÐºÑ ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Ð¡Ð¾Ð·Ð´Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 350, 0, 100)  -- Ð£Ð²ÐµÐ»Ð¸ÑÐµÐ½Ð½Ð°Ñ ÐºÐ½Ð¾Ð¿ÐºÐ°
button.Position = UDim2.new(0.5, -100, 0.5, -25)  -- ÐÐ¾Ð·Ð¸ÑÐ¸Ñ Ð¿Ð¾ ÑÐµÐ½ÑÑÑ
button.AnchorPoint = Vector2.new(0.5, 0.5)  -- Ð¦ÐµÐ½ÑÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ðµ ÐºÐ½Ð¾Ð¿ÐºÐ¸
button.Text = "Script in link. Click to copy!"
button.TextSize = 28  -- Ð Ð°Ð·Ð¼ÐµÑ ÑÐµÐºÑÑÐ°
button.Font = Enum.Font.GothamBold  -- ÐÑÐ±Ð¾Ñ Ð½ÐµÐ¾Ð±ÑÑÐ½Ð¾Ð³Ð¾ ÑÑÐ¸ÑÑÐ°
button.BackgroundColor3 = Color3.fromRGB(85, 170, 255)  -- Ð¦Ð²ÐµÑ ÐºÐ½Ð¾Ð¿ÐºÐ¸
button.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Ð¦Ð²ÐµÑ ÑÐµÐºÑÑÐ°
button.BorderSizePixel = 0  -- Ð£Ð±Ð¸ÑÐ°ÐµÐ¼ ÑÐ°Ð¼ÐºÑ
button.Parent = screenGui

-- ÐÐµÐ»Ð°ÐµÐ¼ ÐºÐ½Ð¾Ð¿ÐºÑ Ð¾Ð²Ð°Ð»ÑÐ½Ð¾Ð¹
local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.5, 0)  -- ÐÐ°ÐºÑÑÐ³Ð»ÐµÐ½Ð½ÑÐµ ÑÐ³Ð»Ñ (50% Ð´Ð»Ñ Ð¾Ð²Ð°Ð»ÑÐ½Ð¾Ð¹ ÑÐ¾ÑÐ¼Ñ)
uicorner.Parent = button

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ ÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ ÑÑÑÐ»ÐºÐ¸
local function copyLink()
    setclipboard("https://t.me/blum/app?startapp=ref_4IJneMKXmZ")  -- ÐÐ¾Ð¿Ð¸ÑÑÐµÐ¼ ÑÑÑÐ»ÐºÑ
    button.Text = "Link copied!"  -- ÐÐµÐ½ÑÐµÐ¼ ÑÐµÐºÑÑ Ð½Ð° ÐºÐ½Ð¾Ð¿ÐºÐµ Ð¿Ð¾ÑÐ»Ðµ ÐºÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ
    wait(2)  -- ÐÐ´ÐµÐ¼ 2 ÑÐµÐºÑÐ½Ð´Ñ
    button.Text = "Script in link. Click to copy!"  -- ÐÐ¾Ð·Ð²ÑÐ°ÑÐ°ÐµÐ¼ Ð¸ÑÑÐ¾Ð´Ð½ÑÐ¹ ÑÐµÐºÑÑ
end

-- ÐÐ¾Ð´ÐºÐ»ÑÑÐ°ÐµÐ¼ ÑÑÐ½ÐºÑÐ¸Ñ Ðº Ð½Ð°Ð¶Ð°ÑÐ¸Ñ ÐºÐ½Ð¾Ð¿ÐºÐ¸
button.MouseButton1Click:Connect(copyLink)
