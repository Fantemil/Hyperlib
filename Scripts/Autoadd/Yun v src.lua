
repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")
local timetoload = tick()

-- // Variables
local Players = game:GetService('Players')
local Client = Players.LocalPlayer
local CoreGui = game:GetService('CoreGui')

-- // Functions
function getHealth(target)
    if (target) then
        return tonumber(Players[target].Character.Humanoid.Health)
    else
        return 0
    end
end

function getArmor(target)
    if (target) then
        return tonumber(Players[target].Character.BodyEffects.Armor.Value)
    else
        return 0
    end
end

function getDistance(target)
    if (target) then
        return tonumber((Client.Character.HumanoidRootPart.Position - target.Character.HumanoidRootPart.Position).magnitude)
    else
        return 100
    end
end

function isWinning(target)
    if (target) then
        -- // Health
        local clientHealth = math.floor(getHealth(tostring(Client.Name)))
        local tHealth = math.floor(getHealth(target))
        
        -- // If the target has more health than our client
        if (clientHealth < tHealth) then
            return true
        else
            return false
        end
    else
        return true
    end
end

-- // Design
local healthGUI = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local topBarCorner = Instance.new("UICorner")
local targetHeadshot = Instance.new("ImageLabel")
local targetName = Instance.new("TextLabel")
local healthBar = Instance.new("Frame")
local healthBarCorner = Instance.new("UICorner")
local healthBarBG = Instance.new("Frame")
local healthBarBGCorner = Instance.new("UICorner")
local healthIcon = Instance.new("ImageLabel")
local healthText = Instance.new("TextLabel")
local bodyCorner = Instance.new("UICorner")
local armorBar = Instance.new("Frame")
local armorBarCorner = Instance.new("UICorner")
local armorBarBG = Instance.new("Frame")
local armorBGCorner = Instance.new("UICorner")
local armorText = Instance.new("TextLabel")
local armorIcon = Instance.new("ImageLabel")
local Distance = Instance.new("TextLabel")
local Winning = Instance.new("TextLabel")

-- // Design functions
function setTargetHUDColor(color)
    armorBarBG.BackgroundColor3 = Color3.fromRGB(color)
    TopBar.BackgroundColor3 = Color3.fromRGB(color)
    healthBarBG.BackgroundColor3 = Color3.fromRGB(color)
end

-- // Rest of the UI design
healthGUI.Name = "healthGUI"
healthGUI.Parent = CoreGui

Body.Name = "Body"
Body.Parent = healthGUI
Body.AnchorPoint = Vector2.new(0.5, 0.5)
Body.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Body.BorderSizePixel = 0
Body.ClipsDescendants = true
Body.Position = UDim2.new(0.5, 0, 0.798113227, 0)
Body.Size = UDim2.new(0, 240, 0, 131)
Body.Visible = false

TopBar.Name = "TopBar"
TopBar.Parent = Body
TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
TopBar.Size = UDim2.new(1, 5, 0, 6)

topBarCorner.CornerRadius = UDim.new(0, 5)
topBarCorner.Name = "topBarCorner"
topBarCorner.Parent = TopBar

targetHeadshot.Name = "targetHeadshot"
targetHeadshot.Parent = Body
targetHeadshot.AnchorPoint = Vector2.new(0.5, 0.5)
targetHeadshot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetHeadshot.BackgroundTransparency = 1
targetHeadshot.BorderSizePixel = 0
targetHeadshot.Position = UDim2.new(0.25, 0, 0.519999981, 0)
targetHeadshot.Size = UDim2.new(0, 100, 0, 100)
targetHeadshot.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

targetName.Name = "targetName"
targetName.Parent = Body
targetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetName.BackgroundTransparency = 1.000
targetName.BorderSizePixel = 0
targetName.Position = UDim2.new(0.491666675, 0, 0.137404576, 0)
targetName.Size = UDim2.new(0, 113, 0, 12)
targetName.Font = Enum.Font.Roboto
targetName.Text = "1fzn"
targetName.TextColor3 = Color3.fromRGB(255, 255, 255)
targetName.TextSize = 14.000
targetName.TextXAlignment = Enum.TextXAlignment.Left
targetName.TextScaled = true

healthBar.Name = "healthBar"
healthBar.Parent = Body
healthBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
healthBar.BorderSizePixel = 0
healthBar.Position = UDim2.new(0.491666675, 0, 0.290076345, 0)
healthBar.Size = UDim2.new(0, 113, 0, 17)

healthBarCorner.CornerRadius = UDim.new(0, 2)
healthBarCorner.Name = "healthBarCorner"
healthBarCorner.Parent = healthBar

healthBarBG.Name = "healthBarBG"
healthBarBG.Parent = healthBar
healthBarBG.BorderSizePixel = 0
healthBarBG.Size = UDim2.new(1, 0, 0, 17)

healthBarBGCorner.CornerRadius = UDim.new(0, 3)
healthBarBGCorner.Name = "healthBarBGCorner"
healthBarBGCorner.Parent = healthBarBG

healthIcon.Name = "healthIcon"
healthIcon.Parent = healthBar
healthIcon.AnchorPoint = Vector2.new(0.5, 0.5)
healthIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthIcon.BackgroundTransparency = 1.000
healthIcon.BorderSizePixel = 0
healthIcon.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
healthIcon.Size = UDim2.new(0, 12, 0, 13)
healthIcon.Image = "rbxassetid://3192484653"

healthText.Name = "healthText"
healthText.Parent = healthBar
healthText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthText.BackgroundTransparency = 1.000
healthText.BorderSizePixel = 0
healthText.Size = UDim2.new(0, 113, 0, 17)
healthText.Font = Enum.Font.Roboto
healthText.Text = "100"
healthText.TextColor3 = Color3.fromRGB(255, 255, 255)
healthText.TextSize = 14.000

bodyCorner.CornerRadius = UDim.new(0, 3)
bodyCorner.Name = "bodyCorner"
bodyCorner.Parent = Body

armorBar.Name = "armorBar"
armorBar.Parent = Body
armorBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
armorBar.BorderSizePixel = 0
armorBar.Position = UDim2.new(0.492000014, 0, 0.449999988, 0)
armorBar.Size = UDim2.new(0, 113, 0, 17)

armorBarCorner.CornerRadius = UDim.new(0, 2)
armorBarCorner.Name = "armorBarCorner"
armorBarCorner.Parent = armorBar

armorBarBG.Name = "armorBarBG"
armorBarBG.Parent = armorBar
armorBarBG.BorderSizePixel = 0
armorBarBG.Size = UDim2.new(0.513274312, 0, 0, 17)

armorBGCorner.CornerRadius = UDim.new(0, 3)
armorBGCorner.Name = "armorBGCorner"
armorBGCorner.Parent = armorBarBG

armorText.Name = "armorText"
armorText.Parent = armorBar
armorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armorText.BackgroundTransparency = 1.000
armorText.BorderSizePixel = 0
armorText.Size = UDim2.new(0, 113, 0, 17)
armorText.Font = Enum.Font.Roboto
armorText.Text = "50"
armorText.TextColor3 = Color3.fromRGB(255, 255, 255)
armorText.TextSize = 14.000

armorIcon.Name = "armorIcon"
armorIcon.Parent = armorBar
armorIcon.AnchorPoint = Vector2.new(0.5, 0.5)
armorIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armorIcon.BackgroundTransparency = 1.000
armorIcon.BorderSizePixel = 0
armorIcon.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
armorIcon.Size = UDim2.new(0, 12, 0, 13)
armorIcon.Image = "rbxassetid://7169354142"

Distance.Name = "Distance"
Distance.Parent = Body
Distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Distance.BackgroundTransparency = 1.000
Distance.BorderSizePixel = 0
Distance.Position = UDim2.new(0.491666675, 0, 0.78, 0)
Distance.Size = UDim2.new(0, 110, 0, 17)
Distance.Font = Enum.Font.Roboto
Distance.Text = "Distance: 98 studs"
Distance.TextColor3 = Color3.fromRGB(255, 255, 255)
Distance.TextSize = 13.000
Distance.TextXAlignment = Enum.TextXAlignment.Left

Winning.Name = "Winning"
Winning.Parent = Body
Winning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Winning.BackgroundTransparency = 1.000
Winning.BorderSizePixel = 0
Winning.Position = UDim2.new(0.491666675, 0, 0.620000005, 0)
Winning.Size = UDim2.new(0, 110, 0, 17)
Winning.Font = Enum.Font.Roboto
Winning.Text = "Winning: true"
Winning.TextColor3 = Color3.fromRGB(255, 255, 255)
Winning.TextSize = 13.000
Winning.TextXAlignment = Enum.TextXAlignment.Left
_G.ArmorBAR = Color3.fromRGB(255, 0, 4)
 _G.TOPBAR =Color3.fromRGB(255, 0, 4)
_G.healthBarBG = Color3.fromRGB(255, 0, 4)
armorBarBG.BackgroundColor3 = _G.ArmorBAR

TopBar.BackgroundColor3 = _G.TOPBAR

healthBarBG.BackgroundColor3 = _G.healthBarBG

