local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Truly's Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Toggles",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Section"
})

Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false, -- Its false but when you click on it, It will turn to true
	Callback = function(Value) -- Your call back
        getgenv().Clicking = Value -- You are calling it rn
        while getgenv().Clicking == true do wait(0.001)
            -- Auto rebirth toggle
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer();
        end
	end
})

Tab:AddToggle({
	Name = "Auto click",
	Default = false, -- Its false but when you click on it, It will turn to true
	Callback = function(Value) -- Your call back
        getgenv().Clicking = Value -- You are calling it rn
        while getgenv().Clicking == true do wait(0.001)            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddSpeed"):FireServer();
        end
	end
})


local Tab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
    Name = "Auto farm",
    Default = false,
    Callback = function(Value)
        getgenv().Toggle = Value

        while getgenv().Toggle == true do wait(0.0001)
            local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart 
            for i, v in pairs(game:GetService("Workspace").OrbSpawns:GetChildren()) do
                if v:IsA("MeshPart") then
                    v.CFrame = rootPart.CFrame wait(0.0001);
                end
            end
        end
    end
})