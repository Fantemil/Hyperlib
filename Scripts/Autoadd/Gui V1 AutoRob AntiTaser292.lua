local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("ADMIN EMERGENCY ENGLAND", "Default")

local tab = DrRayLibrary.newTab("Main", 11322093471)

--//////

local pp = game.Players.LocalPlayer
local AntiTase = false







tab.newToggle("Anti-Tase", "[OP]", false, function(toggleState)
    if toggleState then
        AntiTase = true
    else
        AntiTase = false
    end
end)



tab.newDropdown("Gun Dealer", "Buy Gun:", {"AK-47", "G17", "M4A1", "Mosin Nagant", "PKM", "Drill", "SledgeHammer", "Knife"}, function(selectedOption)
    
    
    
    local args = {
    [1] = selectedOption,
    [2] = game:GetService("ReplicatedStorage").Shops.Criminal1
}

game:GetService("ReplicatedStorage").PlayerEvents.Shop:FireServer(unpack(args))


end)


tab.newDropdown("Rob Store", "WARNING: WAIT A LITTLE BIT FOR UI OF ROB LOAD", {"ShopKeeper1", "ShopKeeper2", "ShopKeeper3", "ShopKeeper4", "ShopKeeper5", "ShopKeeper6", "ShopKeeper7"}, function(selectedOption)
    
    local Folder = game.Workspace.CriminalJobs
    local LastPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    local Choosed = Folder:FindFirstChild(selectedOption)
    if Choosed then
        for i, KK in Choosed:GetDescendants() do
        if KK.name == "HumanoidRootPart" then
            pp.Character.HumanoidRootPart.CFrame = CFrame.new(KK.CFrame.Position)
        end
        end
        
        wait(0.4)
      for i, BB in Choosed:GetDescendants() do
        if BB:IsA("ProximityPrompt") then
          fireproximityprompt(BB)
          wait(0.3)
          for i=0,500 do
              local args = {
      [1] = "Input",
      [2] = "Tap"
    }
    game:GetService("Players").LocalPlayer.PlayerGui.ShopRobberyUI.ShopRobberyEvent:FireServer(unpack(args))
    wait()
          end
          wait(0.2)
          pp.Character.HumanoidRootPart.CFrame = LastPos
          
        end
      end
        
        
    end
    
    
    
    
    
end)

tab.newSlider("WalkSpeed", "", 400, false, function(num)
    pp.Character.Humanoid.WalkSpeed = num
end)





-- //////




pp.Character.Humanoid.Changed:Connect(function()
    
    if AntiTase then
        local Repp = game.Players.LocalPlayer
        if Repp.Character.Humanoid.PlatformStand then
            
            Repp.Character.Humanoid.PlatformStand = false
            
        end
        
        
    end
    
end)



