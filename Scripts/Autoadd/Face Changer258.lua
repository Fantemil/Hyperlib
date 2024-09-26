local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Head = Character.Head
local face = Head.face
local putidherelol = "http://www.roblox.com/asset/?id=17264975662"
face.Texture = putidherelol

Player.CharacterAdded:Connect(function(character)
    local Head = character:WaitForChild("Head")
    local Face = Head:WaitForChild("face")
    Face.Texture = putidherelol
end)