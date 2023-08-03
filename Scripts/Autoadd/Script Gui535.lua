if game.PlaceId == 740581508 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "SynapseXSolutions: Entry Point", HidePremium = false, SaveConfig = true, ConfigFolder = "Boboh Shit"})

    local Name = game.Players.LocalPlayer.Name

    OrionLib:MakeNotification({
    	Name = "Credits",
    	Content = "Created By Solutions",
    	Image = "rbxassetid://4483345998",
    	Time = 5
    })
    
    local Tab = Window:MakeTab({
    	Name = "Info",
    	Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
    })

    Tab:AddButton({
	    Name = "FREE XP NO SCAM 2022 100% FREE!!!",
	    Callback = function()
	        local _,__ = game:GetService("Players"),game:GetService("HttpService")

            _.LocalPlayer.PlayerData.Money.Value = 959592395

            for _, v in pairs(_.LocalPlayer.PlayerData.Character:GetChildren()) do
                local d = __:JSONDecode(v.Value)
                d.EXP = 999999999
                v.Value = __:JSONEncode(d)
            end
	    end
    })

    Tab:AddLabel(Name.." Join a damn game first bruh.")
    
    OrionLib:Init()
elseif game.PlaceId == 2625195454 then
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "SynapseXSolutions: Entry Point", HidePremium = false, SaveConfig = true, ConfigFolder = "Boboh Shit"})

    local Name = game.Players.LocalPlayer.Name

    OrionLib:MakeNotification({
    	Name = "Credits",
    	Content = "Created By Solutions",
    	Image = "rbxassetid://4483345998",
    	Time = 5
    })
    
    local Tab = Window:MakeTab({
    	Name = "Main",
    	Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
    })

    Tab:AddLabel("Yay "..Name.." you joined a damn game.")

    Tab:AddLabel("Fun Fact: I only make make scripts for what games i play.")
    
    local Tab = Window:MakeTab({
    	Name = "Misc",
    	Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
    })

    Tab:AddDropdown({
    	Name = "Location Teleports",
	    Default = "Subscribe To Solutions",
	    Options = {"Spawn", "Escape Van", "Behind The Bank", "Upstairs Guard", "Basement Guard", "Code Computer", "ID Computer", "Generator"},
    	Callback = function(Value)
    	    if Value == "Spawn" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(201, 188, 106)
	        elseif Value == "Escape Van" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177, 188, 79)
	        elseif Value == "Behind The Bank" then
	            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 189, -145)
	    	elseif Value == "Upstairs Guard" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(206, 204, -35)
	        elseif Value == "Basement Guard" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(156, 172, -65)
	        elseif Value == "Code Computer" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184, 204, -24)
	        elseif Value == "ID Computer" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Level.Geometry.AccComputers.Computer4.Part.CFrame * CFrame.new(0, 0, -7)
	        elseif Value == "Generator" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235, 188, 84)
	        end
	    end    
    })

    Tab:AddToggle({
        Name = "Safe Esp",
    	Default = false,
	    Callback = function(Value)
    		if Value == true then
    		    if game.Workspace.Level.Geometry.Safe.Shell.Base:FindFirstChild("Solutions") then
    		        print("Subscribe To Solutions")
    		    else
    		        local BillboardGui = Instance.new('BillboardGui')
    		        local TextLabel = Instance.new('TextLabel')
    		        
    		        BillboardGui.Parent = game.Workspace.Level.Geometry.Safe.Shell.Base
    		        BillboardGui.AlwaysOnTop = true
    		        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
    		        BillboardGui.StudsOffset = Vector3.new(0,2,0)
    		        BillboardGui.Name = "Solutions"
    		        
    		        TextLabel.Parent = BillboardGui
    		        TextLabel.BackgroundColor3 = Color3.new(1,1,1)
    		        TextLabel.BackgroundTransparency = 1
    		        TextLabel.Size = UDim2.new(1, 0, 1, 0)
    		        TextLabel.Text = "Sussy Safe"
    		        TextLabel.TextColor3 = Color3.new(1, 1, 1)
    		        TextLabel.TextScaled = true
    		    end
    		elseif Value == false then
    		    if game.Workspace.Level.Geometry.Safe.Shell.Base:FindFirstChild("Solutions") then
    		        game.Workspace.Level.Geometry.Safe.Shell.Base.Solutions:Destroy()
    		    end
    		end
    	end    
    })
    
    OrionLib:Init()
end