local teclas = {
   ["E"] = "deletrius",
   ["R"] = "defodio",
   ["T"] = "avada kedavra",
   ["Z"] = "vulnera sanentur",
   ["X"] = "rennervate",
   ["C"] = "episkey",
   ["V"] = "infernum",
   ["G"] = "protego diabolica",
   ["B"] = "pruina tempestatis"
}

game:GetService("UserInputService").InputBegan:Connect(function(iobj, gp)
   if not gp then
       local msg = teclas[iobj.KeyCode.Name]
       if msg then
           game.Players:Chat(msg)
           game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
       end
   end
end)