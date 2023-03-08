local args = {
   [1] = "Create Game",
   [2] = {
       ["NIGHT"] = 6,
       ["OWNER"] = "TYPE YOUR NAME HERE",
       ["PLAYERCOUNT"] = 1,
       ["ANIMATRONIC_LEVELS"] = {
           ["Freddy"] = 100000,
           ["GoldenFreddy"] = 100000,
           ["Foxy"] = 100000,
           ["Chica"] = 100000,
           ["Marionette"] = 0,
           ["Bonnie"] = 100000
       },
       ["DIFFICULTY"] = "CUSTOM NIGHT",
       ["PRIVACY"] = "PUBLIC"
   }
}

game:GetService("ReplicatedStorage").Remotes.ClientInvoke:InvokeServer(unpack(args))