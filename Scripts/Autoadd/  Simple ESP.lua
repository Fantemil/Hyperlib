local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("CheatX - 3008")
local Home = MainUI.AddPage("Home")

-- ESP
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false

-- notify function
local function notify(message)
   game.StarterGui:SetCore("SendNotification", {
       Title = "CheatX";
       Text = message;
       Icon = "";
       Duration = 5;
   })
end

local function teleportToItem(itemName)
   local donesearch = false
   for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do
       if v.Name == "Root" and v.Parent.Name == itemName then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           donesearch = true
           break
       end
   end
   if donesearch == false then
       notify("Item position not defined")
   end
end

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, {
   Type = "Model",
   Color = Color3.fromRGB(0, 119, 255),
   IsEnabled = "itemESP"
})

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, {
   Type = "Model",
   CustomName = "Employee",
   Color = Color3.fromRGB(255, 0, 4),
   IsEnabled = "employeeToggle"
})

Home.AddButton("Unlock Third Person", function()
   game.Players.LocalPlayer.CameraMaxZoomDistance = 50
   game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)

Home.AddToggle("ESP", false, function(Value)
   ESP.Boxes = Value  
end)

Home.AddToggle("ESP Tracers", false, function(Value)
   ESP.Tracers = Value
end)

Home.AddToggle("ESP Nametags", false, function(Value)
   ESP.Names = Value
end)

Home.AddToggle("Show Players", false, function(Value)
   ESP.Players = Value
end)

Home.AddToggle("Show Employees", false, function(Value)
   ESP.employeeToggle = Value
end)

Home.AddToggle("Show Items", false, function(Value)
   ESP.itemESP = Value
end)

local Teleports = MainUI.AddPage("Teleports")

Teleports.AddButton("Teleport to Hotdog", function()
   teleportToItem("Hotdog")
end)

Teleports.AddButton("Teleport to Pizza", function()
   teleportToItem("Pizza")
end)

Teleports.AddButton("Teleport to Burger", function()
   teleportToItem("Burger")
end)

Teleports.AddButton("Teleport to Medkit", function()
   teleportToItem("Medkit")
end)