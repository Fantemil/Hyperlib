_G.ON = true

while _G.ON and wait() do
for i,b in pairs(game:GetService("Workspace").NPCs.Animals:GetDescendants()) do
    if b.ClassName == "BoxHandleAdornment" or b.ClassName == "BillboardGui" then
        b:Destroy()
    end
end

for i,v in pairs(game:GetService("Workspace").NPCs.Animals:GetDescendants()) do
    if v.ClassName == "MeshPart" then
        local cham = Instance.new("BoxHandleAdornment", v)
        cham.ZIndex = 10
        cham.Adornee = v
        cham.AlwaysOnTop = true
        cham.Size = v.Size
        cham.Transparency = 0.75
        cham.Color3 = v.Color
        cham.Name = "Cham"
        
        local bill = Instance.new("BillboardGui", v.Parent.Head)
        bill.Name = "NameEsp"
        bill.Size = UDim2.new(30,30,30,30)
        bill.Adornee = v.Parent.Head
        bill.AlwaysOnTop = true
        local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local Mob = v.Parent.Head.Position
        local Dist = (plr.Position - Mob).magnitude
        local name = Instance.new("TextLabel", bill)
        name.TextWrapped = true
        name.Text = v.Parent.Parent.Name.." ".."Distance: " .. string.format("%.0f", Dist) .. " " .. "ft"
        name.Size = UDim2.new(1,0,1,0)
        name.TextYAlignment = "Top"
        name.TextColor3 = Color3.new(1,1,1)
        name.BackgroundTransparency = 1
    end
end
end