local h = Instance.new("Highlight")
h.Name = "Highlight"
h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
h.FillTransparency = 0.55
h.OutlineTransparency = 0.25

local hc1 = Color3.fromRGB(170, 85, 255)
local hc2 = Color3.new(1, 1, 1)

while task.wait(0.5) do
    for _, v in ipairs(game.workspace:GetChildren()) do
        if v and v:IsA("Model") and v ~= game:GetService("Players").LocalPlayer.Character then
            local hrp = v:FindFirstChild("HumanoidRootPart")
            if hrp and not hrp:FindFirstChild("Highlight") then
                local hc = h:Clone()
                hc.Adornee = v
                hc.Parent = hrp
                
                if v.Name == "Hostile" or v.Name == "TaskForce" then
                    hc.OutlineColor = hc1
                    hc.FillColor = hc1
                else
                    hc.OutlineColor = hc2
                    hc.FillColor = hc2
                end
            end
        end
    end
end
