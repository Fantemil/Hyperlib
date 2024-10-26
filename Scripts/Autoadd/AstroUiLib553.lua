loadstring(game:HttpGet("https://raw.githubusercontent.com/Opboltejshshskidhdbd/Main/refs/heads/main/NewUi2"))()

--usage example 

local Main = _G.Main:New("Main")
local Tab1 = Main:Tab("Tab1")

local Button1 = Tab1:Button("Button1", function()
    print("Button1 clicked!")
end)

local Toggle1 = Tab1:Toggle({
  Text = "Toggle1 (This prints toggle state)",
  Callback = function(a)
    print(a)
  end
  })

local toggle2 = Tab1:Toggle({
    Text = "ToggleName (more text = full animation)",
    Callback = function()
  print("hi")
    end
})
local Label8 = Tab1:Label("I know toggle not working I'll fix that in Upd")
local Label1 = Tab1:Label("Never gonna give you up")
local Label2 = Tab1:Label("Never gonna let you down")
local Label3 = Tab1:Label("Never gonna run around and desert you")
local Label4 = Tab1:Label("Never gonna make you cry")
local Label5 = Tab1:Label("Never gonna say goodbye")
local Label6 = Tab1:Label("Never gonna tell a lie and hurt you")

local Tab2 = Main:Tab("Tab2")

local Button2 = Tab2:Button("Button2", function()
    print("Button2 clicked!")
end)
local Toggle3 = Tab2:Toggle({
    Text = "Toggle3",
    Callback = function()
    print("Boooooom!!!!!!!!!")
end
})

local Label7 = Tab2:Label("How you feeling after getting rick rolled?")

return _G.Main