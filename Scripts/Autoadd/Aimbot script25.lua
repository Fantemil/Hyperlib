local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Mthhx/Mthhx/main/Mth/Library'), true))()

OrionLib:MakeNotification({
    Name = "Mthhx Hub ( BETA )",
    Content = "Mthhx: Obrigado por usar nosso script :)",
    Image = "rbxassetid://4483345998",
    Time = 10
})

local aimbotEnabled = false
local espEnabled = false -- Variável para controlar o estado do ESP

local espBoxTable = {} -- Tabela para armazenar objetos ESP

local Window = OrionLib:MakeWindow({Name = "Mthhx Hub (BETA)", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local MainTab = Window:MakeTab({
    Name = "Mth - Inicio",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local aimbotToggle = MainTab:AddToggle({
    Name = "Ativar Aimbot",
    Default = false,
    Callback = function(Value)
        aimbotEnabled = Value
    end
})

local espToggle = MainTab:AddToggle({
    Name = "Ativar ESP",
    Default = false,
    Callback = function(Value)
        espEnabled = Value
        if not Value then
            -- Remova todos os ESPs existentes se o ESP estiver desativado
            for _, espBox in pairs(espBoxTable) do
                espBox:Remove()
            end
            espBoxTable = {} -- Limpe a tabela
        end
    end
})

game:GetService("RunService").RenderStepped:Connect(function()
    if espEnabled then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Team ~= game.Players.LocalPlayer.Team and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                local espBox = espBoxTable[player]
                if espBox then
                    espBox.Size = rootPart.Size + Vector3.new(5, 5, 5) -- Aumente o tamanho da caixa
                    espBox.Adornee = rootPart
                else
                    espBox = Instance.new("BoxHandleAdornment", rootPart)
                    espBoxTable[player] = espBox
                    espBox.Size = rootPart.Size + Vector3.new(5, 5, 5)
                    espBox.AlwaysOnTop = true
                    espBox.ZIndex = 10
                    espBox.Transparency = 0.5
                    espBox.Color3 = Color3.new(0, 0, 1) -- Cor do ESP (azul)
                end
            end
        end

        -- Remova ESPs de jogadores que não estão mais no seu time
        for player, espBox in pairs(espBoxTable) do
            if player.Team == game.Players.LocalPlayer.Team or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
                espBox:Remove()
                espBoxTable[player] = nil
            end
        end
    end

    if aimbotEnabled then
        local closest = getClosestPlayerToCursor("Head")
        if closest and closest.Character and closest.Character:FindFirstChild("HumanoidRootPart") and closest.Team ~= game.Players.LocalPlayer.Team then
            lookAt(workspace.CurrentCamera.CFrame.p, closest.Character:FindFirstChild("Head").Position)
        end
    end
end)

function lookAt(target, eye)
    workspace.CurrentCamera.CFrame = CFrame.new(target, eye)
end

function getClosestPlayerToCursor(trg_part)
    local nearest = nil
    local last = math.huge
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Character and v.Character and v.Character:FindFirstChild(trg_part) then
            if game.Players.LocalPlayer.Character:FindFirstChild(trg_part) then
                local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v.Character[trg_part].Position)
                local AccPos = Vector2.new(ePos.x, ePos.y)
                local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
                local distance = (AccPos - mousePos).magnitude
                if distance < last and vissss and distance < 400 then
                    last = distance
                    nearest = v
                end
            end
        end
    end
    return nearest
end
