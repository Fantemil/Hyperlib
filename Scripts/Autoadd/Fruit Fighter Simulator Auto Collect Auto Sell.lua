getgenv().autocoin = true
getgenv().value = 1

local players = game:GetService("Players");
local lplr = players.LocalPlayer;
local baseEvent = game:GetService("ReplicatedStorage").Events.BaseEvents;

function AutoCoin(ohString1, ohNumber2, ohString3, ohNumber4)
    baseEvent:FireServer(ohString1, ohNumber2, ohString3, ohNumber4)
end

while true do
    if getgenv().autocoin then
        AutoCoin("C2GS_PlayerGetItem", 1, "1002", getgenv().value) 
        if lplr.PlayerGui["Layer_Menu"]["UI_MainView"].fullTip.Visible == true then
            baseEvent:FireServer("C2GS_TeleportSellJuice")
        else
            lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-12.3750353, 3.80731702, -43.6309395)
        end
    end
    task.wait()
end