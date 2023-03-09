for i,v in pairs(game:GetService("Workspace").Game:GetDescendants()) do
    if v.Name == "Head" then
        local bill = Instance.new("BillboardGui", v)
        bill.Name = "RoleFinder"
        bill.Size = UDim2.new(0,3,0,3)
        bill.Adornee = v
        bill.AlwaysOnTop = true
        local name = Instance.new("TextLabel", bill)
        name.TextWrapped = false
        name.Text = v.Parent.Parent.Name
        name.Size = UDim2.new(10,0,10,0)
        name.TextYAlignment = "Top"
        name.TextColor3 = Color3.new(255,0,0)
        name.BackgroundTransparency = 1
        task.wait()
    end
end