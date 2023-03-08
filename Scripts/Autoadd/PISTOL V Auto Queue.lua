    _G.AutoQueue = true -- the toggle

while wait(2) and _G.AutoQueue do
local fireclick = {"MouseButton1Click", "MouseButton1Down", "Activated"}
for i,v in pairs(fireclick) do
    if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainMenu.Main.Ranked.Text == "WAITING FOR VALID MATCH" then
    -- do nothing
    elseif game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainMenu.Main.Ranked.Text == "PLAY RANKED" then 
    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainMenu.Main.Ranked[v])) do
        v:Fire()
    end
end
end
end