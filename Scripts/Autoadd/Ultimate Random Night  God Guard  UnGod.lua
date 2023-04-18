repeat wait() until game:IsLoaded()
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({
  title = "Ultimate Custom Night"
})

local Themes = {
  Background = Color3.fromRGB(24, 24, 24),
  Glow = Color3.fromRGB(0, 0, 0),
  Accent = Color3.fromRGB(10, 10, 10),
  LightContrast = Color3.fromRGB(20, 20, 20),
  DarkContrast = Color3.fromRGB(14, 14, 14),  
  TextColor = Color3.fromRGB(255, 255, 255)
}

local Main = UI:addPage({
  title = "Main",
  icon = 887262219
})

local Gameplaydiv = Main:addSection({
  title = "Gameplay"
})

local playerd = Main:addSection({
  title = "Local Player"
})

local funpolice = Main:addSection({
  title = "Fun"
})

Gameplaydiv:addTextbox({
  title = "Music",
  default = "Audio ID",
  callback = function(value, focusLost)
      if (focusLost) then
          local PlaySound = game:GetService("ReplicatedStorage").PlaySound
          PlaySound:FireServer(
          "rbxassetid://"..value,
          0.5,
          100,
          CFrame.new(217.891998, 4.30000496, -126.300003)
          )
      end
  end
})

Gameplaydiv:addButton({
  title = "God guard",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Night In Progress",false)
  end
})

Gameplaydiv:addButton({
  title = "Ungod guard",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Night In Progress",true)
  end
})

Gameplaydiv:addButton({
  title = "Guard lose",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("GameOver",true)
  end
})

playerd:addTextbox({
  title = "Appearance",
  default = "Golden Freddy",
  callback = function(text, focusLost)
      if (focusLost) then
          local BuildSuit = game:GetService("ReplicatedStorage").BuildSuit
          BuildSuit:FireServer(
          game:GetService("ReplicatedStorage")[text],
          text
          )
      end
  end
})

playerd:addTextbox({
  title = "Visibility",
  default = "0-1",
  callback = function(text, focusLost)
      if (focusLost) then
       game:GetService("ReplicatedStorage").CharacterVisibility:FireServer(text)
      end
  end
})
funpolice:addTextbox({
  title = "Current Camera",
  default = "Camera text",
  callback = function(text, focusLost)
      if (focusLost) then
       game.ReplicatedStorage.ChangeGameValue:FireServer("Current Cam",text)
      end
  end
})

local Officetabu = UI:addPage({
  title = "Office",
  icon = 675667326
})

local Errorsdiv = Officetabu:addSection({
  title = "Errors"
})

local Officediv = Officetabu:addSection({
  title = "General Stuff"
})

Officediv:addButton({
  title = "Toggle mask",
  callback = function()
game.ReplicatedStorage.Mask:FireServer(CFrame.new(217.891785, 5.65532875, -126.302475, -0.9961918, 0.00731724687, -0.0868812427, 0, 0.99647218, 0.0839241296, 0.0871888325, 0.0836045295, -0.992677391))
  end
})

Officediv:addTextbox({
  title = "Flicker time",
   default = "5",
  callback = function(text, focusLost)
   if (focusLost) then
local args = {
   [1] = tonumber(text)
}
game:GetService("ReplicatedStorage").Flicker:FireServer(unpack(args))
end
end
})

Officediv:addToggle({
title = "Mask Disabled",
toggled = nil,
callback = function(value)
local args = {
   [1] = "Mask Disabled",
   [2] = value
}
game:GetService("ReplicatedStorage").ChangeGameValue:FireServer(unpack(args))
end})

Officediv:addToggle({
title = "Camera Disabled",
toggled = nil,
callback = function(value)
local args = {
   [1] = "Camera Disabled",
   [2] = value
}
game:GetService("ReplicatedStorage").ChangeGameValue:FireServer(unpack(args))
end})

Officediv:addToggle({
title = "Door Disabled",
toggled = nil,
callback = function(value)
local args = {
   [1] = "Door Disabled",
   [2] = value
}
game:GetService("ReplicatedStorage").ChangeGameValue:FireServer(unpack(args))
end})

Officediv:addToggle({
title = "Light Disabled",
toggled = nil,
callback = function(value)
local args = {
   [1] = "Light Disabled",
   [2] = value
}
game:GetService("ReplicatedStorage").ChangeGameValue:FireServer(unpack(args))
end})

Errorsdiv:addButton({
  title = "Give ventilation error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",true)
  end
})

Errorsdiv:addButton({
  title = "Give camera error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",true)
  end
})

Errorsdiv:addButton({
  title = "Give door error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",true)
  end
})

Errorsdiv:addButton({
  title = "Give audio error",
  callback = function()
      game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",true)
  end
})

Errorsdiv:addButton({
  title = "Give lights error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Light Error",true)
  end
})

Errorsdiv:addButton({
  title = "â Give all errorsâ ",
  callback = function()
      game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",true)
      game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",true)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",true)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",true)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Light Error",true)
  end
})

Errorsdiv:addButton({
  title = "Disable ventilation error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",false)
  end
})

Errorsdiv:addButton({
  title = "Disable camera error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",false)
  end
})

Errorsdiv:addButton({
  title = "Diasble door error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",false)
  end
})

Errorsdiv:addButton({
  title = "Disable audio error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",false)
  end
})

Errorsdiv:addButton({
  title = "Disable lights error",
  callback = function()
  game.ReplicatedStorage.ChangeGameValue:FireServer("Light Error",false)
  end
})

Errorsdiv:addButton({
  title = "â Disable all errorsâ ",
  callback = function()
      game.ReplicatedStorage.ChangeGameValue:FireServer("Audio Error",false)
      game.ReplicatedStorage.ChangeGameValue:FireServer("AC Error",false)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Camera Error",false)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Door Error",false)
      game.ReplicatedStorage.ChangeGameValue:FireServer("Light Error",false)
  end
})

local Theme = UI:addPage({
  title = "Theme",
  icon = 4890363233
})

local Colors = Theme:addSection({
  title = "Colors"
})

for theme, color in pairs(Themes) do
  Colors:addColorPicker({
      title = theme,
      default = color,
      callback = function(color3)
          UI:setTheme({
              theme = theme,
              color3 = color3
          })
      end 
  })
end

UI:SelectPage({
  page = UI.pages[1],
  toggle = true
})