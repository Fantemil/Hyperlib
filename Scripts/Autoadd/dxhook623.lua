-- Settings
getgenv().KeyB = "Q" -- the key u want 
getgenv().Prediction = 0.1399992 --prediction value
--1
getgenv().Partz = "Head" --part that u want
--2
getgenv().AirshotFunc = nil --true if you want airshot function / false if you dont
getgenv().NotifMode = nil -- again true if you want notification mode, / false if you dont
getgenv().Tracer = nil -- true if you want tracer mode / false if you dont
getgenv().PartMode = nil -- if you want partmode make it true if you dont make it false


local url = "https://raw.githubusercontent.com/alingiaer/dxhookaa/main/script"

loadstring(game:HttpGet(url))()