first execute this
Code:
local X;

X = hookmetamethod(game.Players.LocalPlayer.Character,"__namecall",function(self,...) 
   local args = {...};
   local method = getnamecallmethod()
   if method == "Destroy"  then
       if self == game.Players.LocalPlayer.Character then 
           print("\n Mano county moment \n ")
           
       
       return 
 end 
 end 
   return X(self,...) 
end)

then:
Code:
game.Players.LocalPlayer.Character.antiteleport:Destroy()
wait(0.5)
game.Players.LocalPlayer.Character.ChatScript:Destroy()
wait(0.5)
game.Players.LocalPlayer.Character.Clientmain:Destroy()
wait(0.5)
game:GetService("ReplicatedStorage").clientdata:Destroy() -- admin remote (project slayers flashbacks)