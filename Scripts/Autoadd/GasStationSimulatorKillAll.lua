local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ProximityPrompts", HidePremium = true, SaveConfig = false, ConfigFolder = "garfieldwarez"})

local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})


local keybind1=Tab:AddBind({
 Name = "Fire ProximityPrompt 1",
 Default = "NONE",
 Hold = false,
 Callback = function()
  for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then 
                fireproximityprompt(v,1,true)
            end 
        end
 end    
})


local keybind2=Tab:AddBind({
 Name = "Fire ProximityPrompt 2",
 Default = "NONE",
 Hold = false,
 Callback = function()
  for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then 
                fireproximityprompt(v,1,true)
            end 
        end
 end    
})

local keybind3=Tab:AddBind({
 Name = "Fire ProximityPrompt 3",
 Default = "NONE",
 Hold = false,
 Callback = function()
  for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then 
                fireproximityprompt(v,1,true)
            end 
        end
 end    
})



Tab:AddDropdown({
 Name = "Clear Keybind",
 Default = "keybind1",
 Options = {"keybind1", "keybind2", "keybind3"},
 Callback = function(Value)
  if Value == "keybind1" then
            keybind1:Set("NONE")
            print("OK")
        elseif Value == "keybind2" then
            keybind2:Set("NONE")
            print("OK")
        elseif Value == "keybind3" then
            keybind3:Set("NONE")
            print("OK")
        end
 end    
})