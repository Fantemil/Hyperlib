_G.On = true

while _G.On and wait() do
for i,b in pairs(game:GetService("Workspace").Characters:GetDescendants()) do
    if b.ClassName == "BoxHandleAdornment" or b.ClassName == "BillboardGui" then
        b:Destroy()
    end
end

for i,v in pairs(game:GetService("Workspace").Characters:GetDescendants()) do
    if v.ClassName == "MeshPart" or v.Name == "Head" then
        local cham = Instance.new("BoxHandleAdornment", v)
        cham.ZIndex = 10
        cham.Adornee = v
        cham.AlwaysOnTop = true
        cham.Size = v.Size
        cham.Transparency = 0.3
        cham.Color3 = v.Color
        cham.Name = "Cham"
        
        local bill = Instance.new("BillboardGui", v.Parent.Head)
        bill.Name = "NameEsp"
        bill.Size = UDim2.new(1,0,1,0)
        bill.Adornee = v.Parent.Head
        bill.AlwaysOnTop = true
        local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local Mob = v.Parent.Head.Position
        local Dist = (plr.Position - Mob).magnitude
        local name = Instance.new("TextLabel", bill)
        name.TextWrapped = true
        name.Text = v.Parent.Name.." ".."Distance: " .. string.format("%.0f", Dist) .. " " .. "ft"
        name.Size = UDim2.new(50,0,50,0)
        name.TextYAlignment = "Top"
        name.TextColor3 = Color3.new(1,1,1)
        name.BackgroundTransparency = 1
    end
end
end