local Skins = {
    ["[Revolver]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8174665752",
            Rarity = "Common"
        },
        ["Battleworn Lilac"] = {
            TextureID = "rbxassetid://8175141275",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8175126370",
            Rarity = "Common"
        },
        ["Battleworn Yellowish"] = {
            TextureID = "rbxassetid://8175111007",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8174703251",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8174725170",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8174602579",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8174185468",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8174245185",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8174472966",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8174086219",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8173928665",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8173955378",
            Rarity = "Legendary"
        }
    },
    ["[DrumGun]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8185356861",
            Rarity = "Common"
        },
        ["Battleworn Silver"] = {
            TextureID = "rbxassetid://8185395568",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8185380857",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8185410368",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8185370548",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8200161894",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8185515967",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8185562852",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8185721916",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8185793923",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8185845811",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8186385983",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8186168230",
            Rarity = "Legendary"
        }
    },
    ["[SMG]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8199419655",
            Rarity = "Common"
        },
        ["Battleworn Silver"] = {
            TextureID = "rbxassetid://8199458294",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8199451863",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8199473055",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8199431005",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8199477007",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8199481436",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8199502936",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8199514095",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8199653818",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8199866150",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8199875638",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8199883519",
            Rarity = "Legendary"
        }
    },
    ["[Shotgun]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8200212723",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8200231458",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8200235920",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8200227785",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8200239202",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8200263229",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8200281207",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8200452630",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8200567741",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8200611946",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8200647420",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8200657428",
            Rarity = "Legendary"
        }
    },
    ["[TacticalShotgun]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://9202807512",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://9202860371",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://9202877794",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://9202833643",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://9202903532",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://9203188586",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://9203220557",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://9203241308",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://9203412138",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://9203513612",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://9203641766",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://9203647967",
            Rarity = "Legendary"
        }
    },
    ["[RPG]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8200732479",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8200751938",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8200757388",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8200745198",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8200764100",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8200822253",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8200850424",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8200866435",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8200890494",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8201028034",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8201055935",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8201059812",
            Rarity = "Legendary"
        }
    },
    ["[P90]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8205069485",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8205089535",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8205123590",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8205076879",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8205144857",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8205219107",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8205257625",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8205265666",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8205325456",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8205367433",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8205381104",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8205397990",
            Rarity = "Legendary"
        }
    },
    ["[LMG]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8205498477",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8205510598",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8205517033",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8205505332",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8205523035",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8205558639",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8205575208",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8205585472",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8205620131",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8205697183",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8205713344",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8205719479",
            Rarity = "Legendary"
        }
    },
    ["[Flamethrower]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8205935393",
            Rarity = "Common"
        },
        ["Battleworn Silver"] = {
            TextureID = "rbxassetid://8205943484",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8205948312",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8205939544",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8206047590",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8206051335",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213235948",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8206268974",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8206347935",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8206488418",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8206707126",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8208010648",
            Rarity = "Legendary"
        }
    },
    ["[Double-Barrel SG]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212275962",
            Rarity = "Common"
        },
        ["Battleworn Silver"] = {
            TextureID = "rbxassetid://8212286567",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212282697",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212279414",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212290557",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8212316849",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213280304",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8212323155",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8212348203",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8212375936",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8212384179",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8212394280",
            Rarity = "Legendary"
        }
    },
    ["[Glock]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212444417",
            Rarity = "Common"
        },
        ["Battleworn Lilac"] = {
            TextureID = "rbxassetid://8212451534",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212455391",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212448336",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212459430",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8212481264",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213282241",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8212487510",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8212534706",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8212630941",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8212637463",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8212667115",
            Rarity = "Legendary"
        }
    },
    ["[Silencer]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212444417",
            Rarity = "Common"
        },
        ["Battleworn Lilac"] = {
            TextureID = "rbxassetid://8212451534",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212455391",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212448336",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212459430",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8212481264",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213282241",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8212487510",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8212534706",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8212630941",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8212637463",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8212667115",
            Rarity = "Legendary"
        }
    },
    ["[AUG]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212698585",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8212702975",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212708853",
            Rarity = "Common"
        },
        ["Battleworn Silver"] = {
            TextureID = "rbxassetid://8212718221",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212740914",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212725557",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8212747403",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213284596",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8212749719",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8212763285",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8212784351",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8212802637",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8212809463",
            Rarity = "Legendary"
        }
    },
    ["[AR]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212952678",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8212959581",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212975065",
            Rarity = "Common"
        },
        ["Battleworn Blue"] = {
            TextureID = "rbxassetid://8212972476",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212955941",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212991595",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8213019535",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213155212",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8213025576",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8213028694",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8213165917",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8213168054",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8213175568",
            Rarity = "Legendary"
        }
    },
    ["[SilencerAR]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8212952678",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8212959581",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8212975065",
            Rarity = "Common"
        },
        ["Battleworn Blue"] = {
            TextureID = "rbxassetid://8212972476",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8212955941",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8212991595",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8213019535",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213155212",
            Rarity = "Rare"
        },
        Future = {
            TextureID = "rbxassetid://8213025576",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8213028694",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8213165917",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8213168054",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8213175568",
            Rarity = "Legendary"
        }
    },
    ["[AK47]"] = {
        ["Battleworn Green"] = {
            TextureID = "rbxassetid://8213540594",
            Rarity = "Common"
        },
        ["Battleworn Red"] = {
            TextureID = "rbxassetid://8213544761",
            Rarity = "Common"
        },
        ["Battleworn Orange"] = {
            TextureID = "rbxassetid://8213558744",
            Rarity = "Common"
        },
        ["Battleworn Blue"] = {
            TextureID = "rbxassetid://8213551140",
            Rarity = "Common"
        },
        ["Battleworn Purple"] = {
            TextureID = "rbxassetid://8213553838",
            Rarity = "Common"
        },
        ["Battleworn Pink"] = {
            TextureID = "rbxassetid://8213556073",
            Rarity = "Common"
        },
        Danger = {
            TextureID = "rbxassetid://8213561927",
            Rarity = "Rare"
        },
        ["Black & White"] = {
            TextureID = "rbxassetid://8213564638",
            Rarity = "Rare"
        },
        Icey = {
            TextureID = "rbxassetid://8213567693",
            Rarity = "Epic"
        },
        Biohazard = {
            TextureID = "rbxassetid://8213570295",
            Rarity = "Epic"
        },
        ["Red Death"] = {
            TextureID = "rbxassetid://8213572965",
            Rarity = "Legendary"
        },
        ["Gold Glory"] = {
            TextureID = "rbxassetid://8213606202",
            Rarity = "Legendary"
        }
    }
}

local CC = game:GetService("Workspace").CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locked = false
local cc = game:GetService("Workspace").CurrentCamera
local gs = game:GetService("GuiService")
local Players, Client, Mouse, Camera =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("Workspace").CurrentCamera
local ggi = gs.GetGuiInset
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

local Storage = {
    Idle = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId,
    Run = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId,
    Walk = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId,
    Face = nil,
    RightFootMeshID = game.Players.LocalPlayer.Character.RightFoot.MeshId,
    RightLowerLegMeshID = game.Players.LocalPlayer.Character.RightLowerLeg.MeshId,
    RightUpperLegMeshID = game.Players.LocalPlayer.Character.RightUpperLeg.MeshId,
    RightFootTransparency = game.Players.LocalPlayer.Character.RightUpperLeg.TextureID,
    RightLowerLegTransparency = game.Players.LocalPlayer.Character.RightLowerLeg.Transparency
}
pcall(
    function()
        if (game.Players.LocalPlayer.Character.Head.face.Texture ~= nil) then
            Storage.Face = game.Players.LocalPlayer.Character.Head.face.Texture
        end
    end
)

local Script = {
    Name = "Yun" --\\ This is used for notification.
}
local Misc = {
  
    Speed = false,
    Value = 0.6,
    NewSpeed = false,
    NewSpeedValue = 110,
    SpinAngle2 = -250,
    Spinbot = false,
    Jitter = false,
    JitterAngle = math.random(30, 90),
    SpinAngle = 60,
    Spin = false,
    AutoEat = false,
    SpinVelocity = -250,
    SpinAngle = 555,
    Slingshot = false,
    SlingshotValue = 0.999,
    AntiStomp = false,
    AutoReload = false,
    AutoStomp = false,
    TrashTalk = false,
    AntiLock = false,
    AntilockSpeed = 0.260319,
    AntiBag = false,
    Confusion = false,
    AutoPickCash = false,
    AutoDropCash = false,
    RemoveJumpCooldown = false,
    FakeLag = false,
    BunnyHop = false
}
getgenv().Aimbot = {
    Enabled = false,
    Notification = false,
    Keybind = Enum.KeyCode.Q,
    Hitbox = "HumanoidRootPart",
    HitAirshots = false,
    AirshotPart = "RightFoot",
    Resolver = false,
    Backup = "HumanoidRootPart",
    PredictionEnabled = false,
    Prediction = 1.13684,
    AutoSetup = false,
    Smoothing = true,
    Smoothness = 0.015,
    Radius = 120
}

getgenv().Silent = {
    Enabled = false,
    Key = Enum.KeyCode.Q,
    Prediction = 1.132,
    Airshot = false,
    AirshotPart = "RightFoot",
    Backup = "HumanoidRootPart",
    Notification = true,
    WallCheck = true,
    Part = "LowerTorso",
    RandomPart = false,
    AutoSetup = false,
    AutoTarget = false,
    LookAt = true,
    Radius = 120,
    TargetStats = false,
    RainbowTargetStats = false
}
getgenv().Tracer = false




local TimeTick
TimeTick =
    hookfunction(
    wait,
    function(JumpCooldown)
        if JumpCooldown == 1.5 and Misc.RemoveJumpCooldown or Misc.BunnyHop then
            return TimeTick()
        end
        return TimeTick(JumpCooldown)
    end
)

local Locking = false
game:GetService("UserInputService").InputBegan:Connect(
    function(Key, Typing)
        if (not Typing) then
            if (Key.KeyCode == Aimbot.Keybind) then
                if Aimbot.Enabled then
                    Locking = not Locking
                    if Locking then
                        AimbotVictim = AimbotGetClosest()
                        if Aimbot.Notification then
                            x(AimbotVictim.Character.Humanoid.DisplayName, 3,'rbxthumb://type=AvatarHeadShot&id=' .. AimbotVictim.UserId .. '&w=420&h=420')
                        elseif not Locking then
                            if AimbotVictim then
                                AimbotVictim = nil
                                if Aimbot.Notification then
                                    x("Unlocked",nil)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/3D%20Drawing%20Api.lua"))()
local Circle = Library:New3DCircle()
Circle.Visible = true
Circle.ZIndex = 1
Circle.Transparency = 1
Circle.Color = Color3.fromRGB(0, 255, 255)
Circle.Thickness = 1
Circle.Radius = 6
local delta = 0
local duration = 0.5
local target_strafe = false
game:GetService("RunService").Stepped:Connect(
    function(a, b)
        if Plr ~= nil and target_strafe then
            delta = (delta + b/duration) % 1
            Circle.Visible = true
            Circle.Position = Plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, 2 * math.pi * delta, 0)* CFrame.new(0, 0, Circle.Radius)+ Plr.Character.HumanoidRootPart.Position
        else
            Circle.Visible = false
        end
         armorBarBG.BackgroundColor3 = _G.ArmorBAR

TopBar.BackgroundColor3 = _G.TOPBAR

healthBarBG.BackgroundColor3 =_G.healthBarBG
        if Silent.RainbowTargetStats then
        armorBarBG.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)

TopBar.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)

healthBarBG.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)


end
        if AimbotVictim ~= nil and Aimbot.Enabled and Aimbot.Smoothing then
            local Main =
                CFrame.new(
                workspace.CurrentCamera.CFrame.p,
                AimbotVictim.Character[Aimbot.Hitbox].Position +
                    AimbotVictim.Character[Aimbot.Hitbox].Velocity * Aimbot.Prediction / 10
            )
            workspace.CurrentCamera.CFrame =
                workspace.CurrentCamera.CFrame:Lerp(
                Main,
                Aimbot.Smoothness,
                Enum.EasingStyle.Elastic,
                Enum.EasingDirection.InOut
            )
        end
        if Locking and AimbotVictim ~= nil and Aimbot.Enabled and not Aimbot.Smoothing then
            workspace.CurrentCamera.CFrame =
                CFrame.new(
                workspace.CurrentCamera.CFrame.Position,
                AimbotVictim.Character[Aimbot.Hitbox].Position +
                    AimbotVictim.Character[Aimbot.Hitbox].Velocity * Aimbot.Prediction / 10
            )
        end
        if Locking and Aimbot.Enabled and not Aimbot.Smoothing and not Aimbot.PredictionEnabled then
            workspace.CurrentCamera.CFrame =
                CFrame.new(workspace.CurrentCamera.CFrame.Position, AimbotVictim.Character[Aimbot.Hitbox].Position)
        end
        if Aimbot.HitAirshots == true then
            if AimbotVictim.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                Aimbot.Hitbox = Aimbot.AirshotPart
            else
                Aimbot.Hitbox = Aimbot.Backup
            end
        end
        if Misc.BunnyHop then
                    if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 0.17
            end
        end
    end
)


local Tracer = Drawing.new("Line")
Tracer.Visible = false
Tracer.Color = Color3.fromRGB(0, 166, 88)
Tracer.Thickness = 1
Tracer.Transparency = 1
_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(255, 170, 0)
_G.TracerThickness = 2
_G.TracerTransparency = 1

