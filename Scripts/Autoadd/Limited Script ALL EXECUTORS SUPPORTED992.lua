
getgenv().Time = 1 -- Adjust the time waited before adding the items

getgenv().Head = {
    74891470,
    439946249,
    323476364,
    -- Add more head accessory IDs
}

getgenv().Torso = {
    0000000000
    -- Add more torso accessory IDs
}

--//------------------------------------------------------------------------------------------\\--

local function weldParts(part0, part1, c0, c1)
    local weld = Instance.new("Weld")
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    weld.C1 = c1
    weld.Parent = part0
    return weld
end

local function findAttachment(rootPart, name)
    for _, descendant in pairs(rootPart:GetDescendants()) do
        if descendant:IsA("Attachment") and descendant.Name == name then
            return descendant
        end
    end
end

local function addAccessoryToCharacter(accessoryId, parentPart)
    local accessory = game:GetObjects("rbxassetid://" .. tostring(accessoryId))[1]
    local character = game.Players.LocalPlayer.Character

    accessory.Parent = game.Workspace

    local handle = accessory:FindFirstChild("Handle")
    if handle then
        local attachment = handle:FindFirstChildOfClass("Attachment")
        if attachment then
            local parentAttachment = findAttachment(parentPart, attachment.Name)
            if parentAttachment then
                weldParts(parentPart, handle, parentAttachment.CFrame, attachment.CFrame)
            end
        else
            local parent = character:FindFirstChild(parentPart.Name)
            if parent then
                local attachmentPoint = accessory.AttachmentPoint
                weldParts(parent, handle, CFrame.new(0, 0.5, 0), attachmentPoint.CFrame)
            end
        end
    end

    accessory.Parent = game.Players.LocalPlayer.Character
end

local function onCharacterAdded(character)
    wait(getgenv().Time) -- Wait for the character to fully load

    for _, accessoryId in ipairs(getgenv().Head) do
        addAccessoryToCharacter(accessoryId, character.Head)
    end

    for _, accessoryId in ipairs(getgenv().Torso) do
        addAccessoryToCharacter(accessoryId, character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso"))
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

if game.Players.LocalPlayer.Character then
    onCharacterAdded(game.Players.LocalPlayer.Character)
end