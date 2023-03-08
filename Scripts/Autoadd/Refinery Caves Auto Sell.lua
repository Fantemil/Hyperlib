getgenv().autoSellOres = false;

--ignore
getgenv().disableDialog = nil;
getgenv().disableTalkingWeld = nil;

if disableDialog == nil then
   local dialog = game.Players.LocalPlayer.PlayerGui.UserGui.Dialog

   disableDialog = dialog.Changed:Connect(function(property)
       if property == "Visible" then
           if dialog.Visible and autoSellOres then
               dialog.Visible = false
           end
       end
   end)
end

if disableTalkingWeld == nil then
   local lp = game.Players.LocalPlayer
   local wsPlayer = game:GetService("Workspace")[lp.Name]
   
   disableTalkingWeld = wsPlayer.ChildAdded:Connect(function(child)
       if child.Name == "_TalkingWeld" then
           if child.Enabled then
               child.Enabled = false
           end
       end
   end)
end

function AutoSell()
    while task.wait() and autoSellOres do
       if not autoSellOres then break end
       
       local grabables = game:GetService("Workspace").Grabable
       local counter = game:GetService("Workspace").Map.Sellary.Counter.Counter
       
       for i,v in pairs(grabables:GetChildren()) do
           if v.Name == "MaterialPart" and v:FindFirstChild("Owner") then
               if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                   local part = v.Part
                   part.Position = counter.Position
               end
           end
       end
   
       task.wait(0.5)
       workspace.Map.Sellary.Keeper.IPart.Interact:FireServer()
       task.wait(2)
       
       local yesButton = game.Players.LocalPlayer.PlayerGui.UserGui.Dialog.Yes
   
       for i,v in pairs(getconnections(yesButton.MouseButton1Click)) do
           v:Fire()
       end
  end
end


local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
    Title = "Auto Sell Ores ~ By xyba",
    Style = 1,
    SizeX = 250,
    SizeY = 120,
    Theme = "Dark",
})

local Main = UI.New({
   Title = "Main"
})

Main.Toggle({
   Text = "Auto Sell Mined Ores",
   Callback = function(value)
       autoSellOres = value
       AutoSell()
   end,
   Enabled = autoSellOres
})