function x(tx,ic)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = Script.Name,
            Text = tx,
            Duration = 3.6,
            Icon = ic
        }
    )
end
function GetGun()
    if game.Players.LocalPlayer.Character then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:FindFirstChild "Ammo" then
                return v
            end
        end
    end
    return nil
end
BulletTracers = true
local Services = {
    Players = game:GetService("Players"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService")
}

local Local = {
    Player = Services.Players.LocalPlayer,
    Mouse = Services.Players.LocalPlayer:GetMouse()
}
local Other = {
    Camera = workspace.CurrentCamera,
    BeamPart = Instance.new("Part", workspace)
}

Other.BeamPart.Name = "BeamPart"
Other.BeamPart.Transparency = 1
local Settings = {
    StartColor = MainAccentColor,
    EndColor = MainAccentColor,
    StartWidth = 3,
    EndWidth = 3,
    ShowImpactPoint = false,
    ImpactTransparency = 0.5,
    ImpactColor = Color3.new(1, 1, 1),
    Time = 1
}
local funcs = {}
Local.Mouse.TargetFilter = Other.BeamPart
function funcs:Beam(v1, v2)
    v2 = Vector3.new(v2.X - 0.1, v2.Y + 0.2, v2.Z)
    local colorSequence =
        ColorSequence.new(
        {
            ColorSequenceKeypoint.new(0, bullet_tracer_color),
            ColorSequenceKeypoint.new(1, bullet_tracer_color)
        }
    )
    local Part = Instance.new("Part", Other.BeamPart)
    Part.Size = Vector3.new(0, 0, 0)
    Part.Massless = true
    Part.Transparency = 1
    Part.CanCollide = false
    Part.Position = v1
    Part.Anchored = true
    local Attachment = Instance.new("Attachment", Part)
    local Part2 = Instance.new("Part", Other.BeamPart)
    Part2.Size = Vector3.new(0, 0, 0)
    Part2.Transparency = 0
    Part2.CanCollide = false
    Part2.Position = v2
    Part2.Anchored = true
    Part2.Material = Enum.Material.ForceField
    Part2.Color = Settings.ImpactColor
    Part2.Massless = true
    local Attachment2 = Instance.new("Attachment", Part2)
    local Beam = Instance.new("Beam", Part)
    Beam.FaceCamera = true
    Beam.Color = colorSequence
    Beam.Attachment0 = Attachment
    Beam.Attachment1 = Attachment2
    Beam.LightEmission = 6
    Beam.LightInfluence = 1
    Beam.Width0 = Settings.StartWidth
    Beam.Width1 = Settings.EndWidth
    Beam.Texture = "http://www.roblox.com/asset/?id=9150663556"
    Beam.TextureSpeed = 2
    Beam.TextureLength = 1
    delay(
        Settings.Time,
        function()
            Part:Destroy()
            Part2:Destroy()
        end
    )
end
spawn(
    function()
        while task.wait(0.5) do
            gun = GetGun()
            if gun then
                LastAmmo = gun.Ammo.Value
                gun.Ammo:GetPropertyChangedSignal("Value"):Connect(
                    function()
                        if BulletTracers and gun.Ammo.Value < LastAmmo then
                            LastAmmo = gun.Ammo.Value
                            if getgenv().Silent.Enabled and Plr ~= nil then
                                if getgenv().Silent.PredictionEnabled then
                                    funcs:Beam(gun.Handle.Position, Plr.Character[getgenv().Silent.Part].Position + (Plr.Character[getgenv().Silent.Part].Velocity * Silent.Prediction / 10))
                                        else
                                    funcs:Beam(gun.Handle.Position, Plr.Character[getgenv().Silent.Part].Position)
                                end
                            else
                                funcs:Beam(gun.Handle.Position, Local.Mouse.hit.p)
                            end
                        end
                    end
                )
            end
        end
    end
)
game:GetService("UserInputService").InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Silent.Key) then
                if getgenv().Silent.Enabled then
                    Locked = not Locked
                    if Locked then
                        Plr = SilentGetClosest()
                        if Silent.Notification then
                            pcall(
                                function()
                                    x(Plr.Character.Humanoid.DisplayName,'rbxthumb://type=AvatarHeadShot&id=' .. Plr.UserId .. '&w=420&h=420')
                                end
                            )
                        end
                    elseif not Locked then
                        if Plr then
                            Plr = nil
                            if Silent.Notification then
                                x("Unlocked!",nil)
                            end
                        end
                    end
                end
            end
        end
    end
)

function AimbotWallCheck(destination, ignore)
    if (getgenv().Aimbot.WallCheck) then
        local Origin = Camera.CFrame.p
        local CheckRay = Ray.new(Origin, destination - Origin)
        local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

function AimbotGetClosest()
    local closestPlayer
    local shortestDistance = getgenv().Aimbot.Radius

    for _, plr in next, Players:GetPlayers() do
        if (plr ~= Client) then
            local Character = plr.Character
            local notKO = Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
            local notGrabbed = Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
            if (Character and Character ~= Client and Character.Humanoid.Health > 1 and notKO and notGrabbed) then
                local ScreenPosition, IsVisibleOnViewPort =
                    Camera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if (IsVisibleOnViewPort and AimbotWallCheck(Character.HumanoidRootPart.Position, {Client, Character})) then
                    local MDistance =
                        (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude
                    if (MDistance < shortestDistance) then
                        closestPlayer = plr
                        shortestDistance = MDistance
                    end
                end
            end
        end
    end
    if (closestPlayer ~= nil) then
        return closestPlayer
    else
        return nil
    end
end

function SilentWallCheck(destination, ignore)
    if (getgenv().Silent.WallCheck) then
        local Origin = Camera.CFrame.p
        local CheckRay = Ray.new(Origin, destination - Origin)
        local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

function SilentGetClosest()
    local closestPlayer
    local shortestDistance = getgenv().Silent.Radius

    for _, plr in next, Players:GetPlayers() do
        if (plr ~= Client) then
            local Character = plr.Character
            local notKO = Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
            local notGrabbed = Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
            if (Character and Character ~= Client and Character.Humanoid.Health > 1 and notKO and notGrabbed) then
                local ScreenPosition, IsVisibleOnViewPort =
                    Camera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if (IsVisibleOnViewPort and SilentWallCheck(Character.HumanoidRootPart.Position, {Client, Character})) then
                    local MDistance =
                        (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude
                    if (MDistance < shortestDistance) then
                        closestPlayer = plr
                        shortestDistance = MDistance
                    end
                end
            end
        end
    end
    if (closestPlayer ~= nil) then
        return closestPlayer
    else
        return nil
    end
end

local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if
            Plr ~= nil and getgenv().Silent.Enabled and getnamecallmethod() == "FireServer" and
                args[2] == "UpdateMousePos"
         then
            if getgenv().Silent.PredictionEnabled then
                args[3] =
                    Plr.Character[getgenv().Silent.Part].Position +
                    (Plr.Character[getgenv().Silent.Part].Velocity * Silent.Prediction / 10)
            else
                args[3] = Plr.Character[getgenv().Silent.Part].Position
            end
            return old(unpack(args))
        end
        return old(...)
    end
)

game:GetService("RunService").Stepped:connect(
    function()
        if getgenv().Mousemoverel.Enabled and MouseVictim ~= nil then
            pcall(
                function()
                    local goal =
                        CC:WorldToScreenPoint(
                        MouseVictim.Character[getgenv().Mousemoverel.Part].Position +
                            (MouseVictim.Character[getgenv().Mousemoverel.Part].Velocity *
                                getgenv().Mousemoverel.Prediction /
                                10)
                    )
                    mousemoverel(goal.X - LocalMouse.X, goal.Y - LocalMouse.Y)
                end
            )
        end

        if getgenv().Mousemoverel.Airshot then
            if MouseVictim.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                getgenv().Partz = "LowerTorso"
            end
        end
        if Misc.Speed then
            if Misc.AntiLock == false then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                    game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Misc.Value
            end
        end

        if Misc.NewSpeed then
            if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                    game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Misc.NewSpeedValue
            end
        end
        if Misc.Spinbot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                CFrame.Angles(0, math.rad(Misc.SpinAngle), 0)
        end
        if Misc.Jitter then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(
                    0,
                    math.rad(Misc.SpinAngle) +
                        math.rad((math.random(1, 2) == 1 and Misc.JitterAngle or -Misc.JitterAngle)),
                    0
                )
        end
        pcall(
            function()
                if BulletTracers  then
                    game:GetService("Workspace").Ignored.BULLET_RAYS:Destroy()
                end
            end
        )
        if Misc.Spin then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * Misc.SpinVelocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                CFrame.Angles(0, math.rad(Misc.SpinAngle2), 0)
        end
        if Misc.Slingshot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, Misc.SlingshotValue, 0)
            wait(0.2)
        end
        if Misc.AntiStomp then
            if game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")["K.O"].Value == true or game.Players.LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT")  then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
        end

        if Misc.AutoReload then
            pcall(
                function()
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                            "Ammo"
                        ).Value == 0
                     then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                            "Reload",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                        )
                    end
                end
            )
        end
        if Misc.AutoStomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
        if Misc.TrashTalk then
            wait(0.6)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "YUN RUNS YOU",
                "All"
            )
            wait(5)
        end
        if Misc.AntiBag then
            pcall(function()
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
            end)
    end
        if Misc.AntiLock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Misc.AntilockSpeed
        end

        if Misc.Confusion then
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
            game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                CFrame.new(math.random(1, 2) == 1 and 2 or -2, 0, 0)
        else
            game.Players.LocalPlayer.Character.Head.CanCollide = true
            game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
            game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
        end
        if Misc.AutoPickCash then
            pcall(
                function()
                    for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                        if v.Name == "MoneyDrop" then
                            local MoneyMagnitude =
                                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                            if MoneyMagnitude < 25 then
                                fireclickdetector(v.ClickDetector)
                            end
                        end
                    end
                end
            )
        end
        if Misc.AutoDropCash then
            game.ReplicatedStorage.MainEvent:FireServer("DropMoney", 10000)
        end
        if Misc.RandomiseToolPos then
            wait()
            pcall(
                function()
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos =
                        Vector3.new(math.random(1, 2) == 1 and 2 or -2, 0, 0)
                end
            )
            wait()
        end

        if getgenv().Silent.RandomPart then
            wait()
            getgenv().Silent.Part = "HumanoidRootPart"
            wait()
            getgenv().Silent.Part = "UpperTorso"
            wait()
            getgenv().Silent.Part = "LowerTorso"
            wait()
        end
        if Misc.AutoEat then
            if game.Players.LocalPlayer.Character.Humanoid.Health < 45 then
                local Current_Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

                if
                    game.Players.LocalPlayer.Character:FindFirstChild("[Chicken]") == nil or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("[Chicken]") == nil
                 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Workspace.Ignored.Shop["[Chicken] - $7"].Head.CFrame
                    wait(0.5)
                    fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
                end
                pcall(
                    function()
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                            game.Players.LocalPlayer.Backpack["[Chicken]"]
                        )
                    end
                )
                pcall(
                    function()
                        game.Players.LocalPlayer.Character["[Chicken]"]:Activate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Deactivate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Activate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Deactivate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Activate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Deactivate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Activate()
                        wait(0.1)
                        game.Players.LocalPlayer.Character["[Chicken]"]:Deactivate()
                    end
                )
            end
        end

        Tracer.Visible = _G.TracerVisible
        Tracer.Color = _G.TracerColor
        Tracer.Thickness = _G.TracerThickness
        Tracer.Transparency = _G.TracerTransparency
        if getgenv().Silent.Airshot == true then
            if Plr ~= nil and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Silent.Part = getgenv().Silent.AirshotPart
            else
                getgenv().Silent.Part = getgenv().Silent.Backup
            end
        end

        if getgenv().Tracer == true and Plr ~= nil and getgenv().Silent.Enabled then
            local TorsoPosition = cc:worldToViewportPoint(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            local Vector, OnScreen = cc:worldToViewportPoint(Plr.Character[getgenv().Silent.Part].Position)
            Tracer.Visible = true
            Tracer.From = Vector2.new(TorsoPosition.X, TorsoPosition.Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        else
            Tracer.Visible = false
        end
        if getgenv().Silent.AutoTarget then
            wait(1.65)
            Plr = SilentGetClosest()
            Locked = true
            wait(1.65)
        end
        if Plr ~= nil and getgenv().Silent.LookAt then
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
            local playerService = game:GetService("Players")
            local client = playerService.LocalPlayer

            local cPos = client.Character.PrimaryPart.Position
            local tPos = Plr.Character:FindFirstChild("HumanoidRootPart").Position + Plr.Character:FindFirstChild('HumanoidRootPart').Velocity * (1.02 / 10)
            local modTPos = Vector3.new(tPos.X, cPos.Y, tPos.Z)
            local newCFrame = CFrame.new(cPos, modTPos)
            client.Character:SetPrimaryPartCFrame(newCFrame)
        else
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
        end

        if (Plr ~= nil and getgenv().Silent.TargetStats) then
            local plrName = tostring(Plr.Name)
            local targetHealth = math.floor(getHealth(plrName))
            local targetArmor = math.floor(getArmor(plrName))
            local targetDist = math.floor(getDistance(Plr))
            local targetWinning = isWinning(plrName)

            -- // Headshot
            targetHeadshot.Image = 'rbxthumb://type=AvatarHeadShot&id=' .. Plr.UserId .. '&w=420&h=420'

            -- // Name
            targetName.Text = plrName
            if (Plr.Character.Humanoid.DisplayName ~= plrName) then
                targetName.Text = Plr.Name .. '[' .. Plr.Character.Humanoid.DisplayName .. ']'
            end

            -- // Health
            healthBarBG.Size = UDim2.new((targetHealth / 100), 0, 0, 17)
            healthText.Text = targetHealth

            -- // Armor
            armorBarBG.Size = UDim2.new((targetArmor / 200), 0, 0, 17)
            armorText.Text = targetArmor

            -- // Distance
            Distance.Text = 'Distance: ' .. targetDist .. " studs"

            -- // Winning
            if (targetWinning) then
                Winning.Text = 'Winning: Yes'
            else
                Winning.Text = 'Winning: No'
            end

            -- // Making the UI visible
            Body.Visible = true
        else
            -- // Making the UI invisible
            Body.Visible = false
        end

        if getgenv().Silent.AutoSetup then
            local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local split = string.split(pingvalue, " ")
            local ping = split[1]

            if tonumber(ping) <= 40 then
                getgenv().Prediction = 1.23
            elseif tonumber(ping) <= 50 then
                getgenv().Silent.Prediction = 1.286942
            elseif tonumber(ping) < 70 then
                getgenv().Silent.Prediction = 1.3031
            elseif tonumber(ping) <= 85 then
                getgenv().Silent.Prediction = 1.30984
            elseif tonumber(ping) <= 110 then
                getgenv().Silent.Prediction = 1.15569420
            elseif tonumber(ping) <= 150 then
                getgenv().Silent.Prediction = 1.165
            elseif tonumber(ping) >= 200 then
                getgenv().Silent.Prediction = 1.18684290
            end
        end
    end
)
getgenv().Mousemoverel = {
    Enabled = false,
    Key = Enum.KeyCode.Q,
    Prediction = 1.165,
    Airshot = false,
    Part = "LowerTorso" -- LowerTorso, HumanoidRootPart,Head,UpperTorso
}

local MouseLocked = false

function MouseGetClosest()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("LowerTorso")
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Mousemoverel.Key) then
                MouseLocked = not MouseLocked
                if getgenv().Mousemoverel.Enabled then
                    if MouseLocked then
                        MouseVictim = MouseGetClosest()
                        x(MouseVictim.Character.Humanoid.DisplayName,'rbxthumb://type=AvatarHeadShot&id=' .. MouseVictim.UserId .. '&w=420&h=420')
                    elseif not MouseLocked then
                        if MouseVictim then
                            MouseVictim = nil
                        end
                        x("Unlocked",nil)
                    end
                end
            end
        end
    end
)
local watermark_module = loadstring(game:HttpGet("https://pastebin.com/raw/UawhBK1u"))()
watermark_module.name = "Yun Rewrite"
watermark_module.accent = Color3.fromRGB(224, 125, 224)
watermark_module.visible = false

