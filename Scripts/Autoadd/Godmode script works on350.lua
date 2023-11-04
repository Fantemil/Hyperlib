local LocalPlayer = game:GetService("Players").LocalPlayer

local function Invincibility()
    if LocalPlayer.Character then
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v.Name == "hitbox" then
                v:Destroy()
            end
        end
    end
end

while wait(0.5) do
    Invincibility(LocalPlayer)
end