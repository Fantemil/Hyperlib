
local lplr = game:GetService("Players").LocalPlayer

local function createEsp(position: number, name: string)

    local part = Instance.new("Part")
    part.Parent = game:GetService("Workspace")
    part.Position = position
    part.Name = name
    part.Anchored = true
    part.Size = Vector3.new(1, 1, 1)
    local highlight = Instance.new("Highlight")
    highlight.Parent = part
    highlight.FillColor = Color3.new(0, 0, 0)

    local billboardgui = Instance.new("BillboardGui")
    billboardgui.Parent = part
	billboardgui.AlwaysOnTop = true
	billboardgui.MaxDistance = math.huge
    billboardgui.Adornee = part
    billboardgui.Size = UDim2.new(0, 200, 0, 100)
    billboardgui.Active = true
    billboardgui.Enabled = true
    billboardgui.LightInfluence = 1
    billboardgui.AutoLocalize = true
    local textlabel = Instance.new("TextLabel")
	textlabel.Parent = billboardgui
    textlabel.BackgroundTransparency = 1
    textlabel.Text = "Death Point"
	textlabel.Size = UDim2.new(0, 200, 0, 100)
    textlabel.BorderSizePixel = 0
    textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)

end

lplr.CharacterRemoving:Connect(function(char)
    createEsp(char.HumanoidRootPart.Position, "ALLAH AKBAR")
end)