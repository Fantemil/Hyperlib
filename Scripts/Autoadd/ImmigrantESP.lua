local InputService = game:GetService'UserInputService'
local RunService = game:GetService'RunService'
local Players = game:GetService'Players'
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Aliens = {}

local Immigrant = {} Immigrant.__index = Immigrant do
    local JumpingTheBorder = 3
    local OverTheBorder = 5
    local ClimbingTheBorder = 12

    local BeanerPic = game:HttpGet'https://i.imgur.com/RCUgNZt.png'
    local BorderJumperPic = game:HttpGet'https://i.imgur.com/EIoVduv.png'

    function Immigrant.new(Player)
        local self = {} setmetatable(self, Immigrant)

        local Beaner = Drawing.new'Image'
        Beaner.Data = BeanerPic
        Beaner.Visible = false
        local BorderJumper = Drawing.new'Image'
        BorderJumper.Data = BorderJumperPic
        BorderJumper.Visible = false

        self.Beaner = Beaner
        self.BorderJumper = BorderJumper
        self.Player = Player

        table.insert(Aliens, self)

        return self
    end

    function Immigrant:HideInTunnel()
        self.Beaner.Visible = false
        self.BorderJumper.Visible = false
    end

    function Immigrant:Hunt()
        if self.Dead then return end
        if not Players:FindFirstChild(self.Player.Name) then return self:Deport() end

        local Character = self.Player.Character if not Character then return self:HideInTunnel() end

        local Humanoid = Character:FindFirstChild'Humanoid' if not Humanoid then return self:HideInTunnel() end
        local RootPart = Humanoid.RootPart if not RootPart then return self:HideInTunnel() end

        local ScreenPosition, Visible = Camera:WorldToViewportPoint(RootPart.Position) if not Visible then return self:HideInTunnel() end
        local WhatIsMyImmigrantDoing = Humanoid:GetState()
        local Size = Vector2.new(2800, 3800) / ScreenPosition.Z

        if Size.Magnitude < 5 then
            Size = Vector2.new(2.8, 3.8) * 3
        end

        if WhatIsMyImmigrantDoing.Value == JumpingTheBorder or WhatIsMyImmigrantDoing.Value == OverTheBorder then
            self.Beaner.Visible = false
            self.BorderJumper.Visible = true

            self.BorderJumper.Size = Size
            self.BorderJumper.Position = Vector2.new(ScreenPosition.X, ScreenPosition.Y) - Size / 2
        else
            self.Beaner.Visible = true
            self.BorderJumper.Visible = false

            self.Beaner.Size = Size
            self.Beaner.Position = Vector2.new(ScreenPosition.X, ScreenPosition.Y) - Size / 2
        end
    end

    function Immigrant:Deport(Jail)
        if not Jail then
            local WhereAmI = table.find(Aliens, self)

            if WhereAmI then table.remove(Aliens, WhereAmI) end
        end

        self.Dead = true

        self.Beaner.Visible = false
        self.BorderJumper.Visible = false

        self.Beaner:Remove()
        self.BorderJumper:Remove()
    end
end

for i, Spic in pairs(Players:GetPlayers()) do
    Immigrant.new(Spic)
end

local PlayerCon, InputCon = Players.PlayerAdded:Connect(Immigrant.new)

InputCon = InputService.InputEnded:Connect(function(Input, Proc)
    if Proc then return end

    if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode == Enum.KeyCode.L then
        RunService:UnbindFromRenderStep'ImmigrantESP'

        for i, Beaner in ipairs(Aliens) do
            Beaner:Deport(true)
        end

        table.clear(Aliens)

        PlayerCon:Disconnect()
        InputCon:Disconnect()
    end
end)

RunService:BindToRenderStep('ImmigrantESP', Enum.RenderPriority.Camera.Value, function(DT)
    Camera = workspace.CurrentCamera

    for i, Illegal in ipairs(Aliens) do
        Illegal:Hunt()
    end
end)