game.Loaded:Wait()

--incase its already disabled
starterthing:SetCore("ResetButtonCallback", true)

--the automation
local starterthing = game:GetService("StarterGui")
while true do
    starterthing.Changed:Wait()
    if starterthing:GetCore("ResetButtonCallback") == false then
        starterthing:SetCore("ResetButtonCallback", true)
    end
end