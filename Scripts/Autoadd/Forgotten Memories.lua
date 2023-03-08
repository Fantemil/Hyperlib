local args = {
   [1] = "Create Game",
   [2] = {
       ["NIGHT"] = 6,
       ["OWNER"] = "your name",
       ["PLAYERCOUNT"] = 2,
       ["ANIMATRONIC_LEVELS"] = {
           ["Freddy"] = 200000000000,
           ["GoldenFreddy"] = 2000000000,
           ["Foxy"] = 2000000000,
           ["Chica"] = 200000000000,
           ["Marionette"] = 0,
           ["Bonnie"] = 200000000000
       },
       ["DIFFICULTY"] = "CUSTOM NIGHT",
       ["PRIVACY"] = "PUBLIC"
   }
}

game:GetService("ReplicatedStorage").Remotes.ClientInvoke:InvokeServer(unpack(args))