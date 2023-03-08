local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "svan1s hax!!", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "hax",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "inf pets and inf gems + inf clicks"
})

Tab:AddButton({
 Name = "get mr beast pet",
 Callback = function()

local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "MRBEAST"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").FreePet:FireServer(unpack(args))

   end    
})
Tab:AddButton({
 Name = "get chainsaw man pet",
 Callback = function()

local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "ChainsawMan"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").FreePet:FireServer(unpack(args))

   end    
})
Tab:AddButton({
 Name = "get wednesday pet",
 Callback = function()

local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "WEDNESDAY"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").FreePet:FireServer(unpack(args))

   end    
})
Tab:AddButton({
 Name = "spam 800b clicks",
 Callback = function()
     while task.wait() do
       local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "MRBEAST"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").Clicks:FireServer(unpack(args))
end
   end    
})
Tab:AddButton({
 Name = "click for gems",
 Callback = function()
     while task.wait() do
       local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "MRBEAST"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").Gems:FireServer(unpack(args))
end
   end    
})
Tab:AddButton({
 Name = "get creator pet",
 Callback = function()
       local args = {
    [1] = game:GetService("ReplicatedStorage").Code_Folder,
    [2] = "WORLD IS RED"
}

game:GetService("Players").LocalPlayer.PlayerGui.Main.MainFrame.CodesFrame.RedeemButton:FindFirstChild("Redeem Button_Script").FreePet:FireServer(unpack(args))
   end    
})
Tab:AddParagraph("fun fact","i was too lazy to make toggles! made by svan1#0026")