local g = game.UserInputService

g.InputBegan:Connect(function(input,gameProcessed)
   if gameProcessed then return end
   
   if input.KeyCode == Enum.KeyCode.Z then
       g.MouseDeltaSensitivity = 0.005
       while g:IsKeyDown(Enum.KeyCode.Z) do wait(0.1)
       
       end
       g.MouseDeltaSensitivity = 1
   end
end)