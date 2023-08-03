local randomString = tostring(100,1000) -- Keep it short
local money = 500000 -- It is rellcoins, the max money you can have is 500k

game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
   {ClassName = "Folder",Name = randomString, ryoshop =
       {Name = "ryoshop", ClassName = "IntValue", Value = -money}
   }
   )
   