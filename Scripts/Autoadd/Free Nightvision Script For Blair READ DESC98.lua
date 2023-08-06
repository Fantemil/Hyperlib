-- Locals
local Game_Lighting = game:GetService("Lighting");
local LocalPlayer = game:GetService("Players").LocalPlayer;
local NightVision_Enabled = false;
local NightVision_Child = nil; -- Temp_NightVison

--In-Game
function EnableNightVision()
    NightVision_Enabled = true;
    NightVision_Child = Instance.new("ColorCorrectionEffect");
    NightVision_Child.Parent = Game_Lighting;
    NightVision_Child.Enabled = true;
    game:GetService("TweenService"):Create(NightVision_Child, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
        Brightness = 0.25,
        Contrast = 0.1,
        Saturation = 0,
        TintColor = Color3.fromRGB(76, 255, 0)
    }):Play();
    Game_Lighting.Ambient = Color3.fromRGB(0, 0, 0);
    Game_Lighting.OutdoorAmbient = Color3.fromRGB(86, 86, 86);
    Game_Lighting.ExposureCompensation = 0.25;
end;


-- Capture key presses
game:GetService("UserInputService").InputBegan:connect(function(input, Processed)
    if not Processed then
        if input.KeyCode == Enum.KeyCode.Space then
            if not NightVision_Enabled then
                EnableNightVision();
            else
                NightVision_Enabled = false;
                NightVision_Child:Destroy()
            end
        end
    end
end)