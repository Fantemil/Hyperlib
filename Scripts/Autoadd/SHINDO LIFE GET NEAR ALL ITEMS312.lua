for _,item in pairs(game:GetService("Workspace").GLOBALTIME.clienttell:GetChildren()) do
game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
   {ClassName = "Folder",Name = item.Name, ryoshop =
       {Name = "ryoshop", ClassName = "IntValue", Value = 0}
   }
)

-- Get the Scroll Of the Item
game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
   {ClassName = "Folder",Name = item.name.."scroll", ryoshop =
       {Name = "ryoshop", ClassName = "IntValue", Value = 0}
   }
)
wait()
end