local client_info = loadstring(game:HttpGet("https://raw.githubusercontent.com/ao-0/Yun/main/client_info.lua"))()
local script_info = loadstring(game:HttpGet("https://raw.githubusercontent.com/ao-0/Yun/main/script_info.lua"))()
if script_info.status == "disabled" then
    game:Shutdown()
end
if script_info.announcement ~= "" then
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Yun",
            Text = script_info.announcement
        }
    )
end

loadstring(
    game:HttpGet(
        "https://gist.githubusercontent.com/murderspree/84309f4b27fc481923f1a647c204826d/raw/a1134751b9ab8cdae1b4fbc7db9230516d8d0eca/gistfile1.txt"
    )
)()
-- \\ Library Launch
local library = loadstring(game:HttpGet("https://pastebin.com/raw/L7Z56MwH"))()
local actualLib = library:initLibrary()
local lib = actualLib:Load({name = "Yun", sizeX = 425, sizeY = 510, color = Color3.fromRGB(37, 15, 134)})
-- \\ T510
local Aiming = lib:Tab("Aiming")
local Blatant = lib:Tab("Blatant")
local Visuals = lib:Tab("Visuals")

local Miscellaneous = lib:Tab("Miscellaneous")
local SettingsTab = lib:Tab("Settings")
-- \\ Sections
local Settings = SettingsTab:Section {name = "Settings", column = 1}

local Info = SettingsTab:Section {name = "Info", column = 2}

local Camlock = Aiming:Section {name = "Camlock", column = 1}
local Chr = Blatant:Section {name = "Character", column = 1}
local Tool = Blatant:Section {name = "Tool Position", column = 2}
local AA = Blatant:Section {name = "Anti-Aim", column = 2}
local Teleports = Blatant:Section {name = "Teleport", column = 2}
local Target = Aiming:Section {name = "Target", column = 2}
local MouseLock = Aiming:Section {name = "Mouse Lock", column = 1}
local Esp = Visuals:Section {name = "Esp", column = 1}
local World = Visuals:Section {name = "World", column = 2}
local Crosshair = Visuals:Section {name = "Crosshair", column = 1}
local Items = Visuals:Section {name = "Character", column = 1}
local Chams = Visuals:Section {name = "Chams", column = 2}
local chr = Miscellaneous:Section {name = "Character", column = 1}
local Animations = Miscellaneous:Section {name = "Animation", column = 2}
local Fakelag = Miscellaneous:Section {name = "Fake Lag", column = 1}
local skins = Miscellaneous:Section {name = "Skins", column = 1}
local AutoBuy = Miscellaneous:Section {name = "Auto-Buy", column = 2}
local BulletTracer = Visuals:Section {name = "Bullet Tracer", column = 2}

local configs = {}
local configFolder = "epic config folder/" .. game.PlaceId
for i, v in next, listfiles(configFolder) do
    local newconfig = v:gsub(configFolder .. "\\", "")
    newconfig = newconfig:gsub(".cfg", "")
    table.insert(configs, newconfig)
end

-- \\ Configs
local ChosenConfig = Settings:Label("Selected Config: None")

local dropdown =
    Settings:Dropdown {
    Name = "Configs",
    Content = configs,
    flag = "configchosen",
    Callback = function(a)
        ChosenConfig:Set(
            "Selected Config: " .. tostring(a):gsub(".cfg", ""):gsub("epic config folder/" .. game.PlaceId .. "\\", "")
        )
    end
}

local button =
    Settings:Button {
    Name = "Load Config",
    Callback = function()
        actualLib:LoadConfig(actualLib.flags.configchosen)
    end
}

local button =
    Settings:Button {
    Name = "Delete Config",
    Callback = function()
        delfile(configFolder .. "\\" .. actualLib.flags.configchosen .. ".cfg")
        local configs = {}

        for i, v in next, listfiles(configFolder) do
            local newconfig = v:gsub(configFolder .. "\\", "")
            newconfig = newconfig:gsub(".cfg", "")
            table.insert(configs, newconfig)
        end

        dropdown:Refresh(configs)
    end
}

local configName = ""

local box =
    Settings:Box {
    Name = "Config Name",
    Placeholder = "config",
    callback = function(e)
        configName = e
    end
}

local button =
    Settings:Button {
    Name = "Save Config",
    Callback = function()
        actualLib:SaveConfig(configName)
        local configs = {}

        for i, v in next, listfiles(configFolder) do
            local newconfig = v:gsub(configFolder .. "\\", "")
            newconfig = newconfig:gsub(".cfg", "")
            table.insert(configs, newconfig)
        end

        dropdown:Refresh(configs)
    end
}
-- \\ Camlock
Camlock:Toggle {
    Name = "Enabled",
    Flag = "CamlockToggle",
    callback = function(e)
        getgenv().Aimbot.Enabled = e
    end
}

Camlock:Keybind {
    name = "Keybind",
    default = Enum.KeyCode.Q,
    blacklist = {
        Enum.KeyCode.Unknown,
        Enum.KeyCode.W,
        Enum.KeyCode.A,
        Enum.KeyCode.S,
        Enum.KeyCode.D,
        Enum.KeyCode.Slash,
        Enum.KeyCode.Tab,
        Enum.KeyCode.Backspace,
        Enum.KeyCode.Escape
    },
    flag = "CamlockBind",
    callback = function(e)
        getgenv().Aimbot.Keybind = e
    end
}
local PredictionToggle =
    Camlock:Toggle {
    Name = "Prediction Enabled",
    Flag = "PredictionToggle",
    callback = function(e)
        getgenv().Aimbot.PredictionEnabled = e
    end
}

Camlock:Box {
    Name = "Prediction Amount",
    Default = "1.1369420",
    Placeholder = "1.1369420",
    Flag = "PredictionTextboxCamlock",
    callback = function(e)
        getgenv().Aimbot.Prediction = e
    end
}

Camlock:dropdown {
    name = "Hitbox",
    content = {"Head", "Torso", "Penis", "Feet"},
    Default = "Torso",
    multichoice = false,
    callback = function(State)
        if State == "Head" then
            getgenv().Aimbot.Hitbox = "Head"
            getgenv().Aimbot.Backup = "Head"
        elseif State == "Torso" then
            getgenv().Aimbot.Hitbox = "HumanoidRootPart"
            getgenv().Aimbot.Backup = "HumanoidRootPart"
        elseif State == "Penis" then
            getgenv().Aimbot.Hitbox = "LowerTorso"
            getgenv().Aimbot.Backup = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Aimbot.Hitbox = "RightFoot"
            getgenv().Aimbot.Backup = "RightFoot"
        end
    end,
    flag = "CamlockAimPart"
}

