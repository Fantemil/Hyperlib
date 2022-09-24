-- // VERTIGO Mini GUI Made by Kitzoon#7750 (me) \\
-- // https://www.roblox.com/games/4087265156 \\

if game.PlaceId ~= 4087265156 then return end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

-- yes I copied and pasted from aika's example

local window = library:CreateWindow("VERTIGO Mini GUI") -- Creates the window
local main = window:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

local localPlr = game:GetService("Players").LocalPlayer

getgenv().settings = {
    NoJump = false,
    NoFall = false,
    Walkspeed = 20,
    JumpPower = 50
}

localPlr.CharacterAdded:Connect(function()
    local humanoid = localPlr.Character:WaitForChild("Humanoid")
    
    humanoid.WalkSpeed = getgenv().settings.Walkspeed
    humanoid.JumpPower = getgenv().settings.JumpPower
    
    if getgenv().settings.NoJump then localPlr.Character:WaitForChild("JumpDelay").Disabled = getgenv().settings.NoJump end
end)

main:Label("Made by Kitzoon#7750",{
    TextSize = 18; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
})

main:Button("No Ragdoll",function()
    if localPlr.Character:FindFirstChild("Ragdolled") then localPlr.Character:FindFirstChild("Ragdolled"):Destroy() end
end)

main:Toggle("No Jump Cooldown",function(bool)
    localPlr.Character:FindFirstChild("JumpDelay").Disabled = bool
    getgenv().settings.NoJump = bool
end)

main:Toggle("No Fall Damage",function(bool)
    getgenv().settings.NoFall = bool
end)

main:Slider("Walkspeed",{
    min = 20; -- min value of the slider
    max = 200; -- max value of the slider
    precise = true; -- max 2 decimals
}, function(value)
    localPlr.Character:FindFirstChild("Humanoid").WalkSpeed = value
    getgenv().settings.Walkspeed = value
end)

main:Slider("Jump Power",{
    min = 50; -- min value of the slider
    max = 200; -- max value of the slider
    precise = true; -- max 2 decimals
}, function(value)
    localPlr.Character:FindFirstChild("Humanoid").JumpPower = value
    getgenv().settings.JumpPower = value
end)

main:Slider("Change Time",{
    min = 1; -- min value of the slider
    max = 23; -- max value of the slider
    precise = true; -- max 2 decimals
}, function(value)
    game:GetService("Workspace").GlobalTime.Time.Value = value
end)

local gmt = getrawmetatable(game)
local oldNamecall = gmt.__namecall

setreadonly(gmt, false)

gmt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    
    if tostring(self) == "HURT" and tostring(method) == "FireServer" and getgenv().settings.NoFall then
        return
    end
    
    return oldNamecall(self, ...)
end)

setreadonly(gmt, true)