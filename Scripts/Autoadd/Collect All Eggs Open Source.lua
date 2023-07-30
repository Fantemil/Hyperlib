local character = game:GetService("Players").LocalPlayer.Character
local eggs = game:GetService("Workspace").Easter.Eggs

local hold_duration = .25

task.spawn(function() 
    while true do 
        if not character then 
            break
        end   
        
        for i, egg in pairs(eggs:GetChildren()) do 
            if egg:FindFirstChild("Egg") and egg.Egg:FindFirstChild("EasterEgg") then 
                character:PivotTo(egg:GetPivot())
                fireproximityprompt(egg.Egg.EasterEgg)
            end   
        end
        
        task.wait(hold_duration)
    end    
end)