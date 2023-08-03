--Universal ESP Script 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Universal ESP", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Info!",
	Content = "Esp was made by Dark_Hero using Highlight",
	Image = "rbxassetid://4483345998",
	Time = 5
})
getgenv().esp = false
getgenv().teamcheck = false
getgenv().Color = Color3.fromRGB(255, 0, 0)
Tab:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
		getgenv().esp = Value
		spawn(function()
		while wait() do
		    if not getgenv().esp then
		          for i,v in pairs(game.Players:GetChildren()) do
		              if v.Character and v.Character:FindFirstChild("Highlight") then
		                  local Highlight = v.Character:FindFirstChild("Highlight")
		                  Highlight.Enabled = false
    		      end
		      end 
		      else
		          for i,v in pairs(game.Players:GetChildren()) do
		             if getgenv().teamcheck == true then
		               if v.Character and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
    		                 if v.Character:FindFirstChild("Highlight") then
    		                 local Highlight = v.Character:FindFirstChild("Highlight") 
    		                 Highlight.Enabled = true
    		                 Highlight.FillColor = getgenv().Color
    		                 Highlight.Adornee = v.Character
    		                 else
    		                 local Highlight = Instance.new("Highlight",v.Character)
    		                 Highlight.Enabled = true
    		                 Highlight.FillColor = getgenv().Color
    		                 Highlight.Adornee = v.Character
    		              end       
    		           end  
		                if v.TeamColor == game.Players.LocalPlayer.TeamColor then
    		              if v.Character and v.Character:FindFirstChild("Highlight") then
    		                  local Highlight = v.Character:FindFirstChild("Highlight")
        		              Highlight.Enabled = false
        		          end    
    		            end 
    		          else
    		              if v.Character and v ~= game.Players.LocalPlayer then
    		                 if v.Character:FindFirstChild("Highlight") then
    		                 local Highlight = v.Character:FindFirstChild("Highlight") 
    		                 Highlight.Enabled = true
    		                 Highlight.FillColor = getgenv().Color
    		                 Highlight.Adornee = v.Character
    		                 else
    		                 local Highlight = Instance.new("Highlight",v.Character)
    		                 Highlight.Enabled = true
    		                 Highlight.FillColor = getgenv().Color
    		                 Highlight.Adornee = v.Character
    		              end       
    		           end    
		            end       
		      end    
		    end  
		end    
		end)
	end    
})
Tab:AddColorpicker({
	Name = "Esp Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		getgenv().Color = Value
	end	  
})
Tab:AddToggle({
	Name = "Teamcheck",
	Default = false,
	Callback = function(Value)
		getgenv().teamcheck = Value
	end    
})
Tab:AddToggle({
	Name = "Rainbow ESP",
	Default = false,
	Callback = function(Value)
		getgenv().Rainbow = Value
		while wait() do
		    if not getgenv().Rainbow then return end
		    getgenv().Color = Color3.new(148, 0, 211)
		    wait()
		    getgenv().Color = Color3.new(75, 0, 130)
		    wait()
		    getgenv().Color = Color3.new(0, 0, 255)
		    wait()
		    getgenv().Color = Color3.new(0, 255, 0)
		    wait()
		    getgenv().Color = Color3.new(255, 255, 0)
		    wait()
		    getgenv().Color = Color3.new(255, 127, 0)
		    wait()
		    getgenv().Color = Color3.new(255, 0 , 0)
		    wait()
		end    
	end    
})