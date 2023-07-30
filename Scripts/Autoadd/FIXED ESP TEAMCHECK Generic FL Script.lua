--[[

Compiled by:
Amarey

Scripts used from:
- Exxen
- mopsfl#4864

UI Lib from:
https://docs.sirius.menu/rayfield

]]--

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ESP_Enabled = false
local TeamCheck_Enabled = true

local HitboxSize = Vector3.new(10,10,10)
local HitboxTransparencyValue = 0.5

function UpdateESP(v)
    if ESP_Enabled == true then
        if v.Name == ("soldier_model") then 
            if TeamCheck_Enabled == true then
                if v:FindFirstChild("friendly_marker") == nil then
                    local ESPHighlighter = Instance.new("Highlight", v)
                else
                    for g,h in pairs(v:GetDescendants()) do
                        if h.Name == ("Highlight") then 
                            h:Destroy()
                        end
                    end
                end
            else
                local ESPHighlighter = Instance.new("Highlight", v)
            end
        end
    end
end

function DeleteESP()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == ("Highlight") then 
            v:Destroy()
        end
    end
end

game.Workspace.ChildAdded:Connect(function(v)
    wait(2)
    UpdateESP(v)
end)

game:GetService("RunService").Heartbeat:Connect(
	function(...)
        for i,v in pairs(game.Workspace:GetChildren()) do
            if TeamCheck_Enabled == true then
                if v.Name == ("soldier_model") then 
                    if v:FindFirstChild("friendly_marker") then
                        for g,h in pairs(v:GetDescendants()) do
                            if h.Name == ("Highlight") then 
                                h:Destroy()
                            end
                        end
                    end
                end
            end
        end
	end
)

if getgenv().c then getgenv().c:Disconnect() end
getgenv().c = game:GetService("RunService").Heartbeat:Connect(function()
    for _,v in pairs(workspace:GetChildren()) do
       if v:IsA("BasePart") and v.Color == Color3.new(1,0,0) then
          v.Transparency = HitboxTransparencyValue
          v.Size = HitboxSize
       end
    end
end)

getgenv().SecureMode = true

local Window = Rayfield:CreateWindow({
   Name = "Generic Frontlines Script",
   LoadingTitle = "Generic Frontlines Script",
   LoadingSubtitle = "Scripts by Exxen, mopsfl; Compiled by Amarey",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "tongyongdeqianxianjiaoben"
   }
})

local Main = Window:CreateTab("Main", 4483362458)

local ESP = Main:CreateSection("ESP")

local ESPToggle = Main:CreateToggle({
   Name = "Toggle ESP",
   CurrentValue = false,
   Flag = "ESP",
   Callback = function(Value)
        if Value == true then
            Value = false
            ESP_Enabled = true
            Rayfield:Notify({
                Title = "ESP Enabled",
                Content = "You should see everyone highlighted on your screen.",
                Duration = 2,
                Image = 4483362458,
            })
            for i,v in pairs(game.Workspace:GetChildren()) do
                UpdateESP(v)
            end
        else
            Value = true
            ESP_Enabled = false
            Rayfield:Notify({
                Title = "ESP Disabled",
                Content = "It will take a while for all Highlights to disappear.",
                Duration = 2,
                Image = 4483362458,
            })
            DeleteESP()
        end
   end,
})

local ESPTeamCheckToggle = Main:CreateToggle({
    Name = "Toggle TeamCheck",
    CurrentValue = true,
    Flag = "TeamCheck",
    Callback = function(Value)
         if Value == true then
             Value = false
             TeamCheck_Enabled = true
             Rayfield:Notify({
                 Title = "TeamCheck Enabled",
                 Content = "Only people who are not in your team will be highlighted.",
                 Duration = 2,
                 Image = 4483362458,
             })
             DeleteESP()
             for i,v in pairs(game.Workspace:GetChildren()) do
                UpdateESP(v)
            end
         else
             Value = true
             TeamCheck_Enabled = false
             Rayfield:Notify({
                 Title = "TeamCheck Disabled",
                 Content = "Everyone will be highlighted.",
                 Duration = 2,
                 Image = 4483362458,
             })
             DeleteESP()
             for i,v in pairs(game.Workspace:GetChildren()) do
                UpdateESP(v)
            end
         end
    end,
 })

local HitboxExpansion = Main:CreateSection("Hitbox Expansion")

local HitboxSizeSlider = Main:CreateSlider({
   Name = "Hitbox Size",
   Range = {1, 30},
   Increment = 1,
   Suffix = "Size",
   CurrentValue = 10,
   Flag = "SizeofHitbox",
   Callback = function(Value)
        HitboxSize = Vector3.new(Value,Value,Value)
   end,
})

local HitboxTransparencySlider = Main:CreateSlider({
   Name = "Hitbox Transparency",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "Transparency",
   CurrentValue = 0.5,
   Flag = "TransparencyofHitbox",
   Callback = function(Value)
        HitboxTransparencyValue = Value
   end,
})