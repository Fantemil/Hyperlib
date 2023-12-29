local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/Ui-Librarys/main/Gerad's/source.lua"))()

local Window = Library:CreateWindow('FluxHUB </> V1') -- :CreateWindow(Title)

local Section = Window:Section('Open script') -- :Section(Title)

-- Label
Section:Label('Made by Merchant_xy') -- :Label(Text)

-- Button
Section:Button('AutoSteps', function()
     getgenv().AutoSteps = true
    while getgenv().AutoSteps == true do
    
    local args = {
    [1] = "collectOrb",
    [2] = "Orange Orb",
    [3] = "City"
  }
  game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args)) 
  wait() 
    end
  end)


Section:Button('AutoGems', function()
     getgenv().AutoGems = true
    while getgenv().AutoGems == true do
      local args = {
      [1] = "collectOrb",
      [2] = "Gem",
      [3] = "City"
    }
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
  wait()
    end
  end)



Section:Button('AutoRebirth', function()
     getgenv().AutoRebirth = true
    while getgenv().AutoRebirth == true do
     local args = {
    [1] = "rebirthRequest"
   }
game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
    wait()
    end
  end)

Section:Label('Coming Soon </>) -- :Label(Text)