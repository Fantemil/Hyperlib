local args = {
   [1] = {
       ["BadGraphics"] = false,
       ["FinishedTutorial"] = true,
       ["StaffPaper"] = 0,
       ["Money"] = 120000000000,
       ["Owned"] = {
           ["Golden Printer"] = 1,
           ["Furniture"] = 1,
           ["Mailbox"] = 1,
           ["Printer"] = 1
       },
       ["Multiplier"] = 1,
       ["Staff"] = 7,
       ["Locker"] = {
           ["Color"] = {
               [1] = 163,
               [2] = 162,
               [3] = 165
           },
           ["Material"] = "Metal"
       },
       ["MultiplierTime"] = 0,
       ["Time"] = 30,
       ["DestroyedTree"] = false,
       ["TrunkPaper"] = 0,
       ["Paper"] = 100000000000,
       ["TrunkCapacity"] = 1000000,
       ["SludgeLevel"] = 1
   }
}

game:GetService("ReplicatedStorage").Remotes.SaveData:FireServer(unpack(args))