local esp_settings = {
    textsize = 8,
    colour = Color3.new(255, 255, 255) -- Color3 should be created using Color3.new()
}

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel", gui)

gui.Name = "Cracked_esp"
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true
gui.LightInfluence = 0
gui.Size = UDim2.new(1.75, 0, 1.75, 0)

esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
esp.BorderSizePixel = 4
esp.BorderColor3 = esp_settings.colour -- Color3 doesn't need Color3.new()
esp.BorderSizePixel = 0
esp.Font = Enum.Font.GothamSemibold -- Use Enum.Font for font selection
esp.TextSize = esp_settings.textsize
esp.TextColor3 = esp_settings.colour

game:GetService("RunService").RenderStepped:Connect(function()
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer and not player.Character.Head:FindFirstChild("Cracked_esp") then
            esp.Text = "{" .. player.Name .. "}"
            gui:Clone().Parent = player.Character.Head
        end
    end
end)
