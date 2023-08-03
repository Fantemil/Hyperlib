Exact name of item (folder instance), (found in ReplicatedStorage.sabers.powers or ReplicatedStorage.alljutsu)
local name = ""

-- Get regular item
game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
   {ClassName = "Folder",Name = name, ryoshop =
       {Name = "ryoshop", ClassName = "IntValue", Value = 0}
   }
)

-- Get the Scroll Of the Item
game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
   {ClassName = "Folder",Name = name.."scroll", ryoshop =
       {Name = "ryoshop", ClassName = "IntValue", Value = 0}
   }
)