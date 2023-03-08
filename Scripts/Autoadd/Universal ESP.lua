if not game:IsLoaded() then
 game.Loaded:Wait()
end

--//Toggle\\--
getgenv().Toggle = true -- This toggles the esp, turning it to false will turn it off
getgenv().TC = false -- This toggles team check, turning it on will turn on team check
local PlayerName = "DisplayName" -- You can decide if you want the Player's name to be a display name which is "DisplayName", or username which is "Name"

--//Variables\\--
local P = game:GetService("Players")
local LP = P.LocalPlayer

--//Debounce\\--
local DB = false

--//Function\\--
local ESP = function(PLR)
 local ESP = Instance.new("Highlight")

 ESP.Parent = PLR.Character
 ESP.Name = "Totally NOT Esp"
 ESP.Adornee = PLR.Character
 ESP.Archivable = true
 ESP.Enabled = true
 ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
 ESP.FillColor = PLR.TeamColor.Color
 ESP.FillTransparency = 0.5
 ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
 ESP.OutlineTransparency = 0
end

local ESPT = function(PLR)
 --//ESP-Text\\--
 local Icon = Instance.new("BillboardGui")
 local ESPText = Instance.new("TextLabel")

 Icon.Parent = PLR.Character
 Icon.Name = "Icon"
 Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 Icon.Active = true
 Icon.AlwaysOnTop = true
 Icon.ExtentsOffset = Vector3.new(0, 1, 0)
 Icon.LightInfluence = 1.000
 Icon.Size = UDim2.new(0, 800, 0, 50)

 ESPText.Name = "ESP Text"
 ESPText.Parent = Icon
 ESPText.BackgroundColor3 = PLR.TeamColor.Color
 ESPText.BackgroundTransparency = 1.000
 ESPText.Size = UDim2.new(0, 800, 0, 50)
 ESPText.Font = Enum.Font.SciFi
 --ESPText.Text = "Name: "..PLR[PlayerName].." | Health: "..PLR.Character:FindFirstChildOfClass("Humanoid").Health
 ESPText.Text = "NIL"
 ESPText.TextColor3 = PLR.TeamColor.Color
 ESPText.TextSize = 18.000
 ESPText.TextWrapped = true
end

local ESPTF = function(PLR, ICON)
 local ESPText = Instance.new("TextLabel")

 ESPText.Name = "ESP Text"
 ESPText.Parent = ICON
 ESPText.BackgroundColor3 = PLR.TeamColor.Color
 ESPText.BackgroundTransparency = 1.000
 ESPText.Size = UDim2.new(0, 800, 0, 50)
 ESPText.Font = Enum.Font.SciFi
 --ESPText.Text = "Name: "..PLR[PlayerName].." | Health: "..PLR.Character:FindFirstChildOfClass("Humanoid").Health
 ESPText.Text = "NIL"
 ESPText.TextColor3 = PLR.TeamColor.Color
 ESPText.TextSize = 18.000
 ESPText.TextWrapped = true
end
--//Notification\\--
game.StarterGui:SetCore("SendNotification", {
 Title = "Notification",
 Text = "This Script Was Made By Psygen" ,
 Button1 = "Ok",
 Button2 = "Shut Up",
 Duration = math.huge
})

game.StarterGui:SetCore("SendNotification", {
 Title = "Notification",
 Text = "Please Subscribe To Psygen On Youtube" ,
 Button1 = "Ok",
 Button2 = "Shut Up",
 Duration = math.huge
})

--//Loop\\--
while task.wait() do
 if not getgenv().Toggle then
  break
 end
 if DB then 
  return 
 end
 DB = true

 pcall(function()
  for i,v in pairs(P:GetChildren()) do
   if v:IsA("Player") then
    if v ~= game.Players.LocalPlayer then
     if v.Character ~= nil then

      if getgenv().TC == false and v.Character:FindFirstChild("Totally NOT Esp") == nil then
       ESP(v)
      else
       if getgenv().TC == false and v.Character:FindFirstChild("Icon") == nil then
        ESPT(v)
       else
        if getgenv().TC == false and v.Character.Icon:FindFirstChild("ESP Text") == nil then
         ESPTF(v, v.Character.Icon)
        else
         if v.Character:FindFirstChild("Totally NOT Esp").Enabled == false then
          v.Character:FindFirstChild("Totally NOT Esp").Enabled = true
         else
          if v.Character:FindFirstChild("Icon").Enabled == false then
           v.Character:FindFirstChild("Icon").Enabled = true
          else
           if v.Character:FindFirstChild("Icon") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil then
            local pos = math.floor(((game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")).Position - (v.Character:FindFirstChild("HumanoidRootPart")).Position).magnitude)
            -- Credits to Infinite Yield for this part (pos) ^^^^^^
            v.Character.Icon["ESP Text"].Text = "Name: "..v[PlayerName].." | Health: "..v.Character:FindFirstChildOfClass("Humanoid").Health.." | Distance: "..pos
           else
            if v.Character:FindFirstChild("Icon") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then
             v.Character.Icon["ESP Text"].Text = "Name: "..v[PlayerName].." | Health: "..v.Character:FindFirstChildOfClass("Humanoid").Health
            else
             if getgenv().TC == true and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character:FindFirstChild("Totally NOT Esp") == nil then
              ESP(v)
             else
              if getgenv().TC == true and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character:FindFirstChild("Icon") == nil then
               ESPT(v)
              else
               if getgenv().TC == true and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character.Icon:FindFirstChild("ESP Text") == nil then
                ESPTF(v, v.Character.Icon)
               else
                if getgenv().TC == true and v.Character:FindFirstChild("Totally NOT Esp").FillColor ~= v.TeamColor.Color then
                 v.Character:FindFirstChild("Totally NOT Esp").FillColor = v.TeamColor.Color
                else
                 if getgenv().TC == true and v.Character.Icon:FindFirstChild("ESP Text").TextColor3 ~= v.TeamColor.Color then
                  v.Character.Icon["ESP Text"].TextColor3 = v.TeamColor.Color
                 end
                end
               end
              end
             end
            end
           end
          end
         end
        end
       end
      end
     end
    end
   end
  end
 end)

 wait()

 DB = false
end