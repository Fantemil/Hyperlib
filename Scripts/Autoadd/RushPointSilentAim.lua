local replicated_storage = game:GetService('ReplicatedStorage')
local players            = game:GetService('Players')
local local_player       = players.LocalPlayer

local network = require(replicated_storage.Modules.Shared.Network)
local recoil  = require(replicated_storage.Modules.Client.Helpers.RecoilHandler)

local bac_characters_senv = getsenv(game.ReplicatedStorage.BAC.Characters)

local function GetClosestPlayer()
    local dist, target = math.huge, nil

    for i,v in next, players:GetChildren() do
        if v:IsA('Player') and v ~= local_player and v.SelectedTeam.Value ~= local_player.SelectedTeam.Value then
            local character = getupvalue(bac_characters_senv.NewChar, 1)[v]
            if character ~= nil then
                local mag = (character.HumanoidRootPart.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude
                if mag < dist then
                    dist = mag
                    target = character
                end
            end
        end
    end

    return target
end

local firesever_new = function(self, name, args)
    if name == 'FireBullet' then
        local target = GetClosestPlayer()
        if target == nil then return end

        print(target)

        for i,v in next, args[1] do
            local aim_cf = target.Head.CFrame
            local rotated_cf = CFrame.new(workspace.CurrentCamera.CFrame.p, aim_cf.p)
            v.RotationMatrix = (rotated_cf - rotated_cf.p)
            v.OriginCFrame = rotated_cf
        end
    end
    return self, name, unpack(args)
end

local old; old = hookfunction(network.FireServer, function(self, name, ...)
    return old(firesever_new(self, name, {...})) -- bypass too many upvalues
end)

local old; old = hookfunction(recoil.AddRecoil, function(...)
    if true then -- used to be toggle check
        return
    end
    return old(...)
end)