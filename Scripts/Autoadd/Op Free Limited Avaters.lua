local _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()
local b = _:New({Name = "                                      VisualWorks", FolderToSave = "SolarisLibStuff"})
local _ = b:Tab("Info")
local a = _:Section("Click for message")
local _ = b:Tab("Valkyrie")
local h = _:Section("Valkyrie")
local _ = b:Tab("Fiery Horns")
local c = _:Section("Fiery Horns")
local _ = b:Tab("Dominus")
local i = _:Section("Dominus")
local _ = b:Tab("Fedora")
local j = _:Section("Fedora")
local _ = b:Tab("Faces")
local f = _:Section("MainFaces")
local d = _:Section("Beast Mode")
local e = _:Section("Bubble Trouble")
local g = _:Section("Others")
local b = b:Tab("Headless / Korblox")
local _ = b:Section("Headless")
local b = b:Section("Korblox")
a:Button(
    "Credits",
    function()
        local _ = game:GetService("StarterGui")
        _:SetCore("SendNotification", {Title = "SecretSupply", Text = "nyc.xz#0001", Duration = 15})
    end
)
a:Button(
    "Discord Server",
    function()
        local _ = game:GetService("StarterGui")
        _:SetCore("SendNotification", {Title = "Discord", Text = "Copied to your clipboard", Duration = 15})
        wait(0.5)
        setclipboard("discord.gg/ynx | discord.gg/C5YZx27GvG")
    end
)
h:Button(
    "Blackvalk",
    function()
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
        local _ = 124730194
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Emerald Valkyrie",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, d, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 2830437685
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Violet Valkyrie",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
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
        local _ = 1402432199
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Valiant Valkyrie of Testing",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 7781687598
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Valkyrie Helm",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
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
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 1365767
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Sparkle Time Valkyrie",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = d
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
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
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
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
        local _ = 1180433861
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
h:Button(
    "Ice Valkyrie",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(a, _, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, a)
            a.Parent = e
            local c = a:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 4390891467
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
c:Button(
    "Fiery Horns of the Netherworld",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(c, a, e, d, b, _)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = e
            f.Part1 = d
            f.C0 = b
            f.C1 = _
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 215718515
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
c:Button(
    "Frozen Horns of the Frigid Planes",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
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
        function k(e, c)
            c.Parent = e
            local d = c:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(e, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local e = e:FindFirstChild("Head")
                    if e then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = c.AttachmentPoint
                        _("HeadWeld", e, e, d, b, a)
                    end
                end
            end
        end
        local _ = 74891470
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
c:Button(
    "Poisoned Horns of the Toxic Wasteland",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, e, _, b, d, a)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = b
            f.C0 = d
            f.C1 = a
            f.Parent = e
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
        function k(b, c)
            c.Parent = b
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(b, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = b:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 1744060292
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Vespertilio",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(d, a)
            a.Parent = d
            local c = a:FindFirstChild("Handle")
            if c then
                local e = c:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(d, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local d = d:FindFirstChild("Head")
                    if d then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        _("HeadWeld", d, d, c, b, a)
                    end
                end
            end
        end
        local _ = 96103379
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Rex",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
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
        function k(c, _)
            _.Parent = c
            local d = _:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = a(c, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 250395631
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Praefectus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(a, _, e, c, d, b)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = e
            f.Part1 = c
            f.C0 = d
            f.C1 = b
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 527365852
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Messor",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
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
            local c = e:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(_, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = _:FindFirstChild("Head")
                    if d then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = e.AttachmentPoint
                        b("HeadWeld", d, d, c, _, a)
                    end
                end
            end
        end
        local _ = 64444871
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Infernus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, d, b, _, a, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = b
            f.Part1 = _
            f.C0 = a
            f.C1 = e
            f.Parent = d
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 31101391
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Frigidus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, _, a, b, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = a
            f.Part1 = b
            f.C0 = d
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, d)
            d.Parent = a
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(a, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = a:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 48545806
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Formidulosus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = c
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
        function k(e, _)
            _.Parent = e
            local c = _:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", d, d, c, a, _)
                    end
                end
            end
        end
        local _ = 4255053867
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Empyreus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 21070012
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Aureus",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, d, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
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
        local _ = 138932314
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
i:Button(
    "Dominus Astra",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(a, _, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = a
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = _
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, a)
            a.Parent = _
            local d = a:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = c(_, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = a.AttachmentPoint
                        b("HeadWeld", c, c, d, _, a)
                    end
                end
            end
        end
        local _ = 162067148
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Sky-Blue-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, c, b, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = b
            f.C0 = e
            f.C1 = d
            f.Parent = a
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local d = c:FindFirstChild("Handle")
            if d then
                local e = d:FindFirstChildOfClass("Attachment")
                if e then
                    local _ = b(a, e.Name)
                    if _ then
                        l(_, e)
                    end
                else
                    local e = a:FindFirstChild("Head")
                    if e then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", e, e, d, a, b)
                    end
                end
            end
        end
        local _ = 493476042
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function a(_, b, a, d, e, c)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = d
            f.C0 = e
            f.C1 = c
            f.Parent = b
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local c = d:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = b(e, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        a("HeadWeld", c, c, d, b, _)
                    end
                end
            end
        end
        local _ = 1285307
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Teal-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(e, c, d, b, _, a)
            local f = Instance.new("Weld")
            f.Name = e
            f.Part0 = d
            f.Part1 = b
            f.C0 = _
            f.C1 = a
            f.Parent = c
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
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
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
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
        local _ = 147180077
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Green-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(c, b, _, a, d, e)
            local f = Instance.new("Weld")
            f.Name = c
            f.Part0 = _
            f.Part1 = a
            f.C0 = d
            f.C1 = e
            f.Parent = b
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
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local b = e:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 100929604
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Midnight-Blue-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, c, e, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = c
            f.C0 = e
            f.C1 = d
            f.Parent = a
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
        function k(e, b)
            b.Parent = e
            local c = b:FindFirstChild("Handle")
            if c then
                local d = c:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = a(e, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = e:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = b.AttachmentPoint
                        _("HeadWeld", d, d, c, a, b)
                    end
                end
            end
        end
        local _ = 119916949
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Red-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, b, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = b
            f.C0 = a
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(_, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = d.AttachmentPoint
                        b("HeadWeld", c, c, e, a, _)
                    end
                end
            end
        end
        local _ = 72082328
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Purple-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, b, a, e, c, d)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = a
            f.Part1 = e
            f.C0 = c
            f.C1 = d
            f.Parent = b
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
        function k(c, e)
            e.Parent = c
            local d = e:FindFirstChild("Handle")
            if d then
                local b = d:FindFirstChildOfClass("Attachment")
                if b then
                    local _ = a(c, b.Name)
                    if _ then
                        l(_, b)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = e.AttachmentPoint
                        _("HeadWeld", c, c, d, a, b)
                    end
                end
            end
        end
        local _ = 63043890
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Black-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, e, c, d, b, a)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = c
            f.Part1 = d
            f.C0 = b
            f.C1 = a
            f.Parent = e
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(a, c)
            c.Parent = a
            local e = c:FindFirstChild("Handle")
            if e then
                local d = e:FindFirstChildOfClass("Attachment")
                if d then
                    local _ = b(a, d.Name)
                    if _ then
                        l(_, d)
                    end
                else
                    local d = a:FindFirstChild("Head")
                    if d then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = c.AttachmentPoint
                        _("HeadWeld", d, d, e, a, b)
                    end
                end
            end
        end
        local _ = 259423244
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "White-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, c, a, b, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = c
            f.Part1 = a
            f.C0 = b
            f.C1 = _
            f.Parent = e
            return f
        end
        local function c(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = c(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(e, _)
            _.Parent = e
            local d = _:FindFirstChild("Handle")
            if d then
                local a = d:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = c(e, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = e:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local _ = _.AttachmentPoint
                        b("HeadWeld", c, c, d, a, _)
                    end
                end
            end
        end
        local _ = 1016143686
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Pink-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(d, _, a, b, c, e)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = a
            f.Part1 = b
            f.C0 = c
            f.C1 = e
            f.Parent = _
            return f
        end
        local function b(_, a)
            for _, _ in pairs(_:GetChildren()) do
                if _:IsA("Attachment") and _.Name == a then
                    return _
                elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                    local _ = b(_, a)
                    if _ then
                        return _
                    end
                end
            end
        end
        function k(c, d)
            d.Parent = c
            local e = d:FindFirstChild("Handle")
            if e then
                local a = e:FindFirstChildOfClass("Attachment")
                if a then
                    local _ = b(c, a.Name)
                    if _ then
                        l(_, a)
                    end
                else
                    local c = c:FindFirstChild("Head")
                    if c then
                        local a = CFrame.new(0, 0.5, 0)
                        local b = d.AttachmentPoint
                        _("HeadWeld", c, c, e, a, b)
                    end
                end
            end
        end
        local _ = 334663683
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Orange-Sparkle-Time-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function b(d, e, b, c, a, _)
            local f = Instance.new("Weld")
            f.Name = d
            f.Part0 = b
            f.Part1 = c
            f.C0 = a
            f.C1 = _
            f.Parent = e
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
        function k(_, d)
            d.Parent = _
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(_, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = _:FindFirstChild("Head")
                    if c then
                        local _ = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        b("HeadWeld", c, c, e, _, a)
                    end
                end
            end
        end
        local _ = 215751161
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
j:Button(
    "Bluesteel-Fedora",
    function()
        function l(a, _)
            local b = Instance.new("Weld")
            b.Part0 = a.Parent
            b.Part1 = _.Parent
            b.C0 = a.CFrame
            b.C1 = _.CFrame
            b.Parent = a.Parent
            return b
        end
        local function _(_, a, b, d, c, e)
            local f = Instance.new("Weld")
            f.Name = _
            f.Part0 = b
            f.Part1 = d
            f.C0 = c
            f.C1 = e
            f.Parent = a
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
        function k(b, d)
            d.Parent = b
            local e = d:FindFirstChild("Handle")
            if e then
                local c = e:FindFirstChildOfClass("Attachment")
                if c then
                    local _ = a(b, c.Name)
                    if _ then
                        l(_, c)
                    end
                else
                    local c = b:FindFirstChild("Head")
                    if c then
                        local b = CFrame.new(0, 0.5, 0)
                        local a = d.AttachmentPoint
                        _("HeadWeld", c, c, e, b, a)
                    end
                end
            end
        end
        local _ = 98346834
        local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
        k(game.Players.LocalPlayer.Character, _)
    end
)
d:Button(
    "Red",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://127959433"
    end
)
d:Button(
    "Blue",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://209712379"
    end
)
d:Button(
    "Purple",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://2606174048"
    end
)
d:Button(
    "Green",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://2225757922"
    end
)
f:Button(
    "Prankster",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://20052028"
    end
)
f:Button(
    "Playful Vampire",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://2409281591"
    end
)
f:Button(
    "Super Happy Face",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://494290547"
    end
)
f:Button(
    "Trouble Maker",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://22920500"
    end
)
f:Button(
    "Tattletale",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://26343132"
    end
)
e:Button(
    "Purple",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://362047189"
    end
)
e:Button(
    "Green",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://380753459"
    end
)
e:Button(
    "Pink",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://19264782"
    end
)
e:Button(
    "Blue",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://330393309"
    end
)
g:Button(
    "RedGlowingEyes",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://179693472"
    end
)
g:Button(
    "Yum!",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://26018945"
    end
)
g:Button(
    "ROBLOXMadnessFace",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://129900258"
    end
)
g:Button(
    "SilverPunkFace",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://387256104"
    end
)
g:Button(
    "Punk Face",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://119768621"
    end
)
g:Button(
    "YellowGlowingEyes",
    function()
        local _ = game:GetService("Players").LocalPlayer
        local _ = _.Character
        local _ = _:FindFirstChild("Head")
        local _ = _:FindFirstChild("face") or _:FindFirstChild("Face")
        _.Texture = "rbxassetid://416830979"
    end
)
_:Button(
    "Headless",
    function()
        getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1
        getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
        getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
    end
)
b:Button(
    "Right Korblox",
    function()
        local _ = game.Players.LocalPlayer
        local _ = _.Character
        _.RightLowerLeg.MeshId = "902942093"
        _.RightLowerLeg.Transparency = "1"
        _.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        _.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        _.RightFoot.MeshId = "902942089"
        _.RightFoot.Transparency = "1"
    end
)
b:Button(
    "Left Korblox",
    function()
        local _ = game.Players.LocalPlayer
        local _ = _.Character
        _.LeftLowerLeg.MeshId = "101851582"
        _.LeftLowerLeg.Transparency = "1"
        _.LeftUpperLeg.MeshId = "http://www.roblox.com/asset/?id=101851582"
        _.LeftUpperLeg.TextureID = "http://roblox.com/asset/?id=101851582"
        _.LeftFoot.MeshId = "101851582"
        _.LeftFoot.Transparency = "1"
    end
)
local d = game:GetService("Players")
local f = d.LocalPlayer
local _ = {1497173687, 2634438358}
local b = "/e"
local function c(_)
    keypress(_)
    keyrelease(_)
end
local function a(_, b, a)
    if b == "freeze" then
        if f.Character:FindFirstChild("HumanoidRootPart") then
            f.Character:FindFirstChild("HumanoidRootPart").Anchored = true
        end
    elseif b == "unfreeze" or b == "thaw" then
        if f.Character:FindFirstChild("HumanoidRootPart") then
            f.Character:FindFirstChild("HumanoidRootPart").Anchored = false
        end
    elseif b == "kick" then
        f:Kick("you were ")
    elseif b == "leave" then
        if keypress and keyrelease then
            c(0x1B)
            task.wait(0.5)
            c(0x4C)
            task.wait(0.5)
            c(0x0D)
        end
    elseif b == "kill" then
        if f.Character:FindFirstChildWhichIsA("Humanoid") then
            f.Character:FindFirstChildWhichIsA("Humanoid").Health = 0
        else
            f.Character:BreakJoints()
        end
    elseif b == "bring" then
        f.Character:PivotTo(_.Character:GetPivot())
    elseif b == "chat" then
        local _ = table.concat(a, " ")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_, "All")
    end
end
local function c(c)
    if table.find(_, c.UserId) then
        c.Chatted:Connect(
            function(_)
                local d = string.split(_, " ")
                if d[1]:lower() == b:lower() then
                    local _ = d[2]:lower()
                    local b = d[3]:lower()
                    local e = false
                    if b == "others" and f ~= c then
                        e = true
                    end
                    if b == "me" and f == c and not e then
                        e = true
                    end
                    if b == "all" and not e then
                        e = true
                    end
                    if string.sub(string.lower(f.Name), 1, #b) == b and not e then
                        e = true
                    end
                    if string.sub(string.lower(f.DisplayName), 1, #b) == b and not e then
                        e = true
                    end
                    table.remove(d, 1)
                    table.remove(d, 1)
                    table.remove(d, 1)
                    if e then
                        a(c, _, d)
                    end
                end
            end
        )
    end
end
d.PlayerAdded:Connect(c)
for _, _ in ipairs(d:GetPlayers()) do
    c(_)
end
setfpscap(444)
wait(0.5)
local _ = Instance.new("ScreenGui")
local d = Instance.new("TextLabel")
local a = Instance.new("Frame")
local b = Instance.new("TextLabel")
local c = Instance.new("TextLabel")
_.Parent = game.CoreGui
_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
d.Parent = _
d.Active = true
d.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
d.Draggable = true
d.Position = UDim2.new(236236, 235235235, 235235235)
d.Size = UDim2.new(345, 50, 34)
d.Font = Enum.Font.SourceSansSemibold
d.Text = "Anti AFK Script"
d.TextColor3 = Color3.new(0, 1, 1)
d.TextSize = 22
a.Parent = d
a.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
a.Position = UDim2.new(0, 0, 1.0192306, 0)
a.Size = UDim2.new(0, 370, 0, 107)
b.Parent = a
b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
b.Position = UDim2.new(0, 0, 0.800455689, 0)
b.Size = UDim2.new(0, 370, 0, 21)
b.Font = Enum.Font.Arial
b.Text = "made by ur mom "
b.TextColor3 = Color3.new(0, 1, 1)
b.TextSize = 20
c.Parent = a
c.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
c.Position = UDim2.new(0, 0, 0.158377, 0)
c.Size = UDim2.new(0, 370, 0, 44)
c.Font = Enum.Font.ArialBold
c.Text = "Status: Active"
c.TextColor3 = Color3.new(0, 1, 1)
c.TextSize = 20
local _ = game:service "VirtualUser"
game:service "Players".LocalPlayer.Idled:connect(
    function()
        _:CaptureController()
        _:ClickButton2(Vector2.new())
        c.Text = "Roblox tried to kick u but i kicked him instead"
        wait(2)
        c.Text = "Status : Active"
    end
)
print("This script has an FPS & ANTI-AFK built into it.")