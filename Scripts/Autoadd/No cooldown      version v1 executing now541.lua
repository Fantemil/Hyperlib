local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "script para battleground", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
    Name = "Abilidades normais",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local Section = Tab:AddSection({
    Name = "Gojo"
})

Tab:AddButton({
    Name = "Beatdown",
    Callback = function()         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Beatdown"):FireServer()
      end    
})

Tab:AddButton({
    Name = "Azul",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue"):FireServer()
     end    
})

Tab:AddButton({
    Name = "Blue2",
    Callback = function() 
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue2"):FireServer()
      end    
})

Tab:AddButton({
    Name = "vermelho",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Red"):FireServer()
      end    
})

Tab:AddButton({
    Name = "Vermelho2",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Red2"):FireServer()
      end    
})

Tab:AddButton({
    Name = "Roxo",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Purple"):FireServer()
      end    
})

Tab:AddButton({
    Name = "Infinity",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Infinity"):FireServer()
      end    
})