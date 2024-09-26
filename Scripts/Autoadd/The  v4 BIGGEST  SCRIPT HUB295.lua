--//bypass adonis--//
local debugMode = true

local function isAdonisAC(table) -- basic stupid checks
    return rawget(table, "Detected") and typeof(rawget(table, "Detected")) == "function" and rawget(table, "RLocked")
end
local function dwarn(func, ...)
    if debugMode then
        --print("debug mode enable")
        func(...)
    end
end

dwarn(warn, "------------------------------")

for _, v in next, getgc(true) do
    if typeof(v) == "table" and isAdonisAC(v) then
        dwarn(warn, "uwu")
        for i, v in next, v do
            dwarn(print, i, typeof(v))
            if rawequal(i, "Detected") then
                dwarn(warn, "^^^^^^^")
                local old;
                old = hookfunction(v, function(action, info, nocrash)
                    if rawequal(action, "_") and rawequal(info, "_") and rawequal(nocrash, true) then
                        -- warn("checkup")
                        return old(action, info, nocrash)
                    end
                    dwarn(warn, "detected for :", action, info, nocrash)
                    return task.wait(9e9)
                end)
            end
        end
    end
end

warn("bypassed adonis ac")
--//Bypass//--
local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if not checkcaller() then
        local func = getnamecallmethod()
        local cScript = getcallingscript()
        local args = {...}
        if rawequal(func, "FireServer") and tonumber(self) then
            warn(self.Name)
            return wait(9e9)
    
        end
    end
    return old(self, ...)
end))

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Tha Bronx V4 ",
    SubTitle = "by VaultBoy",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
	Combat = Window:AddTab({ Title = "Combat", Icon = "" }),
	Money = Window:AddTab({ Title = "Money", Icon = "" }),
	Teleport = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "WalkSpeed",
        Description = "",
        Default = 16,
        Min = 16,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

        end
    })

    Slider:SetValue(16)
	
	    local Slider2 = Tabs.Main:AddSlider("Slider2", {
        Title = "JumpPower",
        Description = "",
        Default = 37,
        Min = 37,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
          game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

        end
    })

    Slider2:SetValue(37)
	
	    local Slider3 = Tabs.Main:AddSlider("Slider3", {
        Title = "Field Of View",
        Description = "",
        Default = 87,
        Min = 87,
        Max = 240,
        Rounding = 1,
        Callback = function(Value)
            workspace.CurrentCamera.FieldOfView = Value

        end
    })

    Slider3:SetValue(87)
	
    Tabs.Main:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Main:AddButton({
        Title = "Shiesty",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("Shiesty")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Main:AddButton({
        Title = "Food",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("ShopRemote"):InvokeServer("GreenAppleJuice")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
    Tabs.Main:AddButton({
        Title = "Crash Script",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
while wait(0.1) do
loadstring(game:HttpGet("https://pastebin.com/raw/sjtn4SJ5",true))()-- crash script
end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
    Tabs.Main:AddButton({
        Title = "Cuff All Must Be Police",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
while wait() do
	local Players = game:GetService("Players")
	for i, plr in pairs(Players:GetChildren()) do 
	game:GetService("ReplicatedStorage"):WaitForChild("DetainEvent"):FireServer("cuffs",plr.Character.HumanoidRootPart)
	end--cuffs all
end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    local Input = Tabs.Combat:AddInput("Input", {
        Title = "Modded Gun Modifier",
        Default = "Tool Name Here",
        Placeholder = "Put Gun Tool Name Here",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).CameraRecoilingEnabled = false
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).LimitedAmmoEnabled = false
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).Auto = true
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).FireRate = 0
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).Ammo = 3000
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).MaxAmmo = 3000
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).AmmoPerMag = 3000
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).JamChance = 0
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).ReloadTime = 0
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).Recoil = 0
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).Accuracy = 1
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).BaseDamage = 10000
require(game:GetService("Players").LocalPlayer.Backpack[Value].Setting).Lifesteal = 100
        end
    })

    Input:OnChanged(function()
    end)
