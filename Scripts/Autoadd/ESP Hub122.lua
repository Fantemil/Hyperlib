local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Impossible Glass Obby", HidePremium = false, SaveConfig = false, ConfigFolder = "GlassObby"})

local segmentSystem = game.Workspace.segmentSystem.Segments
local highlightEnabled = false
local highlights = {}

local function applyHighlighting()
    for i = 1, 55 do
        local segmentName = "Segment" .. i
        local segment = segmentSystem:FindFirstChild(segmentName)

        if segment and segment:FindFirstChildOfClass("Folder") then
            local folder = segment:FindFirstChildOfClass("Folder")
            for _, part in pairs(folder:GetChildren()) do
                local breakableValue = part:FindFirstChild("breakable")
                if breakableValue and breakableValue:IsA("BoolValue") then
                    if highlightEnabled and breakableValue.Value == true then
                        part.BrickColor = BrickColor.new("Bright red")
                        local selectionBox = Instance.new("SelectionBox", part)
                        selectionBox.Adornee = part
                        selectionBox.Color3 = Color3.fromRGB(255, 0, 0)
                        table.insert(highlights, selectionBox)
                    elseif not highlightEnabled then
                        part.BrickColor = BrickColor.new("Institutional white")
                        -- Remove existing highlights
                        for _, highlight in pairs(highlights) do
                            if highlight.Parent then
                                highlight:Destroy()
                            end
                        end
                        highlights = {} -- Clear the table
                    end
                end
            end
        end
    end
end

-- Toggle Button
Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
    :AddToggle({
        Name = "Highlight Tiles",
        Default = false,
        Callback = function(value)
            highlightEnabled = value
            applyHighlighting()
        end
    })

OrionLib:Init()