-- This script are Pretty Good you know?
-- This script Improve Headshot Which Can Also Make you aimbot more Dangerous 
-- This script Is Universal so It Support and Work all map
-- Enjoy the script
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "Head Hitbox Expander v7 by Mawin_CK", HidePremium = false, SaveConfig = true, ConfigFolder =
"OrionTest" })

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
  Name = "main Script",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
  Name = "Script"
})

--[[
Name = <string> - The name of the section.
]]
Tab:AddButton({
  Name = "Make Player Head big",
  Callback = function()
    local localplayer = game.Players.LocalPlayer

    game:GetService("RunService").RenderStepped:Connect(function()
      for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= localplayer then
          if v.Character:FindFirstChild("Head") and v ~= localplayer then
            local jk = v.Character:FindFirstChild("Head")
            if jk and jk ~= localplayer and v.Character:FindFirstChild("Humanoid").Health > 0 then
              jk.Size = Vector3.new(5, 5, 5)
              jk.Transparency = 0.5
            end
          end
        end
      end
    end)
  end
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
Tab:AddButton({
  Name = "Make non player head Big(DONT PRESS RAPIDLY OR LAG)",
  Callback = function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local localhead = character:FindFirstChild("Head")

    game:GetService("RunService").RenderStepped:Connect(function()
      for _, v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") and v ~= character then
          local head = v:FindFirstChild("Head")
          if head then
            head.Size = Vector3.new(5, 5, 5)
            head.Transparency = 0.5
            if head.Size ~= Vector3.new(5, 5, 5) then
              head.Size = Vector3.new(5, 5, 5)
            end
          end
        end
      end
    end)
  end
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
