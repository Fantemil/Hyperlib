while task.wait(0.5) do
   for i,v in next, workspace.doors:GetChildren() do
       game.ReplicatedStorage.events.door:FireServer(v)
   end
end