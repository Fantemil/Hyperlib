--[[Subscribe to Zaptosis on YouTube for more awesome scripts!
Join our Discord: www.zaptosis.weebly.com
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
███▀▀▀███░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░
█▀░░░███░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
▀░░░███░░▄█▀██▄░▀████████▄██████░░▄██▀██▄░▄██▀██████░░▄██▀███
░░░███░░██░░░██░░░██░░░▀██░░██░░░██▀░░░▀████░░░▀▀░██░░██░░░▀▀
░░███░░░▄▄█████░░░██░░░░██░░██░░░██░░░░░██▀█████▄░██░░▀█████▄
░███░░░▄██░░░██░░░██░░░▄██░░██░░░██▄░░░▄███▄░░░██░██░░█▄░░░██
█████████████▀██▄░██████▀░░░▀████░▀█████▀░██████▀████▄██████▀
░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░▄████▄░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
]]
local s_rs = game:GetService("RunService")
local l_plr = game:GetService("Players").LocalPlayer



local l_humrp = l_plr.Character and l_plr.Character:FindFirstChild("HumanoidRootPart")
local l_hum = l_plr.Character and l_plr.Character:FindFirstChild("Humanoid")

local resp_con = l_plr.CharacterAdded:Connect(function(c) 
    l_humrp = c:WaitForChild("HumanoidRootPart",3)
    l_hum = c:WaitForChild("Humanoid",3)
end)

local function dnec(signal) 
    local s = {}
    for _, con in ipairs(getconnections(signal)) do 
        local func = con.Function
        if (func and islclosure(func)) then
            if (not is_synapse_function(func)) then 
                s[#s+1] = con
                con:Disable() 
            end
        end
    end
    return s
end


local speed_amnt = 5

local ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/rblx/main/ui-stuff/jeff_2.lua'))()
ui:SetColors('streamline')



local w = ui:NewWindow('speed',250,200)

local m = w:NewMenu('speed')
local t = m:NewToggle('toggle speed')
local s = m:NewSlider('speed amount',1,50,5)

t:SetTooltip("toggles speedhacks")
s:SetTooltip("speedhack speed")

m:NewLabel()
m:NewLabel('made by topit')

s.OnValueChanged:Connect(function(v) 
    speed_amnt = v
end)

do
    local a,b
    t.OnToggle:Connect(function(t)
        if (t) then
            a = dnec(l_humrp.Changed)
            b = dnec(l_humrp:GetPropertyChangedSignal("CFrame"))
            
            s_rs:BindToRenderStep("speed",2000,function(dt)
                l_humrp.CFrame += l_hum.MoveDirection*dt*5*speed_amnt
            end)
        else
            s_rs:UnbindFromRenderStep("speed")
            
            for i,v in ipairs(a) do 
                v:Enable()
            end
            for i,v in ipairs(b) do 
                v:Enable()
            end
        end
    end)
end

ui.Exiting:Connect(function() 
    for i,v in ipairs(ui:GetAllToggles()) do 
        if (v:IsEnabled()) then
            v:Disable()
        end
    end
    resp_con:Disconnect()
end)

ui:Ready()