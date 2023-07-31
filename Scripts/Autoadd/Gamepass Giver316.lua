game.Players.LocalPlayer.Character.Head:Destroy()
       game.Players.LocalPlayer.Character.Humanoid.Health = 0
       if game.CreatorType == Enum.CreatorType.User then
           game.Players.LocalPlayer.UserId = game.CreatorId
       end
       
       if game.CreatorType == Enum.CreatorType.Group then
           game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
       end