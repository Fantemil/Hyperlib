loadstring(game:HttpGet("https://raw.githubusercontent.com/Opboltejshshskidhdbd/Main/main/Text_Label_Added.lua"))()

--usage example 

local Main = _G.Main:New("Main")
local Tab1 = Main:Tab("Tab1")

local Button1 = Tab1:Button("Button1", function()
    print("Button1 clicked!")
end)

local Label1 = Tab1:AnimatedLabel("Never Gonna give you up")
local Label2 = Tab1:AnimatedLabel("Never Gonna let you down")
local Label3 = Tab1:AnimatedLabel("Never Gonna run around and desert you")
local Label4 = Tab1:AnimatedLabel( "Never Gonna make you cry")
local Label5 = Tab1:AnimatedLabel("Never Gonna say goodbye")
local Label6 = Tab1:AnimatedLabel( "Never Gonna tell a lie and hurt you")

local Tab2 = Main:Tab("Tab2")

local Label7 = Tab2:AnimatedLabel("i dont have anything to say ð")
local Label8 = Tab2:AnimatedLabel("Already rickrolled everyone")
local Button2 = Tab2:Button("Button2", function()
    print("Button2 clicked!")
end)

return _G.Main