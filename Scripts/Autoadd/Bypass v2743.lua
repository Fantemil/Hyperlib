game:GetService("ReplicatedStorage").Storage.Events.Remote:Destroy()
local originalIndex
originalIndex = hookmetamethod(game, "__index", function(self, property)
    if not checkcaller() and self:IsA("BasePart") and self:IsDescendantOf(lp.Character) then
        if property:lower() == "size" then
            if self.Name == "Left Leg" then
                return Vector3.new(currentLegSizes.LeftLeg.X, self.Size.Y, currentLegSizes.LeftLeg.Z)
            elseif self.Name == "Right Leg" then
                return Vector3.new(currentLegSizes.RightLeg.X, self.Size.Y, currentLegSizes.RightLeg.Z)
            end
        end
    end
    return originalIndex(self, property)
end)