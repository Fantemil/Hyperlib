--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Load Rayfield library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create the main window
local Window = Rayfield:CreateWindow({
    Name = "[FPS] Gun Grounds FFA ScriptGUI ð§¨",
    LoadingTitle = "Loading DynaHUB",
    LoadingSubtitle = "By lajcior",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Hello"}
    }
})

-- Create the main tab
local MainTab = Window:CreateTab("Main/MostUseful", 4483362458)

-- Notification upon script load
Rayfield:Notify({
    Title = "Notification ð",
    Content = "The script is loaded successfully!",
    Duration = 6.5,
    Image = 4483362458,
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("The user tapped Okay!")
            end
        }
    },
})

-- Aim assist related functions and variables
local aimAssistLoop
local FOVring

local function removeAimAssist()
    if aimAssistLoop then
        aimAssistLoop:Disconnect()
        aimAssistLoop = nil
    end
    if FOVring then
        FOVring:Remove()
        FOVring = nil
    end
    print("Aim assist removed")
end

local function createAimAssist(toggleName, flag, withRedCircle)
    MainTab:CreateToggle({
        Name = toggleName,
        CurrentValue = false,
        Flag = flag,
        Callback = function(Value)
            local teamCheck = false
            local fov = 150
            local smoothing = 1

            local RunService = game:GetService("RunService")
            local UserInputService = game:GetService("UserInputService")

            if withRedCircle and not FOVring then
                FOVring = Drawing.new("Circle")
                FOVring.Visible = true
                FOVring.Thickness = 1.5
                FOVring.Radius = fov
                FOVring.Transparency = 1
                FOVring.Color = Color3.fromRGB(255, 128, 128)
                FOVring.Position = workspace.CurrentCamera.ViewportSize / 2
            end

            local function getClosest(cframe)
                local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
                local target = nil
                local mag = math.huge
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or not teamCheck) then
                        local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
                        if magBuf < mag then
                            mag = magBuf
                            target = v
                        end
                    end
                end
                return target
            end

            if Value then
                aimAssistLoop = RunService.RenderStepped:Connect(function()
                    local pressed = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
                    local localPlay = game.Players.LocalPlayer.Character
                    local cam = workspace.CurrentCamera
                    local zz = workspace.CurrentCamera.ViewportSize / 2

                    if pressed then
                        local curTar = getClosest(cam.CFrame)
                        if curTar then
                            local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
                            ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
                            if (ssHeadPoint - zz).Magnitude < fov then
                                workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
                            end
                        end
                    end

                    if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
                        removeAimAssist()
                    end
                end)
            else
                removeAimAssist()
            end
        end
    })
end

-- Create aim assist toggles
createAimAssist("The Aim assist with red circle", "Toggle1", true)
createAimAssist("The Aim assist without red circle", "Toggle2", false)

-- Speed boost related functions and variables
local function setWalkSpeed(speed)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = speed
    end
    print("Walk speed set to", speed)
end

-- Create speed boost toggle and reset button
MainTab:CreateToggle({
    Name = "Speed Boost (30)",
    CurrentValue = false,
    Flag = "ToggleSpeedBoost",
    Callback = function(Value)
        if Value then
            setWalkSpeed(30)
        else
            setWalkSpeed(16) -- Reset to default speed (assuming default is 16)
        end
    end,
})

MainTab:CreateButton({
    Name = "Reset Walk Speed",
    Callback = function()
        setWalkSpeed(16) -- Reset to default speed (assuming default is 16)
    end,
})

-- Debug message to confirm script execution
print("Script loaded successfully")

local MiscTab = Window:CreateTab("Misc And Info", 4483362458) -- Title, Image

local ColorPicker = MiscTab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})

local Button = MiscTab:CreateButton({
    Name = "If There are bugs report it to my discord",
    Callback = function()
        print("Shrek")
    end,
})

local Button = MiscTab:CreateButton({
    Name = "Discord : elwekadruga",
    Callback = function()
        print("shrek")
    end,
})

local Button = MiscTab:CreateButton({
    Name = "This Script isn't advanced cus its my first shooter game script!",
    Callback = function()
        -- The function that takes place when the button is pressed
    end,
})
