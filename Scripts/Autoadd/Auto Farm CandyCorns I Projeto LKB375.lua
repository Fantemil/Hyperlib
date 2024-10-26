local ProjetoLKB = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/UI-Libraries/main/Coasting%20Ui%20Lib/source.lua"))()

local Main = ProjetoLKB:CreateTab("Farm")
local Credits = ProjetoLKB:CreateTab("Credits")
local MainSection = Main:CreateSection("Main")
local ConfigSection = Main:CreateSection("Config")
local GG = Credits:CreateSection("Credits Script")

_G.cdtp = 0.5
_G.cdtp2 = 0.3
_G.Farming = false

GG:CreateLabel("", "...")
GG:CreateLabel("", "Made By Projeto_LKB")
GG:CreateLabel("", "scriptblox.com")



MainSection:CreateToggle("Auto Farm CandyCorns", function(state)
    _G.Farming = state

    if _G.Farming then
        spawn(function() 
       
            while _G.Farming do
                local folder = game.Workspace:FindFirstChild("CandyCorns") 
                if folder then
                    for _, part in pairs(folder:GetChildren()) do
                        if part:IsA("BasePart") then 
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
                            wait(_G.cdtp2) 
                        end
                    end
                end
                wait(_G.cdtp)
            end
        end)
    end
end)

ConfigSection:CreateSlider("Teleport CD 1", 0, 10, _G.cdtp, false, function(value)
    _G.cdtp = value
end)

ConfigSection:CreateSlider("Teleport CD 2", 0, 10, _G.cdtp2, false, function(value)
    _G.cdtp2 = value
end)
