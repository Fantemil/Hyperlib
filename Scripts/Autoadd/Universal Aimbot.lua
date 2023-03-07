Title = "Silent aim executed",

Text = "LOL", 

Duration = 5

})

local CurrentCamera = workspace.CurrentCamera

local Players = game.Players

local LocalPlayer = Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

function ClosestPlayer()

    local MaxDist, Closest = math.huge

    for I,V in pairs(Players.GetPlayers(Players)) do

        if V == LocalPlayer then continue end

        if V.Team == LocalPlayer then continue end

        if not V.Character then continue end

        local Torso = V.Character.FindFirstChild(V.Character, "Torso")

        if not Torso then continue end

        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Torso.Position)

        if not Vis then continue end

        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)

        local Dist = (TheirPos - MousePos).Magnitude

        if Dist < MaxDist then

            MaxDist = Dist

            Closest = V

        end

    end

    return Closest

end

local MT = getrawmetatable(game)

local OldNC = MT.__namecall

local OldIDX = MT.__index

setreadonly(MT, false)

MT.__namecall = newcclosure(function(self, ...)

    local Args, Method = {...}, getnamecallmethod()

    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then

        local CP = ClosestPlayer()

        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then

            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)

            return OldNC(self, unpack(Args))

        end

    end

    return OldNC(self, ...)

end)

MT.__index = newcclosure(function(self, K)

    if K == "Clips" then

        return workspace.Map

    end

    return OldIDX(self, K)

end)

setreadonly(MT, true)

end)