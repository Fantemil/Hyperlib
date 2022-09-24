-- https://www.roblox.com/games/5063122755/Overlook-RP

_G.auto_caught = true
_G.auto_relaunch = true
_G.usebait = true

local ps = game:GetService("Players")
local vu = game:GetService("VirtualUser")
local p = ps.LocalPlayer

local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)
local FishingService = Knit.GetService("FishingService")
local FishingController = require(p.PlayerScripts.Knit.Controllers.FishingController)
local FishingGUI = Knit.Controllers.GUI.Fishing

local ShopService = Knit.GetService("ShopService")
local InventoryController = Knit.GetController("Inventory")

setreadonly(math, false)
function math.round(num: NumberValue, numDecimalPlaces: NumberValue)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end
setreadonly(math, true)

p.Idled:connect(function()
 vu:CaptureController()
 vu:ClickButton2(Vector2.new())
end)

function fish()
    if (_G.usebait) then
        FishingService.UseFishBait:Fire()
    end
    vu:CaptureController()
    vu:ClickButton1(Vector2.new(0, 0))
end

local function SellAll()
    local tbl = {}

    for i, v in pairs(InventoryController._itemsByGuid) do
        if (v.Category == "storage") then
            table.insert(tbl, i)
        end
    end

    ShopService.OnSellCart:Fire(tbl)

    return true
end

fish()

if (not game:GetService("CoreGui"):FindFirstChild("AUTOFARM_COZ")) then
    oStartFishing = hookfunction(FishingGUI.StartFishing, function(self,...)
        local args = {...}

        spawn(function()
            while true do
                if (math.round(FishingGUI.ScreenGui.Frame.Bin.Bobber.Position.X.Scale, 1) == 0.5 and _G.auto_caught) then
                    FishingGUI:StopFishing(args[2])
                    break
                end
                game:GetService("RunService").RenderStepped:Wait()
            end
        end)

        return oStartFishing(self, ...)
    end)

    oCreateDialogue = hookfunction(Knit.Controllers.GUI.DialogueNew.CreateDialogue, function(self, ...)
        syn.set_thread_identity(3);
        local args = {...}

        if (type(args[3]) == "table" and type(args[3][1]) == "table") then
            if (args[3][1].name == "Okay!" and _G.auto_relaunch) then
                args[3][1].callback()
                wait(2.5)
                fish()
                return;
            end
        end

        return oCreateDialogue(self, ...)
    end)
end


print("auto_caught: " .. tostring(_G.auto_caught))
print("auto_relaunch: " .. tostring(_G.auto_relaunch))
print("usebait: " .. tostring(_G.usebait))

local function UICreate(cls,props)
 local inst = Instance.new(cls)

 for i,v in pairs(props) do 
        if i == "ZIndex" then
   inst[i] = v+10000000
  else 
   inst[i] = v
  end
 end

 return inst
end

if (game:GetService("CoreGui"):FindFirstChild("AUTOFARM_COZ")) then
    game:GetService("CoreGui"):FindFirstChild("AUTOFARM_COZ"):Destroy()
end

local ScreenGui = UICreate("ScreenGui", {
    Name = "AUTOFARM_COZ",
    Parent = game:GetService("CoreGui"),
    ResetOnSpawn = false,
})

local Catch = UICreate("TextButton", {
    Name = "TextButton",
    Parent = ScreenGui,
    AnchorPoint = Vector2.new(1, 1),
    BackgroundColor3 = _G.auto_caught and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0),
    BackgroundTransparency = 0.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 1,
    Position = UDim2.new(1, 0, 1, 0),
    Size = UDim2.new(0, 100, 0, 50),
    Font = Enum.Font.SourceSans,
    Text = "Auto Catch",
    TextColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 14.000,
    TextWrapped = true,
    AutoButtonColor = false,
    ZIndex = 1,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
    Parent = ScreenGui
})

local Relaunch = UICreate("TextButton", {
    Name = "TextButton",
    Parent = ScreenGui,
    AnchorPoint = Vector2.new(1, 1),
    BackgroundColor3 = _G.auto_relaunch and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0),
    BackgroundTransparency = 0.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 1,
    Position = UDim2.new(1, -101, 1, 0),
    Size = UDim2.new(0, 100, 0, 50),
    Font = Enum.Font.SourceSans,
    Text = "Auto Relaunch",
    TextColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 14.000,
    TextWrapped = true,
    AutoButtonColor = false,
    ZIndex = 1,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
    Parent = ScreenGui
})

local Bait = UICreate("TextButton", {
    Name = "TextButton",
    Parent = ScreenGui,
    AnchorPoint = Vector2.new(1, 1),
    BackgroundColor3 = _G.usebait and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0),
    BackgroundTransparency = 0.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 1,
    Position = UDim2.new(1, -202, 1, 0),
    Size = UDim2.new(0, 100, 0, 50),
    Font = Enum.Font.SourceSans,
    Text = "Use Bait",
    TextColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 14.000,
    TextWrapped = true,
    AutoButtonColor = false,
    ZIndex = 1,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
    Parent = ScreenGui
})

Bait.MouseButton1Click:connect(function()
    _G.usebait = not _G.usebait
    print("usebait: " .. tostring(_G.usebait))
    Bait.BackgroundColor3 = _G.usebait and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
end)

Relaunch.MouseButton1Click:connect(function()
    _G.auto_relaunch = not _G.auto_relaunch
    print("auto_relaunch: " .. tostring(_G.auto_relaunch))
    Relaunch.BackgroundColor3 = _G.auto_relaunch and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
end)

Catch.MouseButton1Click:connect(function()
    _G.auto_caught = not _G.auto_caught
    print("auto_caught: " .. tostring(_G.auto_caught))
    Catch.BackgroundColor3 = _G.auto_caught and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
end)

while ScreenGui ~= nil and ScreenGui.Parent ~= nil do
    SellAll()
    wait(300)
end