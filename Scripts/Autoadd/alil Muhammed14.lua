-- GUI OluÅturulmasÄ±
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

-- DÃ¼Ämelerin OluÅturulmasÄ± ve Ä°simlendirilmesi
local buttonNames = {
    "1x1x1x1x1",
    "H0lpgui",
    "K00p",
    "Rc7",
    "felssj",
    "mini c00lgui",
    "roXploit"
}

local buttonFunctions = {
    function()
        -- DÃ¼Äme 1 iÃ§in iÅlevsellik
        print("1x1x1x1x1 clicked!")
loadstring(game:HttpGet("https://pastefy.app/7k3MQchf/raw"))()
    end,
    function()
        -- DÃ¼Äme 2 iÃ§in iÅlevsellik
        print("h0lpgui clicked!")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/C00lHamoot/H0lpgui/main/H0lpgui%20by%20me"))()
    end,
    function()
        -- DÃ¼Äme 3 iÃ§in iÅlevsellik
        print("k00p reborn clicked!")
loadstring(game:HttpGet("https://pastebin.com/raw/aMtQRfDA",true))()
    end,
    function()
        -- DÃ¼Äme 4 iÃ§in iÅlevsellik
        print("Rc7 clicked!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/CoreGui/Scripts/main/RC7"))()
    end,
    function()
        -- DÃ¼Äme 5 iÃ§in iÅlevsellik
        print("felssj clicked!")
loadstring(game:HttpGet('https://raw.githubusercontent.com/dqvh/dqvh/main/pillar%20chase%202.lua'))()
    end,
    function()
        -- DÃ¼Äme 6 iÃ§in iÅlevsellik
        print("mini c00lgui")
loadstring(game:GetObjects("rbxassetid://157645868")[1].Source)( )
    end,
    function()
        -- DÃ¼Äme 7 iÃ§in iÅlevsellik
        print("roXploit clicked!")
loadstring(game:GetObjects('rbxassetid://364364477')[1].Source)()
    end
}

local buttonPositions = {
    UDim2.new(0.05, 0, 0.1, 0),
    UDim2.new(0.35, 0, 0.1, 0),
    UDim2.new(0.65, 0, 0.1, 0),
    UDim2.new(0.05, 0, 0.4, 0),
    UDim2.new(0.35, 0, 0.4, 0),
    UDim2.new(0.65, 0, 0.4, 0),
    UDim2.new(0.35, 0, 0.7, 0)
}

for i = 1, #buttonNames do
    local button = Instance.new("TextButton")
    button.Name = buttonNames[i]
    button.Size = UDim2.new(0.25, 0, 0.2, 0)
    button.Position = buttonPositions[i]
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.BorderSizePixel = 0
    button.Text = buttonNames[i]
    button.Parent = Frame

    -- DÃ¼Äme iÅlevselliÄinin atanmasÄ±
    button.MouseButton1Click:Connect(buttonFunctions[i])
end