
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("", "DarkTheme")
local Tab = Window:NewTab("")
local Section = Tab:NewSection("")
Section:NewButton("get all weapons", "", function()
    local lqG_YI0E_2X = {}

    for _, v in pairs(workspace.Weapons:GetDescendants()) do
        if v.Name == "TouchInterest" and v.ClassName == "TouchTransmitter" then
            table.insert(lqG_YI0E_2X, v.Parent)
        end
    end

    for _, parent in ipairs(lqG_YI0E_2X) do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, parent, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, parent, 1)
    end
end)
