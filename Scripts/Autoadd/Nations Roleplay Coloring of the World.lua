for i, v in pairs(game.Workspace.Provinces:GetChildren()) do
   task.spawn(function()
   local args = {
       [1] = "PaintPart",
       [2] = {
           ["Part"] = v,
           ["Color"] = Color3.fromRGB(0,0,0)
       }
   }
   game.Players.LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))
   end)
end