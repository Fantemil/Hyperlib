if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
game:GetService("CoreGui").ScreenGui:Destroy()
getgenv().Farming1 = false
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local client = game:GetService("Players").LocalPlayer
local main = library:CreateWindow("Anime Story")
local folder = main:AddFolder('Main')

folder:AddToggle({text = "Auto-Summon", flag = "autofarm", callback = function(state)
if state then
getgenv().Farming1 = true
  while Farming1 == true do
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

fireproximityprompt(workspace.Interactable.Shops.Summoner.Summoner.SummonInteract.ProximityPrompt, 1, true)   
wait(3)
  end
else
getgenv().Farming1 = false
end
end})


main:AddBind({text = "Toggle UI", key = "LeftControl", callback = function() library:Close() end})



library:Init()