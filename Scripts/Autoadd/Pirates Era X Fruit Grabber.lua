local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()



local X = Material.Load({

    Title = "Keybrew Hub discord.gg/keybrew",

    Style = 2,

    SizeX = 300,

    SizeY = 350,

    Theme = "Light",

    ColorOverrides = {

        MainFrame = Color3.fromRGB(0,0,0),

        Toggle = Color3.fromRGB(124,37,255),

        ToggleAccent = Color3.fromRGB(255,255,255), 

        Dropdown = Color3.fromRGB(124,37,255),

  DropdownAccent = Color3.fromRGB(255,255,255),

        Slider = Color3.fromRGB(124,37,255),

  SliderAccent = Color3.fromRGB(255,255,255),

        NavBarAccent = Color3.fromRGB(0,0,0),

        Content = Color3.fromRGB(0,0,0),

    }

})



local Y = X.New({

 Title = "Main"

})





    Y.Toggle({

 Text = "Fruit Grabber",

 Callback = function(Value)

        a = Value

        while a do task.wait()

        pcall(function()

                for i, v in next,game:GetService("Workspace").FruitSpawner:GetChildren() do

                    if v:IsA("Tool") then

                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = v.Handle.Position

                    end

                end

            end)

        end

 end,

 Enabled = false

})