local function Fuckery()
    local folder = game.Workspace:FindFirstChild("Mobs")
    if folder then
        for _, object in ipairs(folder:GetChildren()) do
            if object:IsA("Model") then
                if not object:FindFirstChild("Highlight") then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.fromRGB(255, 255, 255)
                    highlight.Parent = object
                end
            end
        end
    else
        print("Folder not found!")
    end
end

Fuckery()

while true do
    wait(2)
    Fuckery()
end
