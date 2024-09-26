local GuiService = game:GetService("GuiService")

local UserInputService = game:GetService("UserInputService")

local function GetDevice()
    if (GuiService:IsTenFootInterface()) then
        return "Console"
    elseif (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) then
        local DeviceSize = workspace.CurrentCamera.ViewportSize
        if (DeviceSize.Y >= 600) then
            return "Tablet"
        else
            return "Phone"
        end
    else
        return "Desktop"
    end
end