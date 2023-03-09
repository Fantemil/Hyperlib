local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "M(orbius)arvellous", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
Name = "Characters",
Icon = "rbxassetid://460729824",
PremiumOnly = false
})

local function changeplayer(char)
game:GetService("ReplicatedStorage").SelectCharacter.ChangeChar:FireServer(char)
end

Tab:AddButton({
Name = "Thanos",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Thanos)
  end    
})

Tab:AddButton({
Name = "Chad",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.GigaChad)
  end    
})

Tab:AddButton({
Name = "Wanda",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Wanda)
  end    
})

Tab:AddButton({
Name = "Chadette",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").Skins.GigaChad.Skin1)
  end    
})

Tab:AddButton({
Name = "Saitama",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").Skins.GigaChad.Skin2)
  end    
})

Tab:AddButton({
Name = '"Empty"',
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Empty)
  end    
})

Tab:AddButton({
Name = "Vecna (functions like Eleven but worse)",
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Vecna)
  end    
})

Tab:AddButton({
Name = '"Fake" (A sort of ghost / spectator mode)',
Callback = function()
      changeplayer(game:GetService("ReplicatedStorage").SelectCharacter.Fake)
  end    
})  