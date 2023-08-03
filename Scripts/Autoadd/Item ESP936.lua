while true do
    for _, v in ipairs(workspace.GameStuff.Entities:GetDescendants()) do
        if v.ClassName == "MeshPart" then
            wait(0.1) -- how long it takes to highlight the items (you can change it to whatever you want)
            local lbl = Instance.new("TextLabel") -- doesn't work atm
            lbl.Parent = v
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.TextScaled = true
            lbl.BackgroundTransparency = 1
            lbl.Text = v.Parent.Name
            local highlight = Instance.new("Highlight")
            highlight.Adornee = v
            highlight.Parent = game:GetService("CoreGui")
        end
    end
end
