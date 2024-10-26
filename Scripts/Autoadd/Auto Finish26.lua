local Nebula = loadstring(game:HttpGet("https://raw.githubusercontent.com/aaronmansfield5/Nebula-UI/master/lib.lua"))()

local UI = Nebula.init({
    ImageId = "12941020189",  -- The asset ID for the top image/logo
    PrimaryColour = "#3498db"  -- Hex color for UI accents
})
local section = UI.addSection("Auto")
section.addToggle("Enable Auto Finish Obby", false, function(isEnabled)
    while isEnabled do
            for i,v in next, workspace.Obbys:GetChildren() do
                if v.EndTouchPart.EndTouchPart.Transparency == 0 then
                    game.Players.LocalPlayer.Character:PivotTo(v.EndTouchPart.EndTouchPartHitBox.CFrame)
                end
            end
            task.wait(10)
    end
end)