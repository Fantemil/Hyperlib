getgenv().Toggled=false
getgenv().KeyBind="X"
getgenv().Delay=0
local UIS=game:GetService'UserInputService'

local function Source()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.CFrame
    local gi = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney
    fireclickdetector(gi)
end
UIS.InputBegan:Connect(function(Key)
    if Key.KeyCode==Enum.KeyCode[getgenv().KeyBind:upper()] and not UIS:GetFocusedTextBox() then
        if getgenv().Toggled then
            getgenv().Toggled=false
            warn'Disabled!'
        elseif not getgenv().Toggled then
            getgenv().Toggled=true
            warn'Enabled!'
            while getgenv().Toggled do
                Source()
                wait(getgenv().Delay)
            end
        end
    end
end)