end

    Tabs.Combat:AddButton({
        Title = "ESP",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/h8vUuY1Y"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Combat:AddButton({
        Title = "OP Switch2",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local gunstatesmodule = game:GetService("Players").LocalPlayer.Backpack["GlockSwitch2"].Setting
local m = require(gunstatesmodule)

m.LimitedAmmoEnabled = false
m.Ammo = 8000
m.MaxAmmo = 8000
m.AmmoPerMag = 8000
m.JamChance = 0
m.ReloadTime = 0
m.Recoil = 0
m.Accuracy = 1
m.BaseDamage = 10000
m.Range = 1000
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Combat:AddButton({
        Title = "2 Tap Glock22 Perfect for Carrys",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local gunstatesmodule = game:GetService("Players").LocalPlayer.Backpack["Glock22"].Setting
local m = require(gunstatesmodule)

m.LimitedAmmoEnabled = false
m.Ammo = 8000
m.MaxAmmo = 8000
m.AmmoPerMag = 8000
m.JamChance = 0
m.ReloadTime = 0
m.Recoil = 0
m.Accuracy = 1
m.BaseDamage = 90
m.Range = 1000
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Combat:AddButton({
        Title = "OP G22Switch",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local gunstatesmodule = game:GetService("Players").LocalPlayer.Backpack["G22Switch"].Setting
local m = require(gunstatesmodule)

m.LimitedAmmoEnabled = false
m.Ammo = 8000
m.MaxAmmo = 8000
m.AmmoPerMag = 8000
m.JamChance = 0
m.ReloadTime = 0
m.Recoil = 0
m.Accuracy = 1
m.BaseDamage = 10000
m.Range = 1000
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
	
	    Tabs.Combat:AddButton({
        Title = "Instant Prompts Press G",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local function MyFunction()
  for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
 if v.ClassName == "ProximityPrompt" then
  v.HoldDuration = 0
  v.MaxActivationDistance = 6
 end
 end
end

-- bind the function to the "E" key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.G and not gameProcessedEvent then
    MyFunction()
  end
end)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
	
    Tabs.Combat:AddButton({
        Title = "KnifeAura Press V",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
-- define the function to be called
local function MyFunction2()
	local Players = game:GetService("Players")
	for i, plr in pairs(Players:GetChildren()) do
	if plr ~= game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer:DistanceFromCharacter(plr.character.PrimaryPart.Position) <= 8 then
	wait(1)
	game:GetService("Players").LocalPlayer.Character.Knife.LocalScript.punched:InvokeServer(plr.Character.Humanoid,plr.Character.LeftUpperArm)
	end
	end
end

-- bind the function to the "E" key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.V and not gameProcessedEvent then
    MyFunction2()
  end
end)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
		    Tabs.Combat:AddButton({
        Title = "QuickPickUp People Press B",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local function MyFunction8()
	local Players = game:GetService("Players")
	for i, plr in pairs(Players:GetChildren()) do
	if plr ~= game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer:DistanceFromCharacter(plr.character.PrimaryPart.Position) <= 8 then
	wait(1)
	game:GetService("ReplicatedStorage"):WaitForChild("PickUpRemote"):InvokeServer(game:GetService("Players"):WaitForChild(plr.Name))
	end
	end
end

-- bind the function to the "E" key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.B and not gameProcessedEvent then
    MyFunction8()
  end
end)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
		
				    Tabs.Combat:AddButton({
        Title = "QuickDrop People Press N",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local function MyFunction8()
game:GetService("ReplicatedStorage"):WaitForChild("DropCurrentPlayerRemote"):FireServer()
end

-- bind the function to the "E" key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.N and not gameProcessedEvent then
    MyFunction8()
  end
end)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
		
	    Tabs.Combat:AddButton({
        Title = "God Mode",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
getgenv().GodMode = true
while getgenv().GodMode do
wait(0.1)
if game.Players.LocalPlayer.Character.Humanoid.Health <=100 then
game:GetService("Players").LocalPlayer.Character.FallDamageRagdoll.Damage:FireServer(-1*math.huge)
end
end
                       end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Combat:AddButton({
        Title = "Disable God Mode",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
getgenv().GodMode = false
game.Players.LocalPlayer.Character.Humanoid.Health = 0
                       end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

	
    Tabs.Money:AddParagraph({
        Title = "Bank Cash",
        Content = game:GetService("Players").LocalPlayer.stored.Bank.Value
    })

    local Toggle = Tabs.Money:AddToggle("AutoMoney", {Title = "Auto Drop Money", Default = false })

    Toggle:OnChanged(function()
		while Options.AutoMoney.Value == true do 
		game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer("Drop","10000")
		end
    end)

    Options.AutoMoney:SetValue(false)
	
	
	
local Toggle = Tabs.Money:AddToggle("Withdraw1k", {Title = "Withdraw 1k Money", Default = false })

    Toggle:OnChanged(function()
		while Options.Withdraw1k.Value == true do 
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("with","1000")
		end
    end)
	    Options.Withdraw1k:SetValue(false)
		
		
		local Toggle = Tabs.Money:AddToggle("Withdraw10k", {Title = "Withdraw 10k Money", Default = false })

    Toggle:OnChanged(function()
		while Options.Withdraw10k.Value == true do 
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("with","10000")
		end
    end)
	    Options.Withdraw10k:SetValue(false)
	
			local Toggle = Tabs.Money:AddToggle("Withdraw30k", {Title = "Withdraw 30k Money", Default = false })

    Toggle:OnChanged(function()
		while Options.Withdraw30k.Value == true do 
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("with","30000")
		end
    end)
	    Options.Withdraw30k:SetValue(false)
	
	
	    local Toggle = Tabs.Money:AddToggle("Withdraw", {Title = "Withdraw 90k Money", Default = false })

    Toggle:OnChanged(function()
		while Options.Withdraw.Value == true do 
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("with","90000")
		end
    end)
	    Options.Withdraw:SetValue(false)
	
    local Toggle = Tabs.Money:AddToggle("GiveAwayStart", {Title = "Give Away Start Tweet", Default = false })

    Toggle:OnChanged(function()
		while Options.GiveAwayStart.Value == true do 
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("Resources"):WaitForChild("#Phone"):WaitForChild("Main"):FireServer("Tweet", {"CreateTweet", "Come to gun store with ya broke self for free Money dropping ALOT"})
		end
    end)

    Options.GiveAwayStart:SetValue(false)
	
	    local Toggle = Tabs.Money:AddToggle("GiveAwayChal", {Title = "Give Away Challenge Tweet", Default = false })

    Toggle:OnChanged(function()
		while Options.GiveAwayChal.Value == true do 
		wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("Resources"):WaitForChild("#Phone"):WaitForChild("Main"):FireServer("Tweet", {"CreateTweet", "whoever kills me first gets a mill and two switches"})
		end
    end)

    Options.GiveAwayChal:SetValue(false)
	
    local Toggle = Tabs.Money:AddToggle("GiveAwayEnd", {Title = "Give Away End Tweet", Default = false })

    Toggle:OnChanged(function()
		while Options.GiveAwayEnd.Value == true do 
		wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("Resources"):WaitForChild("#Phone"):WaitForChild("Main"):FireServer("Tweet", {"CreateTweet", "Appreciate yaw for coming to the money drop i've dropped about 2 million enjoy"})
		end
    end)

    Options.GiveAwayEnd:SetValue(false)
	
	    Tabs.Money:AddButton({
        Title = "Max Bank Money Press M and quickly pick up",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
local function MyFunction4()
game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer("Drop","nan")
wait(0.1)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
v.HoldDuration = 0 -- instant prompts no need to hold any more
v.MaxActivationDistance = 6
end
end
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("depo","30000")
wait(2)
game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("depo","30000")
end

-- bind the function to the "E" key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.KeyCode == Enum.KeyCode.M and not gameProcessedEvent then
    MyFunction4()
  end
end)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
		
	    Tabs.Money:AddButton({
        Title = "Print Bank Value",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
print(game:GetService("Players").LocalPlayer.stored.Bank.Value)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
		    Tabs.Teleport:AddButton({
        Title = "TP Tool",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uVxwXf5C",true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
			    Tabs.Teleport:AddButton({
        Title = "Edge of Map",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10415, 102, -723)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
		    Tabs.Teleport:AddButton({
        Title = "Gun Shop",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1226.6864013671875, 261.9952392578125, -802.01611328125)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Car Dealer",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-455, 254, -1238)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Bank Bag",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-449, 254, -373)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Hotel",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-700, 254, -535)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "IceBox",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607, 253, -1121)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "MaskShop",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-632, 255, -699)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
	
			    Tabs.Teleport:AddButton({
        Title = "PentHouse",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1565, 374, -387)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Clothing Shop",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-964, 254, -357)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
		    Tabs.Teleport:AddButton({
        Title = "Switch Spot",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1061, 292, -1020)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Studio",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10886, 110, -1085)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

		    Tabs.Teleport:AddButton({
        Title = "Melee Shop",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Confirm?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-886, 254, -1174)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })	


SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)
Fluent:Notify({
    Title = "Tha Bronx v4",
    Content = "Client Loaded Succesfully.",
    Duration = 8
})
SaveManager:LoadAutoloadConfig()