local function sucasdfcess()
   local ESP = loadstring(game:HttpGet("https://16bitdev.xyz/s/newesp.lua"))()
   local options = {
      Toggle = true,
      Players = false,
      Tracers = false,
      Boxes = true,
      Names = true,
      Health = true
   }
   
   ESP:Toggle(options.Toggle)
   ESP.Players = options.Players
   ESP.Tracers = options.Tracers
   ESP.Boxes = options.Boxes
   ESP.Names = options.Names
   ESP.Health = options.Health
   
   local function createObject(obj)
      local newObject = {
          Type = "Model",
          Name = "SCP-096",
          CustomName = "SCP 096",
          Color = Color3.fromRGB(255, 0, 0),
          IsEnabled = "scp096"
      }
      return newObject
   end
   
   ESP:AddObjectListener(game:GetService("Workspace"), createObject())
   
   ESP.scp096 = true
   print("success")
end

local url = "https://16bitdev.xyz/s/newesp.lua"
local success, response = pcall(function()
   return loadstring(game:HttpGet(url))
end)
if success then
   print("Content retrieved from URL")
   sucasdfcess()
else
   game.StarterGui:SetCore("SendNotification", {
Title = "16Bit Development";
Text = "Unable to retreive content from server...";
Icon = "";
Duration = 5;
   })
end