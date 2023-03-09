--variables
local me = game.Players.LocalPlayer
local tf = false
local key = Enum.KeyCode.L

--functions
function stamina()
    if me.PlayerGui.GameUI.Stamina.Bar.AbsoluteSize.X < 60 then
        me.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ceilings.Sofa.Seat.CFrame
        wait(10)
        me.Character.Humanoid.Sit = false -- unseat
    end
end

function clean()
    for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
         if v:FindFirstChild'Clean' then
             game:GetService("ReplicatedStorage").Remote:FireServer('Clean', v.Clean)
        end
    end
end

--client sided button trigger
game:GetService("ProximityPromptService").PromptShown:Connect(function(prompt)
    if prompt.Name == 'Scan' then --check
        fireproximityprompt(prompt) --fire
    end
end)

--key input trigger
game:GetService("UserInputService").InputBegan:Connect(function(input, chating)
    if not chating and input.KeyCode == key then
        tf = not tf
    end
end)

--yes
while wait(3) do
    if tf then
        clean()
        stamina()
        me.Character.HumanoidRootPart.CFrame = CFrame.new(1.46752572, 3, -6.53523779, 0.726744831, -4.74023416e-08, 0.68690753, 9.53963948e-08, 1, -3.19205924e-08, -0.68690753, 8.87266296e-08, 0.726744831)
    end
end