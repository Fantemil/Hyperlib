--Phantom forces ESP by (Discord) tupsutumppu / (v3rm) PASTER
local Camera = workspace.CurrentCamera
local Players = workspace.Players
local PlayerDrawings = {}
local Functions = {}
local Settings = {
    Team1 = {
        Box = {Enabled = true, Filled = false, Outline = true, Color = Color3.fromRGB(0, 150, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Thickness = 1, Transparency = 1},
        Trace = {Enabled = true, Outline = true, Color = Color3.fromRGB(0, 150, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Thickness = 1, Transparency = 1},
        Weapon = {Enabled = true, Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(0, 255, 30), OutlineColor = Color3.fromRGB(0, 0, 0)},
        Distance = {Enabled = true, Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(0, 181, 21), OutlineColor = Color3.fromRGB(0, 0, 0)}
    },
    Team2 = {
        Box = {Enabled = true, Filled = false, Outline = true, Color = Color3.fromRGB(200, 0, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Thickness = 1, Transparency = 1},
        Trace = {Enabled = true, Outline = true, Color = Color3.fromRGB(200, 0, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Thickness = 1, Transparency = 1},
        Weapon = {Enabled = true, Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(0, 229, 255), OutlineColor = Color3.fromRGB(0, 0, 0)},
        Distance = {Enabled = true, Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(0, 181, 201), OutlineColor = Color3.fromRGB(0, 0, 0)}
    }
}
function Functions:CalculateBox(model)
    local POS = model:GetPivot()
    local TL = Camera:WorldToViewportPoint(POS * CFrame.new(-3, 3, 0).p)
    local TR = Camera:WorldToViewportPoint(POS * CFrame.new(3, 3, 0).p)
    local BL = Camera:WorldToViewportPoint(POS * CFrame.new(-3, -3, 0).p)
    local BR = Camera:WorldToViewportPoint(POS * CFrame.new(3, -3, 0).p)
    return TL, TR, BL, BR
end
function Functions:GetWeapon(model)
    local w = model:FindFirstChildWhichIsA("Model")
    if w then
        local initial = string.split(w.Name, " ")
        local numParts = #initial
        local Weapon = ""
        for i = 1, numParts - 1 do
            Weapon = Weapon .. initial[i]
            if i < numParts - 1 then
                Weapon = Weapon .. " "
            end
        end
        if initial and Weapon then
            return Weapon
        end
    end
    return "No Weapon"
end
function Functions:RemovePlayer(playermodel)
    for i,v in pairs(PlayerDrawings) do
        if v.Character == playermodel then
            table.remove(PlayerDrawings, i)
        end
    end
end
function Functions:UpdateESP()
    for i, v in pairs(PlayerDrawings) do
        local Character = v.Character
        if Character then
            local position = Character:GetPivot().p
            local Teams = Players:GetChildren()
            local screenpos, OnScreen = Camera:WorldToViewportPoint(position)
            local lchar = workspace.Ignore:FindFirstChild("RefPlayer")
            local TeamSettings = (Character.Parent == Teams[1]) and Settings.Team1 or (Character.Parent == Teams[2]) and Settings.Team2
            if OnScreen and lchar and TeamSettings then
                local lposition = lchar:GetPivot().p
                local Distance = math.floor((lposition - position).Magnitude)
                local TL, TR, BL, BR = Functions:CalculateBox(Character)
                local TopTextX, TopTextY = (TL.X + TR.X) * .5, (TL.Y + TR.Y) * .5
                local TracerX, TracerY = (BL.X + BR.X) * .5, (BL.Y + BR.Y) * .5
                local TracerFrom = Vector2.new(Camera.ViewportSize.X * .5, Camera.ViewportSize.Y)

                if TeamSettings.Box.Enabled then
                    v.Drawing.BoxOutline.PointA = TR
                    v.Drawing.BoxOutline.PointB = TL
                    v.Drawing.BoxOutline.PointC = BL
                    v.Drawing.BoxOutline.PointD = BR
                    v.Drawing.BoxOutline.Thickness = TeamSettings.Box.Thickness + 1.5
                    v.Drawing.BoxOutline.Transparency = TeamSettings.Box.Transparency
                    v.Drawing.BoxOutline.Color = TeamSettings.Box.OutlineColor
                    v.Drawing.BoxOutline.Visible = TeamSettings.Box.Outline

                    v.Drawing.Box.PointA = TR
                    v.Drawing.Box.PointB = TL
                    v.Drawing.Box.PointC = BL
                    v.Drawing.Box.PointD = BR
                    v.Drawing.Box.Thickness = TeamSettings.Box.Thickness
                    v.Drawing.Box.Transparency = TeamSettings.Box.Transparency
                    v.Drawing.Box.Color = TeamSettings.Box.Color
                    v.Drawing.Box.Visible = true
                else
                    v.Drawing.BoxOutline.Visible = false
                    v.Drawing.Box.Visible = false
                end

                if TeamSettings.Trace.Enabled then
                    v.Drawing.TraceOutline.Color = TeamSettings.Trace.OutlineColor
                    v.Drawing.TraceOutline.Thickness = TeamSettings.Trace.Thickness + 1.5
                    v.Drawing.TraceOutline.Transparency = TeamSettings.Trace.Transparency
                    v.Drawing.TraceOutline.From = TracerFrom
                    v.Drawing.TraceOutline.To = Vector2.new(TracerX, TracerY)
                    v.Drawing.TraceOutline.Visible = TeamSettings.Trace.Outline

                    v.Drawing.Trace.Color = TeamSettings.Trace.Color
                    v.Drawing.Trace.Thickness = TeamSettings.Trace.Thickness
                    v.Drawing.Trace.Transparency = TeamSettings.Trace.Transparency
                    v.Drawing.Trace.From = TracerFrom
                    v.Drawing.Trace.To = Vector2.new(TracerX, TracerY)
                    v.Drawing.Trace.Visible = true
                else
                    v.Drawing.TraceOutline.Visible = false
                    v.Drawing.Trace.Visible = false
                end

                if TeamSettings.Weapon.Enabled then
                    v.Drawing.Weapon.Text = Functions:GetWeapon(Character)
                    v.Drawing.Weapon.Size = TeamSettings.Weapon.Size
                    v.Drawing.Weapon.Center = true
                    v.Drawing.Weapon.Color = TeamSettings.Weapon.Color
                    v.Drawing.Weapon.Outline = TeamSettings.Weapon.Outline
                    v.Drawing.Weapon.OutlineColor = TeamSettings.Weapon.OutlineColor
                    v.Drawing.Weapon.Position = Vector2.new(TopTextX, ((TopTextY - v.Drawing.Weapon.TextBounds.Y) - (v.Drawing.Distance.TextBounds.Y + 10)))
                    v.Drawing.Weapon.Visible = true
                else
                    v.Drawing.Weapon.Visible = false
                end

                if TeamSettings.Distance.Enabled then
                    v.Drawing.Distance.Text = "[" .. tostring(Distance) .. "]" .. " studs"
                    v.Drawing.Distance.Size = TeamSettings.Weapon.Size
                    v.Drawing.Distance.Center = true
                    v.Drawing.Distance.Color = TeamSettings.Distance.Color
                    v.Drawing.Distance.Outline = TeamSettings.Distance.Outline
                    v.Drawing.Distance.OutlineColor = TeamSettings.Distance.OutlineColor
                    v.Drawing.Distance.Position = Vector2.new(TopTextX, ((TopTextY - v.Drawing.Distance.TextBounds.Y) - 10))
                    v.Drawing.Distance.Visible = true
                else
                    v.Drawing.Distance.Visible = false
                end
            else
                v.Drawing.BoxOutline.Visible = false
                v.Drawing.Box.Visible = false
                v.Drawing.TraceOutline.Visible = false
                v.Drawing.Trace.Visible = false
                v.Drawing.Weapon.Visible = false
                v.Drawing.Distance.Visible = false
            end
        end
    end
end
function Functions:NewDrawing()
    local draw = {
        BoxOutline = Drawing.new("Quad"), {Thickness = 1, Filled = false, Transparency = 1, Color = Color3.fromRGB(255, 255, 255), Visible = false, ZIndex = 1},
        Box = Drawing.new("Quad"), {Thickness = 2, Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 0, 0), Visible = false, ZIndex = 2},
        TraceOutline = Drawing.new("Line"), {Thickness = 2, Transparency = 1, Color = Color3.fromRGB(0, 0, 0), Visible = false},
        Trace = Drawing.new("Line"), {Thickness = 1, Transparency = 1, Color = Color3.fromRGB(255, 255, 255), Visible = false},
        Weapon = Drawing.new("Text"), {Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(255, 255, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Font = 2},
        Distance = Drawing.new("Text"), {Size = 13, Center = true, Outline = true, Color = Color3.fromRGB(255, 255, 255), OutlineColor = Color3.fromRGB(0, 0, 0), Font = 2}
    }
    return draw
end
function Functions:NewPlayer(model)
    local self = setmetatable({}, PlayerDrawings)
    self.Drawing = Functions:NewDrawing()
    self.Character = model
    return self
end
workspace.Players.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Model") and descendant.Parent:IsA("Folder") then
        if not table.find(PlayerDrawings, descendant) then
            table.insert(PlayerDrawings, Functions:NewPlayer(descendant))
        end
    end
end)
workspace.Players.DescendantRemoving:Connect(function(descendant)
    if descendant:IsA("Model") and descendant.Parent:IsA("Folder") then
        if table.find(PlayerDrawings, descendant) then
            Functions:RemovePlayer(descendant)
        end
    end
end)
for i,v in pairs(workspace.Players:GetChildren()) do
    for k,a in pairs(v:GetChildren()) do
        table.insert(PlayerDrawings, Functions:NewPlayer(a))
    end
end
game:GetService("RunService").RenderStepped:Connect(function() Functions:UpdateESP() end)