Camlock:Toggle {
    Name = "Enable Wall Check",
    Flag = "WallCheckToggle",
    callback = function(e)
        getgenv().Aimbot.WallCheck = e
    end
}

Camlock:Toggle {
    Name = "Enable Notifications",
    Flag = "Notifications",
    callback = function(e)
        getgenv().Aimbot.Notification = e
    end
}
Camlock:dropdown {
    name = "Airshot Hitbox",
    content = {"Head", "Torso", "Penis", "Feet"},
    Default = "Feet",
    multichoice = false,
    callback = function(State)
        if State == "Head" then
            getgenv().Aimbot.AirshotPart = "Head"
        elseif State == "Torso" then
            getgenv().Aimbot.AirshotPart = "HumanoidRootPart"
        elseif State == "Penis" then
            getgenv().Aimbot.AirshotPart = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Aimbot.AirshotPart = "RightFoot"
        end
    end,
    flag = "CamlockAirshotPart"
}
Camlock:Toggle {
    Name = "Anti-Lock Resolver",
    Flag = "AntiLockResolverCamLOCK",
    callback = function(e)
        Resolver = false
        if e then
            getgenv().Aimbot.Prediction = -getgenv().Aimbot.Prediction
        else
            getgenv().Aimbot.Prediction = actualLib.flags.PredictionTextboxCamlock
        end
    end
}

Camlock:Toggle {
    Name = "Smoothing Enabled",
    Flag = "SmoothingToggle",
    callback = function(e)
        getgenv().Aimbot.Smoothing = e
    end
}

Camlock:Box {
    Name = "Smoothness Amount",
    Default = "0.015",
    Placeholder = "0.015",
    Flag = "SmoothnessTextbox",
    callback = function(e)
        getgenv().Aimbot.Smoothness = e
    end
}
-- \\ Target

Target:Toggle {
    Name = "Enabled",
    Flag = "TargetToggle",
    callback = function(e)
        getgenv().Silent.Enabled = e
    end
}

Target:Keybind {
    name = "Keybind",
    default = Enum.KeyCode.Q,
    blacklist = {
        Enum.KeyCode.Unknown,
        Enum.KeyCode.W,
        Enum.KeyCode.A,
        Enum.KeyCode.S,
        Enum.KeyCode.D,
        Enum.KeyCode.Slash,
        Enum.KeyCode.Tab,
        Enum.KeyCode.Backspace,
        Enum.KeyCode.Escape
    },
    flag = "TargetKeybind",
    callback = function(e)
        getgenv().Silent.Key = e
    end
}
Target:dropdown {
    name = "Hitbox",
    content = {"Head", "Torso", "Penis", "Feet"},
    Default = "Torso",
    multichoice = false,
    callback = function(State)
        if State == "Head" then
            getgenv().Silent.Hitbox = "Head"
            getgenv().Silent.Backup = "Head"
        elseif State == "Torso" then
            getgenv().Silent.Hitbox = "HumanoidRootPart"
            getgenv().Silent.Backup = "HumanoidRootPart"
        elseif State == "Penis" then
            getgenv().Silent.Hitbox = "LowerTorso"
            getgenv().Silent.Backup = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Silent.Hitbox = "RightFoot"
            getgenv().Silent.Backup = "RightFoot"
        end
    end,
    flag = "TargetAimPart"
}
Target:Toggle {
    Name = "Random Hitbox",
    Flag = "RandomHitboxToggle",
    callback = function(e)
        getgenv().Silent.RandomPart = e
    end
}

local TargetPredictionToggle =
    Target:Toggle {
    Name = "Prediction Enabled",
    Flag = "PredictionEnabledTarget",
    callback = function(e)
        getgenv().Silent.PredictionEnabled = e
    end
}

Target:Box {
    Name = "Prediction Amount",
    Default = "1.1369420",
    Placeholder = "1.1369420",
    Flag = "PredictionTextbox",
    callback = function(e)
        getgenv().Silent.Prediction = e
    end
}
Target:Toggle {
    Name = "Wall Check",
    Flag = "SilentWallCheckToggle",
    callback = function(e)
        getgenv().Silent.WallCheck = e
    end
}
Target:Toggle {
    Name = "Look At",
    Flag = "LookAtTog",
    callback = function(e)
        getgenv().Silent.LookAt = e
    end
}
Target:ToggleColorPicker {
    Name = "Target Stats",
    Default = Color3.fromRGB(255, 0, 4),
    ToggleFlag = "TargetStatstog",
    ColorPickerFlag = "targetstatsflag",
    ToggleCallback = function(e)
        getgenv().Silent.TargetStats = e
    end,
    ColorPickerCallback = function(xd)
 _G.ArmorBAR = xd
 _G.TOPBAR = xd
_G.healthBarBG = xd
end
}

Target:Toggle {
    Name = "Rainbow Target Stats",
    Flag = "RainbowtargetStats",
    callback = function(e)
        getgenv().Silent.RainbowTargetStats = e
    end
}
Target:Toggle {
    Name = "Auto Target",
    Flag = "SilentAimTog",
    callback = function(e)
        getgenv().Silent.AutoTarget = e
    end
}

Target:Toggle {
    Name = "Auto Setup",
    Flag = "AutoSetupTog",
    callback = function(e)
        getgenv().Silent.AutoSetup = e
    end
}

Target:Toggle {
    Name = "Notifications",
    Flag = "NotificationSilentToggle",
    callback = function(e)
        getgenv().Silent.Notification = e
    end
}

Target:Toggle {
    Name = "Airshot Function",
    Flag = "AirshotFuncTargetToggle",
    callback = function(e)
        getgenv().Silent.Airshot = e
    end
}

Target:dropdown {
    name = "Airshot Hitbox",
    content = {"Head", "Torso", "Penis", "Feet"},
    Default = "Feet",
    multichoice = false,
    callback = function(State)
        if State == "Head" then
            getgenv().Silent.AirshotPart = "Head"
        elseif State == "Torso" then
            getgenv().Silent.AirshotPart = "HumanoidRootPart"
        elseif State == "Penis" then
            getgenv().Silent.AirshotPart = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Silent.AirshotPart = "RightFoot"
        end
    end,
    flag = "SilentAirshotDrop"
}

Target:Toggle {
    Name = "Anti-Lock Resolver",
    Flag = "AntiLockResolverSilent",
    callback = function(e)
        Resolver = false
        if e then
            getgenv().Silent.Prediction = -getgenv().Silent.Prediction
        else
            getgenv().Silent.Prediction = actualLib.flags.PredictionTextbox
        end
    end
}

Target:ToggleColorPicker {
    Name = "Tracer",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "TracerFlag",
    ColorPickerFlag = "TracerColorFlag",
    ToggleCallback = function(e)
        getgenv().Tracer = e
    end,
    ColorPickerCallback = function(xd)
        _G.TracerColor = xd
    end
}
Target:Toggle {
    Name = "Target Strafe",
    Flag = "TRGT_STRAFE",
    callback = function(e)
        target_strafe = e
    end
}
Target:Slider{
	name = "Orbit Speed";
	Default = 50;
	Min = 1;
	Max = 100;
	Flag = "ORBT_SPEED";
	Callback = function(a)
		duration = a/5
	end
}
Target:Slider{
	name = "Distance";
	Default = 6;
	Min = 2;
	Max = 15;
	Flag = "DISTANCE";
	Callback = function(a)
		Circle.Radius = a
	end
}
Target:ColorPicker{
	Name = "Color";
	Default = library.color;
	Flag = "STRAFE_COLOR";
	Callback = function(color)
		Circle.Color = color
	end
}
MouseLock:Toggle {
    Name = "Enabled",
    Flag = "MouseLockToggle",
    callback = function(e)
        getgenv().Mousemoverel.Enabled = e
    end
}

MouseLock:Keybind {
    name = "Keybind",
    default = Enum.KeyCode.Q,
    blacklist = {
        Enum.KeyCode.Unknown,
        Enum.KeyCode.W,
        Enum.KeyCode.A,
        Enum.KeyCode.S,
        Enum.KeyCode.D,
        Enum.KeyCode.Slash,
        Enum.KeyCode.Tab,
        Enum.KeyCode.Backspace,
        Enum.KeyCode.Escape
    },
    flag = "CamlockBind",
    callback = function(e)
        getgenv().Mousemoverel.Key = e
    end
}

MouseLock:Box {
    Name = "Prediction Amount",
    Default = "1.165",
    Placeholder = "1.165",
    Flag = "MouseLockPredictionTextbox",
    callback = function(e)
        getgenv().Mousemoverel.Prediction = e
    end
}

MouseLock:dropdown {
    name = "Hitbox",
    content = {"Head", "Torso", "Penis", "Feet"},
    Default = "Torso",
    multichoice = false,
    callback = function(State)
        if State == "Head" then
            getgenv().Mousemoverel.Part = "Head"
        elseif State == "Torso" then
            getgenv().Mousemoverel.Part = "HumanoidRootPart"
        elseif State == "Penis" then
            getgenv().Mousemoverel.Part = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Mousemoverel.Part = "RightFoot"
        end
    end,
    flag = "MouseLockAimPart"
}

-- \\ Character

Chr:Toggle {
    Name = "SuperHuman",
    flag = "SuperHumanToggle",
    callback = function(e)
        getgenv().es_pedofilo = e
    end
}

Chr:Toggle {
    Name = "Speed",
    flag = "SpeedToggle",
    callback = function(e)
        Misc.NewSpeed = e
    end
}
local NewSpeedValueSlider =
    Chr:Slider {
    Name = "NewSpeed",
    Default = 110,
    Min = 0,
    Max = 350,
    Decimals = 0,
    Flag = "NewSpeedSliderValue",
    callback = function(e)
        Misc.NewSpeedValue = e
    end
}

NewSpeedValueSlider:SetValueTexT("Speed Value: [VALUE]/350")

Chr:togglekeybind {
    name = "CFrame Speed",
    default = Enum.KeyCode.Z,
    keybindflag = "CFrameSpeedToggleKey",
    toggleflag = "CFrameSpeedToggle",
    blacklist = {
        Enum.KeyCode.Unknown,
        Enum.KeyCode.W,
        Enum.KeyCode.A,
        Enum.KeyCode.S,
        Enum.KeyCode.D,
        Enum.KeyCode.Slash,
        Enum.KeyCode.Tab,
        Enum.KeyCode.Backspace,
        Enum.KeyCode.Escape
    },
    togglecallback = function(e)
        Misc.Speed = e
    end
}

local CFrameSpeedValue =
    Chr:Slider {
    Name = "NewSpeed",
    Default = 0.6,
    Min = 0,
    Max = 5,
    Decimals = 2,
    Flag = "CFrameSpeedValueSlider",
    callback = function(e)
        Misc.Value = e
    end
}
CFrameSpeedValue:SetValueTexT("CFrame Speed Value: [VALUE]/5")

Chr:Toggle {
    Name = "Spin",
    Flag = "SpinbotToggle",
    callback = function(e)
        Misc.Spinbot = e
    end
}

