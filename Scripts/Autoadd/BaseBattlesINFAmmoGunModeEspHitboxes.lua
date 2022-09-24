local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua")))()

local w = library:CreateWindow("Base Battles")

local b = w:CreateFolder("Gun")

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

--no recoil
b:Button(
    "No recoil",
    function()
        for i, v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "damage") then
                v.bloomFactor = 0
                v.noYawRecoil = "true"
                v.recoilCoefficient = 1
            end
        end
    end
)

b:Button(
    "HitBox",
    function()
        while true do
            wait(1)
            getgenv().HeadSize = 15
            getgenv().Disabled = true

            if getgenv().Disabled then
                for i, v in next, game:GetService("Players"):GetPlayers() do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        pcall(
                            function()
                                v.Character.HumanoidRootPart.Name = "xC6M3Vuz7QpsY5nv"
                                v.Character.xC6M3Vuz7QpsY5nv.Size =
                                    Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                                v.Character.xC6M3Vuz7QpsY5nv.Transparency = 0.5
                                v.Character.xC6M3Vuz7QpsY5nv.CanCollide = false
                                v.Character.xC6M3Vuz7QpsY5nv.Color = Color3.fromRGB(210, 44, 255)
                            end
                        )
                    end
                end
            end
        end
    end
)
--Make all guns automatic
b:Button(
    "Automatic",
    function()
        for i, v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "damage") then
                v.automatic = "true"
            end
        end
    end
)
--inf ammo
b:Bind(
    "Infinity ammo",
    Enum.KeyCode.C,
    function()
        for i, v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "ammo") then
                v.ammo = math.huge
            end
        end
    end
)

--Triggerbot
b:Toggle(
    "Triggerbot ",
    function(bool)
        shared.toggle = bool
        if shared.toggle then
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    if mouse.Target.Parent:FindFirstChild("Humanoid") and mouse.Target.Parent.Name ~= player.Name then
                        local target = game:GetService("Players"):FindFirstChild(mouse.Target.Parent.Name)
                        if shared.toggle then
                            mouse1press()
                            wait()
                            mouse1release()
                        end
                    end
                end
            )
        end
    end
)

b:DestroyGui()