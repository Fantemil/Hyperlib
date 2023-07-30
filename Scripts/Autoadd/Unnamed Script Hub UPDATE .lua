local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/camerononggg/Mercury-funny-thing/main/vscode%20-%20Copy.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Legacy,
    Link = "https://scriptblox.com"
}

local Tab = GUI:Tab{
	Name = "Misc",
	Icon = "rbxassetid://8569322835"
}

Tab:Button({
	Name = "Button",
	Description = nil,
	Callback = function()
        GUI:Prompt{
          Title = 'realy?',
          Text = 'are you sure you want to?',
          Buttons = {
          Yes = function()
            print('yes i want to')
                        end,
                        no = function()
                            print('hell nahhh')
                        end
            }
        }
    end
})

Tab:Button{
	Name = "Button",
	Description = nil,
	Callback = function() end
}

GUI:Credit{
	Name = "cameron!",
    	Description = "Helped with the script",
}

Tab:Slider{
	Name = "Speed",
	Default = 16,
	Min = 0,
	Max = 100,
	Callback = function(S)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
    end
}

Tab:Slider{
	Name = "JumpPower",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function(V)
        local plr = game.Players.LocalPlayer

        plr.Character.Humanoid.JumpPower = V
    end
}

Tab:Button({
	Name = "Syanpse x Cracked!!",
	Description = nil,
	Callback = function()
        GUI:Notification{
            Title = "Hey!",
            Text = "You can't get synapse for free!!",
            Duration = 5,
            Callback = function() end
        }
    end
})

Tab:Keybind{
	Name = "Keybind",
	Keybind = nil,
	Description = nil
}


local Tab = GUI:Tab{
	Name = "Script Hub!",
	Icon = "rbxassetid://4483362458"
}

Tab:Button({
	Name = "Infinite Yield",
	Description = 'Admin script that has 400 commands!',
	Callback = function()
        GUI:Prompt{
            Title = 'Execute',
            Text = 'Are you sure you want to execute "Infinite Yield?',
            Buttons = {
            Yes = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                GUI:Notification{
                    Title = "Success!",
                    Text = "You successfully executed Infinite Yield!",
                    Duration = 3,
                    Callback = function() end
                }
            end,
              No = function()
              end
            }
        }
    end
})

Tab:Button({
	Name = "Homebrew Admin",
	Description = 'Admin script that has everything IY has, but you can kill people!',
	Callback = function()
        GUI:Prompt{
            Title = 'Execute',
            Text = 'Are you sure you want to execute "Homebrew admin?"',
            Buttons = {
            Yes = function()
                loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
            end,
              No = function()
                print('testing lol')
              end
            }
        }
    end
})

Tab:Button({
	Name = "FE Avatar Creator",
	Description = 'Looks confusing but its simple! Create a unique avatar with your accesories.',
	Callback = function()
        GUI:Prompt{
            Title = 'Execute Fe Avatar Creator?',
            Text = 'Are you sure you want to execute "Fe Avatar Creator?"',
            Buttons = {
            Yes = function()
                loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/rouxhaver/scripts-3/main/FE%20character%20creator.lua"))()
            end,
              No = function()
                print('testing lol')
              end
            }
        }
    end
})


local Tab = GUI:Tab{
	Name = "Game Hub!",
	Icon = "rbxassetid://3944680095"
}

Tab:Button({
	Name = "Vape V4 (Bedwars)",
	Description = "The best and most powerful bedwars script!",
	Callback = function()
        GUI:Prompt{
            Title = "You sure?",
            Text = "You sure you wanna execute Vape V4",
            Buttons = {
                Yes = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
                end,
                No = function()
                end
            }
        }
    end
})