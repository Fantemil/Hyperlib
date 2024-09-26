local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
  Title = "TowerWasXHUB",
  SubTitle = "VersiÃ³n 1.3.2 beta By SkylerModz",
  SaveFolder = "Redz Config"
})

-- Tabs
local Tab1 = Window:MakeTab({
  Name = "Tab 1",
  Icon = "cool"
})

local Tab2 = Window:MakeTab({
  Name = "Player"
})

-- Tab1 - Teleport
Tab1:AddButton({
  Name = "TORRE AMARILLA",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(131.08, 24.79, 0.63))
  end
})

Tab1:AddButton({
  Name = "TORRE AZUL",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2.52, 23.60, 128.89))
  end
})

Tab1:AddButton({
  Name = "TORRE ROJA",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-131.21, 24.79, 0.35))
  end
})

Tab1:AddButton({
  Name = "TORRE VERDE",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0.16, 24.79, -131.50))
  end
})

Tab1:AddButton({
  Name = "PUENTE >CENTRO<",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1.36, 133.32, -0.96))
  end
})

Tab1:AddButton({
  Name = "PROTECCIÃN AMARILLA",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(106.51, 129.19, 0.80))
  end
})

Tab1:AddButton({
  Name = "PROTECCIÃN ROJA",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-97.70, 129.19, -2.30))
  end
})

Tab1:AddButton({
  Name = "PROTECCIÃN AZUL",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0.72, 129.19, 99.58))
  end
})

Tab1:AddButton({
  Name = "PROTECCIÃN VERDE",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1.15, 129.19, -98.12))
  end
})

Tab1:AddButton({
  Name = "ZONA SEGURA",
  Callback = function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-48.41, 387.49, 121.52))
  end
})

-- Toggle
local Toggle1 = Tab1:AddToggle({
  Name = "Speed",
  Description = "Toggle to enable speed",
  Default = false,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value and 16 or 16 -- Change to default speed when toggled off
  end
})

-- Slider
Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

-- Tab2 - Player
Tab2:AddButton({
  Name = "Test",
  Callback = function()
    print("Test button pressed")
  end
})

-- Slider para JumpPower en Tab2
Tab2:AddSlider({
  Name = "JumpPower",
  Min = 1,
  Max = 150,
  Increase = 1,
  Default = 50,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end
})

-- Switch para Noclip 
local noclipEnabled = false
Tab2:AddToggle({
  Name = "Noclip",
  Default = false,
  Callback = function(Value)
    noclipEnabled = Value
    local character = game.Players.LocalPlayer.Character
    if character then
      for _, part in ipairs(character:GetChildren()) do
        if part:IsA("BasePart") then
          part.CanCollide = not noclipEnabled
        end
      end
    end
  end
})