-- Wow Open Source ? yes its fun to make script so i publish on game that i like or is fine  lobox920#9889


local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))()
ESP:Toggle(true)
ESP.Players = true 
ESP.Tracers = false 
ESP.Boxes = false 
ESP.Names = false



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Chicago Remastered x SharScript", HidePremium = true, SaveConfig = true, ConfigFolder = "Shar Script"})

local Tab = Window:MakeTab({
 Name = "Player",
 Icon = "",
 PremiumOnly = false
})

Tab:AddSlider({
 Name = "WalkSpeed",
 Min = 16,
 Max = 250,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Speed",
 Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
 end    
})



Tab:AddSlider({
 Name = "JumPower",
 Min = 6,
 Max = 50,
 Default = 6,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "JumPower",
 Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.JumpHeight = (Value)
 end    
})

Tab:AddButton({
 Name = "Sit",
 Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
   end    
})


Tab:AddButton({
 Name = "AntiAFK (Anti AFK Kick)",
 Callback = function()
  OrionLib:MakeNotification({
   Name = "AntiAFK",
   Content = "Succesiful Acitved AntiAFK!",
   Time = 5
})
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end    
})



local Tab = Window:MakeTab({
 Name = "Teleport",
 Icon = "",
 PremiumOnly = false
})

Tab:AddLabel("Bank")

Tab:AddButton({
 Name = "Goto Bank Door",
 Callback = function()
       game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-246, 5, 94)}):Play()
   end    
})

Tab:AddButton({
 Name = "Goto Bank Vault",
 Callback = function()
           game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-220, -6, 117)}):Play()
   end    
})

Tab:AddLabel("Jewellry")

Tab:AddButton({
 Name = "Goto jewelry store",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(603, 3, -201)}):Play()
 end    
})

Tab:AddLabel("Shop")


Tab:AddButton({
 Name = "Goto Gun Shop",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(117, 3, 47)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Blox-N-Out",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(588, 4, -75)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto The Pitch",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(709, 3, -96)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Bike Shop",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(743, 3, -208)}):Play()
 end    
})

Tab:AddLabel("Dealer")

Tab:AddButton({
 Name = "Goto Bank Dealer NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-9, -9, -26)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Bike Dealer NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(742, 1, -215)}):Play()
 end    
})


Tab:AddLabel("NPC")

Tab:AddButton({
 Name = "Goto Gun Store NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(122, 3, 47)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Deli NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-68, 3, 59)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto 2nd Deli NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234, 3, -181)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto 7/11 Shp NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-61, 3, -194)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Gas Station NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338, 3, -40)}):Play()
 end    
})

Tab:AddButton({
 Name = "Goto Blox General NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-68, 3, 59)}):Play()
 end    
})
Tab:AddButton({
 Name = "Goto In-N-Out NPC",
 Callback = function()
     game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 7, -84)}):Play()
 end    
})

local Tab = Window:MakeTab({
 Name = "Money",
 Icon = "",
 PremiumOnly = false
})

Tab:AddLabel("Farm")





Tab:AddToggle({
 Name = "AutoFarm (All Job) Recommended",
 Default = false,
 Callback = function(Value)
        getgenv().AutoFarmGlobal = (Value)
 while AutoFarmGlobal do
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-81, 6, 65)}):Play();
  wait(1)
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
  
  wait(0.5)
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-76, 13, 56)}):Play();
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
  
  wait(2)
  
  -------
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-250, 13, -43)}):Play();
  wait(0.5)
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
  wait(5)
  -------
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(600, 4, -96)}):Play();
  
  wait(1)
  
  fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
  
  wait(5)
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 4, -86)}):Play();
  
  wait(1)
  end
end    
})

Tab:AddToggle({
 Name = "AutoFarm (Bodega)",
 Default = false,
 Callback = function(Value)
        getgenv().AutoBodega = (Value)
 while AutoBodega do 
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-81, 6, 65)}):Play();
  wait(1)
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
  
  wait(0.5)
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-76, 13, 56)}):Play();
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
  
  wait(1)
  end
end    
})

Tab:AddToggle({
 Name = "AutoFarm (FrieWork)",
 Default = false,
 Callback = function(Value)
        getgenv().AutoFrieWork = (Value)
 while AutoFrieWork do
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(600, 4, -96)}):Play();
  
  wait(1)
  
  fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
  
  wait(5)
  
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 4, -86)}):Play();
  
  wait(1)
  end
end    
})

Tab:AddToggle({
 Name = "AutoFarm (Bartender)",
 Default = false,
 Callback = function(Value)
        getgenv().AutoBartender = (Value)
 while AutoBartender do 
  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-250, 13, -43)}):Play();
  wait(0.5)
  
  fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
  wait(5)
 end
end    
})

Tab:AddLabel("ATM")