Chr:Toggle {
    Name = "Lay Spinbot",
    Flag = "LaySpinbotToggle",
    callback = function(e)
        Misc.Spinbot = e
        if e then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3152378852"
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=3152378852"
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=3152378852"
        else
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = Storage.Idle
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = Storage.Run
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = Storage.Walk
        end
    end
}
local SpinSpeed =
    Chr:Slider {
    Name = "Spin Speed",
    Default = 500,
    Min = 0,
    Max = 500,
    Flag = "SpinSpeedSlider",
    callback = function(e)
        Misc.SpinAngle = e
    end
}
SpinSpeed:SetValueTexT("Spin Speed: [VALUE]/500")

Chr:Toggle {
    Name = "Jitter",
    Flag = "JitterToggle",
    callback = function(e)
        Misc.Jitter = e
    end
}
local JitterAng =
    Chr:Slider {
    Name = "Jitter Angle",
    Default = 500,
    Min = 0,
    Max = 500,
    Flag = "JitterAngle",
    callback = function(e)
        Misc.JitterAngle = e
    end
}

JitterAng:SetValueTexT("Jitter Angle : [VALUE]/500")
-- \\ AA
AA:Toggle {
    Name = "Spin Anti-Aim",
    Flag = "SpinAatoggle",
    callback = function(e)
        Misc.Spin = e
    end
}

local SpinVelocity =
    AA:Slider {
    Name = "Spin Velocity",
    Default = -250,
    Min = -500,
    Max = 500,
    Flag = "SpinVelocitySlider",
    callback = function(e)
        Misc.SpinVelocity = e
    end
}
SpinVelocity:SetValueTexT("Spin Velocity : [VALUE]/500")

local SpinAngle =
    AA:Slider {
    Name = "Spin Angle",
    Default = -250,
    Min = -500,
    Max = 500,
    Flag = "JitterAngle",
    callback = function(e)
        Misc.SpinAngle2 = e
    end
}
SpinAngle:SetValueTexT("Spin Angle : [VALUE]/500")
AA:Toggle {
    Name = "Anti-Lock",
    Flag = "AntiLockToggle",
    callback = function(e)
        Misc.AntiLock = e
    end
}

local AntiLockSpeed =
    AA:Slider {
    Name = "Anti-Lock Speed",
    Default = 0.260319,
    Min = 0.15,
    Max = 0.6,
    Decimals = 1,
    Flag = "AntiLockSpeedSlider",
    callback = function(e)
        Misc.AntilockSpeed = e
    end
}
AntiLockSpeed:SetValueTexT("Anti-Lock Speed : [VALUE]/0.6")
AA:Toggle {
    Name = "SlingShot Anti-Aim",
    Flag = "SlingShotAaToggle",
    callback = function(e)
        Misc.Slingshot = e
    end
}
local SlingShotCframe =
    AA:Slider {
    Name = "Slingshot_CFRAME",
    Default = 0.999,
    Min = 0.1,
    Max = 3,
    Decimals = 5,
    Flag = "SlingShotSlider",
    callback = function(e)
        Misc.SlingshotValue = e
    end
}
SlingShotCframe:SetValueTexT("Slingshot CFrame: [VALUE]/3")

AA:Toggle {
    Name = "Confusion",
    Flag = "ConfusionToggle",
    callback = function(e)
        Misc.Confusion = e
    end
}
-- \\ Returning to Character
Chr:Toggle {
    Name = "Remove Slowdown",
    flag = "RemoveSlowdownToggle",
    callback = function(jjsplcoit)
        repeat
            wait(0.1)
            local player = game.Players.LocalPlayer
            local DeletePart =
                player.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                player.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                player.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
            if DeletePart then
                DeletePart:Destroy()
            end
            if player.Character.BodyEffects.Reload.Value == true then
                player.Character.BodyEffects.Reload.Value = false
            end
        until jjsplcoit == false
    end
}
Chr:Toggle {
    Name = "Remove Jump Cooldown",
    Flag = "NoJumpColDown",
    callback = function(e)
        Misc.RemoveJumpCooldown = e
    end
}
Chr:Toggle {
    Name = "Bunny Hop",
    Flag = "BHopToggle",
    callback = function(e)
        Misc.BunnyHop = e
    end
}

Chr:Toggle {
    Name = "Anti Stomp",
    Flag = "AntiStompToggle",
    callback = function(e)
        Misc.AntiStomp = e
    end
}
--[[ Non blatant
                Chr:Toggle {
                    Name = "Auto Reload",
                    Flag = "AutoReloadToggle",
                    callback = function(e)
                Misc.AutoReload= e
                    end}

                       Chr:Toggle {
                            Name = "Trash Talk",
                            Flag = "TrashTalkToggle",
                            callback = function(e)
                        Misc.TrashTalk= e
                            end}
--]]
Chr:Toggle {
    Name = "Auto Stomp",
    Flag = "AutoStompToggle",
    callback = function(e)
        Misc.AutoStomp = e
    end
}

Chr:Toggle {
    Name = "Anti Bag",
    Flag = "AntiBagToggle",
    callback = function(e)
        Misc.AntiBag = e
    end
}

Chr:Toggle {
    Name = "Auto Pick Up Cash",
    Flag = "AutoPickCashToggle",
    callback = function(e)
        Misc.AutoPickCash = e
    end
}

Chr:Toggle {
    Name = "Auto Drop Cash",
    Flag = "AutoDropCashToggle",
    callback = function(e)
        Misc.AutoDropCash = e
    end
}

Chr:Toggle {
    Name = "Auto Eat",
    Flag = "AutoEatToggle",
    callback = function(e)
        Misc.AutoEat = e
    end
}
-- \\

Tool:Toggle {
    Name = "Randomize Tool Position",
    Flag = "RandomiseToolPosToggle",
    callback = function(e)
        Misc.RandomiseToolPos = e
    end
}
local XAxis =
    Tool:Slider {
    Name = "XaXIS",
    Default = 0,
    Min = 0,
    Max = 25,
    Decimals = 0,
    Flag = "ToolXAxisSlider",
    callback = function(e)
        pcall(
            function()
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(e, 0, 0)
            end
        )
    end
}

XAxis:SetValueTexT("Tool X Axis: [VALUE]/25")
local YAxis =
    Tool:Slider {
    Name = "YAxis",
    Default = 0,
    Min = 0,
    Max = 25,
    Decimals = 0,
    Flag = "ToolYAxis",
    callback = function(e)
        pcall(
            function()
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0, e, 0)
            end
        )
    end
}

YAxis:SetValueTexT("Tool Y Axis: : [VALUE]/25")
local ZAxis =
    Tool:Slider {
    Name = "ZAxis",
    Default = 0,
    Min = 0,
    Max = 25,
    Decimals = 0,
    Flag = "ToolZAxis",
    callback = function(e)
        pcall(
            function()
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0, 0, e)
            end
        )
    end
}

ZAxis:SetValueTexT("Tool Z Axis: : [VALUE]/25")
Tool:Button {
    Name = "Reset Tool Position",
    Callback = function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0, 0, 0)
    end
}
-- \\ Misc Char

chr:Toggle {
    Name = "Auto Reload",
    Flag = "AutoReloadToggle",
    callback = function(e)
        Misc.AutoReload = e
    end
}
chr:Toggle {
    Name = "Trash Talk ",
    Flag = "TrashTalkToggle",
    callback = function(e)
        Misc.TrashTalk = e
    end
}

-- \\ Animation
Animations:dropdown {
    name = "Idle Animation",
    content = {"Borock", "Zombie", "Werewolf", "Ninja", "Ud'zal", "Mage", "Toy"},
    multichoice = false,
    callback = function(State)
        if State == "Borock" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3293641938"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3710131919"
        elseif State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=616158929"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=616160636"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=1083195517"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=1083214717"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=656117400"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=656118341"
        elseif State == "Ud'zal" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=3303162274"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=707742142"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=707855907"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
            game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId =
                "http://www.roblox.com/asset/?id=782841498"
        end
    end
}
Animations:dropdown {
    name = "Walk Animation",
    content = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy"},
    multichoice = false,
    callback = function(State)
        if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616168032"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083178339"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656121766"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707897309"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782843345"
        end
    end
}

Animations:dropdown {
    name = "Run Animation",
    content = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy"},
    multichoice = false,
    callback = function(State)
        if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616163682"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083216690"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656118852"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707861613"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782842708"
        end
    end
}

Animations:dropdown {
    name = "Jump Animation",
    content = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},
    multichoice = false,
    callback = function(State)
        if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616161997"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083218792"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656117878"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707853694"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782847020"
        elseif State == "OldSchool" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=5319841935"
        end
    end
}
Animations:dropdown {
    name = "Fall Animation",
    content = {"Zombie", "Werewolf", "Ninja", "Mage", "Toy", "OldSchool"},
    multichoice = false,
    callback = function(State)
        if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616157476"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083189019"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656115606"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707829716"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782846423"
        elseif State == "OldSchool" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=5319839762"
        end
    end
}
-- \\ Fake Lag

Fakelag:Toggle {
    Name = "Enabled",
    Flag = "FakeLagEnabledToggle",
    callback = function(e)
        FakeLag = false
        getgenv().FakeLagSpeed = 0.000001
        if e then
            FakeLag = true
            while FakeLag == true do
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
                wait(getgenv().FakeLagSpeed)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
                wait()
            end
        else
            FakeLag = false
        end
    end
}
local FakeLagMultiplier =
    Fakelag:Slider {
    Name = "FakeLagSpeed",
    Default = 1,
    Min = 1,
    Max = 10,
    Decimals = 0,
    Flag = "FakeLagSlider",
    callback = function(Value)
        SplitValue = Value / 10
        getgenv().FakeLagSpeed = SplitValue
    end
}

FakeLagMultiplier:SetValueTexT("Multiplier: [VALUE]/10")

