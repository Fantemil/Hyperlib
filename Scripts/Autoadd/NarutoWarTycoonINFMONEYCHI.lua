local args = {
   [1] = "chuoka",
   [2] = {
       ["number"] = -1000,
       ["cardsInfo"] = {}
   }
}

game:GetService("ReplicatedStorage").eventsAndFunctions.RemoteFunction:InvokeServer(unpack(args))