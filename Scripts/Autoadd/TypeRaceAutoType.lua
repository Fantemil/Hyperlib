local sb = workspace.SelectionBox
local vim = game:GetService("VirtualInputManager")
while wait() do
    pcall(function()
        if workspace.SelectionBox.Adornee and workspace.SelectionBox.Adornee ~= workspace.Baseplate then
            local key = (sb.Adornee.SurfaceGui.TextLabel.Text ~= " " and sb.Adornee.SurfaceGui.TextLabel.Text:upper() or "Space")
            vim:SendKeyEvent(true,Enum.KeyCode[key],false,nil)
            wait()
            vim:SendKeyEvent(false,Enum.KeyCode[key],false,nil)
        end
    end)
end