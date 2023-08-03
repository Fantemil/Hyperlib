for i,v in pairs(game.workspace.Stickers:GetDescendants()) do
   if v.name == "Sticker1" or v.name == "Sticker2" or v.name == "Sticker3" or v.name == "Sticker4" or v.name == "Sticker5" or v.name == "Sticker6" or v.name == "Sticker7" or v.name == "Sticker8" or v.name == "Sticker9" or v.name == "Sticker10" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
   wait(0.5)
   end
end