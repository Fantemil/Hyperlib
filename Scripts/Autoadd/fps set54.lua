local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/coastified/src.lua"))()

local Window = Lib:Window("FpsSet", "Donut", Enum.KeyCode.RightShift)

local Test = Window:Tab("Fov Set")

Test:Slider('Fps Size',1,200,60,function(Value)
    setfpscap(Value)
end)

Test:Button('set fps to normal',function()
    setfpscap(60)
end)

Test:Label("lol")