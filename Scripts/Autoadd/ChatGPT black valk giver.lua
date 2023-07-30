local function weldParts()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function b(c, d, b, _, a, e)
        local f = Instance.new("Weld")
        f.Name = c
        f.Part0 = b
        f.Part1 = _
        f.C0 = a
        f.C1 = e
        f.Parent = d
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(_, e)
        e.Parent = _
        local d = e:FindFirstChild("Handle")
        if d then
            local c = d:FindFirstChildOfClass("Attachment")
            if c then
                local _ = a(_, c.Name)
                if _ then
                    l(_, c)
                end
            else
                local c = _:FindFirstChild("Head")
                if c then
                    local _ = CFrame.new(0, 0.5, 0)
                    local a = e.AttachmentPoint
                    b("HeadWeld", c, c, d, _, a)
                end
            end
        end
    end
    local id = 124730194
    local model = game:GetObjects("rbxassetid://" .. tostring(id))[1]
    k(game.Players.LocalPlayer.Character, model)
end


    weldParts()

