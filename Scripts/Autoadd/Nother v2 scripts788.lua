getgenv().AutoDetectWeapon = true;

local char = game.Players.LocalPlayer.Character;
local lastWpn = nil;

local function getWpn()
    for _, itm in pairs(char:GetChildren()) do
        if itm:IsA("Tool") then
            return itm.Name;
        end;
    end;
    return nil;
end;

task.spawn(function()
    while getgenv().AutoDetectWeapon do
        local newWpn = getWpn();
        
        if newWpn ~= lastWpn then
            lastWpn = newWpn;
            local notifText = lastWpn or "nil";
            
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Weapon Update",
                    Text = "Current Weapon: " .. notifText,
                    Duration = 5
                });
            end);
        end;

        if lastWpn then
            local wpnObj = char:FindFirstChild(lastWpn);
            if wpnObj then
                pcall(function()
                    wpnObj:GetAttributeChangedSignal("Ammo"):Connect(function()
                        wpnObj:SetAttribute("Ammo", 999);
                    end);
                    
                    wpnObj:SetAttribute("Firerate", 9999);
                    wpnObj:SetAttribute("BulletSpeed", 9999);
                    wpnObj:SetAttribute("Spread", 0);
                end);
            end;
        end;

        task.wait(1);
    end;
end);