Tab:AddTextbox({
 Name = "Deposite Custom Amount",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
  local ohString1 = "Deposit"
  local ohString2 = Value
  game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
 end   
})

Tab:AddTextbox({
 Name = "WithDraw Custom Amount",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
  local ohString1 = "Withdraw"
  local ohString2 = Value
  game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
 end   
})


Tab:AddButton({
 Name = "Open ATM",
 Callback = function()
 game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector.MaxActivationDistance = 999999986991104
 fireclickdetector(game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector, 999999986991104)
end    
})

Tab:AddButton({
 Name = "Deposit All Money",
 Callback = function()
  mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
  local ohString1 = "Deposit"
  local ohString2 = mycash

game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
end
})

Tab:AddButton({
 Name = "WithDraw All Money",
 Callback = function()
  mybank = game.Players.LocalPlayer.Data.Stats.Bank.Value
  
local ohString1 = "Withdraw"
  
local ohString2 = mybank
  
game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
 end    
})


Tab:AddButton({
 Name = "Fake Money",
 Callback = function()
    game.Players.LocalPlayer.Data.Stats.Cash.Value = 10000000000 
    game.Players.LocalPlayer.Data.Stats.Bank.Value = 10000000000 
   end    
})

Tab:AddButton({
 Name = "Actualise Money",
 Callback = function()
  local ohString1 = "Withdraw"
  local ohString2 = "1"
  game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)




   end    
})

local Tab = Window:MakeTab({
 Name = "Visual",
 Icon = "",
 PremiumOnly = false
})

Tab:AddLabel("ESP")





Tab:AddToggle({
 Name = "toggle",
 Default = false,
 Callback = function(Value)
     
      ESP:Toggle(Value)
 end    
})

Tab:AddToggle({
 Name = "box",
 Default = false,
 Callback = function(box)
  ESP.Boxes = (box)
 end    
})

Tab:AddToggle({
 Name = "tracer",
 Default = false,
 Callback = function(tracer)
  
  ESP.Tracers = (tracer)
 end    
})

Tab:AddToggle({
 Name = "name",
 Default = false,
 Callback = function(name)
  
   ESP.Names = (name)
 end    
})



Tab:AddSlider({
 Name = "FOV",
 Min = 70,
 Max = 120,
 Default = 70,
 Increment = 1,
 ValueName = "fov",
 Callback = function(Value)
  game.Players.LocalPlayer.Data.Settings.FOV.Value = (Value)
 end    
})





local Tab = Window:MakeTab({
 Name = "Other",
 Icon = "",
 PremiumOnly = false
})

Tab:AddLabel("Yeah")


Tab:AddToggle({
 Name = "Chat logs",
 Default = false,
 Callback = function(Value)
     V = Value
        if V == true then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = true
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), ChatFrame.ChatChannelParentFrame.Size.Y)
        elseif V == false then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = false
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
        end  
 end    
})


Tab:AddButton({
 Name = "Gun No Recoil",
 Callback = function()
  local delay_hook = nil 
  delay_hook = replaceclosure(delay, newcclosure(function(...)
   local Arguments = ({...});
   if getcallingscript() and getcallingscript().Name ~= "GunClient" then 
    return delay_hook(...);
   end
   table.foreach(Arguments, function(Index, Value)
    if Value and type(Value) == "function" then 
     local valid_constants = getconstants(Value);
    if valid_constants and table.find(valid_constants, "CoordinateFrame") then 
    setconstant(Value, 12, "focus")
           end
       end
   end)
   
   return delay_hook(...);
end));
   end    
})

Tab:AddLabel("Toggle Ui")


Tab:AddBind({
 Name = "Toggle Ui",
 Default = Enum.KeyCode.LeftAlt,
 Hold = false,
 Callback = function()
     if game:GetService("CoreGui").Orion.Enabled == true then
  game:GetService("CoreGui").Orion.Enabled = false
  else
  game:GetService("CoreGui").Orion.Enabled = true
  end
 end    
})




local Tab = Window:MakeTab({
 Name = "Credits",
 Icon = "",
 PremiumOnly = false
})

Tab:AddLabel("Credits")

Tab:AddParagraph("Scripter :","Made by lobox920#9889")

Tab:AddParagraph("Ui libary","Name : Orion Libary by shlex")

Tab:AddParagraph("No Recoil","Made by xaxa#1414")

Tab:AddParagraph("ESP","Made by garfield#9172 from Criminality Open Source")

Tab:AddLabel("Discord")


Tab:AddButton({
 Name = "Join Sirus Discord (Orion Lib discord)",
 Callback = function()
       syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "yWdmdv2BmP",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
 end  
})


Tab:AddButton({
 Name = "Join My Discord",
 Callback = function()
       syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "g2rmfEtvaj",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
 end  
})


OrionLib:Init()