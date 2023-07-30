repeat wait() until game:IsLoaded()
if game:GetService("CoreGui"):FindFirstChild("InGameFullscreenTitleBarScreen") then
game:GetService("CoreGui").InGameFullscreenTitleBarScreen.Enabled = false
end