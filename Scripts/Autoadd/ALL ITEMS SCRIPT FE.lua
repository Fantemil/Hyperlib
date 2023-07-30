for i,v in pairs(game:GetService("Players").LocalPlayer.DataSave.Common.FillOnStart:GetDescendants()) do
    if v.ClassName == "BoolValue" then
        v.Value = true
    end
end