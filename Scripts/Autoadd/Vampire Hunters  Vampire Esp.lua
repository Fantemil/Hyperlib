for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "ExpressionID" then
        v.Changed:Connect(function(c)
            if v.Value == 3 then
                local bill = Instance.new("BillboardGui", v.Parent.Parent.Head)
                bill.Name = "RoleESP"
                bill.Size = UDim2.new(1,40,1,40)
                bill.Adornee = v.Parent.Parent.Head
                bill.AlwaysOnTop = true
                local name = Instance.new("TextLabel", bill)
                name.TextWrapped = true
                name.Text = "Vampire"
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = "Top"
                name.TextColor3 = Color3.fromRGB(111, 28, 255)
                name.BackgroundTransparency = 1
                wait()
            end
        end)
    end
end