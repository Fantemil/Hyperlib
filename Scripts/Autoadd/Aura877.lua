local workspace = game:GetService("Workspace")
local speed = 0.01
local range = 7
local PartS = Vector3.new(range * 2, 1, range * 2)
local PartC = Color3.fromRGB(255, 0, 0)
local PartT = 0.5
local killAura = true

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local function Cpart(character)
    local rootPart = character:WaitForChild("HumanoidRootPart")
    
    local part = Instance.new("Part")
    part.Size = PartS
    part.Color = PartC
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = PartT
    part.Parent = workspace

    while wait(speed) do
        if not character or not character.Parent then
            break
        end
        
        if killAura then
            part.CFrame = rootPart.CFrame * CFrame.new(0, -3.5, 0)

            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer and player.Character then
                    local targetRoot = player.Character:FindFirstChild("HumanoidRootPart")
                    if targetRoot and (rootPart.Position - targetRoot.Position).Magnitude <= range then
                        local args = {
                            [1] = player
                        }
                        game:GetService("ReplicatedStorage").Remotes.Hit:FireServer(unpack(args))
                    end
                end
            end
        end
    end

    part:Destroy()
end

localPlayer.CharacterAdded:Connect(function(character)
    Cpart(character)
end)

if localPlayer.Character then
    Cpart(localPlayer.Character)
end

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Kill Aura";
    Text = "Join The Discord For A Full Version With Other Features";
    Duration = 8;
})

setclipboard("https://discord.gg/x8VMmm7SFA")