-- \\ Skins
skins:dropdown {
    name = "Revolver Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornLilac",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID = "rbxassetid://8117372147"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID = Skins["[Revolver]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID = Skins["[Revolver]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID = Skins["[Revolver]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Revolver]"].Default.TextureID =
                Skins["[Revolver]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Drum Gun Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornLilac",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = "rbxassetid://8117472482"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = Skins["[DrumGun]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = Skins["[DrumGun]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = Skins["[DrumGun]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = Skins["[DrumGun]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID = Skins["[DrumGun]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[DrumGun]"].Default.TextureID =
                Skins["[DrumGun]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "SMG Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornLilac",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = "rbxassetid://8117610299"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID =
                Skins["[SMG]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[SMG]"].Default.TextureID = Skins["[SMG]"]["Battleworn Green"].TextureID
        end
    end
}

skins:dropdown {
    name = "Shotgun Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = "rbxassetid://8117711839"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = Skins["[Shotgun]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = Skins["[Shotgun]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = Skins["[Shotgun]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = Skins["[Shotgun]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID = Skins["[Shotgun]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Shotgun]"].Default.TextureID =
                Skins["[Shotgun]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Tactical Shotgun Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID = "rbxassetid://8574048801"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[TacticalShotgun]"].Default.TextureID =
                Skins["[TacticalShotgun]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "RPG Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = "rbxassetid://8117888557"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID =
                Skins["[RPG]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[RPG]"].Default.TextureID = Skins["[RPG]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "P90 Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = "rbxassetid://8205076879"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID =
                Skins["[P90]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[P90]"].Default.TextureID = Skins["[P90]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "LMG Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = "rbxassetid://8118300778"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID =
                Skins["[LMG]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[LMG]"].Default.TextureID = Skins["[LMG]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Flamethrower Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID = "rbxassetid://8118746973"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Flamethrower]"].Default.TextureID =
                Skins["[Flamethrower]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "DB Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                        "rbxassetid://8118671836"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Double-Barrel SG]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Silencer Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID = "rbxassetid://8118796056"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID = Skins["[Silencer"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID = Skins["[Silencer]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID = Skins["[Silencer]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Silencer]"].Default.TextureID =
                Skins["[Silencer]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Glock Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID = "rbxassetid://8118796056"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID = Skins["[Glock"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID = Skins["[Glock"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Double-Barrel SG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID = Skins["[Glock]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID = Skins["[Glock]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Glock]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Glock]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Glock]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Glock]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[Glock]"].Default.TextureID =
                Skins["[Glock]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "AR Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornLilac",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = "rbxassetid://8118796056"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID =
                Skins["[AR]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[AR]"].Default.TextureID = Skins["[AR]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "Silencer AR Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornRed",
        "BattlewornGreen",
        "BattlewornOrange",
        "BattlewornPink"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID = "rbxassetid://8119037894"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornOrange" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Battleworn Orange"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Battleworn Pink"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[SilencerAR]"].Default.TextureID =
                Skins["[SilencerAR]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "AK-47 Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = "rbxassetid://8165577165"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID =
                Skins["[AK47]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID =
                Skins["[AK47]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID = Skins["[AK47]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID =
                Skins["[AK47]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[AK47]"].Default.TextureID =
                Skins["[AK47]"]["Battleworn Green"].TextureID
        end
    end
}
skins:dropdown {
    name = "AUG Skin",
    content = {
        "Default",
        "GoldGlory",
        "RedDeath",
        "Biohazard",
        "Icey",
        "Future",
        "BlackAndWhite",
        "Danger",
        "BattlewornPink",
        "BattlewornPurple",
        "BattlewornYellish",
        "BattlewornRed",
        "BattlewornGreen"
    },
    multichoice = false,
    callback = function(State)
        if State == "Default" then
            pcall(
                function()
                    game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = "rbxassetid://8118933457"
                end
            )
        elseif State == "GoldGlory" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Gold Glory"].TextureID
        elseif State == "RedDeath" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Red Death"].TextureID
        elseif State == "Biohazard" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Biohazard"].TextureID
        elseif State == "Icey" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Icey"].TextureID
        elseif State == "Future" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Future"].TextureID
        elseif State == "BlackAndWhite" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Black & White"].TextureID
        elseif State == "Danger" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Danger"].TextureID
        elseif State == "BattlewornPink" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Black & White"].TextureID
        elseif State == "BattlewornPurple" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Battleworn Purple"].TextureID
        elseif State == "BattlewornYellish" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID =
                Skins["[AUG]"]["Battleworn Yellowish"].TextureID
        elseif State == "BattlewornRed" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Battleworn Red"].TextureID
        elseif State == "BattlewornLilac" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Battleworn Lilac"].TextureID
        elseif State == "BattlewornGreen" then
            game.Players.LocalPlayer.Backpack["[AUG]"].Default.TextureID = Skins["[AUG]"]["Battleworn Green"].TextureID
        end
    end
}
-- \\ END OF THIS SHIT (TOOK ME 1 AND HALF HOUR TO DO IT)

-- \ World

local SaturationSlider =
    World:Slider {
    Name = "Saturation",
    Default = 0.10000000149012,
    Min = 0,
    Max = 10,
    Decimals = 0,
    Flag = "SaturationSlidere",
    callback = function(e)
        game.Lighting.ColorCorrection.Saturation = tonumber(e)
    end
}

SaturationSlider:SetValueTexT("Saturation: [VALUE]/10")

World:Button {
    Name = "Reset Saturation",
    Callback = function()
        game.Lighting.ColorCorrection.Saturation = 0.10000000149012
    end
}

World:Toggle {
    Name = "Enable Fog",
    Flag = "FogToggle",
    callback = function(e)
        if e then
            game.Lighting.FogEnd = 9999
        else
            game.Lighting.FogEnd = 500
        end
    end
}

local BrightnessSlider =
    World:Slider {
    Name = "Brightness",
    Default = 1,
    Min = 0,
    Max = 50,
    Decimals = 0,
    Flag = "Brightnessslidere",
    callback = function(e)
        game.Lighting.Brightness = tonumber(e)
    end
}

BrightnessSlider:SetValueTexT("Brightness: [VALUE]/50")

World:Button {
    Name = "Reset Brightness",
    Callback = function()
        game.Lighting.Brightness = 1
    end
}

local GlobalShadows =
    World:Toggle {
    Name = "Global Shadows",
    flag = "GlobalShadows",
    callback = function(e)
        game:GetService("Lighting").GlobalShadows = e
    end
}
GlobalShadows:Toggle(true)

World:ColorPicker {
    Name = "Fog Color",
    Default = Color3.fromRGB(0, 0, 0),
    Flag = "FogColorSlider",
    callback = function(e)
        game:GetService("Lighting").FogColor = e
    end
}

World:Button {
    Name = "Reset Fog Color",
    Callback = function()
        game:GetService("Lighting").FogColor = Color3.fromRGB(0, 0, 0)
    end
}

-- \\ Esp
local ESP = loadstring(game:HttpGet("https://pastebin.com/raw/tQjGsdjQ"))()
Esp:ToggleColorPicker {
    Name = "ESP Enabled",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "EspEnabledToggleFlag",
    ColorPickerFlag = "EspEnabledColorPickerFlag",
    ToggleCallback = function(e)
        ESP.Enabled = e
    end,
    ColorPickerCallback = function(xd)
        ESP.Color = xd
    end
}
Esp:Toggle {
    Name = "Enable Boxes",
    flag = "EspBoxesToggle",
    callback = function(e)
        ESP.Boxes = e
    end
}
Esp:Toggle {
    Name = "Enable Tracers",
    flag = "EspTracersToggle",
    callback = function(e)
        ESP.Tracers = e
    end
}
Esp:Toggle {
    Name = "Enable Info",
    flag = "EspInfoToggle",
    callback = function(e)
        ESP.Names = e
    end
}

-- \\ Character
--[[



 RightFootMeshID = game.Players.LocalPlayer.Character.RightFoot.MeshId,
    RightLowerLegMeshID = game.Players.LocalPlayer.Character.RightLowerLeg.MeshId,
    RightUpperLegMeshID = game.Players.LocalPlayer.Character.RightUpperLeg.MeshId,
    RightFootTransparency = game.Players.LocalPlayer.Character.RightUpperLeg.TextureID,
    RightLowerLegTransparency = game.Players.LocalPlayer.Character.RightLowerLeg.Transparency

    --]]
Items:Toggle {
    Name = "Korblox",
    flag = "KorbloxTog",
    callback = function(e)
        if e then
            game.Players.LocalPlayer.Character.RightFoot.MeshId = "http://www.roblox.com/asset/?id=902942093"
            game.Players.LocalPlayer.Character.RightLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942093"
            game.Players.LocalPlayer.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            game.Players.LocalPlayer.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            game.Players.LocalPlayer.Character.RightFoot.Transparency = 1
            game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = 1
        else
            game.Players.LocalPlayer.Character.RightFoot.MeshId = Storage.RightFootMeshID
            game.Players.LocalPlayer.Character.RightLowerLeg.MeshId = Storage.RightLowerLegMeshID
            game.Players.LocalPlayer.Character.RightUpperLeg.MeshId = Storage.RightUpperLegMeshID
            game.Players.LocalPlayer.Character.RightUpperLeg.TextureID = Storage.RightUpperLegMeshID
            game.Players.LocalPlayer.Character.RightFoot.Transparency = Storage.RightFootTransparency
            game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = Storage.RightLowerLegTransparency
        end
    end
}
Items:Toggle {
    Name = "Blizzard Beast Mode",
    flag = "BBMToggle",
    callback = function(e)
        if e then
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://209712379"
                end
            )
        else
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = Storage.Face
                end
            )
        end
    end
}
Items:Toggle {
    Name = "Super Super Happy Face",
    flag = "SSHFToggle",
    callback = function(e)
        if e then
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://494290547"
                end
            )
        else
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = Storage.Face
                end
            )
        end
    end
}
Items:Toggle {
    Name = "Beast Mode",
    flag = "BMToggle",
    callback = function(e)
        if e then
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://127959433"
                end
            )
        else
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = Storage.Face
                end
            )
        end
    end
}
Items:Toggle {
    Name = "Playful Vampire",
    flag = "PVToggle",
    callback = function(e)
        if e then
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://2409281591"
                end
            )
        else
            pcall(
                function()
                    game.Players.LocalPlayer.Character.Head.face.Texture = Storage.Face
                end
            )
        end
    end
}
-- \\ Crosshair

local LeftCrosshair =
    Crosshair:ToggleColorPicker {
    Name = "Left",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "LeftToggleFlag",
    ColorPickerFlag = "LeftCPFlag",
    ToggleCallback = function(e)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.Visible = e
    end,
    ColorPickerCallback = function(xd)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = xd
    end
}
LeftCrosshair:Toggle(true)
local TopCrosshair =
    Crosshair:ToggleColorPicker {
    Name = "Top",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "TopToggleFlag",
    ColorPickerFlag = "TopCpflag",
    ToggleCallback = function(e)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.Visible = e
    end,
    ColorPickerCallback = function(xd)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = xd
    end
}
TopCrosshair:Toggle(true)
local BottomCrosshair =
    Crosshair:ToggleColorPicker {
    Name = "Bottom",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "BottomToggleFlag",
    ColorPickerFlag = "BottomCpFlag",
    ToggleCallback = function(e)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.Visible = e
    end,
    ColorPickerCallback = function(xd)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = xd
    end
}
BottomCrosshair:Toggle(true)
local RightCrosshairToggle =
    Crosshair:ToggleColorPicker {
    Name = "Right",
    Default = Color3.fromRGB(255, 255, 255),
    ToggleFlag = "RightToggleFlag",
    ColorPickerFlag = "RightCpFLAG",
    ToggleCallback = function(e)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.Visible = e
    end,
    ColorPickerCallback = function(xd)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = xd
    end
}
RightCrosshairToggle:Toggle(true)
Crosshair:ColorPicker {
    Name = "Center",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "CenterCP",
    callback = function(e)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = e
    end
}
-- \\ Chams

Chams:Toggle {
    Name = "Player Chams",
    flag = "LocalPlayerChamsToggle",
    callback = function(e)
        if e then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.ForceField
                end
            end
        else
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.Plastic
                end
            end
        end
    end
}

Chams:Toggle {
    Name = "Players Chams",
    flag = "AllChamsTog",
    callback = function(e)
        if e then
            for i, v in pairs(game:GetService("Workspace").Players:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.ForceField
                end
            end
        else
            for i, v in pairs(game:GetService("Workspace").Players:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.Plastic
                end
            end
        end
    end
}
Chams:Toggle {
    Name = "Gun Chams",
    flag = "GunChamsToggle",
    callback = function(e)
        if e then
            pcall(
                function()
                    game.GetService(game, "Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.Material =
                        Enum.Material.ForceField
                end
            )
        else
            pcall(
                function()
                    game.GetService(game, "Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.Material =
                        Enum.Material.Plastic
                end
            )
        end
    end
}
-- \\ Auto Buy
AutoBuy:dropdown {
    name = "Guns",
    content = {"Revolver", "DB", "SMG", "AK-47", "LMG", "Glock", "Silencer", "RPG", "Flamethrower", "Taser"},
    multichoice = false,
    callback = function(State)
        if State == "Revolver" then
            plr = game:GetService "Players".LocalPlayer
            local gunName = "[Revolver] - $1300"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "DB" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "SMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "AK-47" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "LMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Glock" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Silencer" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "RPG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Flamethrower" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Taser" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Taser] - $1250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taser] - $1250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taser] - $1250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}

AutoBuy:dropdown {
    name = "Ammo",
    content = {"Revolver", "DB", "SMG", "AK-47", "LMG", "Glock", "Silencer", "RPG", "Flamethrower"},
    multichoice = false,
    callback = function(State)
        if State == "Revolver" then
            local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "DB" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "SMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "AK-47" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "LMG" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Glock" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Silencer" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "RPG" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Flamethrower" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Armor",
    content = {"Medium Armor", "High-Medium Armor"},
    multichoice = false,
    callback = function(State)
        if State == "Medium Armor" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Medium Armor] - $1600"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1600"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1600"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "High-Medium Armor" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Melees",
    content = {"Knife", "Bat", "Shovel", "Pitchfork", "Stopsign"},
    multichoice = false,
    callback = function(State)
        if State == "Knife" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Knife] - $150"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Knife] - $150"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Knife] - $150"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Bat" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Bat] - $250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Bat] - $250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Bat] - $250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Shovel" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Shovel] - $320"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Shovel] - $320"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Shovel] - $320"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pitchfork" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Pitchfork] - $320"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pitchfork] - $320"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pitchfork] - $320"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Stopsign" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[StopSign] - $300"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[StopSign] - $300"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[StopSign] - $300"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Food",
    content = {"Chicken", "Pizza", "Hotdog", "Taco", "Hamburger", "Donut", "Lettuce"},
    multichoice = false,
    callback = function(State)
        if State == "Chicken" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pizza" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hotdog" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Taco" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hamburger" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Donut" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Lettuce" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Drinks",
    content = {"Cranberry", "Lemonade", "Starblox"},
    multichoice = false,
    callback = function(State)
        if State == "Cranberry" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Cranberry] - $3"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Cranberry] - $3"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Cranberry] - $3"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Lemonade" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Lemonade] - $3"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lemonade] - $3"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lemonade] - $3"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Starblox" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Starblox Latte] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Starblox Latte] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Starblox Latte] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}

