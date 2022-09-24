for Index, Object in pairs(workspace:GetDescendants()) do
   if Object.Name == "Collected" then
       Object:FireServer()
   end
end