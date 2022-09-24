for _, object in pairs(workspace.Map:GetChildren()) do
   if (object:IsA('BasePart')) and (object.Name == 'Glass') and (object:FindFirstChild('TouchInterest')) then
       object.BrickColor = BrickColor.new('Really red');
   end;
end;