AutoBuy:dropdown {
    name = "Bikes",
    content = {"Solo", "Duo"},
    multichoice = false,
    callback = function(State)
        if State == "Solo" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[SoloBike] - $25"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[SoloBike] - $25"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[SoloBike] - $25"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Duo" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[DuoBike] - $75"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[DuoBike] - $75"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[DuoBike] - $75"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Masks",
    content = {"Surgeon", "Riot", "Hockey", "Ninja", "Skull", "Paintball", "Breathing"},
    multichoice = false,
    callback = function(State)
        if State == "Surgeon" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Riot" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Riot Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Riot Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Riot Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hockey" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Hockey Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hockey Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hockey Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Ninja" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Ninja Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Skull" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Skull Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Skull Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Skull Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Paintball" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Paintball Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Breathing" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Breathing Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Breathing Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Breathing Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
AutoBuy:dropdown {
    name = "Phones",
    content = {
        "Gray iPhone",
        "Yellow iPhone",
        "Pink iPhone",
        "Pink Phone",
        "Orange Phone",
        "Old Phone",
        "Original Phone"
    },
    multichoice = false,
    callback = function(State)
        if State == "Gray iPhone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[iPhone] - $600"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhone] - $600"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhone] - $600"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Yellow iPhone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[iPhoneG] - $600"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhoneG] - $600"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhoneG] - $600"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pink iPhone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[iPhoneP] - $600"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhoneP] - $600"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[iPhoneP] - $600"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pink Phone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[PinkPhone] - $400"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[PinkPhone] - $400"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[PinkPhone] - $400"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Orange Phone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Orange Phone] - $400"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Orange Phone] - $400"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Orange Phone] - $400"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Old Phone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Old Phone] - $100"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Old Phone] - $100"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Old Phone] - $100"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Original Phone" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Original Phone] - $50"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Original Phone] - $50"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Original Phone] - $50"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
    end
}
local CurrentCFrame
Teleports:Button {
    Name = "Save Current Position",
    Callback = function()
        CurrentCFrame = game.Players.LocalPlayer.Character.PrimaryPart.Position
    end
}

Teleports:dropdown {
    name = "Teleports",
    content = {
        "Saved Position",
        "Admin Base",
        "Armor",
        "Uphill Mountain",
        "AK Mountain",
        "Playground Mountain",
        "Bank Buildings",
        "Bank Tree",
        "Rev Mountains",
        "Flank Mountains",
        "School",
        "Circus",
        "UFO"
    },
    multichoice = false,
    callback = function(State)
        if State == "Old Position" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CurrentCFrame)
        elseif State == "Admin Base" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-874.903992, -32.6492004, -525.215698)
        elseif State == "Armor" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
        elseif State == "Uphill Mountain" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                485.651947,
                112.5,
                -644.316833,
                -0.998899043,
                1.33881997e-06,
                0.0469136797,
                8.00526664e-07,
                1,
                -1.14929126e-05,
                -0.0469136797,
                -1.14426994e-05,
                -0.998899043
            )
        elseif State == "AK Mountain" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -658.31897,
                80.9998474,
                -778.077576,
                -0.142138869,
                1.05273443e-08,
                -0.989845812,
                4.51260629e-09,
                1,
                9.98731764e-09,
                0.989845812,
                -3.04721426e-09,
                -0.142138869
            )
        elseif State == "Playground Mountain" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -260.836182,
                126.424866,
                -877.783875,
                -0.977067351,
                -1.56508904e-05,
                -0.212922528,
                9.92513264e-07,
                1,
                -7.80593255e-05,
                0.212922528,
                -7.64806027e-05,
                -0.977067351
            )
        elseif State == "Bank Buildings" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -327.583862,
                80.4338913,
                -278.811951,
                -0.0466220938,
                -1.94237373e-08,
                0.998912573,
                1.07243459e-07,
                1,
                2.44502392e-08,
                -0.998912573,
                1.08266761e-07,
                -0.0466220938
            )
        elseif State == "Bank Tree" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -374.538391,
                102.052887,
                -440.20871,
                0.958144963,
                9.24065989e-06,
                -0.286283433,
                -9.98981818e-07,
                1,
                2.89345699e-05,
                0.286283433,
                -2.74375216e-05,
                0.958144963
            )
        elseif State == "Rev Mountains" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -659.053162,
                110.748001,
                -158.224365,
                0.146754071,
                -2.38941595e-08,
                -0.989172995,
                -1.60316838e-09,
                1,
                -2.43935396e-08,
                0.989172995,
                5.16566212e-09,
                0.146754071
            )
        elseif State == "Flank Mountains" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                376.730621,
                130.748001,
                -245.620468,
                0.996583343,
                5.90310174e-06,
                -0.0825867951,
                -1.72590728e-06,
                1,
                5.06508768e-05,
                0.0825867951,
                -5.03353003e-05,
                0.996583343
            )
        elseif State == "School" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -581.790283,
                68.4947281,
                331.046448,
                0.220051467,
                -7.56681329e-05,
                0.975498199,
                -3.96428077e-05,
                0.999999583,
                8.65130132e-05,
                -0.975498199,
                -5.77078645e-05,
                0.22005
            )
        elseif State == "Circus" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                170.510178,
                59.6617432,
                -944.884216,
                0.806685388,
                -8.34191383e-08,
                0.590979934,
                9.47717194e-09,
                1,
                1.28217792e-07,
                -0.590979934,
                -9.78305081e-08,
                0.806685388
            )
        elseif State == "UFO" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                65.1504517,
                138.999954,
                -691.819031,
                -0.935115993,
                -5.9791418e-08,
                -0.354341775,
                -3.10840989e-08,
                1,
                -8.67077574e-08,
                0.354341775,
                -7.0067415e-08,
                -0.935115993
            )
        end
    end
}
Info:Label("Script: Yun")
Info:Label("Build: 2.2.1")
Info:Button {
    Name = "Copy discord invite",
    Callback = function()
        setclipboard(script_info.discord)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Yun",
                Text = "Copied discord invite"
            }
        )
    end
}
Info:Button {
    Name = "Copy support tag",
    Callback = function()
        setclipboard(script_info.support_discord.strucid)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Yun",
                Text = "Copied support discord tag"
            }
        )
    end
}
Info:Label("Game: " .. client_info.game_name)
Info:Label("Status: " .. script_info.status)
local Ping = Info:Label("Ping: 0ms")
local Fps = Info:Label("FPS: 0")
client_info.fps_changed(
    function(fps)
        Fps:Set("FPS: " .. fps)
    end
)
client_info.ping_changed(
    function(ping)
        Ping:Set("Ping: " .. ping .. "ms")
    end
)

-- \\ bullet SHIT
BulletTracer:Toggle {
    Name = "Bullet Tracers",
    Flag = "BULLET_TRACERS",
    Callback = function(a)
        BulletTracers = a
    end
}
BulletTracer:ColorPicker {
    Name = "Bullet Tracer Color",
    Default = library.color,
    Flag = "BULLET_TRACE_COLOR",
    Default = Color3.fromRGB(51, 0, 255),
    Callback = function(color)
        bullet_tracer_color = color
    end
}
-- \\

local WTRMARK = SettingsTab:Section {name = "Watermark", column = 2}
WTRMARK:Toggle {
    Name = "Show Watermark",
    Flag = "Watermark",
    Callback = function(a)
        watermark_module.visible = a
    end
}

WTRMARK:Box {
    Name = "Watermark Name",
    Default = "Yun",
    Placeholder = "name here",
    Type = "string",
    Flag = "WatermarkName",
    Callback = function(a)
        watermark_module.name = a
    end
}
WTRMARK:ColorPicker {
    Name = "Watermark Accent",
    Default = watermark_module.accent,
    Flag = "WTRACCENT",
    Callback = function(color)
        watermark_module.accent = color
    end
}
-- \\
local UiSettings = SettingsTab:Section {name = "UI", column = 1}
UiSettings:ColorPicker {
    Name = "UI Accent",
    Default = Color3.fromRGB(233, 236, 73),
    Flag = "LibraryAccentColorpicker",
    callback = function(e)
        actualLib:SetColor(e)
        setTargetHUDColor(e)
    end
}
 -- \\
local Other = SettingsTab:Section {name = "Other", column = 1}

Other:Button {
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end
}
Other:Button {
    Name = "Kill Roblox",
    Callback = function()
        game:Shutdown()
    end
}

PredictionToggle:Toggle(true)
TargetPredictionToggle:Toggle(true)
-- \\
x("Loaded in "..string.format("%.7f", tostring(tick() - timetoload,nil)))
timetoload = nil